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
-- Module      : Amazonka.NetworkManager.Types.CoreNetworkState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.NetworkManager.Types.CoreNetworkState
  ( CoreNetworkState
      ( ..,
        CoreNetworkState_AVAILABLE,
        CoreNetworkState_CREATING,
        CoreNetworkState_DELETING,
        CoreNetworkState_UPDATING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype CoreNetworkState = CoreNetworkState'
  { fromCoreNetworkState ::
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

pattern CoreNetworkState_AVAILABLE :: CoreNetworkState
pattern CoreNetworkState_AVAILABLE = CoreNetworkState' "AVAILABLE"

pattern CoreNetworkState_CREATING :: CoreNetworkState
pattern CoreNetworkState_CREATING = CoreNetworkState' "CREATING"

pattern CoreNetworkState_DELETING :: CoreNetworkState
pattern CoreNetworkState_DELETING = CoreNetworkState' "DELETING"

pattern CoreNetworkState_UPDATING :: CoreNetworkState
pattern CoreNetworkState_UPDATING = CoreNetworkState' "UPDATING"

{-# COMPLETE
  CoreNetworkState_AVAILABLE,
  CoreNetworkState_CREATING,
  CoreNetworkState_DELETING,
  CoreNetworkState_UPDATING,
  CoreNetworkState'
  #-}
