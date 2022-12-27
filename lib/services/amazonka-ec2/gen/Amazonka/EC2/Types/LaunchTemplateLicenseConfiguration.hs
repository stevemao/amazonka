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
-- Module      : Amazonka.EC2.Types.LaunchTemplateLicenseConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.LaunchTemplateLicenseConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | Describes a license configuration.
--
-- /See:/ 'newLaunchTemplateLicenseConfiguration' smart constructor.
data LaunchTemplateLicenseConfiguration = LaunchTemplateLicenseConfiguration'
  { -- | The Amazon Resource Name (ARN) of the license configuration.
    licenseConfigurationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LaunchTemplateLicenseConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'licenseConfigurationArn', 'launchTemplateLicenseConfiguration_licenseConfigurationArn' - The Amazon Resource Name (ARN) of the license configuration.
newLaunchTemplateLicenseConfiguration ::
  LaunchTemplateLicenseConfiguration
newLaunchTemplateLicenseConfiguration =
  LaunchTemplateLicenseConfiguration'
    { licenseConfigurationArn =
        Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the license configuration.
launchTemplateLicenseConfiguration_licenseConfigurationArn :: Lens.Lens' LaunchTemplateLicenseConfiguration (Prelude.Maybe Prelude.Text)
launchTemplateLicenseConfiguration_licenseConfigurationArn = Lens.lens (\LaunchTemplateLicenseConfiguration' {licenseConfigurationArn} -> licenseConfigurationArn) (\s@LaunchTemplateLicenseConfiguration' {} a -> s {licenseConfigurationArn = a} :: LaunchTemplateLicenseConfiguration)

instance
  Data.FromXML
    LaunchTemplateLicenseConfiguration
  where
  parseXML x =
    LaunchTemplateLicenseConfiguration'
      Prelude.<$> (x Data..@? "licenseConfigurationArn")

instance
  Prelude.Hashable
    LaunchTemplateLicenseConfiguration
  where
  hashWithSalt
    _salt
    LaunchTemplateLicenseConfiguration' {..} =
      _salt
        `Prelude.hashWithSalt` licenseConfigurationArn

instance
  Prelude.NFData
    LaunchTemplateLicenseConfiguration
  where
  rnf LaunchTemplateLicenseConfiguration' {..} =
    Prelude.rnf licenseConfigurationArn
