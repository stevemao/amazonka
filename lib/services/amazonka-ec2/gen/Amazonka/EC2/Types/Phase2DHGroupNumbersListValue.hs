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
-- Module      : Amazonka.EC2.Types.Phase2DHGroupNumbersListValue
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.Phase2DHGroupNumbersListValue where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | The Diffie-Hellmann group number for phase 2 IKE negotiations.
--
-- /See:/ 'newPhase2DHGroupNumbersListValue' smart constructor.
data Phase2DHGroupNumbersListValue = Phase2DHGroupNumbersListValue'
  { -- | The Diffie-Hellmann group number.
    value :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Phase2DHGroupNumbersListValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'phase2DHGroupNumbersListValue_value' - The Diffie-Hellmann group number.
newPhase2DHGroupNumbersListValue ::
  Phase2DHGroupNumbersListValue
newPhase2DHGroupNumbersListValue =
  Phase2DHGroupNumbersListValue'
    { value =
        Prelude.Nothing
    }

-- | The Diffie-Hellmann group number.
phase2DHGroupNumbersListValue_value :: Lens.Lens' Phase2DHGroupNumbersListValue (Prelude.Maybe Prelude.Int)
phase2DHGroupNumbersListValue_value = Lens.lens (\Phase2DHGroupNumbersListValue' {value} -> value) (\s@Phase2DHGroupNumbersListValue' {} a -> s {value = a} :: Phase2DHGroupNumbersListValue)

instance Data.FromXML Phase2DHGroupNumbersListValue where
  parseXML x =
    Phase2DHGroupNumbersListValue'
      Prelude.<$> (x Data..@? "value")

instance
  Prelude.Hashable
    Phase2DHGroupNumbersListValue
  where
  hashWithSalt _salt Phase2DHGroupNumbersListValue' {..} =
    _salt `Prelude.hashWithSalt` value

instance Prelude.NFData Phase2DHGroupNumbersListValue where
  rnf Phase2DHGroupNumbersListValue' {..} =
    Prelude.rnf value
