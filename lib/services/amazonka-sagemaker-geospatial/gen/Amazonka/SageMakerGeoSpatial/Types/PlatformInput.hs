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
-- Module      : Amazonka.SageMakerGeoSpatial.Types.PlatformInput
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMakerGeoSpatial.Types.PlatformInput where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.SageMakerGeoSpatial.Types.ComparisonOperator

-- |
--
-- /See:/ 'newPlatformInput' smart constructor.
data PlatformInput = PlatformInput'
  { comparisonOperator :: Prelude.Maybe ComparisonOperator,
    -- | The value of the platform.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PlatformInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'comparisonOperator', 'platformInput_comparisonOperator' -
--
-- 'value', 'platformInput_value' - The value of the platform.
newPlatformInput ::
  -- | 'value'
  Prelude.Text ->
  PlatformInput
newPlatformInput pValue_ =
  PlatformInput'
    { comparisonOperator =
        Prelude.Nothing,
      value = pValue_
    }

-- |
platformInput_comparisonOperator :: Lens.Lens' PlatformInput (Prelude.Maybe ComparisonOperator)
platformInput_comparisonOperator = Lens.lens (\PlatformInput' {comparisonOperator} -> comparisonOperator) (\s@PlatformInput' {} a -> s {comparisonOperator = a} :: PlatformInput)

-- | The value of the platform.
platformInput_value :: Lens.Lens' PlatformInput Prelude.Text
platformInput_value = Lens.lens (\PlatformInput' {value} -> value) (\s@PlatformInput' {} a -> s {value = a} :: PlatformInput)

instance Data.FromJSON PlatformInput where
  parseJSON =
    Data.withObject
      "PlatformInput"
      ( \x ->
          PlatformInput'
            Prelude.<$> (x Data..:? "ComparisonOperator")
            Prelude.<*> (x Data..: "Value")
      )

instance Prelude.Hashable PlatformInput where
  hashWithSalt _salt PlatformInput' {..} =
    _salt `Prelude.hashWithSalt` comparisonOperator
      `Prelude.hashWithSalt` value

instance Prelude.NFData PlatformInput where
  rnf PlatformInput' {..} =
    Prelude.rnf comparisonOperator
      `Prelude.seq` Prelude.rnf value

instance Data.ToJSON PlatformInput where
  toJSON PlatformInput' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ComparisonOperator" Data..=)
              Prelude.<$> comparisonOperator,
            Prelude.Just ("Value" Data..= value)
          ]
      )
