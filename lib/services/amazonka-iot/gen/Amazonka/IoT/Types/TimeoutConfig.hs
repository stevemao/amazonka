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
-- Module      : Amazonka.IoT.Types.TimeoutConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.TimeoutConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies the amount of time each device has to finish its execution of
-- the job. A timer is started when the job execution status is set to
-- @IN_PROGRESS@. If the job execution status is not set to another
-- terminal state before the timer expires, it will be automatically set to
-- @TIMED_OUT@.
--
-- /See:/ 'newTimeoutConfig' smart constructor.
data TimeoutConfig = TimeoutConfig'
  { -- | Specifies the amount of time, in minutes, this device has to finish
    -- execution of this job. The timeout interval can be anywhere between 1
    -- minute and 7 days (1 to 10080 minutes). The in progress timer can\'t be
    -- updated and will apply to all job executions for the job. Whenever a job
    -- execution remains in the IN_PROGRESS status for longer than this
    -- interval, the job execution will fail and switch to the terminal
    -- @TIMED_OUT@ status.
    inProgressTimeoutInMinutes :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimeoutConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inProgressTimeoutInMinutes', 'timeoutConfig_inProgressTimeoutInMinutes' - Specifies the amount of time, in minutes, this device has to finish
-- execution of this job. The timeout interval can be anywhere between 1
-- minute and 7 days (1 to 10080 minutes). The in progress timer can\'t be
-- updated and will apply to all job executions for the job. Whenever a job
-- execution remains in the IN_PROGRESS status for longer than this
-- interval, the job execution will fail and switch to the terminal
-- @TIMED_OUT@ status.
newTimeoutConfig ::
  TimeoutConfig
newTimeoutConfig =
  TimeoutConfig'
    { inProgressTimeoutInMinutes =
        Prelude.Nothing
    }

-- | Specifies the amount of time, in minutes, this device has to finish
-- execution of this job. The timeout interval can be anywhere between 1
-- minute and 7 days (1 to 10080 minutes). The in progress timer can\'t be
-- updated and will apply to all job executions for the job. Whenever a job
-- execution remains in the IN_PROGRESS status for longer than this
-- interval, the job execution will fail and switch to the terminal
-- @TIMED_OUT@ status.
timeoutConfig_inProgressTimeoutInMinutes :: Lens.Lens' TimeoutConfig (Prelude.Maybe Prelude.Integer)
timeoutConfig_inProgressTimeoutInMinutes = Lens.lens (\TimeoutConfig' {inProgressTimeoutInMinutes} -> inProgressTimeoutInMinutes) (\s@TimeoutConfig' {} a -> s {inProgressTimeoutInMinutes = a} :: TimeoutConfig)

instance Data.FromJSON TimeoutConfig where
  parseJSON =
    Data.withObject
      "TimeoutConfig"
      ( \x ->
          TimeoutConfig'
            Prelude.<$> (x Data..:? "inProgressTimeoutInMinutes")
      )

instance Prelude.Hashable TimeoutConfig where
  hashWithSalt _salt TimeoutConfig' {..} =
    _salt
      `Prelude.hashWithSalt` inProgressTimeoutInMinutes

instance Prelude.NFData TimeoutConfig where
  rnf TimeoutConfig' {..} =
    Prelude.rnf inProgressTimeoutInMinutes

instance Data.ToJSON TimeoutConfig where
  toJSON TimeoutConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("inProgressTimeoutInMinutes" Data..=)
              Prelude.<$> inProgressTimeoutInMinutes
          ]
      )
