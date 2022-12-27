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
-- Module      : Amazonka.EC2.Types.LoadBalancersConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LoadBalancersConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import Amazonka.EC2.Types.ClassicLoadBalancersConfig
import Amazonka.EC2.Types.TargetGroupsConfig
import qualified Amazonka.Prelude as Prelude

-- | Describes the Classic Load Balancers and target groups to attach to a
-- Spot Fleet request.
--
-- /See:/ 'newLoadBalancersConfig' smart constructor.
data LoadBalancersConfig = LoadBalancersConfig'
  { -- | The Classic Load Balancers.
    classicLoadBalancersConfig :: Prelude.Maybe ClassicLoadBalancersConfig,
    -- | The target groups.
    targetGroupsConfig :: Prelude.Maybe TargetGroupsConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoadBalancersConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'classicLoadBalancersConfig', 'loadBalancersConfig_classicLoadBalancersConfig' - The Classic Load Balancers.
--
-- 'targetGroupsConfig', 'loadBalancersConfig_targetGroupsConfig' - The target groups.
newLoadBalancersConfig ::
  LoadBalancersConfig
newLoadBalancersConfig =
  LoadBalancersConfig'
    { classicLoadBalancersConfig =
        Prelude.Nothing,
      targetGroupsConfig = Prelude.Nothing
    }

-- | The Classic Load Balancers.
loadBalancersConfig_classicLoadBalancersConfig :: Lens.Lens' LoadBalancersConfig (Prelude.Maybe ClassicLoadBalancersConfig)
loadBalancersConfig_classicLoadBalancersConfig = Lens.lens (\LoadBalancersConfig' {classicLoadBalancersConfig} -> classicLoadBalancersConfig) (\s@LoadBalancersConfig' {} a -> s {classicLoadBalancersConfig = a} :: LoadBalancersConfig)

-- | The target groups.
loadBalancersConfig_targetGroupsConfig :: Lens.Lens' LoadBalancersConfig (Prelude.Maybe TargetGroupsConfig)
loadBalancersConfig_targetGroupsConfig = Lens.lens (\LoadBalancersConfig' {targetGroupsConfig} -> targetGroupsConfig) (\s@LoadBalancersConfig' {} a -> s {targetGroupsConfig = a} :: LoadBalancersConfig)

instance Data.FromXML LoadBalancersConfig where
  parseXML x =
    LoadBalancersConfig'
      Prelude.<$> (x Data..@? "classicLoadBalancersConfig")
      Prelude.<*> (x Data..@? "targetGroupsConfig")

instance Prelude.Hashable LoadBalancersConfig where
  hashWithSalt _salt LoadBalancersConfig' {..} =
    _salt
      `Prelude.hashWithSalt` classicLoadBalancersConfig
      `Prelude.hashWithSalt` targetGroupsConfig

instance Prelude.NFData LoadBalancersConfig where
  rnf LoadBalancersConfig' {..} =
    Prelude.rnf classicLoadBalancersConfig
      `Prelude.seq` Prelude.rnf targetGroupsConfig

instance Data.ToQuery LoadBalancersConfig where
  toQuery LoadBalancersConfig' {..} =
    Prelude.mconcat
      [ "ClassicLoadBalancersConfig"
          Data.=: classicLoadBalancersConfig,
        "TargetGroupsConfig" Data.=: targetGroupsConfig
      ]
