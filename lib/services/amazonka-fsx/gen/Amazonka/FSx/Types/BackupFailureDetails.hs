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
-- Module      : Amazonka.FSx.Types.BackupFailureDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.BackupFailureDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | If backup creation fails, this structure contains the details of that
-- failure.
--
-- /See:/ 'newBackupFailureDetails' smart constructor.
data BackupFailureDetails = BackupFailureDetails'
  { -- | A message describing the backup-creation failure.
    message :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BackupFailureDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'backupFailureDetails_message' - A message describing the backup-creation failure.
newBackupFailureDetails ::
  BackupFailureDetails
newBackupFailureDetails =
  BackupFailureDetails' {message = Prelude.Nothing}

-- | A message describing the backup-creation failure.
backupFailureDetails_message :: Lens.Lens' BackupFailureDetails (Prelude.Maybe Prelude.Text)
backupFailureDetails_message = Lens.lens (\BackupFailureDetails' {message} -> message) (\s@BackupFailureDetails' {} a -> s {message = a} :: BackupFailureDetails)

instance Data.FromJSON BackupFailureDetails where
  parseJSON =
    Data.withObject
      "BackupFailureDetails"
      ( \x ->
          BackupFailureDetails'
            Prelude.<$> (x Data..:? "Message")
      )

instance Prelude.Hashable BackupFailureDetails where
  hashWithSalt _salt BackupFailureDetails' {..} =
    _salt `Prelude.hashWithSalt` message

instance Prelude.NFData BackupFailureDetails where
  rnf BackupFailureDetails' {..} = Prelude.rnf message
