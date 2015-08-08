{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.CreateApp
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an app for a specified stack. For more information, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Creating Apps>.
--
-- __Required Permissions__: To use this action, an IAM user must have a
-- Manage permissions level for the stack, or an attached policy that
-- explicitly grants permissions. For more information on user permissions,
-- see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions>.
--
-- /See:/ <http://docs.aws.amazon.com/opsworks/latest/APIReference/API_CreateApp.html AWS API Reference> for CreateApp.
module Network.AWS.OpsWorks.CreateApp
    (
    -- * Creating a Request
      CreateApp
    , createApp
    -- * Request Lenses
    , caSSLConfiguration
    , caShortname
    , caEnableSSL
    , caEnvironment
    , caDataSources
    , caAppSource
    , caAttributes
    , caDomains
    , caDescription
    , caStackId
    , caName
    , caType

    -- * Destructuring the Response
    , CreateAppResponse
    , createAppResponse
    -- * Response Lenses
    , carsAppId
    , carsStatus
    ) where

import           Network.AWS.OpsWorks.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'createApp' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'caSSLConfiguration'
--
-- * 'caShortname'
--
-- * 'caEnableSSL'
--
-- * 'caEnvironment'
--
-- * 'caDataSources'
--
-- * 'caAppSource'
--
-- * 'caAttributes'
--
-- * 'caDomains'
--
-- * 'caDescription'
--
-- * 'caStackId'
--
-- * 'caName'
--
-- * 'caType'
data CreateApp = CreateApp'
    { _caSSLConfiguration :: !(Maybe SSLConfiguration)
    , _caShortname        :: !(Maybe Text)
    , _caEnableSSL        :: !(Maybe Bool)
    , _caEnvironment      :: !(Maybe [EnvironmentVariable])
    , _caDataSources      :: !(Maybe [DataSource])
    , _caAppSource        :: !(Maybe Source)
    , _caAttributes       :: !(Maybe (Map AppAttributesKeys Text))
    , _caDomains          :: !(Maybe [Text])
    , _caDescription      :: !(Maybe Text)
    , _caStackId          :: !Text
    , _caName             :: !Text
    , _caType             :: !AppType
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateApp' smart constructor.
createApp :: Text -> Text -> AppType -> CreateApp
createApp pStackId_ pName_ pType_ =
    CreateApp'
    { _caSSLConfiguration = Nothing
    , _caShortname = Nothing
    , _caEnableSSL = Nothing
    , _caEnvironment = Nothing
    , _caDataSources = Nothing
    , _caAppSource = Nothing
    , _caAttributes = Nothing
    , _caDomains = Nothing
    , _caDescription = Nothing
    , _caStackId = pStackId_
    , _caName = pName_
    , _caType = pType_
    }

-- | An @SslConfiguration@ object with the SSL configuration.
caSSLConfiguration :: Lens' CreateApp (Maybe SSLConfiguration)
caSSLConfiguration = lens _caSSLConfiguration (\ s a -> s{_caSSLConfiguration = a});

-- | The app\'s short name.
caShortname :: Lens' CreateApp (Maybe Text)
caShortname = lens _caShortname (\ s a -> s{_caShortname = a});

-- | Whether to enable SSL for the app.
caEnableSSL :: Lens' CreateApp (Maybe Bool)
caEnableSSL = lens _caEnableSSL (\ s a -> s{_caEnableSSL = a});

-- | An array of @EnvironmentVariable@ objects that specify environment
-- variables to be associated with the app. After you deploy the app, these
-- variables are defined on the associated app server instance. For more
-- information, see
-- <http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment Environment Variables>.
--
-- There is no specific limit on the number of environment variables.
-- However, the size of the associated data structure - which includes the
-- variables\' names, values, and protected flag values - cannot exceed 10
-- KB (10240 Bytes). This limit should accommodate most if not all use
-- cases. Exceeding it will cause an exception with the message,
-- \"Environment: is too large (maximum is 10KB).\"
--
-- This parameter is supported only by Chef 11.10 stacks. If you have
-- specified one or more environment variables, you cannot modify the
-- stack\'s Chef version.
caEnvironment :: Lens' CreateApp [EnvironmentVariable]
caEnvironment = lens _caEnvironment (\ s a -> s{_caEnvironment = a}) . _Default . _Coerce;

-- | The app\'s data source.
caDataSources :: Lens' CreateApp [DataSource]
caDataSources = lens _caDataSources (\ s a -> s{_caDataSources = a}) . _Default . _Coerce;

-- | A @Source@ object that specifies the app repository.
caAppSource :: Lens' CreateApp (Maybe Source)
caAppSource = lens _caAppSource (\ s a -> s{_caAppSource = a});

-- | One or more user-defined key\/value pairs to be added to the stack
-- attributes.
caAttributes :: Lens' CreateApp (HashMap AppAttributesKeys Text)
caAttributes = lens _caAttributes (\ s a -> s{_caAttributes = a}) . _Default . _Map;

-- | The app virtual host settings, with multiple domains separated by
-- commas. For example: @\'www.example.com, example.com\'@
caDomains :: Lens' CreateApp [Text]
caDomains = lens _caDomains (\ s a -> s{_caDomains = a}) . _Default . _Coerce;

-- | A description of the app.
caDescription :: Lens' CreateApp (Maybe Text)
caDescription = lens _caDescription (\ s a -> s{_caDescription = a});

-- | The stack ID.
caStackId :: Lens' CreateApp Text
caStackId = lens _caStackId (\ s a -> s{_caStackId = a});

-- | The app name.
caName :: Lens' CreateApp Text
caName = lens _caName (\ s a -> s{_caName = a});

-- | The app type. Each supported type is associated with a particular layer.
-- For example, PHP applications are associated with a PHP layer. AWS
-- OpsWorks deploys an application to those instances that are members of
-- the corresponding layer. If your app isn\'t one of the standard types,
-- or you prefer to implement your own Deploy recipes, specify @other@.
caType :: Lens' CreateApp AppType
caType = lens _caType (\ s a -> s{_caType = a});

instance AWSRequest CreateApp where
        type Sv CreateApp = OpsWorks
        type Rs CreateApp = CreateAppResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 CreateAppResponse' <$>
                   (x .?> "AppId") <*> (pure (fromEnum s)))

instance ToHeaders CreateApp where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("OpsWorks_20130218.CreateApp" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON CreateApp where
        toJSON CreateApp'{..}
          = object
              ["SslConfiguration" .= _caSSLConfiguration,
               "Shortname" .= _caShortname,
               "EnableSsl" .= _caEnableSSL,
               "Environment" .= _caEnvironment,
               "DataSources" .= _caDataSources,
               "AppSource" .= _caAppSource,
               "Attributes" .= _caAttributes,
               "Domains" .= _caDomains,
               "Description" .= _caDescription,
               "StackId" .= _caStackId, "Name" .= _caName,
               "Type" .= _caType]

instance ToPath CreateApp where
        toPath = const "/"

instance ToQuery CreateApp where
        toQuery = const mempty

-- | Contains the response to a @CreateApp@ request.
--
-- /See:/ 'createAppResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'carsAppId'
--
-- * 'carsStatus'
data CreateAppResponse = CreateAppResponse'
    { _carsAppId  :: !(Maybe Text)
    , _carsStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'CreateAppResponse' smart constructor.
createAppResponse :: Int -> CreateAppResponse
createAppResponse pStatus_ =
    CreateAppResponse'
    { _carsAppId = Nothing
    , _carsStatus = pStatus_
    }

-- | The app ID.
carsAppId :: Lens' CreateAppResponse (Maybe Text)
carsAppId = lens _carsAppId (\ s a -> s{_carsAppId = a});

-- | Undocumented member.
carsStatus :: Lens' CreateAppResponse Int
carsStatus = lens _carsStatus (\ s a -> s{_carsStatus = a});
