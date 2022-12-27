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
-- Module      : Amazonka.EC2.Types.ElasticGpuSpecification
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.ElasticGpuSpecification where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | A specification for an Elastic Graphics accelerator.
--
-- /See:/ 'newElasticGpuSpecification' smart constructor.
data ElasticGpuSpecification = ElasticGpuSpecification'
  { -- | The type of Elastic Graphics accelerator. For more information about the
    -- values to specify for @Type@, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html#elastic-graphics-basics Elastic Graphics Basics>,
    -- specifically the Elastic Graphics accelerator column, in the /Amazon
    -- Elastic Compute Cloud User Guide for Windows Instances/.
    type' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ElasticGpuSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'elasticGpuSpecification_type' - The type of Elastic Graphics accelerator. For more information about the
-- values to specify for @Type@, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html#elastic-graphics-basics Elastic Graphics Basics>,
-- specifically the Elastic Graphics accelerator column, in the /Amazon
-- Elastic Compute Cloud User Guide for Windows Instances/.
newElasticGpuSpecification ::
  -- | 'type''
  Prelude.Text ->
  ElasticGpuSpecification
newElasticGpuSpecification pType_ =
  ElasticGpuSpecification' {type' = pType_}

-- | The type of Elastic Graphics accelerator. For more information about the
-- values to specify for @Type@, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html#elastic-graphics-basics Elastic Graphics Basics>,
-- specifically the Elastic Graphics accelerator column, in the /Amazon
-- Elastic Compute Cloud User Guide for Windows Instances/.
elasticGpuSpecification_type :: Lens.Lens' ElasticGpuSpecification Prelude.Text
elasticGpuSpecification_type = Lens.lens (\ElasticGpuSpecification' {type'} -> type') (\s@ElasticGpuSpecification' {} a -> s {type' = a} :: ElasticGpuSpecification)

instance Prelude.Hashable ElasticGpuSpecification where
  hashWithSalt _salt ElasticGpuSpecification' {..} =
    _salt `Prelude.hashWithSalt` type'

instance Prelude.NFData ElasticGpuSpecification where
  rnf ElasticGpuSpecification' {..} = Prelude.rnf type'

instance Data.ToQuery ElasticGpuSpecification where
  toQuery ElasticGpuSpecification' {..} =
    Prelude.mconcat ["Type" Data.=: type']
