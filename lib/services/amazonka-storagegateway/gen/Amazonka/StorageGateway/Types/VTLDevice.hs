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
-- Module      : Amazonka.StorageGateway.Types.VTLDevice
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.StorageGateway.Types.VTLDevice where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.StorageGateway.Types.DeviceiSCSIAttributes

-- | Represents a device object associated with a tape gateway.
--
-- /See:/ 'newVTLDevice' smart constructor.
data VTLDevice = VTLDevice'
  { -- | Specifies the vendor of the device that the VTL device object emulates.
    vTLDeviceVendor :: Prelude.Maybe Prelude.Text,
    -- | Specifies the type of device that the VTL device emulates.
    vTLDeviceType :: Prelude.Maybe Prelude.Text,
    -- | Specifies the model number of device that the VTL device emulates.
    vTLDeviceProductIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A list of iSCSI information about a VTL device.
    deviceiSCSIAttributes :: Prelude.Maybe DeviceiSCSIAttributes,
    -- | Specifies the unique Amazon Resource Name (ARN) of the device (tape
    -- drive or media changer).
    vTLDeviceARN :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VTLDevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vTLDeviceVendor', 'vTLDevice_vTLDeviceVendor' - Specifies the vendor of the device that the VTL device object emulates.
--
-- 'vTLDeviceType', 'vTLDevice_vTLDeviceType' - Specifies the type of device that the VTL device emulates.
--
-- 'vTLDeviceProductIdentifier', 'vTLDevice_vTLDeviceProductIdentifier' - Specifies the model number of device that the VTL device emulates.
--
-- 'deviceiSCSIAttributes', 'vTLDevice_deviceiSCSIAttributes' - A list of iSCSI information about a VTL device.
--
-- 'vTLDeviceARN', 'vTLDevice_vTLDeviceARN' - Specifies the unique Amazon Resource Name (ARN) of the device (tape
-- drive or media changer).
newVTLDevice ::
  VTLDevice
newVTLDevice =
  VTLDevice'
    { vTLDeviceVendor = Prelude.Nothing,
      vTLDeviceType = Prelude.Nothing,
      vTLDeviceProductIdentifier = Prelude.Nothing,
      deviceiSCSIAttributes = Prelude.Nothing,
      vTLDeviceARN = Prelude.Nothing
    }

-- | Specifies the vendor of the device that the VTL device object emulates.
vTLDevice_vTLDeviceVendor :: Lens.Lens' VTLDevice (Prelude.Maybe Prelude.Text)
vTLDevice_vTLDeviceVendor = Lens.lens (\VTLDevice' {vTLDeviceVendor} -> vTLDeviceVendor) (\s@VTLDevice' {} a -> s {vTLDeviceVendor = a} :: VTLDevice)

-- | Specifies the type of device that the VTL device emulates.
vTLDevice_vTLDeviceType :: Lens.Lens' VTLDevice (Prelude.Maybe Prelude.Text)
vTLDevice_vTLDeviceType = Lens.lens (\VTLDevice' {vTLDeviceType} -> vTLDeviceType) (\s@VTLDevice' {} a -> s {vTLDeviceType = a} :: VTLDevice)

-- | Specifies the model number of device that the VTL device emulates.
vTLDevice_vTLDeviceProductIdentifier :: Lens.Lens' VTLDevice (Prelude.Maybe Prelude.Text)
vTLDevice_vTLDeviceProductIdentifier = Lens.lens (\VTLDevice' {vTLDeviceProductIdentifier} -> vTLDeviceProductIdentifier) (\s@VTLDevice' {} a -> s {vTLDeviceProductIdentifier = a} :: VTLDevice)

-- | A list of iSCSI information about a VTL device.
vTLDevice_deviceiSCSIAttributes :: Lens.Lens' VTLDevice (Prelude.Maybe DeviceiSCSIAttributes)
vTLDevice_deviceiSCSIAttributes = Lens.lens (\VTLDevice' {deviceiSCSIAttributes} -> deviceiSCSIAttributes) (\s@VTLDevice' {} a -> s {deviceiSCSIAttributes = a} :: VTLDevice)

-- | Specifies the unique Amazon Resource Name (ARN) of the device (tape
-- drive or media changer).
vTLDevice_vTLDeviceARN :: Lens.Lens' VTLDevice (Prelude.Maybe Prelude.Text)
vTLDevice_vTLDeviceARN = Lens.lens (\VTLDevice' {vTLDeviceARN} -> vTLDeviceARN) (\s@VTLDevice' {} a -> s {vTLDeviceARN = a} :: VTLDevice)

instance Core.FromJSON VTLDevice where
  parseJSON =
    Core.withObject
      "VTLDevice"
      ( \x ->
          VTLDevice'
            Prelude.<$> (x Core..:? "VTLDeviceVendor")
            Prelude.<*> (x Core..:? "VTLDeviceType")
            Prelude.<*> (x Core..:? "VTLDeviceProductIdentifier")
            Prelude.<*> (x Core..:? "DeviceiSCSIAttributes")
            Prelude.<*> (x Core..:? "VTLDeviceARN")
      )

instance Prelude.Hashable VTLDevice where
  hashWithSalt _salt VTLDevice' {..} =
    _salt `Prelude.hashWithSalt` vTLDeviceVendor
      `Prelude.hashWithSalt` vTLDeviceType
      `Prelude.hashWithSalt` vTLDeviceProductIdentifier
      `Prelude.hashWithSalt` deviceiSCSIAttributes
      `Prelude.hashWithSalt` vTLDeviceARN

instance Prelude.NFData VTLDevice where
  rnf VTLDevice' {..} =
    Prelude.rnf vTLDeviceVendor
      `Prelude.seq` Prelude.rnf vTLDeviceType
      `Prelude.seq` Prelude.rnf vTLDeviceProductIdentifier
      `Prelude.seq` Prelude.rnf deviceiSCSIAttributes
      `Prelude.seq` Prelude.rnf vTLDeviceARN
