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
-- Module      : Amazonka.QuickSight.Types.MaximumLabelType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.MaximumLabelType where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types.Visibility

-- | The maximum label of a data path label.
--
-- /See:/ 'newMaximumLabelType' smart constructor.
data MaximumLabelType = MaximumLabelType'
  { -- | The visibility of the maximum label.
    visibility :: Prelude.Maybe Visibility
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MaximumLabelType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'visibility', 'maximumLabelType_visibility' - The visibility of the maximum label.
newMaximumLabelType ::
  MaximumLabelType
newMaximumLabelType =
  MaximumLabelType' {visibility = Prelude.Nothing}

-- | The visibility of the maximum label.
maximumLabelType_visibility :: Lens.Lens' MaximumLabelType (Prelude.Maybe Visibility)
maximumLabelType_visibility = Lens.lens (\MaximumLabelType' {visibility} -> visibility) (\s@MaximumLabelType' {} a -> s {visibility = a} :: MaximumLabelType)

instance Data.FromJSON MaximumLabelType where
  parseJSON =
    Data.withObject
      "MaximumLabelType"
      ( \x ->
          MaximumLabelType'
            Prelude.<$> (x Data..:? "Visibility")
      )

instance Prelude.Hashable MaximumLabelType where
  hashWithSalt _salt MaximumLabelType' {..} =
    _salt `Prelude.hashWithSalt` visibility

instance Prelude.NFData MaximumLabelType where
  rnf MaximumLabelType' {..} = Prelude.rnf visibility

instance Data.ToJSON MaximumLabelType where
  toJSON MaximumLabelType' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Visibility" Data..=) Prelude.<$> visibility]
      )
