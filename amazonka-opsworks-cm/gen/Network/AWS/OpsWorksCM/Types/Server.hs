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
-- Module      : Network.AWS.OpsWorksCM.Types.Server
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.Server where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorksCM.Types.EngineAttribute
import Network.AWS.OpsWorksCM.Types.MaintenanceStatus
import Network.AWS.OpsWorksCM.Types.ServerStatus
import qualified Network.AWS.Prelude as Prelude

-- | Describes a configuration management server.
--
-- /See:/ 'newServer' smart constructor.
data Server = Server'
  { -- | The instance profile ARN of the server.
    instanceProfileArn :: Prelude.Maybe Prelude.Text,
    -- | The preferred backup period specified for the server.
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | The security group IDs for the server, as specified in the
    -- CloudFormation stack. These might not be the same security groups that
    -- are shown in the EC2 console.
    securityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The service role ARN used to create the server.
    serviceRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The server\'s status. This field displays the states of actions in
    -- progress, such as creating, running, or backing up the server, as well
    -- as the server\'s health state.
    status :: Prelude.Maybe ServerStatus,
    -- | Disables automated backups. The number of stored backups is dependent on
    -- the value of PreferredBackupCount.
    disableAutomatedBackup :: Prelude.Maybe Prelude.Bool,
    -- | The response of a createServer() request returns the master credential
    -- to access the server in EngineAttributes. These credentials are not
    -- stored by AWS OpsWorks CM; they are returned only as part of the result
    -- of createServer().
    --
    -- __Attributes returned in a createServer response for Chef__
    --
    -- -   @CHEF_AUTOMATE_PIVOTAL_KEY@: A base64-encoded RSA private key that
    --     is generated by AWS OpsWorks for Chef Automate. This private key is
    --     required to access the Chef API.
    --
    -- -   @CHEF_STARTER_KIT@: A base64-encoded ZIP file. The ZIP file contains
    --     a Chef starter kit, which includes a README, a configuration file,
    --     and the required RSA private key. Save this file, unzip it, and then
    --     change to the directory where you\'ve unzipped the file contents.
    --     From this directory, you can run Knife commands.
    --
    -- __Attributes returned in a createServer response for Puppet__
    --
    -- -   @PUPPET_STARTER_KIT@: A base64-encoded ZIP file. The ZIP file
    --     contains a Puppet starter kit, including a README and a required
    --     private key. Save this file, unzip it, and then change to the
    --     directory where you\'ve unzipped the file contents.
    --
    -- -   @PUPPET_ADMIN_PASSWORD@: An administrator password that you can use
    --     to sign in to the Puppet Enterprise console after the server is
    --     online.
    engineAttributes :: Prelude.Maybe [EngineAttribute],
    -- | The instance type for the server, as specified in the CloudFormation
    -- stack. This might not be the same instance type that is shown in the EC2
    -- console.
    instanceType :: Prelude.Maybe Prelude.Text,
    -- | An optional public endpoint of a server, such as
    -- @https:\/\/aws.my-company.com@. You cannot access the server by using
    -- the @Endpoint@ value if the server has a @CustomDomain@ specified.
    customDomain :: Prelude.Maybe Prelude.Text,
    -- | Time stamp of server creation. Example @2016-07-29T13:38:47.520Z@
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The subnet IDs specified in a CreateServer request.
    subnetIds :: Prelude.Maybe [Prelude.Text],
    -- | The key pair associated with the server.
    keyPair :: Prelude.Maybe Prelude.Text,
    -- | Associate a public IP address with a server that you are launching.
    associatePublicIpAddress :: Prelude.Maybe Prelude.Bool,
    -- | The name of the server.
    serverName :: Prelude.Maybe Prelude.Text,
    -- | The engine version of the server. For a Chef server, the valid value for
    -- EngineVersion is currently @2@. For a Puppet server, specify either
    -- @2019@ or @2017@.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | The preferred maintenance period specified for the server.
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the CloudFormation stack that was used to create the server.
    cloudFormationStackArn :: Prelude.Maybe Prelude.Text,
    -- | The status of the most recent server maintenance run. Shows @SUCCESS@ or
    -- @FAILED@.
    maintenanceStatus :: Prelude.Maybe MaintenanceStatus,
    -- | The engine model of the server. Valid values in this release include
    -- @Monolithic@ for Puppet and @Single@ for Chef.
    engineModel :: Prelude.Maybe Prelude.Text,
    -- | The number of automated backups to keep.
    backupRetentionCount :: Prelude.Maybe Prelude.Int,
    -- | The engine type of the server. Valid values in this release include
    -- @ChefAutomate@ and @Puppet@.
    engine :: Prelude.Maybe Prelude.Text,
    -- | A DNS name that can be used to access the engine. Example:
    -- @myserver-asdfghjkl.us-east-1.opsworks.io@. You cannot access the server
    -- by using the @Endpoint@ value if the server has a @CustomDomain@
    -- specified.
    endpoint :: Prelude.Maybe Prelude.Text,
    -- | Depending on the server status, this field has either a human-readable
    -- message (such as a create or backup error), or an escaped block of JSON
    -- (used for health check results).
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the server.
    serverArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Server' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceProfileArn', 'server_instanceProfileArn' - The instance profile ARN of the server.
--
-- 'preferredBackupWindow', 'server_preferredBackupWindow' - The preferred backup period specified for the server.
--
-- 'securityGroupIds', 'server_securityGroupIds' - The security group IDs for the server, as specified in the
-- CloudFormation stack. These might not be the same security groups that
-- are shown in the EC2 console.
--
-- 'serviceRoleArn', 'server_serviceRoleArn' - The service role ARN used to create the server.
--
-- 'status', 'server_status' - The server\'s status. This field displays the states of actions in
-- progress, such as creating, running, or backing up the server, as well
-- as the server\'s health state.
--
-- 'disableAutomatedBackup', 'server_disableAutomatedBackup' - Disables automated backups. The number of stored backups is dependent on
-- the value of PreferredBackupCount.
--
-- 'engineAttributes', 'server_engineAttributes' - The response of a createServer() request returns the master credential
-- to access the server in EngineAttributes. These credentials are not
-- stored by AWS OpsWorks CM; they are returned only as part of the result
-- of createServer().
--
-- __Attributes returned in a createServer response for Chef__
--
-- -   @CHEF_AUTOMATE_PIVOTAL_KEY@: A base64-encoded RSA private key that
--     is generated by AWS OpsWorks for Chef Automate. This private key is
--     required to access the Chef API.
--
-- -   @CHEF_STARTER_KIT@: A base64-encoded ZIP file. The ZIP file contains
--     a Chef starter kit, which includes a README, a configuration file,
--     and the required RSA private key. Save this file, unzip it, and then
--     change to the directory where you\'ve unzipped the file contents.
--     From this directory, you can run Knife commands.
--
-- __Attributes returned in a createServer response for Puppet__
--
-- -   @PUPPET_STARTER_KIT@: A base64-encoded ZIP file. The ZIP file
--     contains a Puppet starter kit, including a README and a required
--     private key. Save this file, unzip it, and then change to the
--     directory where you\'ve unzipped the file contents.
--
-- -   @PUPPET_ADMIN_PASSWORD@: An administrator password that you can use
--     to sign in to the Puppet Enterprise console after the server is
--     online.
--
-- 'instanceType', 'server_instanceType' - The instance type for the server, as specified in the CloudFormation
-- stack. This might not be the same instance type that is shown in the EC2
-- console.
--
-- 'customDomain', 'server_customDomain' - An optional public endpoint of a server, such as
-- @https:\/\/aws.my-company.com@. You cannot access the server by using
-- the @Endpoint@ value if the server has a @CustomDomain@ specified.
--
-- 'createdAt', 'server_createdAt' - Time stamp of server creation. Example @2016-07-29T13:38:47.520Z@
--
-- 'subnetIds', 'server_subnetIds' - The subnet IDs specified in a CreateServer request.
--
-- 'keyPair', 'server_keyPair' - The key pair associated with the server.
--
-- 'associatePublicIpAddress', 'server_associatePublicIpAddress' - Associate a public IP address with a server that you are launching.
--
-- 'serverName', 'server_serverName' - The name of the server.
--
-- 'engineVersion', 'server_engineVersion' - The engine version of the server. For a Chef server, the valid value for
-- EngineVersion is currently @2@. For a Puppet server, specify either
-- @2019@ or @2017@.
--
-- 'preferredMaintenanceWindow', 'server_preferredMaintenanceWindow' - The preferred maintenance period specified for the server.
--
-- 'cloudFormationStackArn', 'server_cloudFormationStackArn' - The ARN of the CloudFormation stack that was used to create the server.
--
-- 'maintenanceStatus', 'server_maintenanceStatus' - The status of the most recent server maintenance run. Shows @SUCCESS@ or
-- @FAILED@.
--
-- 'engineModel', 'server_engineModel' - The engine model of the server. Valid values in this release include
-- @Monolithic@ for Puppet and @Single@ for Chef.
--
-- 'backupRetentionCount', 'server_backupRetentionCount' - The number of automated backups to keep.
--
-- 'engine', 'server_engine' - The engine type of the server. Valid values in this release include
-- @ChefAutomate@ and @Puppet@.
--
-- 'endpoint', 'server_endpoint' - A DNS name that can be used to access the engine. Example:
-- @myserver-asdfghjkl.us-east-1.opsworks.io@. You cannot access the server
-- by using the @Endpoint@ value if the server has a @CustomDomain@
-- specified.
--
-- 'statusReason', 'server_statusReason' - Depending on the server status, this field has either a human-readable
-- message (such as a create or backup error), or an escaped block of JSON
-- (used for health check results).
--
-- 'serverArn', 'server_serverArn' - The ARN of the server.
newServer ::
  Server
newServer =
  Server'
    { instanceProfileArn = Prelude.Nothing,
      preferredBackupWindow = Prelude.Nothing,
      securityGroupIds = Prelude.Nothing,
      serviceRoleArn = Prelude.Nothing,
      status = Prelude.Nothing,
      disableAutomatedBackup = Prelude.Nothing,
      engineAttributes = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      customDomain = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      subnetIds = Prelude.Nothing,
      keyPair = Prelude.Nothing,
      associatePublicIpAddress = Prelude.Nothing,
      serverName = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      cloudFormationStackArn = Prelude.Nothing,
      maintenanceStatus = Prelude.Nothing,
      engineModel = Prelude.Nothing,
      backupRetentionCount = Prelude.Nothing,
      engine = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      statusReason = Prelude.Nothing,
      serverArn = Prelude.Nothing
    }

-- | The instance profile ARN of the server.
server_instanceProfileArn :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_instanceProfileArn = Lens.lens (\Server' {instanceProfileArn} -> instanceProfileArn) (\s@Server' {} a -> s {instanceProfileArn = a} :: Server)

-- | The preferred backup period specified for the server.
server_preferredBackupWindow :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_preferredBackupWindow = Lens.lens (\Server' {preferredBackupWindow} -> preferredBackupWindow) (\s@Server' {} a -> s {preferredBackupWindow = a} :: Server)

-- | The security group IDs for the server, as specified in the
-- CloudFormation stack. These might not be the same security groups that
-- are shown in the EC2 console.
server_securityGroupIds :: Lens.Lens' Server (Prelude.Maybe [Prelude.Text])
server_securityGroupIds = Lens.lens (\Server' {securityGroupIds} -> securityGroupIds) (\s@Server' {} a -> s {securityGroupIds = a} :: Server) Prelude.. Lens.mapping Lens._Coerce

-- | The service role ARN used to create the server.
server_serviceRoleArn :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_serviceRoleArn = Lens.lens (\Server' {serviceRoleArn} -> serviceRoleArn) (\s@Server' {} a -> s {serviceRoleArn = a} :: Server)

-- | The server\'s status. This field displays the states of actions in
-- progress, such as creating, running, or backing up the server, as well
-- as the server\'s health state.
server_status :: Lens.Lens' Server (Prelude.Maybe ServerStatus)
server_status = Lens.lens (\Server' {status} -> status) (\s@Server' {} a -> s {status = a} :: Server)

-- | Disables automated backups. The number of stored backups is dependent on
-- the value of PreferredBackupCount.
server_disableAutomatedBackup :: Lens.Lens' Server (Prelude.Maybe Prelude.Bool)
server_disableAutomatedBackup = Lens.lens (\Server' {disableAutomatedBackup} -> disableAutomatedBackup) (\s@Server' {} a -> s {disableAutomatedBackup = a} :: Server)

-- | The response of a createServer() request returns the master credential
-- to access the server in EngineAttributes. These credentials are not
-- stored by AWS OpsWorks CM; they are returned only as part of the result
-- of createServer().
--
-- __Attributes returned in a createServer response for Chef__
--
-- -   @CHEF_AUTOMATE_PIVOTAL_KEY@: A base64-encoded RSA private key that
--     is generated by AWS OpsWorks for Chef Automate. This private key is
--     required to access the Chef API.
--
-- -   @CHEF_STARTER_KIT@: A base64-encoded ZIP file. The ZIP file contains
--     a Chef starter kit, which includes a README, a configuration file,
--     and the required RSA private key. Save this file, unzip it, and then
--     change to the directory where you\'ve unzipped the file contents.
--     From this directory, you can run Knife commands.
--
-- __Attributes returned in a createServer response for Puppet__
--
-- -   @PUPPET_STARTER_KIT@: A base64-encoded ZIP file. The ZIP file
--     contains a Puppet starter kit, including a README and a required
--     private key. Save this file, unzip it, and then change to the
--     directory where you\'ve unzipped the file contents.
--
-- -   @PUPPET_ADMIN_PASSWORD@: An administrator password that you can use
--     to sign in to the Puppet Enterprise console after the server is
--     online.
server_engineAttributes :: Lens.Lens' Server (Prelude.Maybe [EngineAttribute])
server_engineAttributes = Lens.lens (\Server' {engineAttributes} -> engineAttributes) (\s@Server' {} a -> s {engineAttributes = a} :: Server) Prelude.. Lens.mapping Lens._Coerce

-- | The instance type for the server, as specified in the CloudFormation
-- stack. This might not be the same instance type that is shown in the EC2
-- console.
server_instanceType :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_instanceType = Lens.lens (\Server' {instanceType} -> instanceType) (\s@Server' {} a -> s {instanceType = a} :: Server)

-- | An optional public endpoint of a server, such as
-- @https:\/\/aws.my-company.com@. You cannot access the server by using
-- the @Endpoint@ value if the server has a @CustomDomain@ specified.
server_customDomain :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_customDomain = Lens.lens (\Server' {customDomain} -> customDomain) (\s@Server' {} a -> s {customDomain = a} :: Server)

-- | Time stamp of server creation. Example @2016-07-29T13:38:47.520Z@
server_createdAt :: Lens.Lens' Server (Prelude.Maybe Prelude.UTCTime)
server_createdAt = Lens.lens (\Server' {createdAt} -> createdAt) (\s@Server' {} a -> s {createdAt = a} :: Server) Prelude.. Lens.mapping Core._Time

-- | The subnet IDs specified in a CreateServer request.
server_subnetIds :: Lens.Lens' Server (Prelude.Maybe [Prelude.Text])
server_subnetIds = Lens.lens (\Server' {subnetIds} -> subnetIds) (\s@Server' {} a -> s {subnetIds = a} :: Server) Prelude.. Lens.mapping Lens._Coerce

-- | The key pair associated with the server.
server_keyPair :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_keyPair = Lens.lens (\Server' {keyPair} -> keyPair) (\s@Server' {} a -> s {keyPair = a} :: Server)

-- | Associate a public IP address with a server that you are launching.
server_associatePublicIpAddress :: Lens.Lens' Server (Prelude.Maybe Prelude.Bool)
server_associatePublicIpAddress = Lens.lens (\Server' {associatePublicIpAddress} -> associatePublicIpAddress) (\s@Server' {} a -> s {associatePublicIpAddress = a} :: Server)

-- | The name of the server.
server_serverName :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_serverName = Lens.lens (\Server' {serverName} -> serverName) (\s@Server' {} a -> s {serverName = a} :: Server)

-- | The engine version of the server. For a Chef server, the valid value for
-- EngineVersion is currently @2@. For a Puppet server, specify either
-- @2019@ or @2017@.
server_engineVersion :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_engineVersion = Lens.lens (\Server' {engineVersion} -> engineVersion) (\s@Server' {} a -> s {engineVersion = a} :: Server)

-- | The preferred maintenance period specified for the server.
server_preferredMaintenanceWindow :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_preferredMaintenanceWindow = Lens.lens (\Server' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@Server' {} a -> s {preferredMaintenanceWindow = a} :: Server)

-- | The ARN of the CloudFormation stack that was used to create the server.
server_cloudFormationStackArn :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_cloudFormationStackArn = Lens.lens (\Server' {cloudFormationStackArn} -> cloudFormationStackArn) (\s@Server' {} a -> s {cloudFormationStackArn = a} :: Server)

-- | The status of the most recent server maintenance run. Shows @SUCCESS@ or
-- @FAILED@.
server_maintenanceStatus :: Lens.Lens' Server (Prelude.Maybe MaintenanceStatus)
server_maintenanceStatus = Lens.lens (\Server' {maintenanceStatus} -> maintenanceStatus) (\s@Server' {} a -> s {maintenanceStatus = a} :: Server)

-- | The engine model of the server. Valid values in this release include
-- @Monolithic@ for Puppet and @Single@ for Chef.
server_engineModel :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_engineModel = Lens.lens (\Server' {engineModel} -> engineModel) (\s@Server' {} a -> s {engineModel = a} :: Server)

-- | The number of automated backups to keep.
server_backupRetentionCount :: Lens.Lens' Server (Prelude.Maybe Prelude.Int)
server_backupRetentionCount = Lens.lens (\Server' {backupRetentionCount} -> backupRetentionCount) (\s@Server' {} a -> s {backupRetentionCount = a} :: Server)

-- | The engine type of the server. Valid values in this release include
-- @ChefAutomate@ and @Puppet@.
server_engine :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_engine = Lens.lens (\Server' {engine} -> engine) (\s@Server' {} a -> s {engine = a} :: Server)

-- | A DNS name that can be used to access the engine. Example:
-- @myserver-asdfghjkl.us-east-1.opsworks.io@. You cannot access the server
-- by using the @Endpoint@ value if the server has a @CustomDomain@
-- specified.
server_endpoint :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_endpoint = Lens.lens (\Server' {endpoint} -> endpoint) (\s@Server' {} a -> s {endpoint = a} :: Server)

-- | Depending on the server status, this field has either a human-readable
-- message (such as a create or backup error), or an escaped block of JSON
-- (used for health check results).
server_statusReason :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_statusReason = Lens.lens (\Server' {statusReason} -> statusReason) (\s@Server' {} a -> s {statusReason = a} :: Server)

-- | The ARN of the server.
server_serverArn :: Lens.Lens' Server (Prelude.Maybe Prelude.Text)
server_serverArn = Lens.lens (\Server' {serverArn} -> serverArn) (\s@Server' {} a -> s {serverArn = a} :: Server)

instance Core.FromJSON Server where
  parseJSON =
    Core.withObject
      "Server"
      ( \x ->
          Server'
            Prelude.<$> (x Core..:? "InstanceProfileArn")
            Prelude.<*> (x Core..:? "PreferredBackupWindow")
            Prelude.<*> ( x Core..:? "SecurityGroupIds"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "ServiceRoleArn")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DisableAutomatedBackup")
            Prelude.<*> ( x Core..:? "EngineAttributes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "InstanceType")
            Prelude.<*> (x Core..:? "CustomDomain")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "SubnetIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "KeyPair")
            Prelude.<*> (x Core..:? "AssociatePublicIpAddress")
            Prelude.<*> (x Core..:? "ServerName")
            Prelude.<*> (x Core..:? "EngineVersion")
            Prelude.<*> (x Core..:? "PreferredMaintenanceWindow")
            Prelude.<*> (x Core..:? "CloudFormationStackArn")
            Prelude.<*> (x Core..:? "MaintenanceStatus")
            Prelude.<*> (x Core..:? "EngineModel")
            Prelude.<*> (x Core..:? "BackupRetentionCount")
            Prelude.<*> (x Core..:? "Engine")
            Prelude.<*> (x Core..:? "Endpoint")
            Prelude.<*> (x Core..:? "StatusReason")
            Prelude.<*> (x Core..:? "ServerArn")
      )

instance Prelude.Hashable Server

instance Prelude.NFData Server
