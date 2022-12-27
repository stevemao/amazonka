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
-- Module      : Amazonka.QuickSight.Types.AxisDisplayDataDrivenRange
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.QuickSight.Types.AxisDisplayDataDrivenRange where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The options that are saved for future extension.
--
-- /See:/ 'newAxisDisplayDataDrivenRange' smart constructor.
data AxisDisplayDataDrivenRange = AxisDisplayDataDrivenRange'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AxisDisplayDataDrivenRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAxisDisplayDataDrivenRange ::
  AxisDisplayDataDrivenRange
newAxisDisplayDataDrivenRange =
  AxisDisplayDataDrivenRange'

instance Data.FromJSON AxisDisplayDataDrivenRange where
  parseJSON =
    Data.withObject
      "AxisDisplayDataDrivenRange"
      (\x -> Prelude.pure AxisDisplayDataDrivenRange')

instance Prelude.Hashable AxisDisplayDataDrivenRange where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData AxisDisplayDataDrivenRange where
  rnf _ = ()

instance Data.ToJSON AxisDisplayDataDrivenRange where
  toJSON = Prelude.const (Data.Object Prelude.mempty)
