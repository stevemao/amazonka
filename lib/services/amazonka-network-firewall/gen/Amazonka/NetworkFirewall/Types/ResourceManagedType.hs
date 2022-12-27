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
-- Module      : Amazonka.NetworkFirewall.Types.ResourceManagedType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkFirewall.Types.ResourceManagedType
  ( ResourceManagedType
      ( ..,
        ResourceManagedType_AWS_MANAGED_DOMAIN_LISTS,
        ResourceManagedType_AWS_MANAGED_THREAT_SIGNATURES
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ResourceManagedType = ResourceManagedType'
  { fromResourceManagedType ::
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

pattern ResourceManagedType_AWS_MANAGED_DOMAIN_LISTS :: ResourceManagedType
pattern ResourceManagedType_AWS_MANAGED_DOMAIN_LISTS = ResourceManagedType' "AWS_MANAGED_DOMAIN_LISTS"

pattern ResourceManagedType_AWS_MANAGED_THREAT_SIGNATURES :: ResourceManagedType
pattern ResourceManagedType_AWS_MANAGED_THREAT_SIGNATURES = ResourceManagedType' "AWS_MANAGED_THREAT_SIGNATURES"

{-# COMPLETE
  ResourceManagedType_AWS_MANAGED_DOMAIN_LISTS,
  ResourceManagedType_AWS_MANAGED_THREAT_SIGNATURES,
  ResourceManagedType'
  #-}
