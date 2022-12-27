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
-- Module      : Amazonka.DrS.Types.RecoveryInstanceFailback
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DrS.Types.RecoveryInstanceFailback where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.DrS.Types.FailbackLaunchType
import Amazonka.DrS.Types.FailbackState
import qualified Amazonka.Prelude as Prelude

-- | An object representing failback related information of the Recovery
-- Instance.
--
-- /See:/ 'newRecoveryInstanceFailback' smart constructor.
data RecoveryInstanceFailback = RecoveryInstanceFailback'
  { -- | The date and time the agent on the Recovery Instance was last seen by
    -- the service.
    agentLastSeenByServiceDateTime :: Prelude.Maybe Prelude.Text,
    -- | The amount of time that the Recovery Instance has been replicating for.
    elapsedReplicationDuration :: Prelude.Maybe Prelude.Text,
    -- | The ID of the failback client that this Recovery Instance is associated
    -- with.
    failbackClientID :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the failback client was last seen by the service.
    failbackClientLastSeenByServiceDateTime :: Prelude.Maybe Prelude.Text,
    -- | The date and time that the failback initiation started.
    failbackInitiationTime :: Prelude.Maybe Prelude.Text,
    -- | The Job ID of the last failback log for this Recovery Instance.
    failbackJobID :: Prelude.Maybe Prelude.Text,
    -- | The launch type (Recovery \/ Drill) of the last launch for the failback
    -- replication of this recovery instance.
    failbackLaunchType :: Prelude.Maybe FailbackLaunchType,
    -- | Whether we are failing back to the original Source Server for this
    -- Recovery Instance.
    failbackToOriginalServer :: Prelude.Maybe Prelude.Bool,
    -- | The date and time of the first byte that was replicated from the
    -- Recovery Instance.
    firstByteDateTime :: Prelude.Maybe Prelude.Text,
    -- | The state of the failback process that this Recovery Instance is in.
    state :: Prelude.Maybe FailbackState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecoveryInstanceFailback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'agentLastSeenByServiceDateTime', 'recoveryInstanceFailback_agentLastSeenByServiceDateTime' - The date and time the agent on the Recovery Instance was last seen by
-- the service.
--
-- 'elapsedReplicationDuration', 'recoveryInstanceFailback_elapsedReplicationDuration' - The amount of time that the Recovery Instance has been replicating for.
--
-- 'failbackClientID', 'recoveryInstanceFailback_failbackClientID' - The ID of the failback client that this Recovery Instance is associated
-- with.
--
-- 'failbackClientLastSeenByServiceDateTime', 'recoveryInstanceFailback_failbackClientLastSeenByServiceDateTime' - The date and time that the failback client was last seen by the service.
--
-- 'failbackInitiationTime', 'recoveryInstanceFailback_failbackInitiationTime' - The date and time that the failback initiation started.
--
-- 'failbackJobID', 'recoveryInstanceFailback_failbackJobID' - The Job ID of the last failback log for this Recovery Instance.
--
-- 'failbackLaunchType', 'recoveryInstanceFailback_failbackLaunchType' - The launch type (Recovery \/ Drill) of the last launch for the failback
-- replication of this recovery instance.
--
-- 'failbackToOriginalServer', 'recoveryInstanceFailback_failbackToOriginalServer' - Whether we are failing back to the original Source Server for this
-- Recovery Instance.
--
-- 'firstByteDateTime', 'recoveryInstanceFailback_firstByteDateTime' - The date and time of the first byte that was replicated from the
-- Recovery Instance.
--
-- 'state', 'recoveryInstanceFailback_state' - The state of the failback process that this Recovery Instance is in.
newRecoveryInstanceFailback ::
  RecoveryInstanceFailback
newRecoveryInstanceFailback =
  RecoveryInstanceFailback'
    { agentLastSeenByServiceDateTime =
        Prelude.Nothing,
      elapsedReplicationDuration = Prelude.Nothing,
      failbackClientID = Prelude.Nothing,
      failbackClientLastSeenByServiceDateTime =
        Prelude.Nothing,
      failbackInitiationTime = Prelude.Nothing,
      failbackJobID = Prelude.Nothing,
      failbackLaunchType = Prelude.Nothing,
      failbackToOriginalServer = Prelude.Nothing,
      firstByteDateTime = Prelude.Nothing,
      state = Prelude.Nothing
    }

-- | The date and time the agent on the Recovery Instance was last seen by
-- the service.
recoveryInstanceFailback_agentLastSeenByServiceDateTime :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_agentLastSeenByServiceDateTime = Lens.lens (\RecoveryInstanceFailback' {agentLastSeenByServiceDateTime} -> agentLastSeenByServiceDateTime) (\s@RecoveryInstanceFailback' {} a -> s {agentLastSeenByServiceDateTime = a} :: RecoveryInstanceFailback)

-- | The amount of time that the Recovery Instance has been replicating for.
recoveryInstanceFailback_elapsedReplicationDuration :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_elapsedReplicationDuration = Lens.lens (\RecoveryInstanceFailback' {elapsedReplicationDuration} -> elapsedReplicationDuration) (\s@RecoveryInstanceFailback' {} a -> s {elapsedReplicationDuration = a} :: RecoveryInstanceFailback)

-- | The ID of the failback client that this Recovery Instance is associated
-- with.
recoveryInstanceFailback_failbackClientID :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_failbackClientID = Lens.lens (\RecoveryInstanceFailback' {failbackClientID} -> failbackClientID) (\s@RecoveryInstanceFailback' {} a -> s {failbackClientID = a} :: RecoveryInstanceFailback)

-- | The date and time that the failback client was last seen by the service.
recoveryInstanceFailback_failbackClientLastSeenByServiceDateTime :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_failbackClientLastSeenByServiceDateTime = Lens.lens (\RecoveryInstanceFailback' {failbackClientLastSeenByServiceDateTime} -> failbackClientLastSeenByServiceDateTime) (\s@RecoveryInstanceFailback' {} a -> s {failbackClientLastSeenByServiceDateTime = a} :: RecoveryInstanceFailback)

-- | The date and time that the failback initiation started.
recoveryInstanceFailback_failbackInitiationTime :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_failbackInitiationTime = Lens.lens (\RecoveryInstanceFailback' {failbackInitiationTime} -> failbackInitiationTime) (\s@RecoveryInstanceFailback' {} a -> s {failbackInitiationTime = a} :: RecoveryInstanceFailback)

-- | The Job ID of the last failback log for this Recovery Instance.
recoveryInstanceFailback_failbackJobID :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_failbackJobID = Lens.lens (\RecoveryInstanceFailback' {failbackJobID} -> failbackJobID) (\s@RecoveryInstanceFailback' {} a -> s {failbackJobID = a} :: RecoveryInstanceFailback)

-- | The launch type (Recovery \/ Drill) of the last launch for the failback
-- replication of this recovery instance.
recoveryInstanceFailback_failbackLaunchType :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe FailbackLaunchType)
recoveryInstanceFailback_failbackLaunchType = Lens.lens (\RecoveryInstanceFailback' {failbackLaunchType} -> failbackLaunchType) (\s@RecoveryInstanceFailback' {} a -> s {failbackLaunchType = a} :: RecoveryInstanceFailback)

-- | Whether we are failing back to the original Source Server for this
-- Recovery Instance.
recoveryInstanceFailback_failbackToOriginalServer :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Bool)
recoveryInstanceFailback_failbackToOriginalServer = Lens.lens (\RecoveryInstanceFailback' {failbackToOriginalServer} -> failbackToOriginalServer) (\s@RecoveryInstanceFailback' {} a -> s {failbackToOriginalServer = a} :: RecoveryInstanceFailback)

-- | The date and time of the first byte that was replicated from the
-- Recovery Instance.
recoveryInstanceFailback_firstByteDateTime :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe Prelude.Text)
recoveryInstanceFailback_firstByteDateTime = Lens.lens (\RecoveryInstanceFailback' {firstByteDateTime} -> firstByteDateTime) (\s@RecoveryInstanceFailback' {} a -> s {firstByteDateTime = a} :: RecoveryInstanceFailback)

-- | The state of the failback process that this Recovery Instance is in.
recoveryInstanceFailback_state :: Lens.Lens' RecoveryInstanceFailback (Prelude.Maybe FailbackState)
recoveryInstanceFailback_state = Lens.lens (\RecoveryInstanceFailback' {state} -> state) (\s@RecoveryInstanceFailback' {} a -> s {state = a} :: RecoveryInstanceFailback)

instance Data.FromJSON RecoveryInstanceFailback where
  parseJSON =
    Data.withObject
      "RecoveryInstanceFailback"
      ( \x ->
          RecoveryInstanceFailback'
            Prelude.<$> (x Data..:? "agentLastSeenByServiceDateTime")
            Prelude.<*> (x Data..:? "elapsedReplicationDuration")
            Prelude.<*> (x Data..:? "failbackClientID")
            Prelude.<*> ( x
                            Data..:? "failbackClientLastSeenByServiceDateTime"
                        )
            Prelude.<*> (x Data..:? "failbackInitiationTime")
            Prelude.<*> (x Data..:? "failbackJobID")
            Prelude.<*> (x Data..:? "failbackLaunchType")
            Prelude.<*> (x Data..:? "failbackToOriginalServer")
            Prelude.<*> (x Data..:? "firstByteDateTime")
            Prelude.<*> (x Data..:? "state")
      )

instance Prelude.Hashable RecoveryInstanceFailback where
  hashWithSalt _salt RecoveryInstanceFailback' {..} =
    _salt
      `Prelude.hashWithSalt` agentLastSeenByServiceDateTime
      `Prelude.hashWithSalt` elapsedReplicationDuration
      `Prelude.hashWithSalt` failbackClientID
      `Prelude.hashWithSalt` failbackClientLastSeenByServiceDateTime
      `Prelude.hashWithSalt` failbackInitiationTime
      `Prelude.hashWithSalt` failbackJobID
      `Prelude.hashWithSalt` failbackLaunchType
      `Prelude.hashWithSalt` failbackToOriginalServer
      `Prelude.hashWithSalt` firstByteDateTime
      `Prelude.hashWithSalt` state

instance Prelude.NFData RecoveryInstanceFailback where
  rnf RecoveryInstanceFailback' {..} =
    Prelude.rnf agentLastSeenByServiceDateTime
      `Prelude.seq` Prelude.rnf elapsedReplicationDuration
      `Prelude.seq` Prelude.rnf failbackClientID
      `Prelude.seq` Prelude.rnf failbackClientLastSeenByServiceDateTime
      `Prelude.seq` Prelude.rnf failbackInitiationTime
      `Prelude.seq` Prelude.rnf failbackJobID
      `Prelude.seq` Prelude.rnf failbackLaunchType
      `Prelude.seq` Prelude.rnf failbackToOriginalServer
      `Prelude.seq` Prelude.rnf firstByteDateTime
      `Prelude.seq` Prelude.rnf state
