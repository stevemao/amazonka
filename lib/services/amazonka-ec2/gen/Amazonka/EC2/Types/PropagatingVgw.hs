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
-- Module      : Amazonka.EC2.Types.PropagatingVgw
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.PropagatingVgw where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | Describes a virtual private gateway propagating route.
--
-- /See:/ 'newPropagatingVgw' smart constructor.
data PropagatingVgw = PropagatingVgw'
  { -- | The ID of the virtual private gateway.
    gatewayId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PropagatingVgw' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'gatewayId', 'propagatingVgw_gatewayId' - The ID of the virtual private gateway.
newPropagatingVgw ::
  PropagatingVgw
newPropagatingVgw =
  PropagatingVgw' {gatewayId = Prelude.Nothing}

-- | The ID of the virtual private gateway.
propagatingVgw_gatewayId :: Lens.Lens' PropagatingVgw (Prelude.Maybe Prelude.Text)
propagatingVgw_gatewayId = Lens.lens (\PropagatingVgw' {gatewayId} -> gatewayId) (\s@PropagatingVgw' {} a -> s {gatewayId = a} :: PropagatingVgw)

instance Data.FromXML PropagatingVgw where
  parseXML x =
    PropagatingVgw'
      Prelude.<$> (x Data..@? "gatewayId")

instance Prelude.Hashable PropagatingVgw where
  hashWithSalt _salt PropagatingVgw' {..} =
    _salt `Prelude.hashWithSalt` gatewayId

instance Prelude.NFData PropagatingVgw where
  rnf PropagatingVgw' {..} = Prelude.rnf gatewayId
