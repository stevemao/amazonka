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
-- Module      : Amazonka.Scheduler.Types.NetworkConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Scheduler.Types.NetworkConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.Scheduler.Types.AwsVpcConfiguration

-- | Specifies the network configuration for an ECS task.
--
-- /See:/ 'newNetworkConfiguration' smart constructor.
data NetworkConfiguration = NetworkConfiguration'
  { -- | Specifies the Amazon VPC subnets and security groups for the task, and
    -- whether a public IP address is to be used. This structure is relevant
    -- only for ECS tasks that use the awsvpc network mode.
    awsvpcConfiguration :: Prelude.Maybe AwsVpcConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NetworkConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsvpcConfiguration', 'networkConfiguration_awsvpcConfiguration' - Specifies the Amazon VPC subnets and security groups for the task, and
-- whether a public IP address is to be used. This structure is relevant
-- only for ECS tasks that use the awsvpc network mode.
newNetworkConfiguration ::
  NetworkConfiguration
newNetworkConfiguration =
  NetworkConfiguration'
    { awsvpcConfiguration =
        Prelude.Nothing
    }

-- | Specifies the Amazon VPC subnets and security groups for the task, and
-- whether a public IP address is to be used. This structure is relevant
-- only for ECS tasks that use the awsvpc network mode.
networkConfiguration_awsvpcConfiguration :: Lens.Lens' NetworkConfiguration (Prelude.Maybe AwsVpcConfiguration)
networkConfiguration_awsvpcConfiguration = Lens.lens (\NetworkConfiguration' {awsvpcConfiguration} -> awsvpcConfiguration) (\s@NetworkConfiguration' {} a -> s {awsvpcConfiguration = a} :: NetworkConfiguration)

instance Data.FromJSON NetworkConfiguration where
  parseJSON =
    Data.withObject
      "NetworkConfiguration"
      ( \x ->
          NetworkConfiguration'
            Prelude.<$> (x Data..:? "awsvpcConfiguration")
      )

instance Prelude.Hashable NetworkConfiguration where
  hashWithSalt _salt NetworkConfiguration' {..} =
    _salt `Prelude.hashWithSalt` awsvpcConfiguration

instance Prelude.NFData NetworkConfiguration where
  rnf NetworkConfiguration' {..} =
    Prelude.rnf awsvpcConfiguration

instance Data.ToJSON NetworkConfiguration where
  toJSON NetworkConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("awsvpcConfiguration" Data..=)
              Prelude.<$> awsvpcConfiguration
          ]
      )
