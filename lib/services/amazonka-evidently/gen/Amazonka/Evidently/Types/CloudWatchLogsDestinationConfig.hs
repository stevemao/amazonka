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
-- Module      : Amazonka.Evidently.Types.CloudWatchLogsDestinationConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Evidently.Types.CloudWatchLogsDestinationConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A structure containing the CloudWatch Logs log group where the project
-- stores evaluation events.
--
-- /See:/ 'newCloudWatchLogsDestinationConfig' smart constructor.
data CloudWatchLogsDestinationConfig = CloudWatchLogsDestinationConfig'
  { -- | The name of the log group where the project stores evaluation events.
    logGroup :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLogsDestinationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logGroup', 'cloudWatchLogsDestinationConfig_logGroup' - The name of the log group where the project stores evaluation events.
newCloudWatchLogsDestinationConfig ::
  CloudWatchLogsDestinationConfig
newCloudWatchLogsDestinationConfig =
  CloudWatchLogsDestinationConfig'
    { logGroup =
        Prelude.Nothing
    }

-- | The name of the log group where the project stores evaluation events.
cloudWatchLogsDestinationConfig_logGroup :: Lens.Lens' CloudWatchLogsDestinationConfig (Prelude.Maybe Prelude.Text)
cloudWatchLogsDestinationConfig_logGroup = Lens.lens (\CloudWatchLogsDestinationConfig' {logGroup} -> logGroup) (\s@CloudWatchLogsDestinationConfig' {} a -> s {logGroup = a} :: CloudWatchLogsDestinationConfig)

instance
  Prelude.Hashable
    CloudWatchLogsDestinationConfig
  where
  hashWithSalt
    _salt
    CloudWatchLogsDestinationConfig' {..} =
      _salt `Prelude.hashWithSalt` logGroup

instance
  Prelude.NFData
    CloudWatchLogsDestinationConfig
  where
  rnf CloudWatchLogsDestinationConfig' {..} =
    Prelude.rnf logGroup

instance Data.ToJSON CloudWatchLogsDestinationConfig where
  toJSON CloudWatchLogsDestinationConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [("logGroup" Data..=) Prelude.<$> logGroup]
      )
