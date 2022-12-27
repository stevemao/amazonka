{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EC2.Types.FleetSpotMaintenanceStrategies
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FleetSpotMaintenanceStrategies where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.FleetSpotCapacityRebalance
import qualified Amazonka.Prelude as Prelude

-- | The strategies for managing your Spot Instances that are at an elevated
-- risk of being interrupted.
--
-- /See:/ 'newFleetSpotMaintenanceStrategies' smart constructor.
data FleetSpotMaintenanceStrategies = FleetSpotMaintenanceStrategies'
  { -- | The strategy to use when Amazon EC2 emits a signal that your Spot
    -- Instance is at an elevated risk of being interrupted.
    capacityRebalance :: Prelude.Maybe FleetSpotCapacityRebalance
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FleetSpotMaintenanceStrategies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'capacityRebalance', 'fleetSpotMaintenanceStrategies_capacityRebalance' - The strategy to use when Amazon EC2 emits a signal that your Spot
-- Instance is at an elevated risk of being interrupted.
newFleetSpotMaintenanceStrategies ::
  FleetSpotMaintenanceStrategies
newFleetSpotMaintenanceStrategies =
  FleetSpotMaintenanceStrategies'
    { capacityRebalance =
        Prelude.Nothing
    }

-- | The strategy to use when Amazon EC2 emits a signal that your Spot
-- Instance is at an elevated risk of being interrupted.
fleetSpotMaintenanceStrategies_capacityRebalance :: Lens.Lens' FleetSpotMaintenanceStrategies (Prelude.Maybe FleetSpotCapacityRebalance)
fleetSpotMaintenanceStrategies_capacityRebalance = Lens.lens (\FleetSpotMaintenanceStrategies' {capacityRebalance} -> capacityRebalance) (\s@FleetSpotMaintenanceStrategies' {} a -> s {capacityRebalance = a} :: FleetSpotMaintenanceStrategies)

instance Data.FromXML FleetSpotMaintenanceStrategies where
  parseXML x =
    FleetSpotMaintenanceStrategies'
      Prelude.<$> (x Data..@? "capacityRebalance")

instance
  Prelude.Hashable
    FleetSpotMaintenanceStrategies
  where
  hashWithSalt
    _salt
    FleetSpotMaintenanceStrategies' {..} =
      _salt `Prelude.hashWithSalt` capacityRebalance

instance
  Prelude.NFData
    FleetSpotMaintenanceStrategies
  where
  rnf FleetSpotMaintenanceStrategies' {..} =
    Prelude.rnf capacityRebalance
