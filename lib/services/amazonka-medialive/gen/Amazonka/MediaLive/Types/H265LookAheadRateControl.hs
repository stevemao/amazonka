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
-- Module      : Amazonka.MediaLive.Types.H265LookAheadRateControl
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.H265LookAheadRateControl
  ( H265LookAheadRateControl
      ( ..,
        H265LookAheadRateControl_HIGH,
        H265LookAheadRateControl_LOW,
        H265LookAheadRateControl_MEDIUM
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | H265 Look Ahead Rate Control
newtype H265LookAheadRateControl = H265LookAheadRateControl'
  { fromH265LookAheadRateControl ::
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

pattern H265LookAheadRateControl_HIGH :: H265LookAheadRateControl
pattern H265LookAheadRateControl_HIGH = H265LookAheadRateControl' "HIGH"

pattern H265LookAheadRateControl_LOW :: H265LookAheadRateControl
pattern H265LookAheadRateControl_LOW = H265LookAheadRateControl' "LOW"

pattern H265LookAheadRateControl_MEDIUM :: H265LookAheadRateControl
pattern H265LookAheadRateControl_MEDIUM = H265LookAheadRateControl' "MEDIUM"

{-# COMPLETE
  H265LookAheadRateControl_HIGH,
  H265LookAheadRateControl_LOW,
  H265LookAheadRateControl_MEDIUM,
  H265LookAheadRateControl'
  #-}
