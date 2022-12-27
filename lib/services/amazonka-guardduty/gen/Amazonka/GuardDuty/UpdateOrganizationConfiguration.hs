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
-- Module      : Amazonka.GuardDuty.UpdateOrganizationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the delegated administrator account with the values provided.
module Amazonka.GuardDuty.UpdateOrganizationConfiguration
  ( -- * Creating a Request
    UpdateOrganizationConfiguration (..),
    newUpdateOrganizationConfiguration,

    -- * Request Lenses
    updateOrganizationConfiguration_dataSources,
    updateOrganizationConfiguration_detectorId,
    updateOrganizationConfiguration_autoEnable,

    -- * Destructuring the Response
    UpdateOrganizationConfigurationResponse (..),
    newUpdateOrganizationConfigurationResponse,

    -- * Response Lenses
    updateOrganizationConfigurationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.GuardDuty.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newUpdateOrganizationConfiguration' smart constructor.
data UpdateOrganizationConfiguration = UpdateOrganizationConfiguration'
  { -- | Describes which data sources will be updated.
    dataSources :: Prelude.Maybe OrganizationDataSourceConfigurations,
    -- | The ID of the detector to update the delegated administrator for.
    detectorId :: Prelude.Text,
    -- | Indicates whether to automatically enable member accounts in the
    -- organization.
    autoEnable :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateOrganizationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataSources', 'updateOrganizationConfiguration_dataSources' - Describes which data sources will be updated.
--
-- 'detectorId', 'updateOrganizationConfiguration_detectorId' - The ID of the detector to update the delegated administrator for.
--
-- 'autoEnable', 'updateOrganizationConfiguration_autoEnable' - Indicates whether to automatically enable member accounts in the
-- organization.
newUpdateOrganizationConfiguration ::
  -- | 'detectorId'
  Prelude.Text ->
  -- | 'autoEnable'
  Prelude.Bool ->
  UpdateOrganizationConfiguration
newUpdateOrganizationConfiguration
  pDetectorId_
  pAutoEnable_ =
    UpdateOrganizationConfiguration'
      { dataSources =
          Prelude.Nothing,
        detectorId = pDetectorId_,
        autoEnable = pAutoEnable_
      }

-- | Describes which data sources will be updated.
updateOrganizationConfiguration_dataSources :: Lens.Lens' UpdateOrganizationConfiguration (Prelude.Maybe OrganizationDataSourceConfigurations)
updateOrganizationConfiguration_dataSources = Lens.lens (\UpdateOrganizationConfiguration' {dataSources} -> dataSources) (\s@UpdateOrganizationConfiguration' {} a -> s {dataSources = a} :: UpdateOrganizationConfiguration)

-- | The ID of the detector to update the delegated administrator for.
updateOrganizationConfiguration_detectorId :: Lens.Lens' UpdateOrganizationConfiguration Prelude.Text
updateOrganizationConfiguration_detectorId = Lens.lens (\UpdateOrganizationConfiguration' {detectorId} -> detectorId) (\s@UpdateOrganizationConfiguration' {} a -> s {detectorId = a} :: UpdateOrganizationConfiguration)

-- | Indicates whether to automatically enable member accounts in the
-- organization.
updateOrganizationConfiguration_autoEnable :: Lens.Lens' UpdateOrganizationConfiguration Prelude.Bool
updateOrganizationConfiguration_autoEnable = Lens.lens (\UpdateOrganizationConfiguration' {autoEnable} -> autoEnable) (\s@UpdateOrganizationConfiguration' {} a -> s {autoEnable = a} :: UpdateOrganizationConfiguration)

instance
  Core.AWSRequest
    UpdateOrganizationConfiguration
  where
  type
    AWSResponse UpdateOrganizationConfiguration =
      UpdateOrganizationConfigurationResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateOrganizationConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateOrganizationConfiguration
  where
  hashWithSalt
    _salt
    UpdateOrganizationConfiguration' {..} =
      _salt `Prelude.hashWithSalt` dataSources
        `Prelude.hashWithSalt` detectorId
        `Prelude.hashWithSalt` autoEnable

instance
  Prelude.NFData
    UpdateOrganizationConfiguration
  where
  rnf UpdateOrganizationConfiguration' {..} =
    Prelude.rnf dataSources
      `Prelude.seq` Prelude.rnf detectorId
      `Prelude.seq` Prelude.rnf autoEnable

instance
  Data.ToHeaders
    UpdateOrganizationConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON UpdateOrganizationConfiguration where
  toJSON UpdateOrganizationConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("dataSources" Data..=) Prelude.<$> dataSources,
            Prelude.Just ("autoEnable" Data..= autoEnable)
          ]
      )

instance Data.ToPath UpdateOrganizationConfiguration where
  toPath UpdateOrganizationConfiguration' {..} =
    Prelude.mconcat
      ["/detector/", Data.toBS detectorId, "/admin"]

instance Data.ToQuery UpdateOrganizationConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateOrganizationConfigurationResponse' smart constructor.
data UpdateOrganizationConfigurationResponse = UpdateOrganizationConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateOrganizationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateOrganizationConfigurationResponse_httpStatus' - The response's http status code.
newUpdateOrganizationConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateOrganizationConfigurationResponse
newUpdateOrganizationConfigurationResponse
  pHttpStatus_ =
    UpdateOrganizationConfigurationResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateOrganizationConfigurationResponse_httpStatus :: Lens.Lens' UpdateOrganizationConfigurationResponse Prelude.Int
updateOrganizationConfigurationResponse_httpStatus = Lens.lens (\UpdateOrganizationConfigurationResponse' {httpStatus} -> httpStatus) (\s@UpdateOrganizationConfigurationResponse' {} a -> s {httpStatus = a} :: UpdateOrganizationConfigurationResponse)

instance
  Prelude.NFData
    UpdateOrganizationConfigurationResponse
  where
  rnf UpdateOrganizationConfigurationResponse' {..} =
    Prelude.rnf httpStatus
