{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Route53Resolver.Types.ResolverQueryLogConfigStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Resolver.Types.ResolverQueryLogConfigStatus
  ( ResolverQueryLogConfigStatus
      ( ..,
        ResolverQueryLogConfigStatus_CREATED,
        ResolverQueryLogConfigStatus_CREATING,
        ResolverQueryLogConfigStatus_DELETING,
        ResolverQueryLogConfigStatus_FAILED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ResolverQueryLogConfigStatus = ResolverQueryLogConfigStatus'
  { fromResolverQueryLogConfigStatus ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern ResolverQueryLogConfigStatus_CREATED :: ResolverQueryLogConfigStatus
pattern ResolverQueryLogConfigStatus_CREATED = ResolverQueryLogConfigStatus' "CREATED"

pattern ResolverQueryLogConfigStatus_CREATING :: ResolverQueryLogConfigStatus
pattern ResolverQueryLogConfigStatus_CREATING = ResolverQueryLogConfigStatus' "CREATING"

pattern ResolverQueryLogConfigStatus_DELETING :: ResolverQueryLogConfigStatus
pattern ResolverQueryLogConfigStatus_DELETING = ResolverQueryLogConfigStatus' "DELETING"

pattern ResolverQueryLogConfigStatus_FAILED :: ResolverQueryLogConfigStatus
pattern ResolverQueryLogConfigStatus_FAILED = ResolverQueryLogConfigStatus' "FAILED"

{-# COMPLETE
  ResolverQueryLogConfigStatus_CREATED,
  ResolverQueryLogConfigStatus_CREATING,
  ResolverQueryLogConfigStatus_DELETING,
  ResolverQueryLogConfigStatus_FAILED,
  ResolverQueryLogConfigStatus'
  #-}
