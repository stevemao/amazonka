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
-- Module      : Amazonka.IoT.Types.AbortConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.AbortConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IoT.Types.AbortCriteria
import qualified Amazonka.Prelude as Prelude

-- | The criteria that determine when and how a job abort takes place.
--
-- /See:/ 'newAbortConfig' smart constructor.
data AbortConfig = AbortConfig'
  { -- | The list of criteria that determine when and how to abort the job.
    criteriaList :: Prelude.NonEmpty AbortCriteria
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AbortConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'criteriaList', 'abortConfig_criteriaList' - The list of criteria that determine when and how to abort the job.
newAbortConfig ::
  -- | 'criteriaList'
  Prelude.NonEmpty AbortCriteria ->
  AbortConfig
newAbortConfig pCriteriaList_ =
  AbortConfig'
    { criteriaList =
        Lens.coerced Lens.# pCriteriaList_
    }

-- | The list of criteria that determine when and how to abort the job.
abortConfig_criteriaList :: Lens.Lens' AbortConfig (Prelude.NonEmpty AbortCriteria)
abortConfig_criteriaList = Lens.lens (\AbortConfig' {criteriaList} -> criteriaList) (\s@AbortConfig' {} a -> s {criteriaList = a} :: AbortConfig) Prelude.. Lens.coerced

instance Data.FromJSON AbortConfig where
  parseJSON =
    Data.withObject
      "AbortConfig"
      ( \x ->
          AbortConfig' Prelude.<$> (x Data..: "criteriaList")
      )

instance Prelude.Hashable AbortConfig where
  hashWithSalt _salt AbortConfig' {..} =
    _salt `Prelude.hashWithSalt` criteriaList

instance Prelude.NFData AbortConfig where
  rnf AbortConfig' {..} = Prelude.rnf criteriaList

instance Data.ToJSON AbortConfig where
  toJSON AbortConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("criteriaList" Data..= criteriaList)]
      )
