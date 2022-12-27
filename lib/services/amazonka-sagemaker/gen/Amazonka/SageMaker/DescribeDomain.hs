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
-- Module      : Amazonka.SageMaker.DescribeDomain
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The description of the domain.
module Amazonka.SageMaker.DescribeDomain
  ( -- * Creating a Request
    DescribeDomain (..),
    newDescribeDomain,

    -- * Request Lenses
    describeDomain_domainId,

    -- * Destructuring the Response
    DescribeDomainResponse (..),
    newDescribeDomainResponse,

    -- * Response Lenses
    describeDomainResponse_appNetworkAccessType,
    describeDomainResponse_appSecurityGroupManagement,
    describeDomainResponse_authMode,
    describeDomainResponse_creationTime,
    describeDomainResponse_defaultSpaceSettings,
    describeDomainResponse_defaultUserSettings,
    describeDomainResponse_domainArn,
    describeDomainResponse_domainId,
    describeDomainResponse_domainName,
    describeDomainResponse_domainSettings,
    describeDomainResponse_failureReason,
    describeDomainResponse_homeEfsFileSystemId,
    describeDomainResponse_homeEfsFileSystemKmsKeyId,
    describeDomainResponse_kmsKeyId,
    describeDomainResponse_lastModifiedTime,
    describeDomainResponse_securityGroupIdForDomainBoundary,
    describeDomainResponse_singleSignOnManagedApplicationInstanceId,
    describeDomainResponse_status,
    describeDomainResponse_subnetIds,
    describeDomainResponse_url,
    describeDomainResponse_vpcId,
    describeDomainResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newDescribeDomain' smart constructor.
data DescribeDomain = DescribeDomain'
  { -- | The domain ID.
    domainId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomain' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainId', 'describeDomain_domainId' - The domain ID.
newDescribeDomain ::
  -- | 'domainId'
  Prelude.Text ->
  DescribeDomain
newDescribeDomain pDomainId_ =
  DescribeDomain' {domainId = pDomainId_}

-- | The domain ID.
describeDomain_domainId :: Lens.Lens' DescribeDomain Prelude.Text
describeDomain_domainId = Lens.lens (\DescribeDomain' {domainId} -> domainId) (\s@DescribeDomain' {} a -> s {domainId = a} :: DescribeDomain)

instance Core.AWSRequest DescribeDomain where
  type
    AWSResponse DescribeDomain =
      DescribeDomainResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDomainResponse'
            Prelude.<$> (x Data..?> "AppNetworkAccessType")
            Prelude.<*> (x Data..?> "AppSecurityGroupManagement")
            Prelude.<*> (x Data..?> "AuthMode")
            Prelude.<*> (x Data..?> "CreationTime")
            Prelude.<*> (x Data..?> "DefaultSpaceSettings")
            Prelude.<*> (x Data..?> "DefaultUserSettings")
            Prelude.<*> (x Data..?> "DomainArn")
            Prelude.<*> (x Data..?> "DomainId")
            Prelude.<*> (x Data..?> "DomainName")
            Prelude.<*> (x Data..?> "DomainSettings")
            Prelude.<*> (x Data..?> "FailureReason")
            Prelude.<*> (x Data..?> "HomeEfsFileSystemId")
            Prelude.<*> (x Data..?> "HomeEfsFileSystemKmsKeyId")
            Prelude.<*> (x Data..?> "KmsKeyId")
            Prelude.<*> (x Data..?> "LastModifiedTime")
            Prelude.<*> (x Data..?> "SecurityGroupIdForDomainBoundary")
            Prelude.<*> ( x
                            Data..?> "SingleSignOnManagedApplicationInstanceId"
                        )
            Prelude.<*> (x Data..?> "Status")
            Prelude.<*> (x Data..?> "SubnetIds")
            Prelude.<*> (x Data..?> "Url")
            Prelude.<*> (x Data..?> "VpcId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDomain where
  hashWithSalt _salt DescribeDomain' {..} =
    _salt `Prelude.hashWithSalt` domainId

instance Prelude.NFData DescribeDomain where
  rnf DescribeDomain' {..} = Prelude.rnf domainId

instance Data.ToHeaders DescribeDomain where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ("SageMaker.DescribeDomain" :: Prelude.ByteString),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DescribeDomain where
  toJSON DescribeDomain' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("DomainId" Data..= domainId)]
      )

instance Data.ToPath DescribeDomain where
  toPath = Prelude.const "/"

instance Data.ToQuery DescribeDomain where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDomainResponse' smart constructor.
data DescribeDomainResponse = DescribeDomainResponse'
  { -- | Specifies the VPC used for non-EFS traffic. The default value is
    -- @PublicInternetOnly@.
    --
    -- -   @PublicInternetOnly@ - Non-EFS traffic is through a VPC managed by
    --     Amazon SageMaker, which allows direct internet access
    --
    -- -   @VpcOnly@ - All Studio traffic is through the specified VPC and
    --     subnets
    appNetworkAccessType :: Prelude.Maybe AppNetworkAccessType,
    -- | The entity that creates and manages the required security groups for
    -- inter-app communication in @VPCOnly@ mode. Required when
    -- @CreateDomain.AppNetworkAccessType@ is @VPCOnly@ and
    -- @DomainSettings.RStudioServerProDomainSettings.DomainExecutionRoleArn@
    -- is provided.
    appSecurityGroupManagement :: Prelude.Maybe AppSecurityGroupManagement,
    -- | The domain\'s authentication mode.
    authMode :: Prelude.Maybe AuthMode,
    -- | The creation time.
    creationTime :: Prelude.Maybe Data.POSIX,
    -- | The default settings used to create a space.
    defaultSpaceSettings :: Prelude.Maybe DefaultSpaceSettings,
    -- | Settings which are applied to UserProfiles in this domain if settings
    -- are not explicitly specified in a given UserProfile.
    defaultUserSettings :: Prelude.Maybe UserSettings,
    -- | The domain\'s Amazon Resource Name (ARN).
    domainArn :: Prelude.Maybe Prelude.Text,
    -- | The domain ID.
    domainId :: Prelude.Maybe Prelude.Text,
    -- | The domain name.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | A collection of @Domain@ settings.
    domainSettings :: Prelude.Maybe DomainSettings,
    -- | The failure reason.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Elastic File System (EFS) managed by this Domain.
    homeEfsFileSystemId :: Prelude.Maybe Prelude.Text,
    -- | Use @KmsKeyId@.
    homeEfsFileSystemKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services KMS customer managed key used to encrypt the EFS
    -- volume attached to the domain.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The last modified time.
    lastModifiedTime :: Prelude.Maybe Data.POSIX,
    -- | The ID of the security group that authorizes traffic between the
    -- @RSessionGateway@ apps and the @RStudioServerPro@ app.
    securityGroupIdForDomainBoundary :: Prelude.Maybe Prelude.Text,
    -- | The IAM Identity Center managed application instance ID.
    singleSignOnManagedApplicationInstanceId :: Prelude.Maybe Prelude.Text,
    -- | The status.
    status :: Prelude.Maybe DomainStatus,
    -- | The VPC subnets that Studio uses for communication.
    subnetIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The domain\'s URL.
    url :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for
    -- communication.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomainResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appNetworkAccessType', 'describeDomainResponse_appNetworkAccessType' - Specifies the VPC used for non-EFS traffic. The default value is
-- @PublicInternetOnly@.
--
-- -   @PublicInternetOnly@ - Non-EFS traffic is through a VPC managed by
--     Amazon SageMaker, which allows direct internet access
--
-- -   @VpcOnly@ - All Studio traffic is through the specified VPC and
--     subnets
--
-- 'appSecurityGroupManagement', 'describeDomainResponse_appSecurityGroupManagement' - The entity that creates and manages the required security groups for
-- inter-app communication in @VPCOnly@ mode. Required when
-- @CreateDomain.AppNetworkAccessType@ is @VPCOnly@ and
-- @DomainSettings.RStudioServerProDomainSettings.DomainExecutionRoleArn@
-- is provided.
--
-- 'authMode', 'describeDomainResponse_authMode' - The domain\'s authentication mode.
--
-- 'creationTime', 'describeDomainResponse_creationTime' - The creation time.
--
-- 'defaultSpaceSettings', 'describeDomainResponse_defaultSpaceSettings' - The default settings used to create a space.
--
-- 'defaultUserSettings', 'describeDomainResponse_defaultUserSettings' - Settings which are applied to UserProfiles in this domain if settings
-- are not explicitly specified in a given UserProfile.
--
-- 'domainArn', 'describeDomainResponse_domainArn' - The domain\'s Amazon Resource Name (ARN).
--
-- 'domainId', 'describeDomainResponse_domainId' - The domain ID.
--
-- 'domainName', 'describeDomainResponse_domainName' - The domain name.
--
-- 'domainSettings', 'describeDomainResponse_domainSettings' - A collection of @Domain@ settings.
--
-- 'failureReason', 'describeDomainResponse_failureReason' - The failure reason.
--
-- 'homeEfsFileSystemId', 'describeDomainResponse_homeEfsFileSystemId' - The ID of the Amazon Elastic File System (EFS) managed by this Domain.
--
-- 'homeEfsFileSystemKmsKeyId', 'describeDomainResponse_homeEfsFileSystemKmsKeyId' - Use @KmsKeyId@.
--
-- 'kmsKeyId', 'describeDomainResponse_kmsKeyId' - The Amazon Web Services KMS customer managed key used to encrypt the EFS
-- volume attached to the domain.
--
-- 'lastModifiedTime', 'describeDomainResponse_lastModifiedTime' - The last modified time.
--
-- 'securityGroupIdForDomainBoundary', 'describeDomainResponse_securityGroupIdForDomainBoundary' - The ID of the security group that authorizes traffic between the
-- @RSessionGateway@ apps and the @RStudioServerPro@ app.
--
-- 'singleSignOnManagedApplicationInstanceId', 'describeDomainResponse_singleSignOnManagedApplicationInstanceId' - The IAM Identity Center managed application instance ID.
--
-- 'status', 'describeDomainResponse_status' - The status.
--
-- 'subnetIds', 'describeDomainResponse_subnetIds' - The VPC subnets that Studio uses for communication.
--
-- 'url', 'describeDomainResponse_url' - The domain\'s URL.
--
-- 'vpcId', 'describeDomainResponse_vpcId' - The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for
-- communication.
--
-- 'httpStatus', 'describeDomainResponse_httpStatus' - The response's http status code.
newDescribeDomainResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDomainResponse
newDescribeDomainResponse pHttpStatus_ =
  DescribeDomainResponse'
    { appNetworkAccessType =
        Prelude.Nothing,
      appSecurityGroupManagement = Prelude.Nothing,
      authMode = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      defaultSpaceSettings = Prelude.Nothing,
      defaultUserSettings = Prelude.Nothing,
      domainArn = Prelude.Nothing,
      domainId = Prelude.Nothing,
      domainName = Prelude.Nothing,
      domainSettings = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      homeEfsFileSystemId = Prelude.Nothing,
      homeEfsFileSystemKmsKeyId = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      securityGroupIdForDomainBoundary = Prelude.Nothing,
      singleSignOnManagedApplicationInstanceId =
        Prelude.Nothing,
      status = Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      url = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies the VPC used for non-EFS traffic. The default value is
-- @PublicInternetOnly@.
--
-- -   @PublicInternetOnly@ - Non-EFS traffic is through a VPC managed by
--     Amazon SageMaker, which allows direct internet access
--
-- -   @VpcOnly@ - All Studio traffic is through the specified VPC and
--     subnets
describeDomainResponse_appNetworkAccessType :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe AppNetworkAccessType)
describeDomainResponse_appNetworkAccessType = Lens.lens (\DescribeDomainResponse' {appNetworkAccessType} -> appNetworkAccessType) (\s@DescribeDomainResponse' {} a -> s {appNetworkAccessType = a} :: DescribeDomainResponse)

-- | The entity that creates and manages the required security groups for
-- inter-app communication in @VPCOnly@ mode. Required when
-- @CreateDomain.AppNetworkAccessType@ is @VPCOnly@ and
-- @DomainSettings.RStudioServerProDomainSettings.DomainExecutionRoleArn@
-- is provided.
describeDomainResponse_appSecurityGroupManagement :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe AppSecurityGroupManagement)
describeDomainResponse_appSecurityGroupManagement = Lens.lens (\DescribeDomainResponse' {appSecurityGroupManagement} -> appSecurityGroupManagement) (\s@DescribeDomainResponse' {} a -> s {appSecurityGroupManagement = a} :: DescribeDomainResponse)

-- | The domain\'s authentication mode.
describeDomainResponse_authMode :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe AuthMode)
describeDomainResponse_authMode = Lens.lens (\DescribeDomainResponse' {authMode} -> authMode) (\s@DescribeDomainResponse' {} a -> s {authMode = a} :: DescribeDomainResponse)

-- | The creation time.
describeDomainResponse_creationTime :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.UTCTime)
describeDomainResponse_creationTime = Lens.lens (\DescribeDomainResponse' {creationTime} -> creationTime) (\s@DescribeDomainResponse' {} a -> s {creationTime = a} :: DescribeDomainResponse) Prelude.. Lens.mapping Data._Time

-- | The default settings used to create a space.
describeDomainResponse_defaultSpaceSettings :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe DefaultSpaceSettings)
describeDomainResponse_defaultSpaceSettings = Lens.lens (\DescribeDomainResponse' {defaultSpaceSettings} -> defaultSpaceSettings) (\s@DescribeDomainResponse' {} a -> s {defaultSpaceSettings = a} :: DescribeDomainResponse)

-- | Settings which are applied to UserProfiles in this domain if settings
-- are not explicitly specified in a given UserProfile.
describeDomainResponse_defaultUserSettings :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe UserSettings)
describeDomainResponse_defaultUserSettings = Lens.lens (\DescribeDomainResponse' {defaultUserSettings} -> defaultUserSettings) (\s@DescribeDomainResponse' {} a -> s {defaultUserSettings = a} :: DescribeDomainResponse)

-- | The domain\'s Amazon Resource Name (ARN).
describeDomainResponse_domainArn :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_domainArn = Lens.lens (\DescribeDomainResponse' {domainArn} -> domainArn) (\s@DescribeDomainResponse' {} a -> s {domainArn = a} :: DescribeDomainResponse)

-- | The domain ID.
describeDomainResponse_domainId :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_domainId = Lens.lens (\DescribeDomainResponse' {domainId} -> domainId) (\s@DescribeDomainResponse' {} a -> s {domainId = a} :: DescribeDomainResponse)

-- | The domain name.
describeDomainResponse_domainName :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_domainName = Lens.lens (\DescribeDomainResponse' {domainName} -> domainName) (\s@DescribeDomainResponse' {} a -> s {domainName = a} :: DescribeDomainResponse)

-- | A collection of @Domain@ settings.
describeDomainResponse_domainSettings :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe DomainSettings)
describeDomainResponse_domainSettings = Lens.lens (\DescribeDomainResponse' {domainSettings} -> domainSettings) (\s@DescribeDomainResponse' {} a -> s {domainSettings = a} :: DescribeDomainResponse)

-- | The failure reason.
describeDomainResponse_failureReason :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_failureReason = Lens.lens (\DescribeDomainResponse' {failureReason} -> failureReason) (\s@DescribeDomainResponse' {} a -> s {failureReason = a} :: DescribeDomainResponse)

-- | The ID of the Amazon Elastic File System (EFS) managed by this Domain.
describeDomainResponse_homeEfsFileSystemId :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_homeEfsFileSystemId = Lens.lens (\DescribeDomainResponse' {homeEfsFileSystemId} -> homeEfsFileSystemId) (\s@DescribeDomainResponse' {} a -> s {homeEfsFileSystemId = a} :: DescribeDomainResponse)

-- | Use @KmsKeyId@.
describeDomainResponse_homeEfsFileSystemKmsKeyId :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_homeEfsFileSystemKmsKeyId = Lens.lens (\DescribeDomainResponse' {homeEfsFileSystemKmsKeyId} -> homeEfsFileSystemKmsKeyId) (\s@DescribeDomainResponse' {} a -> s {homeEfsFileSystemKmsKeyId = a} :: DescribeDomainResponse)

-- | The Amazon Web Services KMS customer managed key used to encrypt the EFS
-- volume attached to the domain.
describeDomainResponse_kmsKeyId :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_kmsKeyId = Lens.lens (\DescribeDomainResponse' {kmsKeyId} -> kmsKeyId) (\s@DescribeDomainResponse' {} a -> s {kmsKeyId = a} :: DescribeDomainResponse)

-- | The last modified time.
describeDomainResponse_lastModifiedTime :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.UTCTime)
describeDomainResponse_lastModifiedTime = Lens.lens (\DescribeDomainResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeDomainResponse' {} a -> s {lastModifiedTime = a} :: DescribeDomainResponse) Prelude.. Lens.mapping Data._Time

-- | The ID of the security group that authorizes traffic between the
-- @RSessionGateway@ apps and the @RStudioServerPro@ app.
describeDomainResponse_securityGroupIdForDomainBoundary :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_securityGroupIdForDomainBoundary = Lens.lens (\DescribeDomainResponse' {securityGroupIdForDomainBoundary} -> securityGroupIdForDomainBoundary) (\s@DescribeDomainResponse' {} a -> s {securityGroupIdForDomainBoundary = a} :: DescribeDomainResponse)

-- | The IAM Identity Center managed application instance ID.
describeDomainResponse_singleSignOnManagedApplicationInstanceId :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_singleSignOnManagedApplicationInstanceId = Lens.lens (\DescribeDomainResponse' {singleSignOnManagedApplicationInstanceId} -> singleSignOnManagedApplicationInstanceId) (\s@DescribeDomainResponse' {} a -> s {singleSignOnManagedApplicationInstanceId = a} :: DescribeDomainResponse)

-- | The status.
describeDomainResponse_status :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe DomainStatus)
describeDomainResponse_status = Lens.lens (\DescribeDomainResponse' {status} -> status) (\s@DescribeDomainResponse' {} a -> s {status = a} :: DescribeDomainResponse)

-- | The VPC subnets that Studio uses for communication.
describeDomainResponse_subnetIds :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
describeDomainResponse_subnetIds = Lens.lens (\DescribeDomainResponse' {subnetIds} -> subnetIds) (\s@DescribeDomainResponse' {} a -> s {subnetIds = a} :: DescribeDomainResponse) Prelude.. Lens.mapping Lens.coerced

-- | The domain\'s URL.
describeDomainResponse_url :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_url = Lens.lens (\DescribeDomainResponse' {url} -> url) (\s@DescribeDomainResponse' {} a -> s {url = a} :: DescribeDomainResponse)

-- | The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for
-- communication.
describeDomainResponse_vpcId :: Lens.Lens' DescribeDomainResponse (Prelude.Maybe Prelude.Text)
describeDomainResponse_vpcId = Lens.lens (\DescribeDomainResponse' {vpcId} -> vpcId) (\s@DescribeDomainResponse' {} a -> s {vpcId = a} :: DescribeDomainResponse)

-- | The response's http status code.
describeDomainResponse_httpStatus :: Lens.Lens' DescribeDomainResponse Prelude.Int
describeDomainResponse_httpStatus = Lens.lens (\DescribeDomainResponse' {httpStatus} -> httpStatus) (\s@DescribeDomainResponse' {} a -> s {httpStatus = a} :: DescribeDomainResponse)

instance Prelude.NFData DescribeDomainResponse where
  rnf DescribeDomainResponse' {..} =
    Prelude.rnf appNetworkAccessType
      `Prelude.seq` Prelude.rnf appSecurityGroupManagement
      `Prelude.seq` Prelude.rnf authMode
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf defaultSpaceSettings
      `Prelude.seq` Prelude.rnf defaultUserSettings
      `Prelude.seq` Prelude.rnf domainArn
      `Prelude.seq` Prelude.rnf domainId
      `Prelude.seq` Prelude.rnf domainName
      `Prelude.seq` Prelude.rnf domainSettings
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf homeEfsFileSystemId
      `Prelude.seq` Prelude.rnf homeEfsFileSystemKmsKeyId
      `Prelude.seq` Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf
        securityGroupIdForDomainBoundary
      `Prelude.seq` Prelude.rnf
        singleSignOnManagedApplicationInstanceId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf subnetIds
      `Prelude.seq` Prelude.rnf url
      `Prelude.seq` Prelude.rnf vpcId
      `Prelude.seq` Prelude.rnf httpStatus
