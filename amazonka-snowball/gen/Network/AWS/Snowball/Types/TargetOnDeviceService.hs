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
-- Module      : Network.AWS.Snowball.Types.TargetOnDeviceService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.TargetOnDeviceService where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Snowball.Types.DeviceServiceName
import Network.AWS.Snowball.Types.TransferOption

-- | An object that represents the service or services on the Snow Family
-- device that your transferred data will be exported from or imported
-- into. AWS Snow Family supports Amazon S3 and NFS (Network File System).
--
-- /See:/ 'newTargetOnDeviceService' smart constructor.
data TargetOnDeviceService = TargetOnDeviceService'
  { -- | Specifies whether the data is being imported or exported. You can import
    -- or export the data, or use it locally on the device.
    transferOption :: Prelude.Maybe TransferOption,
    -- | Specifies the name of the service on the Snow Family device that your
    -- transferred data will be exported from or imported into.
    serviceName :: Prelude.Maybe DeviceServiceName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TargetOnDeviceService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transferOption', 'targetOnDeviceService_transferOption' - Specifies whether the data is being imported or exported. You can import
-- or export the data, or use it locally on the device.
--
-- 'serviceName', 'targetOnDeviceService_serviceName' - Specifies the name of the service on the Snow Family device that your
-- transferred data will be exported from or imported into.
newTargetOnDeviceService ::
  TargetOnDeviceService
newTargetOnDeviceService =
  TargetOnDeviceService'
    { transferOption =
        Prelude.Nothing,
      serviceName = Prelude.Nothing
    }

-- | Specifies whether the data is being imported or exported. You can import
-- or export the data, or use it locally on the device.
targetOnDeviceService_transferOption :: Lens.Lens' TargetOnDeviceService (Prelude.Maybe TransferOption)
targetOnDeviceService_transferOption = Lens.lens (\TargetOnDeviceService' {transferOption} -> transferOption) (\s@TargetOnDeviceService' {} a -> s {transferOption = a} :: TargetOnDeviceService)

-- | Specifies the name of the service on the Snow Family device that your
-- transferred data will be exported from or imported into.
targetOnDeviceService_serviceName :: Lens.Lens' TargetOnDeviceService (Prelude.Maybe DeviceServiceName)
targetOnDeviceService_serviceName = Lens.lens (\TargetOnDeviceService' {serviceName} -> serviceName) (\s@TargetOnDeviceService' {} a -> s {serviceName = a} :: TargetOnDeviceService)

instance Core.FromJSON TargetOnDeviceService where
  parseJSON =
    Core.withObject
      "TargetOnDeviceService"
      ( \x ->
          TargetOnDeviceService'
            Prelude.<$> (x Core..:? "TransferOption")
            Prelude.<*> (x Core..:? "ServiceName")
      )

instance Prelude.Hashable TargetOnDeviceService

instance Prelude.NFData TargetOnDeviceService

instance Core.ToJSON TargetOnDeviceService where
  toJSON TargetOnDeviceService' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TransferOption" Core..=)
              Prelude.<$> transferOption,
            ("ServiceName" Core..=) Prelude.<$> serviceName
          ]
      )
