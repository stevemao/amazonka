-- |
-- Module      : Amazonka.Env
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Environment and AWS specific configuration needed to perform AWS
-- requests.
module Amazonka.Env
  ( -- * Creating the Environment
    newEnv,
    newEnvNoAuth,
    Env' (..),
    Env,
    EnvNoAuth,
    authMaybe,
    lookupRegion,

    -- ** Lenses
    env_region,
    env_logger,
    env_retryCheck,
    env_override,
    env_manager,
    env_auth,

    -- * Overriding Default Configuration
    overrideService,
    configureService,

    -- * 'Env' override helpers
    globalTimeout,
    once,

    -- * Retry HTTP Exceptions
    retryConnectionFailure,
  )
where

import Amazonka.Core.Lens.Internal (Lens)
import Amazonka.Prelude
import Amazonka.Types hiding (timeout)
import qualified Amazonka.Types as Service (Service (..))
import qualified Data.Function as Function
import Data.Monoid (Dual (..), Endo (..))
import qualified Data.Text as Text
import qualified Network.HTTP.Client as Client
import qualified Network.HTTP.Conduit as Client.Conduit
import System.Environment as Environment

type Env = Env' Identity

type EnvNoAuth = Env' Proxy

-- | The environment containing the parameters required to make AWS requests.
--
-- This type tracks whether or not we have credentials at the type
-- level, to avoid "presigning" requests when we lack auth
-- information.
data Env' withAuth = Env
  { region :: Region,
    logger :: Logger,
    retryCheck :: Int -> Client.HttpException -> Bool,
    override :: Dual (Endo Service),
    manager :: Client.Manager,
    auth :: withAuth Auth
  }
  deriving stock (Generic)

{-# INLINE env_region #-}
env_region :: Lens' (Env' withAuth) Region
env_region f e@Env {region} = f region <&> \region' -> e {region = region'}

{-# INLINE env_logger #-}
env_logger :: Lens' (Env' withAuth) Logger
env_logger f e@Env {logger} = f logger <&> \logger' -> e {logger = logger'}

{-# INLINE env_retryCheck #-}
env_retryCheck :: Lens' (Env' withAuth) (Int -> Client.HttpException -> Bool)
env_retryCheck f e@Env {retryCheck} = f retryCheck <&> \retryCheck' -> e {retryCheck = retryCheck'}

{-# INLINE env_override #-}
env_override :: Lens' (Env' withAuth) (Dual (Endo Service))
env_override f e@Env {override} = f override <&> \override' -> e {override = override'}

{-# INLINE env_manager #-}
env_manager :: Lens' (Env' withAuth) Client.Manager
env_manager f e@Env {manager} = f manager <&> \manager' -> e {manager = manager'}

{-# INLINE env_auth #-}
env_auth :: Lens (Env' withAuth) (Env' withAuth') (withAuth Auth) (withAuth' Auth)
env_auth f e@Env {auth} = f auth <&> \auth' -> e {auth = auth'}

-- | Creates a new environment with a new 'Manager' without debug logging
-- and uses 'getAuth' to expand/discover the supplied 'Credentials'.
-- Lenses can be used to further configure the resulting 'Env'.
--
-- /Since:/ @1.5.0@ - The region is now retrieved from the @AWS_REGION@ environment
-- variable (identical to official SDKs), or defaults to @us-east-1@.
-- You can override the 'Env' region by updating its 'region' field.
--
-- /Since:/ @1.3.6@ - The default logic for retrying 'HttpException's now uses
-- 'retryConnectionFailure' to retry specific connection failure conditions up to 3 times.
-- Previously only service specific errors were automatically retried.
-- This can be reverted to the old behaviour by resetting the 'Env''s
-- 'retryCheck' field to @(\\_ _ -> False)@.
--
-- Throws 'AuthError' when environment variables or IAM profiles cannot be read.
--
-- /See:/ 'newEnvFromManager'.
newEnv ::
  MonadIO m =>
  -- | Credential discovery mechanism.
  (EnvNoAuth -> m Env) ->
  m Env
newEnv = (newEnvNoAuth >>=)

-- | Generate an environment without credentials, which may only make
-- unsigned requests. This sets the region based on the @AWS_REGION@
-- environment variable, or 'NorthVirginia' if unset.
--
-- This is useful for the STS
-- <https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html AssumeRoleWithWebIdentity>
-- operation, which needs to make an unsigned request to pass the
-- token from an identity provider.
newEnvNoAuth :: MonadIO m => m EnvNoAuth
newEnvNoAuth = do
  manager <- liftIO $ Client.newManager Client.Conduit.tlsManagerSettings
  mRegion <- lookupRegion
  let env =
        Env
          { region = fromMaybe NorthVirginia mRegion,
            logger = \_ _ -> pure (),
            retryCheck = retryConnectionFailure 3,
            override = mempty,
            manager = manager,
            auth = Proxy
          }
  pure env

-- | Get "the" 'Auth' from an 'Env'', if we can.
authMaybe :: Foldable withAuth => Env' withAuth -> Maybe Auth
authMaybe = foldr (const . Just) Nothing . auth

-- | Look up the region in the @AWS_REGION@ environment variable.
lookupRegion :: MonadIO m => m (Maybe Region)
lookupRegion =
  liftIO $
    Environment.lookupEnv "AWS_REGION" <&> \case
      Nothing -> Nothing
      Just "" -> Nothing
      Just t -> Just . Region' $ Text.pack t

-- | Retry the subset of transport specific errors encompassing connection
-- failure up to the specific number of times.
retryConnectionFailure :: Int -> Int -> Client.HttpException -> Bool
retryConnectionFailure limit n = \case
  Client.InvalidUrlException {} -> False
  Client.HttpExceptionRequest _ ex
    | n >= limit -> False
    | otherwise ->
      case ex of
        Client.NoResponseDataReceived -> True
        Client.ConnectionTimeout -> True
        Client.ConnectionClosed -> True
        Client.ConnectionFailure {} -> True
        Client.InternalException {} -> True
        _other -> False

-- | Provide a function which will be added to the existing stack
-- of overrides applied to all service configurations.
overrideService :: (Service -> Service) -> Env' withAuth -> Env' withAuth
overrideService f env = env {override = override env <> Dual (Endo f)}

-- | Configure a specific service. All requests belonging to the
-- supplied service will use this configuration instead of the default.
--
-- It's suggested you modify the default service configuration,
-- such as @Amazonka.DynamoDB.defaultService@.
configureService :: Service -> Env' withAuth -> Env' withAuth
configureService s = overrideService f
  where
    f x
      | Function.on (==) Service.abbrev s x = s
      | otherwise = x

-- | Override the timeout value for this 'Env'.
--
-- Default timeouts are chosen by considering:
--
-- * This 'timeout', if set.
--
-- * The related 'Service' timeout for the sent request if set. (Usually 70s)
--
-- * The 'manager' timeout if set.
--
-- * The default 'ClientRequest' timeout. (Approximately 30s)
globalTimeout :: Seconds -> Env' withAuth -> Env' withAuth
globalTimeout n = overrideService $ \s -> s {Service.timeout = Just n}

-- | Disable any retry logic for an 'Env', so that any requests will
-- at most be sent once.
once :: Env' withAuth -> Env' withAuth
once = overrideService $ \s@Service {retry} -> s {retry = retry {attempts = 0}}
