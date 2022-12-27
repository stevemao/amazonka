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
-- Module      : Amazonka.SageMaker.Types.MonitoringType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.MonitoringType
  ( MonitoringType
      ( ..,
        MonitoringType_DataQuality,
        MonitoringType_ModelBias,
        MonitoringType_ModelExplainability,
        MonitoringType_ModelQuality
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype MonitoringType = MonitoringType'
  { fromMonitoringType ::
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

pattern MonitoringType_DataQuality :: MonitoringType
pattern MonitoringType_DataQuality = MonitoringType' "DataQuality"

pattern MonitoringType_ModelBias :: MonitoringType
pattern MonitoringType_ModelBias = MonitoringType' "ModelBias"

pattern MonitoringType_ModelExplainability :: MonitoringType
pattern MonitoringType_ModelExplainability = MonitoringType' "ModelExplainability"

pattern MonitoringType_ModelQuality :: MonitoringType
pattern MonitoringType_ModelQuality = MonitoringType' "ModelQuality"

{-# COMPLETE
  MonitoringType_DataQuality,
  MonitoringType_ModelBias,
  MonitoringType_ModelExplainability,
  MonitoringType_ModelQuality,
  MonitoringType'
  #-}
