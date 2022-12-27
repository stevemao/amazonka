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
-- Module      : Amazonka.EC2.Types.CreateTransitGatewayMulticastDomainRequestOptions
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.CreateTransitGatewayMulticastDomainRequestOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.AutoAcceptSharedAssociationsValue
import Amazonka.EC2.Types.Igmpv2SupportValue
import Amazonka.EC2.Types.StaticSourcesSupportValue
import qualified Amazonka.Prelude as Prelude

-- | The options for the transit gateway multicast domain.
--
-- /See:/ 'newCreateTransitGatewayMulticastDomainRequestOptions' smart constructor.
data CreateTransitGatewayMulticastDomainRequestOptions = CreateTransitGatewayMulticastDomainRequestOptions'
  { -- | Indicates whether to automatically accept cross-account subnet
    -- associations that are associated with the transit gateway multicast
    -- domain.
    autoAcceptSharedAssociations :: Prelude.Maybe AutoAcceptSharedAssociationsValue,
    -- | Specify whether to enable Internet Group Management Protocol (IGMP)
    -- version 2 for the transit gateway multicast domain.
    igmpv2Support :: Prelude.Maybe Igmpv2SupportValue,
    -- | Specify whether to enable support for statically configuring multicast
    -- group sources for a domain.
    staticSourcesSupport :: Prelude.Maybe StaticSourcesSupportValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTransitGatewayMulticastDomainRequestOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoAcceptSharedAssociations', 'createTransitGatewayMulticastDomainRequestOptions_autoAcceptSharedAssociations' - Indicates whether to automatically accept cross-account subnet
-- associations that are associated with the transit gateway multicast
-- domain.
--
-- 'igmpv2Support', 'createTransitGatewayMulticastDomainRequestOptions_igmpv2Support' - Specify whether to enable Internet Group Management Protocol (IGMP)
-- version 2 for the transit gateway multicast domain.
--
-- 'staticSourcesSupport', 'createTransitGatewayMulticastDomainRequestOptions_staticSourcesSupport' - Specify whether to enable support for statically configuring multicast
-- group sources for a domain.
newCreateTransitGatewayMulticastDomainRequestOptions ::
  CreateTransitGatewayMulticastDomainRequestOptions
newCreateTransitGatewayMulticastDomainRequestOptions =
  CreateTransitGatewayMulticastDomainRequestOptions'
    { autoAcceptSharedAssociations =
        Prelude.Nothing,
      igmpv2Support =
        Prelude.Nothing,
      staticSourcesSupport =
        Prelude.Nothing
    }

-- | Indicates whether to automatically accept cross-account subnet
-- associations that are associated with the transit gateway multicast
-- domain.
createTransitGatewayMulticastDomainRequestOptions_autoAcceptSharedAssociations :: Lens.Lens' CreateTransitGatewayMulticastDomainRequestOptions (Prelude.Maybe AutoAcceptSharedAssociationsValue)
createTransitGatewayMulticastDomainRequestOptions_autoAcceptSharedAssociations = Lens.lens (\CreateTransitGatewayMulticastDomainRequestOptions' {autoAcceptSharedAssociations} -> autoAcceptSharedAssociations) (\s@CreateTransitGatewayMulticastDomainRequestOptions' {} a -> s {autoAcceptSharedAssociations = a} :: CreateTransitGatewayMulticastDomainRequestOptions)

-- | Specify whether to enable Internet Group Management Protocol (IGMP)
-- version 2 for the transit gateway multicast domain.
createTransitGatewayMulticastDomainRequestOptions_igmpv2Support :: Lens.Lens' CreateTransitGatewayMulticastDomainRequestOptions (Prelude.Maybe Igmpv2SupportValue)
createTransitGatewayMulticastDomainRequestOptions_igmpv2Support = Lens.lens (\CreateTransitGatewayMulticastDomainRequestOptions' {igmpv2Support} -> igmpv2Support) (\s@CreateTransitGatewayMulticastDomainRequestOptions' {} a -> s {igmpv2Support = a} :: CreateTransitGatewayMulticastDomainRequestOptions)

-- | Specify whether to enable support for statically configuring multicast
-- group sources for a domain.
createTransitGatewayMulticastDomainRequestOptions_staticSourcesSupport :: Lens.Lens' CreateTransitGatewayMulticastDomainRequestOptions (Prelude.Maybe StaticSourcesSupportValue)
createTransitGatewayMulticastDomainRequestOptions_staticSourcesSupport = Lens.lens (\CreateTransitGatewayMulticastDomainRequestOptions' {staticSourcesSupport} -> staticSourcesSupport) (\s@CreateTransitGatewayMulticastDomainRequestOptions' {} a -> s {staticSourcesSupport = a} :: CreateTransitGatewayMulticastDomainRequestOptions)

instance
  Prelude.Hashable
    CreateTransitGatewayMulticastDomainRequestOptions
  where
  hashWithSalt
    _salt
    CreateTransitGatewayMulticastDomainRequestOptions' {..} =
      _salt
        `Prelude.hashWithSalt` autoAcceptSharedAssociations
        `Prelude.hashWithSalt` igmpv2Support
        `Prelude.hashWithSalt` staticSourcesSupport

instance
  Prelude.NFData
    CreateTransitGatewayMulticastDomainRequestOptions
  where
  rnf
    CreateTransitGatewayMulticastDomainRequestOptions' {..} =
      Prelude.rnf autoAcceptSharedAssociations
        `Prelude.seq` Prelude.rnf igmpv2Support
        `Prelude.seq` Prelude.rnf staticSourcesSupport

instance
  Data.ToQuery
    CreateTransitGatewayMulticastDomainRequestOptions
  where
  toQuery
    CreateTransitGatewayMulticastDomainRequestOptions' {..} =
      Prelude.mconcat
        [ "AutoAcceptSharedAssociations"
            Data.=: autoAcceptSharedAssociations,
          "Igmpv2Support" Data.=: igmpv2Support,
          "StaticSourcesSupport" Data.=: staticSourcesSupport
        ]
