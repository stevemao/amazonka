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
-- Module      : Amazonka.Forecast.Types.MetricResult
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Forecast.Types.MetricResult where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An individual metric Forecast calculated when monitoring predictor
-- usage. You can compare the value for this metric to the metric\'s value
-- in the Baseline to see how your predictor\'s performance is changing.
--
-- For more information about metrics generated by Forecast see
-- <https://docs.aws.amazon.com/forecast/latest/dg/metrics.html Evaluating Predictor Accuracy>
--
-- /See:/ 'newMetricResult' smart constructor.
data MetricResult = MetricResult'
  { -- | The value for the metric.
    metricValue :: Prelude.Maybe Prelude.Double,
    -- | The name of the metric.
    metricName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MetricResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricValue', 'metricResult_metricValue' - The value for the metric.
--
-- 'metricName', 'metricResult_metricName' - The name of the metric.
newMetricResult ::
  MetricResult
newMetricResult =
  MetricResult'
    { metricValue = Prelude.Nothing,
      metricName = Prelude.Nothing
    }

-- | The value for the metric.
metricResult_metricValue :: Lens.Lens' MetricResult (Prelude.Maybe Prelude.Double)
metricResult_metricValue = Lens.lens (\MetricResult' {metricValue} -> metricValue) (\s@MetricResult' {} a -> s {metricValue = a} :: MetricResult)

-- | The name of the metric.
metricResult_metricName :: Lens.Lens' MetricResult (Prelude.Maybe Prelude.Text)
metricResult_metricName = Lens.lens (\MetricResult' {metricName} -> metricName) (\s@MetricResult' {} a -> s {metricName = a} :: MetricResult)

instance Data.FromJSON MetricResult where
  parseJSON =
    Data.withObject
      "MetricResult"
      ( \x ->
          MetricResult'
            Prelude.<$> (x Data..:? "MetricValue")
            Prelude.<*> (x Data..:? "MetricName")
      )

instance Prelude.Hashable MetricResult where
  hashWithSalt _salt MetricResult' {..} =
    _salt `Prelude.hashWithSalt` metricValue
      `Prelude.hashWithSalt` metricName

instance Prelude.NFData MetricResult where
  rnf MetricResult' {..} =
    Prelude.rnf metricValue
      `Prelude.seq` Prelude.rnf metricName
