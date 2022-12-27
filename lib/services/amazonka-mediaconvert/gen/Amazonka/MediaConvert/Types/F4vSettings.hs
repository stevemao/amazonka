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
-- Module      : Amazonka.MediaConvert.Types.F4vSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.F4vSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.MediaConvert.Types.F4vMoovPlacement
import qualified Amazonka.Prelude as Prelude

-- | Settings for F4v container
--
-- /See:/ 'newF4vSettings' smart constructor.
data F4vSettings = F4vSettings'
  { -- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the
    -- beginning of the archive as required for progressive downloading.
    -- Otherwise it is placed normally at the end.
    moovPlacement :: Prelude.Maybe F4vMoovPlacement
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'F4vSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'moovPlacement', 'f4vSettings_moovPlacement' - If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the
-- beginning of the archive as required for progressive downloading.
-- Otherwise it is placed normally at the end.
newF4vSettings ::
  F4vSettings
newF4vSettings =
  F4vSettings' {moovPlacement = Prelude.Nothing}

-- | If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the
-- beginning of the archive as required for progressive downloading.
-- Otherwise it is placed normally at the end.
f4vSettings_moovPlacement :: Lens.Lens' F4vSettings (Prelude.Maybe F4vMoovPlacement)
f4vSettings_moovPlacement = Lens.lens (\F4vSettings' {moovPlacement} -> moovPlacement) (\s@F4vSettings' {} a -> s {moovPlacement = a} :: F4vSettings)

instance Data.FromJSON F4vSettings where
  parseJSON =
    Data.withObject
      "F4vSettings"
      ( \x ->
          F4vSettings'
            Prelude.<$> (x Data..:? "moovPlacement")
      )

instance Prelude.Hashable F4vSettings where
  hashWithSalt _salt F4vSettings' {..} =
    _salt `Prelude.hashWithSalt` moovPlacement

instance Prelude.NFData F4vSettings where
  rnf F4vSettings' {..} = Prelude.rnf moovPlacement

instance Data.ToJSON F4vSettings where
  toJSON F4vSettings' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("moovPlacement" Data..=)
              Prelude.<$> moovPlacement
          ]
      )
