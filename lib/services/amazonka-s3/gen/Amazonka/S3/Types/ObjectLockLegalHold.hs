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
-- Module      : Amazonka.S3.Types.ObjectLockLegalHold
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.ObjectLockLegalHold where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal
import Amazonka.S3.Types.ObjectLockLegalHoldStatus

-- | A legal hold configuration for an object.
--
-- /See:/ 'newObjectLockLegalHold' smart constructor.
data ObjectLockLegalHold = ObjectLockLegalHold'
  { -- | Indicates whether the specified object has a legal hold in place.
    status :: Prelude.Maybe ObjectLockLegalHoldStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ObjectLockLegalHold' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'objectLockLegalHold_status' - Indicates whether the specified object has a legal hold in place.
newObjectLockLegalHold ::
  ObjectLockLegalHold
newObjectLockLegalHold =
  ObjectLockLegalHold' {status = Prelude.Nothing}

-- | Indicates whether the specified object has a legal hold in place.
objectLockLegalHold_status :: Lens.Lens' ObjectLockLegalHold (Prelude.Maybe ObjectLockLegalHoldStatus)
objectLockLegalHold_status = Lens.lens (\ObjectLockLegalHold' {status} -> status) (\s@ObjectLockLegalHold' {} a -> s {status = a} :: ObjectLockLegalHold)

instance Data.FromXML ObjectLockLegalHold where
  parseXML x =
    ObjectLockLegalHold'
      Prelude.<$> (x Data..@? "Status")

instance Prelude.Hashable ObjectLockLegalHold where
  hashWithSalt _salt ObjectLockLegalHold' {..} =
    _salt `Prelude.hashWithSalt` status

instance Prelude.NFData ObjectLockLegalHold where
  rnf ObjectLockLegalHold' {..} = Prelude.rnf status

instance Data.ToXML ObjectLockLegalHold where
  toXML ObjectLockLegalHold' {..} =
    Prelude.mconcat ["Status" Data.@= status]
