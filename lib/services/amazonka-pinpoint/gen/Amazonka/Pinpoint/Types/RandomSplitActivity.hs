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
-- Module      : Amazonka.Pinpoint.Types.RandomSplitActivity
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.RandomSplitActivity where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Pinpoint.Types.RandomSplitEntry
import qualified Amazonka.Prelude as Prelude

-- | Specifies the settings for a random split activity in a journey. This
-- type of activity randomly sends specified percentages of participants
-- down one of as many as five paths in a journey, based on conditions that
-- you specify.
--
-- /See:/ 'newRandomSplitActivity' smart constructor.
data RandomSplitActivity = RandomSplitActivity'
  { -- | The paths for the activity, including the percentage of participants to
    -- enter each path and the activity to perform for each path.
    branches :: Prelude.Maybe [RandomSplitEntry]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RandomSplitActivity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'branches', 'randomSplitActivity_branches' - The paths for the activity, including the percentage of participants to
-- enter each path and the activity to perform for each path.
newRandomSplitActivity ::
  RandomSplitActivity
newRandomSplitActivity =
  RandomSplitActivity' {branches = Prelude.Nothing}

-- | The paths for the activity, including the percentage of participants to
-- enter each path and the activity to perform for each path.
randomSplitActivity_branches :: Lens.Lens' RandomSplitActivity (Prelude.Maybe [RandomSplitEntry])
randomSplitActivity_branches = Lens.lens (\RandomSplitActivity' {branches} -> branches) (\s@RandomSplitActivity' {} a -> s {branches = a} :: RandomSplitActivity) Prelude.. Lens.mapping Lens.coerced

instance Data.FromJSON RandomSplitActivity where
  parseJSON =
    Data.withObject
      "RandomSplitActivity"
      ( \x ->
          RandomSplitActivity'
            Prelude.<$> (x Data..:? "Branches" Data..!= Prelude.mempty)
      )

instance Prelude.Hashable RandomSplitActivity where
  hashWithSalt _salt RandomSplitActivity' {..} =
    _salt `Prelude.hashWithSalt` branches

instance Prelude.NFData RandomSplitActivity where
  rnf RandomSplitActivity' {..} = Prelude.rnf branches

instance Data.ToJSON RandomSplitActivity where
  toJSON RandomSplitActivity' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Branches" Data..=) Prelude.<$> branches]
      )
