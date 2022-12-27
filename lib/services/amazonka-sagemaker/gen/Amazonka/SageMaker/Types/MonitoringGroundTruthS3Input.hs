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
-- Module      : Amazonka.SageMaker.Types.MonitoringGroundTruthS3Input
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.MonitoringGroundTruthS3Input where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The ground truth labels for the dataset used for the monitoring job.
--
-- /See:/ 'newMonitoringGroundTruthS3Input' smart constructor.
data MonitoringGroundTruthS3Input = MonitoringGroundTruthS3Input'
  { -- | The address of the Amazon S3 location of the ground truth labels.
    s3Uri :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MonitoringGroundTruthS3Input' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Uri', 'monitoringGroundTruthS3Input_s3Uri' - The address of the Amazon S3 location of the ground truth labels.
newMonitoringGroundTruthS3Input ::
  MonitoringGroundTruthS3Input
newMonitoringGroundTruthS3Input =
  MonitoringGroundTruthS3Input'
    { s3Uri =
        Prelude.Nothing
    }

-- | The address of the Amazon S3 location of the ground truth labels.
monitoringGroundTruthS3Input_s3Uri :: Lens.Lens' MonitoringGroundTruthS3Input (Prelude.Maybe Prelude.Text)
monitoringGroundTruthS3Input_s3Uri = Lens.lens (\MonitoringGroundTruthS3Input' {s3Uri} -> s3Uri) (\s@MonitoringGroundTruthS3Input' {} a -> s {s3Uri = a} :: MonitoringGroundTruthS3Input)

instance Data.FromJSON MonitoringGroundTruthS3Input where
  parseJSON =
    Data.withObject
      "MonitoringGroundTruthS3Input"
      ( \x ->
          MonitoringGroundTruthS3Input'
            Prelude.<$> (x Data..:? "S3Uri")
      )

instance
  Prelude.Hashable
    MonitoringGroundTruthS3Input
  where
  hashWithSalt _salt MonitoringGroundTruthS3Input' {..} =
    _salt `Prelude.hashWithSalt` s3Uri

instance Prelude.NFData MonitoringGroundTruthS3Input where
  rnf MonitoringGroundTruthS3Input' {..} =
    Prelude.rnf s3Uri

instance Data.ToJSON MonitoringGroundTruthS3Input where
  toJSON MonitoringGroundTruthS3Input' {..} =
    Data.object
      ( Prelude.catMaybes
          [("S3Uri" Data..=) Prelude.<$> s3Uri]
      )
