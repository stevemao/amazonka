{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.DataSync.DescribeLocationFsxOntap
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about how an DataSync location for an Amazon FSx for
-- NetApp ONTAP file system is configured.
--
-- If your location uses SMB, the @DescribeLocationFsxOntap@ operation
-- doesn\'t actually return a @Password@.
module Amazonka.DataSync.DescribeLocationFsxOntap
  ( -- * Creating a Request
    DescribeLocationFsxOntap (..),
    newDescribeLocationFsxOntap,

    -- * Request Lenses
    describeLocationFsxOntap_locationArn,

    -- * Destructuring the Response
    DescribeLocationFsxOntapResponse (..),
    newDescribeLocationFsxOntapResponse,

    -- * Response Lenses
    describeLocationFsxOntapResponse_creationTime,
    describeLocationFsxOntapResponse_fsxFilesystemArn,
    describeLocationFsxOntapResponse_locationArn,
    describeLocationFsxOntapResponse_locationUri,
    describeLocationFsxOntapResponse_protocol,
    describeLocationFsxOntapResponse_securityGroupArns,
    describeLocationFsxOntapResponse_storageVirtualMachineArn,
    describeLocationFsxOntapResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.DataSync.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeLocationFsxOntap' smart constructor.
data DescribeLocationFsxOntap = DescribeLocationFsxOntap'
  { -- | Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file
    -- system location that you want information about.
    locationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLocationFsxOntap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locationArn', 'describeLocationFsxOntap_locationArn' - Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file
-- system location that you want information about.
newDescribeLocationFsxOntap ::
  -- | 'locationArn'
  Prelude.Text ->
  DescribeLocationFsxOntap
newDescribeLocationFsxOntap pLocationArn_ =
  DescribeLocationFsxOntap'
    { locationArn =
        pLocationArn_
    }

-- | Specifies the Amazon Resource Name (ARN) of the FSx for ONTAP file
-- system location that you want information about.
describeLocationFsxOntap_locationArn :: Lens.Lens' DescribeLocationFsxOntap Prelude.Text
describeLocationFsxOntap_locationArn = Lens.lens (\DescribeLocationFsxOntap' {locationArn} -> locationArn) (\s@DescribeLocationFsxOntap' {} a -> s {locationArn = a} :: DescribeLocationFsxOntap)

instance Core.AWSRequest DescribeLocationFsxOntap where
  type
    AWSResponse DescribeLocationFsxOntap =
      DescribeLocationFsxOntapResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeLocationFsxOntapResponse'
            Prelude.<$> (x Data..?> "CreationTime")
            Prelude.<*> (x Data..?> "FsxFilesystemArn")
            Prelude.<*> (x Data..?> "LocationArn")
            Prelude.<*> (x Data..?> "LocationUri")
            Prelude.<*> (x Data..?> "Protocol")
            Prelude.<*> (x Data..?> "SecurityGroupArns")
            Prelude.<*> (x Data..?> "StorageVirtualMachineArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeLocationFsxOntap where
  hashWithSalt _salt DescribeLocationFsxOntap' {..} =
    _salt `Prelude.hashWithSalt` locationArn

instance Prelude.NFData DescribeLocationFsxOntap where
  rnf DescribeLocationFsxOntap' {..} =
    Prelude.rnf locationArn

instance Data.ToHeaders DescribeLocationFsxOntap where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "FmrsService.DescribeLocationFsxOntap" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DescribeLocationFsxOntap where
  toJSON DescribeLocationFsxOntap' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("LocationArn" Data..= locationArn)]
      )

instance Data.ToPath DescribeLocationFsxOntap where
  toPath = Prelude.const "/"

instance Data.ToQuery DescribeLocationFsxOntap where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeLocationFsxOntapResponse' smart constructor.
data DescribeLocationFsxOntapResponse = DescribeLocationFsxOntapResponse'
  { -- | The time that the location was created.
    creationTime :: Prelude.Maybe Data.POSIX,
    -- | The ARN of the FSx for ONTAP file system.
    fsxFilesystemArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the FSx for ONTAP file system location.
    locationArn :: Prelude.Maybe Prelude.Text,
    -- | The uniform resource identifier (URI) of the FSx for ONTAP file system
    -- location.
    locationUri :: Prelude.Maybe Prelude.Text,
    protocol :: Prelude.Maybe FsxProtocol,
    -- | The security groups that DataSync uses to access your FSx for ONTAP file
    -- system.
    securityGroupArns :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The ARN of the storage virtual machine (SVM) on your FSx for ONTAP file
    -- system where you\'re copying data to or from.
    storageVirtualMachineArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLocationFsxOntapResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'describeLocationFsxOntapResponse_creationTime' - The time that the location was created.
--
-- 'fsxFilesystemArn', 'describeLocationFsxOntapResponse_fsxFilesystemArn' - The ARN of the FSx for ONTAP file system.
--
-- 'locationArn', 'describeLocationFsxOntapResponse_locationArn' - The ARN of the FSx for ONTAP file system location.
--
-- 'locationUri', 'describeLocationFsxOntapResponse_locationUri' - The uniform resource identifier (URI) of the FSx for ONTAP file system
-- location.
--
-- 'protocol', 'describeLocationFsxOntapResponse_protocol' - Undocumented member.
--
-- 'securityGroupArns', 'describeLocationFsxOntapResponse_securityGroupArns' - The security groups that DataSync uses to access your FSx for ONTAP file
-- system.
--
-- 'storageVirtualMachineArn', 'describeLocationFsxOntapResponse_storageVirtualMachineArn' - The ARN of the storage virtual machine (SVM) on your FSx for ONTAP file
-- system where you\'re copying data to or from.
--
-- 'httpStatus', 'describeLocationFsxOntapResponse_httpStatus' - The response's http status code.
newDescribeLocationFsxOntapResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLocationFsxOntapResponse
newDescribeLocationFsxOntapResponse pHttpStatus_ =
  DescribeLocationFsxOntapResponse'
    { creationTime =
        Prelude.Nothing,
      fsxFilesystemArn = Prelude.Nothing,
      locationArn = Prelude.Nothing,
      locationUri = Prelude.Nothing,
      protocol = Prelude.Nothing,
      securityGroupArns = Prelude.Nothing,
      storageVirtualMachineArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time that the location was created.
describeLocationFsxOntapResponse_creationTime :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe Prelude.UTCTime)
describeLocationFsxOntapResponse_creationTime = Lens.lens (\DescribeLocationFsxOntapResponse' {creationTime} -> creationTime) (\s@DescribeLocationFsxOntapResponse' {} a -> s {creationTime = a} :: DescribeLocationFsxOntapResponse) Prelude.. Lens.mapping Data._Time

-- | The ARN of the FSx for ONTAP file system.
describeLocationFsxOntapResponse_fsxFilesystemArn :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxOntapResponse_fsxFilesystemArn = Lens.lens (\DescribeLocationFsxOntapResponse' {fsxFilesystemArn} -> fsxFilesystemArn) (\s@DescribeLocationFsxOntapResponse' {} a -> s {fsxFilesystemArn = a} :: DescribeLocationFsxOntapResponse)

-- | The ARN of the FSx for ONTAP file system location.
describeLocationFsxOntapResponse_locationArn :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxOntapResponse_locationArn = Lens.lens (\DescribeLocationFsxOntapResponse' {locationArn} -> locationArn) (\s@DescribeLocationFsxOntapResponse' {} a -> s {locationArn = a} :: DescribeLocationFsxOntapResponse)

-- | The uniform resource identifier (URI) of the FSx for ONTAP file system
-- location.
describeLocationFsxOntapResponse_locationUri :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxOntapResponse_locationUri = Lens.lens (\DescribeLocationFsxOntapResponse' {locationUri} -> locationUri) (\s@DescribeLocationFsxOntapResponse' {} a -> s {locationUri = a} :: DescribeLocationFsxOntapResponse)

-- | Undocumented member.
describeLocationFsxOntapResponse_protocol :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe FsxProtocol)
describeLocationFsxOntapResponse_protocol = Lens.lens (\DescribeLocationFsxOntapResponse' {protocol} -> protocol) (\s@DescribeLocationFsxOntapResponse' {} a -> s {protocol = a} :: DescribeLocationFsxOntapResponse)

-- | The security groups that DataSync uses to access your FSx for ONTAP file
-- system.
describeLocationFsxOntapResponse_securityGroupArns :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
describeLocationFsxOntapResponse_securityGroupArns = Lens.lens (\DescribeLocationFsxOntapResponse' {securityGroupArns} -> securityGroupArns) (\s@DescribeLocationFsxOntapResponse' {} a -> s {securityGroupArns = a} :: DescribeLocationFsxOntapResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the storage virtual machine (SVM) on your FSx for ONTAP file
-- system where you\'re copying data to or from.
describeLocationFsxOntapResponse_storageVirtualMachineArn :: Lens.Lens' DescribeLocationFsxOntapResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxOntapResponse_storageVirtualMachineArn = Lens.lens (\DescribeLocationFsxOntapResponse' {storageVirtualMachineArn} -> storageVirtualMachineArn) (\s@DescribeLocationFsxOntapResponse' {} a -> s {storageVirtualMachineArn = a} :: DescribeLocationFsxOntapResponse)

-- | The response's http status code.
describeLocationFsxOntapResponse_httpStatus :: Lens.Lens' DescribeLocationFsxOntapResponse Prelude.Int
describeLocationFsxOntapResponse_httpStatus = Lens.lens (\DescribeLocationFsxOntapResponse' {httpStatus} -> httpStatus) (\s@DescribeLocationFsxOntapResponse' {} a -> s {httpStatus = a} :: DescribeLocationFsxOntapResponse)

instance
  Prelude.NFData
    DescribeLocationFsxOntapResponse
  where
  rnf DescribeLocationFsxOntapResponse' {..} =
    Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf fsxFilesystemArn
      `Prelude.seq` Prelude.rnf locationArn
      `Prelude.seq` Prelude.rnf locationUri
      `Prelude.seq` Prelude.rnf protocol
      `Prelude.seq` Prelude.rnf securityGroupArns
      `Prelude.seq` Prelude.rnf storageVirtualMachineArn
      `Prelude.seq` Prelude.rnf httpStatus
