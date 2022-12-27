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
-- Module      : Amazonka.CostExplorer.Types.AnomalyFeedbackType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.AnomalyFeedbackType
  ( AnomalyFeedbackType
      ( ..,
        AnomalyFeedbackType_NO,
        AnomalyFeedbackType_PLANNED_ACTIVITY,
        AnomalyFeedbackType_YES
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype AnomalyFeedbackType = AnomalyFeedbackType'
  { fromAnomalyFeedbackType ::
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

pattern AnomalyFeedbackType_NO :: AnomalyFeedbackType
pattern AnomalyFeedbackType_NO = AnomalyFeedbackType' "NO"

pattern AnomalyFeedbackType_PLANNED_ACTIVITY :: AnomalyFeedbackType
pattern AnomalyFeedbackType_PLANNED_ACTIVITY = AnomalyFeedbackType' "PLANNED_ACTIVITY"

pattern AnomalyFeedbackType_YES :: AnomalyFeedbackType
pattern AnomalyFeedbackType_YES = AnomalyFeedbackType' "YES"

{-# COMPLETE
  AnomalyFeedbackType_NO,
  AnomalyFeedbackType_PLANNED_ACTIVITY,
  AnomalyFeedbackType_YES,
  AnomalyFeedbackType'
  #-}
