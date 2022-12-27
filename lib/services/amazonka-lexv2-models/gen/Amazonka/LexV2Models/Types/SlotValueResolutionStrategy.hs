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
-- Module      : Amazonka.LexV2Models.Types.SlotValueResolutionStrategy
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexV2Models.Types.SlotValueResolutionStrategy
  ( SlotValueResolutionStrategy
      ( ..,
        SlotValueResolutionStrategy_Concatenation,
        SlotValueResolutionStrategy_OriginalValue,
        SlotValueResolutionStrategy_TopResolution
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype SlotValueResolutionStrategy = SlotValueResolutionStrategy'
  { fromSlotValueResolutionStrategy ::
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

pattern SlotValueResolutionStrategy_Concatenation :: SlotValueResolutionStrategy
pattern SlotValueResolutionStrategy_Concatenation = SlotValueResolutionStrategy' "Concatenation"

pattern SlotValueResolutionStrategy_OriginalValue :: SlotValueResolutionStrategy
pattern SlotValueResolutionStrategy_OriginalValue = SlotValueResolutionStrategy' "OriginalValue"

pattern SlotValueResolutionStrategy_TopResolution :: SlotValueResolutionStrategy
pattern SlotValueResolutionStrategy_TopResolution = SlotValueResolutionStrategy' "TopResolution"

{-# COMPLETE
  SlotValueResolutionStrategy_Concatenation,
  SlotValueResolutionStrategy_OriginalValue,
  SlotValueResolutionStrategy_TopResolution,
  SlotValueResolutionStrategy'
  #-}
