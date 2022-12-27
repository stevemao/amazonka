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
-- Module      : Amazonka.RobOMaker.Types.SimulationSoftwareSuiteType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.SimulationSoftwareSuiteType
  ( SimulationSoftwareSuiteType
      ( ..,
        SimulationSoftwareSuiteType_Gazebo,
        SimulationSoftwareSuiteType_RosbagPlay,
        SimulationSoftwareSuiteType_SimulationRuntime
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype SimulationSoftwareSuiteType = SimulationSoftwareSuiteType'
  { fromSimulationSoftwareSuiteType ::
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

pattern SimulationSoftwareSuiteType_Gazebo :: SimulationSoftwareSuiteType
pattern SimulationSoftwareSuiteType_Gazebo = SimulationSoftwareSuiteType' "Gazebo"

pattern SimulationSoftwareSuiteType_RosbagPlay :: SimulationSoftwareSuiteType
pattern SimulationSoftwareSuiteType_RosbagPlay = SimulationSoftwareSuiteType' "RosbagPlay"

pattern SimulationSoftwareSuiteType_SimulationRuntime :: SimulationSoftwareSuiteType
pattern SimulationSoftwareSuiteType_SimulationRuntime = SimulationSoftwareSuiteType' "SimulationRuntime"

{-# COMPLETE
  SimulationSoftwareSuiteType_Gazebo,
  SimulationSoftwareSuiteType_RosbagPlay,
  SimulationSoftwareSuiteType_SimulationRuntime,
  SimulationSoftwareSuiteType'
  #-}
