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
-- Module      : Amazonka.StepFunctions.Types.CloudWatchEventsExecutionDataDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.StepFunctions.Types.CloudWatchEventsExecutionDataDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Provides details about execution input or output.
--
-- /See:/ 'newCloudWatchEventsExecutionDataDetails' smart constructor.
data CloudWatchEventsExecutionDataDetails = CloudWatchEventsExecutionDataDetails'
  { -- | Indicates whether input or output was included in the response. Always
    -- @true@ for API calls.
    included :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchEventsExecutionDataDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'included', 'cloudWatchEventsExecutionDataDetails_included' - Indicates whether input or output was included in the response. Always
-- @true@ for API calls.
newCloudWatchEventsExecutionDataDetails ::
  CloudWatchEventsExecutionDataDetails
newCloudWatchEventsExecutionDataDetails =
  CloudWatchEventsExecutionDataDetails'
    { included =
        Prelude.Nothing
    }

-- | Indicates whether input or output was included in the response. Always
-- @true@ for API calls.
cloudWatchEventsExecutionDataDetails_included :: Lens.Lens' CloudWatchEventsExecutionDataDetails (Prelude.Maybe Prelude.Bool)
cloudWatchEventsExecutionDataDetails_included = Lens.lens (\CloudWatchEventsExecutionDataDetails' {included} -> included) (\s@CloudWatchEventsExecutionDataDetails' {} a -> s {included = a} :: CloudWatchEventsExecutionDataDetails)

instance
  Data.FromJSON
    CloudWatchEventsExecutionDataDetails
  where
  parseJSON =
    Data.withObject
      "CloudWatchEventsExecutionDataDetails"
      ( \x ->
          CloudWatchEventsExecutionDataDetails'
            Prelude.<$> (x Data..:? "included")
      )

instance
  Prelude.Hashable
    CloudWatchEventsExecutionDataDetails
  where
  hashWithSalt
    _salt
    CloudWatchEventsExecutionDataDetails' {..} =
      _salt `Prelude.hashWithSalt` included

instance
  Prelude.NFData
    CloudWatchEventsExecutionDataDetails
  where
  rnf CloudWatchEventsExecutionDataDetails' {..} =
    Prelude.rnf included
