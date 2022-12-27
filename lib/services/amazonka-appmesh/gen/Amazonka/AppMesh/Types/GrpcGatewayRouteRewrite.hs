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
-- Module      : Amazonka.AppMesh.Types.GrpcGatewayRouteRewrite
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppMesh.Types.GrpcGatewayRouteRewrite where

import Amazonka.AppMesh.Types.GatewayRouteHostnameRewrite
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | An object that represents the gateway route to rewrite.
--
-- /See:/ 'newGrpcGatewayRouteRewrite' smart constructor.
data GrpcGatewayRouteRewrite = GrpcGatewayRouteRewrite'
  { -- | The host name of the gateway route to rewrite.
    hostname :: Prelude.Maybe GatewayRouteHostnameRewrite
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcGatewayRouteRewrite' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostname', 'grpcGatewayRouteRewrite_hostname' - The host name of the gateway route to rewrite.
newGrpcGatewayRouteRewrite ::
  GrpcGatewayRouteRewrite
newGrpcGatewayRouteRewrite =
  GrpcGatewayRouteRewrite'
    { hostname =
        Prelude.Nothing
    }

-- | The host name of the gateway route to rewrite.
grpcGatewayRouteRewrite_hostname :: Lens.Lens' GrpcGatewayRouteRewrite (Prelude.Maybe GatewayRouteHostnameRewrite)
grpcGatewayRouteRewrite_hostname = Lens.lens (\GrpcGatewayRouteRewrite' {hostname} -> hostname) (\s@GrpcGatewayRouteRewrite' {} a -> s {hostname = a} :: GrpcGatewayRouteRewrite)

instance Data.FromJSON GrpcGatewayRouteRewrite where
  parseJSON =
    Data.withObject
      "GrpcGatewayRouteRewrite"
      ( \x ->
          GrpcGatewayRouteRewrite'
            Prelude.<$> (x Data..:? "hostname")
      )

instance Prelude.Hashable GrpcGatewayRouteRewrite where
  hashWithSalt _salt GrpcGatewayRouteRewrite' {..} =
    _salt `Prelude.hashWithSalt` hostname

instance Prelude.NFData GrpcGatewayRouteRewrite where
  rnf GrpcGatewayRouteRewrite' {..} =
    Prelude.rnf hostname

instance Data.ToJSON GrpcGatewayRouteRewrite where
  toJSON GrpcGatewayRouteRewrite' {..} =
    Data.object
      ( Prelude.catMaybes
          [("hostname" Data..=) Prelude.<$> hostname]
      )
