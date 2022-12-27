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
-- Module      : Amazonka.EC2.Types.FleetLaunchTemplateConfigRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.FleetLaunchTemplateConfigRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.FleetLaunchTemplateOverridesRequest
import Amazonka.EC2.Types.FleetLaunchTemplateSpecificationRequest
import qualified Amazonka.Prelude as Prelude

-- | Describes a launch template and overrides.
--
-- /See:/ 'newFleetLaunchTemplateConfigRequest' smart constructor.
data FleetLaunchTemplateConfigRequest = FleetLaunchTemplateConfigRequest'
  { -- | The launch template to use. You must specify either the launch template
    -- ID or launch template name in the request.
    launchTemplateSpecification :: Prelude.Maybe FleetLaunchTemplateSpecificationRequest,
    -- | Any parameters that you specify override the same parameters in the
    -- launch template.
    --
    -- For fleets of type @request@ and @maintain@, a maximum of 300 items is
    -- allowed across all launch templates.
    overrides :: Prelude.Maybe [FleetLaunchTemplateOverridesRequest]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FleetLaunchTemplateConfigRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'launchTemplateSpecification', 'fleetLaunchTemplateConfigRequest_launchTemplateSpecification' - The launch template to use. You must specify either the launch template
-- ID or launch template name in the request.
--
-- 'overrides', 'fleetLaunchTemplateConfigRequest_overrides' - Any parameters that you specify override the same parameters in the
-- launch template.
--
-- For fleets of type @request@ and @maintain@, a maximum of 300 items is
-- allowed across all launch templates.
newFleetLaunchTemplateConfigRequest ::
  FleetLaunchTemplateConfigRequest
newFleetLaunchTemplateConfigRequest =
  FleetLaunchTemplateConfigRequest'
    { launchTemplateSpecification =
        Prelude.Nothing,
      overrides = Prelude.Nothing
    }

-- | The launch template to use. You must specify either the launch template
-- ID or launch template name in the request.
fleetLaunchTemplateConfigRequest_launchTemplateSpecification :: Lens.Lens' FleetLaunchTemplateConfigRequest (Prelude.Maybe FleetLaunchTemplateSpecificationRequest)
fleetLaunchTemplateConfigRequest_launchTemplateSpecification = Lens.lens (\FleetLaunchTemplateConfigRequest' {launchTemplateSpecification} -> launchTemplateSpecification) (\s@FleetLaunchTemplateConfigRequest' {} a -> s {launchTemplateSpecification = a} :: FleetLaunchTemplateConfigRequest)

-- | Any parameters that you specify override the same parameters in the
-- launch template.
--
-- For fleets of type @request@ and @maintain@, a maximum of 300 items is
-- allowed across all launch templates.
fleetLaunchTemplateConfigRequest_overrides :: Lens.Lens' FleetLaunchTemplateConfigRequest (Prelude.Maybe [FleetLaunchTemplateOverridesRequest])
fleetLaunchTemplateConfigRequest_overrides = Lens.lens (\FleetLaunchTemplateConfigRequest' {overrides} -> overrides) (\s@FleetLaunchTemplateConfigRequest' {} a -> s {overrides = a} :: FleetLaunchTemplateConfigRequest) Prelude.. Lens.mapping Lens.coerced

instance
  Prelude.Hashable
    FleetLaunchTemplateConfigRequest
  where
  hashWithSalt
    _salt
    FleetLaunchTemplateConfigRequest' {..} =
      _salt
        `Prelude.hashWithSalt` launchTemplateSpecification
        `Prelude.hashWithSalt` overrides

instance
  Prelude.NFData
    FleetLaunchTemplateConfigRequest
  where
  rnf FleetLaunchTemplateConfigRequest' {..} =
    Prelude.rnf launchTemplateSpecification
      `Prelude.seq` Prelude.rnf overrides

instance
  Data.ToQuery
    FleetLaunchTemplateConfigRequest
  where
  toQuery FleetLaunchTemplateConfigRequest' {..} =
    Prelude.mconcat
      [ "LaunchTemplateSpecification"
          Data.=: launchTemplateSpecification,
        Data.toQuery
          (Data.toQueryList "Overrides" Prelude.<$> overrides)
      ]
