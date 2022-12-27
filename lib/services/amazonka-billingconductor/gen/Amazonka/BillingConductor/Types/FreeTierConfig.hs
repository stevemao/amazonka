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
-- Module      : Amazonka.BillingConductor.Types.FreeTierConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BillingConductor.Types.FreeTierConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The possible Amazon Web Services Free Tier configurations.
--
-- /See:/ 'newFreeTierConfig' smart constructor.
data FreeTierConfig = FreeTierConfig'
  { -- | Activate or deactivate Amazon Web Services Free Tier application.
    activated :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FreeTierConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'activated', 'freeTierConfig_activated' - Activate or deactivate Amazon Web Services Free Tier application.
newFreeTierConfig ::
  -- | 'activated'
  Prelude.Bool ->
  FreeTierConfig
newFreeTierConfig pActivated_ =
  FreeTierConfig' {activated = pActivated_}

-- | Activate or deactivate Amazon Web Services Free Tier application.
freeTierConfig_activated :: Lens.Lens' FreeTierConfig Prelude.Bool
freeTierConfig_activated = Lens.lens (\FreeTierConfig' {activated} -> activated) (\s@FreeTierConfig' {} a -> s {activated = a} :: FreeTierConfig)

instance Data.FromJSON FreeTierConfig where
  parseJSON =
    Data.withObject
      "FreeTierConfig"
      ( \x ->
          FreeTierConfig' Prelude.<$> (x Data..: "Activated")
      )

instance Prelude.Hashable FreeTierConfig where
  hashWithSalt _salt FreeTierConfig' {..} =
    _salt `Prelude.hashWithSalt` activated

instance Prelude.NFData FreeTierConfig where
  rnf FreeTierConfig' {..} = Prelude.rnf activated
