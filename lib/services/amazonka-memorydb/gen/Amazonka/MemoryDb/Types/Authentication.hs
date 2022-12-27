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
-- Module      : Amazonka.MemoryDb.Types.Authentication
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MemoryDb.Types.Authentication where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.MemoryDb.Types.AuthenticationType
import qualified Amazonka.Prelude as Prelude

-- | Denotes the user\'s authentication properties, such as whether it
-- requires a password to authenticate. Used in output responses.
--
-- /See:/ 'newAuthentication' smart constructor.
data Authentication = Authentication'
  { -- | The number of passwords belonging to the user. The maximum is two.
    passwordCount :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether the user requires a password to authenticate.
    type' :: Prelude.Maybe AuthenticationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Authentication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'passwordCount', 'authentication_passwordCount' - The number of passwords belonging to the user. The maximum is two.
--
-- 'type'', 'authentication_type' - Indicates whether the user requires a password to authenticate.
newAuthentication ::
  Authentication
newAuthentication =
  Authentication'
    { passwordCount = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The number of passwords belonging to the user. The maximum is two.
authentication_passwordCount :: Lens.Lens' Authentication (Prelude.Maybe Prelude.Int)
authentication_passwordCount = Lens.lens (\Authentication' {passwordCount} -> passwordCount) (\s@Authentication' {} a -> s {passwordCount = a} :: Authentication)

-- | Indicates whether the user requires a password to authenticate.
authentication_type :: Lens.Lens' Authentication (Prelude.Maybe AuthenticationType)
authentication_type = Lens.lens (\Authentication' {type'} -> type') (\s@Authentication' {} a -> s {type' = a} :: Authentication)

instance Data.FromJSON Authentication where
  parseJSON =
    Data.withObject
      "Authentication"
      ( \x ->
          Authentication'
            Prelude.<$> (x Data..:? "PasswordCount")
            Prelude.<*> (x Data..:? "Type")
      )

instance Prelude.Hashable Authentication where
  hashWithSalt _salt Authentication' {..} =
    _salt `Prelude.hashWithSalt` passwordCount
      `Prelude.hashWithSalt` type'

instance Prelude.NFData Authentication where
  rnf Authentication' {..} =
    Prelude.rnf passwordCount
      `Prelude.seq` Prelude.rnf type'
