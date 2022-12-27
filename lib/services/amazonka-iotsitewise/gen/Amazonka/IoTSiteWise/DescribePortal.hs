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
-- Module      : Amazonka.IoTSiteWise.DescribePortal
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a portal.
module Amazonka.IoTSiteWise.DescribePortal
  ( -- * Creating a Request
    DescribePortal (..),
    newDescribePortal,

    -- * Request Lenses
    describePortal_portalId,

    -- * Destructuring the Response
    DescribePortalResponse (..),
    newDescribePortalResponse,

    -- * Response Lenses
    describePortalResponse_alarms,
    describePortalResponse_notificationSenderEmail,
    describePortalResponse_portalAuthMode,
    describePortalResponse_portalDescription,
    describePortalResponse_portalLogoImageLocation,
    describePortalResponse_roleArn,
    describePortalResponse_httpStatus,
    describePortalResponse_portalId,
    describePortalResponse_portalArn,
    describePortalResponse_portalName,
    describePortalResponse_portalClientId,
    describePortalResponse_portalStartUrl,
    describePortalResponse_portalContactEmail,
    describePortalResponse_portalStatus,
    describePortalResponse_portalCreationDate,
    describePortalResponse_portalLastUpdateDate,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IoTSiteWise.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribePortal' smart constructor.
data DescribePortal = DescribePortal'
  { -- | The ID of the portal.
    portalId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePortal' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'portalId', 'describePortal_portalId' - The ID of the portal.
newDescribePortal ::
  -- | 'portalId'
  Prelude.Text ->
  DescribePortal
newDescribePortal pPortalId_ =
  DescribePortal' {portalId = pPortalId_}

-- | The ID of the portal.
describePortal_portalId :: Lens.Lens' DescribePortal Prelude.Text
describePortal_portalId = Lens.lens (\DescribePortal' {portalId} -> portalId) (\s@DescribePortal' {} a -> s {portalId = a} :: DescribePortal)

instance Core.AWSRequest DescribePortal where
  type
    AWSResponse DescribePortal =
      DescribePortalResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePortalResponse'
            Prelude.<$> (x Data..?> "alarms")
            Prelude.<*> (x Data..?> "notificationSenderEmail")
            Prelude.<*> (x Data..?> "portalAuthMode")
            Prelude.<*> (x Data..?> "portalDescription")
            Prelude.<*> (x Data..?> "portalLogoImageLocation")
            Prelude.<*> (x Data..?> "roleArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "portalId")
            Prelude.<*> (x Data..:> "portalArn")
            Prelude.<*> (x Data..:> "portalName")
            Prelude.<*> (x Data..:> "portalClientId")
            Prelude.<*> (x Data..:> "portalStartUrl")
            Prelude.<*> (x Data..:> "portalContactEmail")
            Prelude.<*> (x Data..:> "portalStatus")
            Prelude.<*> (x Data..:> "portalCreationDate")
            Prelude.<*> (x Data..:> "portalLastUpdateDate")
      )

instance Prelude.Hashable DescribePortal where
  hashWithSalt _salt DescribePortal' {..} =
    _salt `Prelude.hashWithSalt` portalId

instance Prelude.NFData DescribePortal where
  rnf DescribePortal' {..} = Prelude.rnf portalId

instance Data.ToHeaders DescribePortal where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToPath DescribePortal where
  toPath DescribePortal' {..} =
    Prelude.mconcat ["/portals/", Data.toBS portalId]

instance Data.ToQuery DescribePortal where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePortalResponse' smart constructor.
data DescribePortalResponse = DescribePortalResponse'
  { -- | Contains the configuration information of an alarm created in an IoT
    -- SiteWise Monitor portal.
    alarms :: Prelude.Maybe Alarms,
    -- | The email address that sends alarm notifications.
    notificationSenderEmail :: Prelude.Maybe Prelude.Text,
    -- | The service to use to authenticate users to the portal.
    portalAuthMode :: Prelude.Maybe AuthMode,
    -- | The portal\'s description.
    portalDescription :: Prelude.Maybe Prelude.Text,
    -- | The portal\'s logo image, which is available at a URL.
    portalLogoImageLocation :: Prelude.Maybe ImageLocation,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the service role that allows the portal\'s users to access your IoT
    -- SiteWise resources on your behalf. For more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html Using service roles for IoT SiteWise Monitor>
    -- in the /IoT SiteWise User Guide/.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ID of the portal.
    portalId :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the portal, which has the following format.
    --
    -- @arn:${Partition}:iotsitewise:${Region}:${Account}:portal\/${PortalId}@
    portalArn :: Prelude.Text,
    -- | The name of the portal.
    portalName :: Prelude.Text,
    -- | The IAM Identity Center application generated client ID (used with IAM
    -- Identity Center APIs). IoT SiteWise includes @portalClientId@ for only
    -- portals that use IAM Identity Center to authenticate users.
    portalClientId :: Prelude.Text,
    -- | The URL for the IoT SiteWise Monitor portal. You can use this URL to
    -- access portals that use IAM Identity Center for authentication. For
    -- portals that use IAM for authentication, you must use the IoT SiteWise
    -- console to get a URL that you can use to access the portal.
    portalStartUrl :: Prelude.Text,
    -- | The Amazon Web Services administrator\'s contact email address.
    portalContactEmail :: Prelude.Text,
    -- | The current status of the portal, which contains a state and any error
    -- message.
    portalStatus :: PortalStatus,
    -- | The date the portal was created, in Unix epoch time.
    portalCreationDate :: Data.POSIX,
    -- | The date the portal was last updated, in Unix epoch time.
    portalLastUpdateDate :: Data.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePortalResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alarms', 'describePortalResponse_alarms' - Contains the configuration information of an alarm created in an IoT
-- SiteWise Monitor portal.
--
-- 'notificationSenderEmail', 'describePortalResponse_notificationSenderEmail' - The email address that sends alarm notifications.
--
-- 'portalAuthMode', 'describePortalResponse_portalAuthMode' - The service to use to authenticate users to the portal.
--
-- 'portalDescription', 'describePortalResponse_portalDescription' - The portal\'s description.
--
-- 'portalLogoImageLocation', 'describePortalResponse_portalLogoImageLocation' - The portal\'s logo image, which is available at a URL.
--
-- 'roleArn', 'describePortalResponse_roleArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the service role that allows the portal\'s users to access your IoT
-- SiteWise resources on your behalf. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html Using service roles for IoT SiteWise Monitor>
-- in the /IoT SiteWise User Guide/.
--
-- 'httpStatus', 'describePortalResponse_httpStatus' - The response's http status code.
--
-- 'portalId', 'describePortalResponse_portalId' - The ID of the portal.
--
-- 'portalArn', 'describePortalResponse_portalArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the portal, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:portal\/${PortalId}@
--
-- 'portalName', 'describePortalResponse_portalName' - The name of the portal.
--
-- 'portalClientId', 'describePortalResponse_portalClientId' - The IAM Identity Center application generated client ID (used with IAM
-- Identity Center APIs). IoT SiteWise includes @portalClientId@ for only
-- portals that use IAM Identity Center to authenticate users.
--
-- 'portalStartUrl', 'describePortalResponse_portalStartUrl' - The URL for the IoT SiteWise Monitor portal. You can use this URL to
-- access portals that use IAM Identity Center for authentication. For
-- portals that use IAM for authentication, you must use the IoT SiteWise
-- console to get a URL that you can use to access the portal.
--
-- 'portalContactEmail', 'describePortalResponse_portalContactEmail' - The Amazon Web Services administrator\'s contact email address.
--
-- 'portalStatus', 'describePortalResponse_portalStatus' - The current status of the portal, which contains a state and any error
-- message.
--
-- 'portalCreationDate', 'describePortalResponse_portalCreationDate' - The date the portal was created, in Unix epoch time.
--
-- 'portalLastUpdateDate', 'describePortalResponse_portalLastUpdateDate' - The date the portal was last updated, in Unix epoch time.
newDescribePortalResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'portalId'
  Prelude.Text ->
  -- | 'portalArn'
  Prelude.Text ->
  -- | 'portalName'
  Prelude.Text ->
  -- | 'portalClientId'
  Prelude.Text ->
  -- | 'portalStartUrl'
  Prelude.Text ->
  -- | 'portalContactEmail'
  Prelude.Text ->
  -- | 'portalStatus'
  PortalStatus ->
  -- | 'portalCreationDate'
  Prelude.UTCTime ->
  -- | 'portalLastUpdateDate'
  Prelude.UTCTime ->
  DescribePortalResponse
newDescribePortalResponse
  pHttpStatus_
  pPortalId_
  pPortalArn_
  pPortalName_
  pPortalClientId_
  pPortalStartUrl_
  pPortalContactEmail_
  pPortalStatus_
  pPortalCreationDate_
  pPortalLastUpdateDate_ =
    DescribePortalResponse'
      { alarms = Prelude.Nothing,
        notificationSenderEmail = Prelude.Nothing,
        portalAuthMode = Prelude.Nothing,
        portalDescription = Prelude.Nothing,
        portalLogoImageLocation = Prelude.Nothing,
        roleArn = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        portalId = pPortalId_,
        portalArn = pPortalArn_,
        portalName = pPortalName_,
        portalClientId = pPortalClientId_,
        portalStartUrl = pPortalStartUrl_,
        portalContactEmail = pPortalContactEmail_,
        portalStatus = pPortalStatus_,
        portalCreationDate =
          Data._Time Lens.# pPortalCreationDate_,
        portalLastUpdateDate =
          Data._Time Lens.# pPortalLastUpdateDate_
      }

-- | Contains the configuration information of an alarm created in an IoT
-- SiteWise Monitor portal.
describePortalResponse_alarms :: Lens.Lens' DescribePortalResponse (Prelude.Maybe Alarms)
describePortalResponse_alarms = Lens.lens (\DescribePortalResponse' {alarms} -> alarms) (\s@DescribePortalResponse' {} a -> s {alarms = a} :: DescribePortalResponse)

-- | The email address that sends alarm notifications.
describePortalResponse_notificationSenderEmail :: Lens.Lens' DescribePortalResponse (Prelude.Maybe Prelude.Text)
describePortalResponse_notificationSenderEmail = Lens.lens (\DescribePortalResponse' {notificationSenderEmail} -> notificationSenderEmail) (\s@DescribePortalResponse' {} a -> s {notificationSenderEmail = a} :: DescribePortalResponse)

-- | The service to use to authenticate users to the portal.
describePortalResponse_portalAuthMode :: Lens.Lens' DescribePortalResponse (Prelude.Maybe AuthMode)
describePortalResponse_portalAuthMode = Lens.lens (\DescribePortalResponse' {portalAuthMode} -> portalAuthMode) (\s@DescribePortalResponse' {} a -> s {portalAuthMode = a} :: DescribePortalResponse)

-- | The portal\'s description.
describePortalResponse_portalDescription :: Lens.Lens' DescribePortalResponse (Prelude.Maybe Prelude.Text)
describePortalResponse_portalDescription = Lens.lens (\DescribePortalResponse' {portalDescription} -> portalDescription) (\s@DescribePortalResponse' {} a -> s {portalDescription = a} :: DescribePortalResponse)

-- | The portal\'s logo image, which is available at a URL.
describePortalResponse_portalLogoImageLocation :: Lens.Lens' DescribePortalResponse (Prelude.Maybe ImageLocation)
describePortalResponse_portalLogoImageLocation = Lens.lens (\DescribePortalResponse' {portalLogoImageLocation} -> portalLogoImageLocation) (\s@DescribePortalResponse' {} a -> s {portalLogoImageLocation = a} :: DescribePortalResponse)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the service role that allows the portal\'s users to access your IoT
-- SiteWise resources on your behalf. For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html Using service roles for IoT SiteWise Monitor>
-- in the /IoT SiteWise User Guide/.
describePortalResponse_roleArn :: Lens.Lens' DescribePortalResponse (Prelude.Maybe Prelude.Text)
describePortalResponse_roleArn = Lens.lens (\DescribePortalResponse' {roleArn} -> roleArn) (\s@DescribePortalResponse' {} a -> s {roleArn = a} :: DescribePortalResponse)

-- | The response's http status code.
describePortalResponse_httpStatus :: Lens.Lens' DescribePortalResponse Prelude.Int
describePortalResponse_httpStatus = Lens.lens (\DescribePortalResponse' {httpStatus} -> httpStatus) (\s@DescribePortalResponse' {} a -> s {httpStatus = a} :: DescribePortalResponse)

-- | The ID of the portal.
describePortalResponse_portalId :: Lens.Lens' DescribePortalResponse Prelude.Text
describePortalResponse_portalId = Lens.lens (\DescribePortalResponse' {portalId} -> portalId) (\s@DescribePortalResponse' {} a -> s {portalId = a} :: DescribePortalResponse)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the portal, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:portal\/${PortalId}@
describePortalResponse_portalArn :: Lens.Lens' DescribePortalResponse Prelude.Text
describePortalResponse_portalArn = Lens.lens (\DescribePortalResponse' {portalArn} -> portalArn) (\s@DescribePortalResponse' {} a -> s {portalArn = a} :: DescribePortalResponse)

-- | The name of the portal.
describePortalResponse_portalName :: Lens.Lens' DescribePortalResponse Prelude.Text
describePortalResponse_portalName = Lens.lens (\DescribePortalResponse' {portalName} -> portalName) (\s@DescribePortalResponse' {} a -> s {portalName = a} :: DescribePortalResponse)

-- | The IAM Identity Center application generated client ID (used with IAM
-- Identity Center APIs). IoT SiteWise includes @portalClientId@ for only
-- portals that use IAM Identity Center to authenticate users.
describePortalResponse_portalClientId :: Lens.Lens' DescribePortalResponse Prelude.Text
describePortalResponse_portalClientId = Lens.lens (\DescribePortalResponse' {portalClientId} -> portalClientId) (\s@DescribePortalResponse' {} a -> s {portalClientId = a} :: DescribePortalResponse)

-- | The URL for the IoT SiteWise Monitor portal. You can use this URL to
-- access portals that use IAM Identity Center for authentication. For
-- portals that use IAM for authentication, you must use the IoT SiteWise
-- console to get a URL that you can use to access the portal.
describePortalResponse_portalStartUrl :: Lens.Lens' DescribePortalResponse Prelude.Text
describePortalResponse_portalStartUrl = Lens.lens (\DescribePortalResponse' {portalStartUrl} -> portalStartUrl) (\s@DescribePortalResponse' {} a -> s {portalStartUrl = a} :: DescribePortalResponse)

-- | The Amazon Web Services administrator\'s contact email address.
describePortalResponse_portalContactEmail :: Lens.Lens' DescribePortalResponse Prelude.Text
describePortalResponse_portalContactEmail = Lens.lens (\DescribePortalResponse' {portalContactEmail} -> portalContactEmail) (\s@DescribePortalResponse' {} a -> s {portalContactEmail = a} :: DescribePortalResponse)

-- | The current status of the portal, which contains a state and any error
-- message.
describePortalResponse_portalStatus :: Lens.Lens' DescribePortalResponse PortalStatus
describePortalResponse_portalStatus = Lens.lens (\DescribePortalResponse' {portalStatus} -> portalStatus) (\s@DescribePortalResponse' {} a -> s {portalStatus = a} :: DescribePortalResponse)

-- | The date the portal was created, in Unix epoch time.
describePortalResponse_portalCreationDate :: Lens.Lens' DescribePortalResponse Prelude.UTCTime
describePortalResponse_portalCreationDate = Lens.lens (\DescribePortalResponse' {portalCreationDate} -> portalCreationDate) (\s@DescribePortalResponse' {} a -> s {portalCreationDate = a} :: DescribePortalResponse) Prelude.. Data._Time

-- | The date the portal was last updated, in Unix epoch time.
describePortalResponse_portalLastUpdateDate :: Lens.Lens' DescribePortalResponse Prelude.UTCTime
describePortalResponse_portalLastUpdateDate = Lens.lens (\DescribePortalResponse' {portalLastUpdateDate} -> portalLastUpdateDate) (\s@DescribePortalResponse' {} a -> s {portalLastUpdateDate = a} :: DescribePortalResponse) Prelude.. Data._Time

instance Prelude.NFData DescribePortalResponse where
  rnf DescribePortalResponse' {..} =
    Prelude.rnf alarms
      `Prelude.seq` Prelude.rnf notificationSenderEmail
      `Prelude.seq` Prelude.rnf portalAuthMode
      `Prelude.seq` Prelude.rnf portalDescription
      `Prelude.seq` Prelude.rnf portalLogoImageLocation
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf portalId
      `Prelude.seq` Prelude.rnf portalArn
      `Prelude.seq` Prelude.rnf portalName
      `Prelude.seq` Prelude.rnf portalClientId
      `Prelude.seq` Prelude.rnf portalStartUrl
      `Prelude.seq` Prelude.rnf portalContactEmail
      `Prelude.seq` Prelude.rnf portalStatus
      `Prelude.seq` Prelude.rnf portalCreationDate
      `Prelude.seq` Prelude.rnf portalLastUpdateDate
