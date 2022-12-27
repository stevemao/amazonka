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
-- Module      : Amazonka.ElasticSearch.Types.SnapshotOptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ElasticSearch.Types.SnapshotOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies the time, in UTC format, when the service takes a daily
-- automated snapshot of the specified Elasticsearch domain. Default value
-- is @0@ hours.
--
-- /See:/ 'newSnapshotOptions' smart constructor.
data SnapshotOptions = SnapshotOptions'
  { -- | Specifies the time, in UTC format, when the service takes a daily
    -- automated snapshot of the specified Elasticsearch domain. Default value
    -- is @0@ hours.
    automatedSnapshotStartHour :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnapshotOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'automatedSnapshotStartHour', 'snapshotOptions_automatedSnapshotStartHour' - Specifies the time, in UTC format, when the service takes a daily
-- automated snapshot of the specified Elasticsearch domain. Default value
-- is @0@ hours.
newSnapshotOptions ::
  SnapshotOptions
newSnapshotOptions =
  SnapshotOptions'
    { automatedSnapshotStartHour =
        Prelude.Nothing
    }

-- | Specifies the time, in UTC format, when the service takes a daily
-- automated snapshot of the specified Elasticsearch domain. Default value
-- is @0@ hours.
snapshotOptions_automatedSnapshotStartHour :: Lens.Lens' SnapshotOptions (Prelude.Maybe Prelude.Int)
snapshotOptions_automatedSnapshotStartHour = Lens.lens (\SnapshotOptions' {automatedSnapshotStartHour} -> automatedSnapshotStartHour) (\s@SnapshotOptions' {} a -> s {automatedSnapshotStartHour = a} :: SnapshotOptions)

instance Data.FromJSON SnapshotOptions where
  parseJSON =
    Data.withObject
      "SnapshotOptions"
      ( \x ->
          SnapshotOptions'
            Prelude.<$> (x Data..:? "AutomatedSnapshotStartHour")
      )

instance Prelude.Hashable SnapshotOptions where
  hashWithSalt _salt SnapshotOptions' {..} =
    _salt
      `Prelude.hashWithSalt` automatedSnapshotStartHour

instance Prelude.NFData SnapshotOptions where
  rnf SnapshotOptions' {..} =
    Prelude.rnf automatedSnapshotStartHour

instance Data.ToJSON SnapshotOptions where
  toJSON SnapshotOptions' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("AutomatedSnapshotStartHour" Data..=)
              Prelude.<$> automatedSnapshotStartHour
          ]
      )
