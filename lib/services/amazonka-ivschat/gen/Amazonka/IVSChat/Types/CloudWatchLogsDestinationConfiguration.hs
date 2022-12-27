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
-- Module      : Amazonka.IVSChat.Types.CloudWatchLogsDestinationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVSChat.Types.CloudWatchLogsDestinationConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies a CloudWatch Logs location where chat logs will be stored.
--
-- /See:/ 'newCloudWatchLogsDestinationConfiguration' smart constructor.
data CloudWatchLogsDestinationConfiguration = CloudWatchLogsDestinationConfiguration'
  { -- | Name of the Amazon Cloudwatch Logs destination where chat activity will
    -- be logged.
    logGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLogsDestinationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logGroupName', 'cloudWatchLogsDestinationConfiguration_logGroupName' - Name of the Amazon Cloudwatch Logs destination where chat activity will
-- be logged.
newCloudWatchLogsDestinationConfiguration ::
  -- | 'logGroupName'
  Prelude.Text ->
  CloudWatchLogsDestinationConfiguration
newCloudWatchLogsDestinationConfiguration
  pLogGroupName_ =
    CloudWatchLogsDestinationConfiguration'
      { logGroupName =
          pLogGroupName_
      }

-- | Name of the Amazon Cloudwatch Logs destination where chat activity will
-- be logged.
cloudWatchLogsDestinationConfiguration_logGroupName :: Lens.Lens' CloudWatchLogsDestinationConfiguration Prelude.Text
cloudWatchLogsDestinationConfiguration_logGroupName = Lens.lens (\CloudWatchLogsDestinationConfiguration' {logGroupName} -> logGroupName) (\s@CloudWatchLogsDestinationConfiguration' {} a -> s {logGroupName = a} :: CloudWatchLogsDestinationConfiguration)

instance
  Data.FromJSON
    CloudWatchLogsDestinationConfiguration
  where
  parseJSON =
    Data.withObject
      "CloudWatchLogsDestinationConfiguration"
      ( \x ->
          CloudWatchLogsDestinationConfiguration'
            Prelude.<$> (x Data..: "logGroupName")
      )

instance
  Prelude.Hashable
    CloudWatchLogsDestinationConfiguration
  where
  hashWithSalt
    _salt
    CloudWatchLogsDestinationConfiguration' {..} =
      _salt `Prelude.hashWithSalt` logGroupName

instance
  Prelude.NFData
    CloudWatchLogsDestinationConfiguration
  where
  rnf CloudWatchLogsDestinationConfiguration' {..} =
    Prelude.rnf logGroupName

instance
  Data.ToJSON
    CloudWatchLogsDestinationConfiguration
  where
  toJSON CloudWatchLogsDestinationConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("logGroupName" Data..= logGroupName)]
      )
