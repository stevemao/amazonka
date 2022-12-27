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
-- Module      : Amazonka.MediaLive.Types.PauseStateScheduleActionSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.PauseStateScheduleActionSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.MediaLive.Types.PipelinePauseStateSettings
import qualified Amazonka.Prelude as Prelude

-- | Settings for the action to set pause state of a channel.
--
-- /See:/ 'newPauseStateScheduleActionSettings' smart constructor.
data PauseStateScheduleActionSettings = PauseStateScheduleActionSettings'
  { pipelines :: Prelude.Maybe [PipelinePauseStateSettings]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PauseStateScheduleActionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pipelines', 'pauseStateScheduleActionSettings_pipelines' - Undocumented member.
newPauseStateScheduleActionSettings ::
  PauseStateScheduleActionSettings
newPauseStateScheduleActionSettings =
  PauseStateScheduleActionSettings'
    { pipelines =
        Prelude.Nothing
    }

-- | Undocumented member.
pauseStateScheduleActionSettings_pipelines :: Lens.Lens' PauseStateScheduleActionSettings (Prelude.Maybe [PipelinePauseStateSettings])
pauseStateScheduleActionSettings_pipelines = Lens.lens (\PauseStateScheduleActionSettings' {pipelines} -> pipelines) (\s@PauseStateScheduleActionSettings' {} a -> s {pipelines = a} :: PauseStateScheduleActionSettings) Prelude.. Lens.mapping Lens.coerced

instance
  Data.FromJSON
    PauseStateScheduleActionSettings
  where
  parseJSON =
    Data.withObject
      "PauseStateScheduleActionSettings"
      ( \x ->
          PauseStateScheduleActionSettings'
            Prelude.<$> (x Data..:? "pipelines" Data..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    PauseStateScheduleActionSettings
  where
  hashWithSalt
    _salt
    PauseStateScheduleActionSettings' {..} =
      _salt `Prelude.hashWithSalt` pipelines

instance
  Prelude.NFData
    PauseStateScheduleActionSettings
  where
  rnf PauseStateScheduleActionSettings' {..} =
    Prelude.rnf pipelines

instance Data.ToJSON PauseStateScheduleActionSettings where
  toJSON PauseStateScheduleActionSettings' {..} =
    Data.object
      ( Prelude.catMaybes
          [("pipelines" Data..=) Prelude.<$> pipelines]
      )
