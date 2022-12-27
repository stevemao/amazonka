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
-- Module      : Amazonka.QuickSight.Types.ProgressBarOptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.ProgressBarOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.QuickSight.Types.Visibility

-- | The options that determine the presentation of the progress bar of a KPI
-- visual.
--
-- /See:/ 'newProgressBarOptions' smart constructor.
data ProgressBarOptions = ProgressBarOptions'
  { -- | The visibility of the progress bar.
    visibility :: Prelude.Maybe Visibility
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProgressBarOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'visibility', 'progressBarOptions_visibility' - The visibility of the progress bar.
newProgressBarOptions ::
  ProgressBarOptions
newProgressBarOptions =
  ProgressBarOptions' {visibility = Prelude.Nothing}

-- | The visibility of the progress bar.
progressBarOptions_visibility :: Lens.Lens' ProgressBarOptions (Prelude.Maybe Visibility)
progressBarOptions_visibility = Lens.lens (\ProgressBarOptions' {visibility} -> visibility) (\s@ProgressBarOptions' {} a -> s {visibility = a} :: ProgressBarOptions)

instance Data.FromJSON ProgressBarOptions where
  parseJSON =
    Data.withObject
      "ProgressBarOptions"
      ( \x ->
          ProgressBarOptions'
            Prelude.<$> (x Data..:? "Visibility")
      )

instance Prelude.Hashable ProgressBarOptions where
  hashWithSalt _salt ProgressBarOptions' {..} =
    _salt `Prelude.hashWithSalt` visibility

instance Prelude.NFData ProgressBarOptions where
  rnf ProgressBarOptions' {..} = Prelude.rnf visibility

instance Data.ToJSON ProgressBarOptions where
  toJSON ProgressBarOptions' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Visibility" Data..=) Prelude.<$> visibility]
      )
