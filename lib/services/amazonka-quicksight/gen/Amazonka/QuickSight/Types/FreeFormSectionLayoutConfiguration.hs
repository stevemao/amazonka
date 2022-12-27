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
-- Module      : Amazonka.QuickSight.Types.FreeFormSectionLayoutConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.FreeFormSectionLayoutConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types.FreeFormLayoutElement

-- | The free-form layout configuration of a section.
--
-- /See:/ 'newFreeFormSectionLayoutConfiguration' smart constructor.
data FreeFormSectionLayoutConfiguration = FreeFormSectionLayoutConfiguration'
  { -- | The elements that are included in the free-form layout.
    elements :: [FreeFormLayoutElement]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FreeFormSectionLayoutConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'elements', 'freeFormSectionLayoutConfiguration_elements' - The elements that are included in the free-form layout.
newFreeFormSectionLayoutConfiguration ::
  FreeFormSectionLayoutConfiguration
newFreeFormSectionLayoutConfiguration =
  FreeFormSectionLayoutConfiguration'
    { elements =
        Prelude.mempty
    }

-- | The elements that are included in the free-form layout.
freeFormSectionLayoutConfiguration_elements :: Lens.Lens' FreeFormSectionLayoutConfiguration [FreeFormLayoutElement]
freeFormSectionLayoutConfiguration_elements = Lens.lens (\FreeFormSectionLayoutConfiguration' {elements} -> elements) (\s@FreeFormSectionLayoutConfiguration' {} a -> s {elements = a} :: FreeFormSectionLayoutConfiguration) Prelude.. Lens.coerced

instance
  Data.FromJSON
    FreeFormSectionLayoutConfiguration
  where
  parseJSON =
    Data.withObject
      "FreeFormSectionLayoutConfiguration"
      ( \x ->
          FreeFormSectionLayoutConfiguration'
            Prelude.<$> (x Data..:? "Elements" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    FreeFormSectionLayoutConfiguration
  where
  hashWithSalt
    _salt
    FreeFormSectionLayoutConfiguration' {..} =
      _salt `Prelude.hashWithSalt` elements

instance
  Prelude.NFData
    FreeFormSectionLayoutConfiguration
  where
  rnf FreeFormSectionLayoutConfiguration' {..} =
    Prelude.rnf elements

instance
  Data.ToJSON
    FreeFormSectionLayoutConfiguration
  where
  toJSON FreeFormSectionLayoutConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("Elements" Data..= elements)]
      )
