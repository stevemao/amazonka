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
-- Module      : Amazonka.IoT.Types.BillingGroupMetadata
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.BillingGroupMetadata where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Additional information about the billing group.
--
-- /See:/ 'newBillingGroupMetadata' smart constructor.
data BillingGroupMetadata = BillingGroupMetadata'
  { -- | The date the billing group was created.
    creationDate :: Prelude.Maybe Data.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BillingGroupMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationDate', 'billingGroupMetadata_creationDate' - The date the billing group was created.
newBillingGroupMetadata ::
  BillingGroupMetadata
newBillingGroupMetadata =
  BillingGroupMetadata'
    { creationDate =
        Prelude.Nothing
    }

-- | The date the billing group was created.
billingGroupMetadata_creationDate :: Lens.Lens' BillingGroupMetadata (Prelude.Maybe Prelude.UTCTime)
billingGroupMetadata_creationDate = Lens.lens (\BillingGroupMetadata' {creationDate} -> creationDate) (\s@BillingGroupMetadata' {} a -> s {creationDate = a} :: BillingGroupMetadata) Prelude.. Lens.mapping Data._Time

instance Data.FromJSON BillingGroupMetadata where
  parseJSON =
    Data.withObject
      "BillingGroupMetadata"
      ( \x ->
          BillingGroupMetadata'
            Prelude.<$> (x Data..:? "creationDate")
      )

instance Prelude.Hashable BillingGroupMetadata where
  hashWithSalt _salt BillingGroupMetadata' {..} =
    _salt `Prelude.hashWithSalt` creationDate

instance Prelude.NFData BillingGroupMetadata where
  rnf BillingGroupMetadata' {..} =
    Prelude.rnf creationDate
