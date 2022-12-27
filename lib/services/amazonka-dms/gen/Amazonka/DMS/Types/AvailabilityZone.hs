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
-- Module      : Amazonka.DMS.Types.AvailabilityZone
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.AvailabilityZone where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The name of an Availability Zone for use during database migration.
-- @AvailabilityZone@ is an optional parameter to the
-- <https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationInstance.html CreateReplicationInstance>
-- operation, and it’s value relates to the Amazon Web Services Region of
-- an endpoint. For example, the availability zone of an endpoint in the
-- us-east-1 region might be us-east-1a, us-east-1b, us-east-1c, or
-- us-east-1d.
--
-- /See:/ 'newAvailabilityZone' smart constructor.
data AvailabilityZone = AvailabilityZone'
  { -- | The name of the Availability Zone.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AvailabilityZone' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'availabilityZone_name' - The name of the Availability Zone.
newAvailabilityZone ::
  AvailabilityZone
newAvailabilityZone =
  AvailabilityZone' {name = Prelude.Nothing}

-- | The name of the Availability Zone.
availabilityZone_name :: Lens.Lens' AvailabilityZone (Prelude.Maybe Prelude.Text)
availabilityZone_name = Lens.lens (\AvailabilityZone' {name} -> name) (\s@AvailabilityZone' {} a -> s {name = a} :: AvailabilityZone)

instance Data.FromJSON AvailabilityZone where
  parseJSON =
    Data.withObject
      "AvailabilityZone"
      ( \x ->
          AvailabilityZone' Prelude.<$> (x Data..:? "Name")
      )

instance Prelude.Hashable AvailabilityZone where
  hashWithSalt _salt AvailabilityZone' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData AvailabilityZone where
  rnf AvailabilityZone' {..} = Prelude.rnf name
