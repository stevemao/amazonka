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
-- Module      : Amazonka.ComputeOptimizer.Types.RecommendedOptionProjectedMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ComputeOptimizer.Types.RecommendedOptionProjectedMetric where

import Amazonka.ComputeOptimizer.Types.ProjectedMetric
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | Describes a projected utilization metric of a recommendation option.
--
-- The @Cpu@ and @Memory@ metrics are the only projected utilization
-- metrics returned when you run the GetEC2RecommendationProjectedMetrics
-- action. Additionally, the @Memory@ metric is returned only for resources
-- that have the unified CloudWatch agent installed on them. For more
-- information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent Enabling Memory Utilization with the CloudWatch Agent>.
--
-- /See:/ 'newRecommendedOptionProjectedMetric' smart constructor.
data RecommendedOptionProjectedMetric = RecommendedOptionProjectedMetric'
  { -- | The rank of the recommendation option projected metric.
    --
    -- The top recommendation option is ranked as @1@.
    --
    -- The projected metric rank correlates to the recommendation option rank.
    -- For example, the projected metric ranked as @1@ is related to the
    -- recommendation option that is also ranked as @1@ in the same response.
    rank :: Prelude.Maybe Prelude.Int,
    -- | An array of objects that describe a projected utilization metric.
    projectedMetrics :: Prelude.Maybe [ProjectedMetric],
    -- | The recommended instance type.
    recommendedInstanceType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecommendedOptionProjectedMetric' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rank', 'recommendedOptionProjectedMetric_rank' - The rank of the recommendation option projected metric.
--
-- The top recommendation option is ranked as @1@.
--
-- The projected metric rank correlates to the recommendation option rank.
-- For example, the projected metric ranked as @1@ is related to the
-- recommendation option that is also ranked as @1@ in the same response.
--
-- 'projectedMetrics', 'recommendedOptionProjectedMetric_projectedMetrics' - An array of objects that describe a projected utilization metric.
--
-- 'recommendedInstanceType', 'recommendedOptionProjectedMetric_recommendedInstanceType' - The recommended instance type.
newRecommendedOptionProjectedMetric ::
  RecommendedOptionProjectedMetric
newRecommendedOptionProjectedMetric =
  RecommendedOptionProjectedMetric'
    { rank =
        Prelude.Nothing,
      projectedMetrics = Prelude.Nothing,
      recommendedInstanceType = Prelude.Nothing
    }

-- | The rank of the recommendation option projected metric.
--
-- The top recommendation option is ranked as @1@.
--
-- The projected metric rank correlates to the recommendation option rank.
-- For example, the projected metric ranked as @1@ is related to the
-- recommendation option that is also ranked as @1@ in the same response.
recommendedOptionProjectedMetric_rank :: Lens.Lens' RecommendedOptionProjectedMetric (Prelude.Maybe Prelude.Int)
recommendedOptionProjectedMetric_rank = Lens.lens (\RecommendedOptionProjectedMetric' {rank} -> rank) (\s@RecommendedOptionProjectedMetric' {} a -> s {rank = a} :: RecommendedOptionProjectedMetric)

-- | An array of objects that describe a projected utilization metric.
recommendedOptionProjectedMetric_projectedMetrics :: Lens.Lens' RecommendedOptionProjectedMetric (Prelude.Maybe [ProjectedMetric])
recommendedOptionProjectedMetric_projectedMetrics = Lens.lens (\RecommendedOptionProjectedMetric' {projectedMetrics} -> projectedMetrics) (\s@RecommendedOptionProjectedMetric' {} a -> s {projectedMetrics = a} :: RecommendedOptionProjectedMetric) Prelude.. Lens.mapping Lens.coerced

-- | The recommended instance type.
recommendedOptionProjectedMetric_recommendedInstanceType :: Lens.Lens' RecommendedOptionProjectedMetric (Prelude.Maybe Prelude.Text)
recommendedOptionProjectedMetric_recommendedInstanceType = Lens.lens (\RecommendedOptionProjectedMetric' {recommendedInstanceType} -> recommendedInstanceType) (\s@RecommendedOptionProjectedMetric' {} a -> s {recommendedInstanceType = a} :: RecommendedOptionProjectedMetric)

instance
  Core.FromJSON
    RecommendedOptionProjectedMetric
  where
  parseJSON =
    Core.withObject
      "RecommendedOptionProjectedMetric"
      ( \x ->
          RecommendedOptionProjectedMetric'
            Prelude.<$> (x Core..:? "rank")
            Prelude.<*> ( x Core..:? "projectedMetrics"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "recommendedInstanceType")
      )

instance
  Prelude.Hashable
    RecommendedOptionProjectedMetric
  where
  hashWithSalt
    _salt
    RecommendedOptionProjectedMetric' {..} =
      _salt `Prelude.hashWithSalt` rank
        `Prelude.hashWithSalt` projectedMetrics
        `Prelude.hashWithSalt` recommendedInstanceType

instance
  Prelude.NFData
    RecommendedOptionProjectedMetric
  where
  rnf RecommendedOptionProjectedMetric' {..} =
    Prelude.rnf rank
      `Prelude.seq` Prelude.rnf projectedMetrics
      `Prelude.seq` Prelude.rnf recommendedInstanceType
