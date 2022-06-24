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
-- Module      : Amazonka.RobOMaker.Types.Fleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RobOMaker.Types.Fleet where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.RobOMaker.Types.DeploymentStatus

-- | Information about a fleet.
--
-- /See:/ 'newFleet' smart constructor.
data Fleet = Fleet'
  { -- | The name of the fleet.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the fleet.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the last deployment job.
    lastDeploymentJob :: Prelude.Maybe Prelude.Text,
    -- | The status of the last fleet deployment.
    lastDeploymentStatus :: Prelude.Maybe DeploymentStatus,
    -- | The time of the last deployment.
    lastDeploymentTime :: Prelude.Maybe Core.POSIX,
    -- | The time, in milliseconds since the epoch, when the fleet was created.
    createdAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Fleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'fleet_name' - The name of the fleet.
--
-- 'arn', 'fleet_arn' - The Amazon Resource Name (ARN) of the fleet.
--
-- 'lastDeploymentJob', 'fleet_lastDeploymentJob' - The Amazon Resource Name (ARN) of the last deployment job.
--
-- 'lastDeploymentStatus', 'fleet_lastDeploymentStatus' - The status of the last fleet deployment.
--
-- 'lastDeploymentTime', 'fleet_lastDeploymentTime' - The time of the last deployment.
--
-- 'createdAt', 'fleet_createdAt' - The time, in milliseconds since the epoch, when the fleet was created.
newFleet ::
  Fleet
newFleet =
  Fleet'
    { name = Prelude.Nothing,
      arn = Prelude.Nothing,
      lastDeploymentJob = Prelude.Nothing,
      lastDeploymentStatus = Prelude.Nothing,
      lastDeploymentTime = Prelude.Nothing,
      createdAt = Prelude.Nothing
    }

-- | The name of the fleet.
fleet_name :: Lens.Lens' Fleet (Prelude.Maybe Prelude.Text)
fleet_name = Lens.lens (\Fleet' {name} -> name) (\s@Fleet' {} a -> s {name = a} :: Fleet)

-- | The Amazon Resource Name (ARN) of the fleet.
fleet_arn :: Lens.Lens' Fleet (Prelude.Maybe Prelude.Text)
fleet_arn = Lens.lens (\Fleet' {arn} -> arn) (\s@Fleet' {} a -> s {arn = a} :: Fleet)

-- | The Amazon Resource Name (ARN) of the last deployment job.
fleet_lastDeploymentJob :: Lens.Lens' Fleet (Prelude.Maybe Prelude.Text)
fleet_lastDeploymentJob = Lens.lens (\Fleet' {lastDeploymentJob} -> lastDeploymentJob) (\s@Fleet' {} a -> s {lastDeploymentJob = a} :: Fleet)

-- | The status of the last fleet deployment.
fleet_lastDeploymentStatus :: Lens.Lens' Fleet (Prelude.Maybe DeploymentStatus)
fleet_lastDeploymentStatus = Lens.lens (\Fleet' {lastDeploymentStatus} -> lastDeploymentStatus) (\s@Fleet' {} a -> s {lastDeploymentStatus = a} :: Fleet)

-- | The time of the last deployment.
fleet_lastDeploymentTime :: Lens.Lens' Fleet (Prelude.Maybe Prelude.UTCTime)
fleet_lastDeploymentTime = Lens.lens (\Fleet' {lastDeploymentTime} -> lastDeploymentTime) (\s@Fleet' {} a -> s {lastDeploymentTime = a} :: Fleet) Prelude.. Lens.mapping Core._Time

-- | The time, in milliseconds since the epoch, when the fleet was created.
fleet_createdAt :: Lens.Lens' Fleet (Prelude.Maybe Prelude.UTCTime)
fleet_createdAt = Lens.lens (\Fleet' {createdAt} -> createdAt) (\s@Fleet' {} a -> s {createdAt = a} :: Fleet) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON Fleet where
  parseJSON =
    Core.withObject
      "Fleet"
      ( \x ->
          Fleet'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "lastDeploymentJob")
            Prelude.<*> (x Core..:? "lastDeploymentStatus")
            Prelude.<*> (x Core..:? "lastDeploymentTime")
            Prelude.<*> (x Core..:? "createdAt")
      )

instance Prelude.Hashable Fleet where
  hashWithSalt _salt Fleet' {..} =
    _salt `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` lastDeploymentJob
      `Prelude.hashWithSalt` lastDeploymentStatus
      `Prelude.hashWithSalt` lastDeploymentTime
      `Prelude.hashWithSalt` createdAt

instance Prelude.NFData Fleet where
  rnf Fleet' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf lastDeploymentJob
      `Prelude.seq` Prelude.rnf lastDeploymentStatus
      `Prelude.seq` Prelude.rnf lastDeploymentTime
      `Prelude.seq` Prelude.rnf createdAt
