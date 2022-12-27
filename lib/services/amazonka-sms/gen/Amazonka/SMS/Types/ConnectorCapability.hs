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
-- Module      : Amazonka.SMS.Types.ConnectorCapability
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SMS.Types.ConnectorCapability
  ( ConnectorCapability
      ( ..,
        ConnectorCapability_HYPERV_MANAGER,
        ConnectorCapability_SCVMM,
        ConnectorCapability_SMS_OPTIMIZED,
        ConnectorCapability_SNAPSHOT_BATCHING,
        ConnectorCapability_VSPHERE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ConnectorCapability = ConnectorCapability'
  { fromConnectorCapability ::
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

pattern ConnectorCapability_HYPERV_MANAGER :: ConnectorCapability
pattern ConnectorCapability_HYPERV_MANAGER = ConnectorCapability' "HYPERV-MANAGER"

pattern ConnectorCapability_SCVMM :: ConnectorCapability
pattern ConnectorCapability_SCVMM = ConnectorCapability' "SCVMM"

pattern ConnectorCapability_SMS_OPTIMIZED :: ConnectorCapability
pattern ConnectorCapability_SMS_OPTIMIZED = ConnectorCapability' "SMS_OPTIMIZED"

pattern ConnectorCapability_SNAPSHOT_BATCHING :: ConnectorCapability
pattern ConnectorCapability_SNAPSHOT_BATCHING = ConnectorCapability' "SNAPSHOT_BATCHING"

pattern ConnectorCapability_VSPHERE :: ConnectorCapability
pattern ConnectorCapability_VSPHERE = ConnectorCapability' "VSPHERE"

{-# COMPLETE
  ConnectorCapability_HYPERV_MANAGER,
  ConnectorCapability_SCVMM,
  ConnectorCapability_SMS_OPTIMIZED,
  ConnectorCapability_SNAPSHOT_BATCHING,
  ConnectorCapability_VSPHERE,
  ConnectorCapability'
  #-}
