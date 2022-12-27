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
-- Module      : Amazonka.MGN.Types.Licensing
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MGN.Types.Licensing where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configure Licensing.
--
-- /See:/ 'newLicensing' smart constructor.
data Licensing = Licensing'
  { -- | Configure BYOL OS licensing.
    osByol :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Licensing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'osByol', 'licensing_osByol' - Configure BYOL OS licensing.
newLicensing ::
  Licensing
newLicensing = Licensing' {osByol = Prelude.Nothing}

-- | Configure BYOL OS licensing.
licensing_osByol :: Lens.Lens' Licensing (Prelude.Maybe Prelude.Bool)
licensing_osByol = Lens.lens (\Licensing' {osByol} -> osByol) (\s@Licensing' {} a -> s {osByol = a} :: Licensing)

instance Data.FromJSON Licensing where
  parseJSON =
    Data.withObject
      "Licensing"
      (\x -> Licensing' Prelude.<$> (x Data..:? "osByol"))

instance Prelude.Hashable Licensing where
  hashWithSalt _salt Licensing' {..} =
    _salt `Prelude.hashWithSalt` osByol

instance Prelude.NFData Licensing where
  rnf Licensing' {..} = Prelude.rnf osByol

instance Data.ToJSON Licensing where
  toJSON Licensing' {..} =
    Data.object
      ( Prelude.catMaybes
          [("osByol" Data..=) Prelude.<$> osByol]
      )
