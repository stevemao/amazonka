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
-- Module      : Amazonka.SecurityLake.DeleteDatalakeAutoEnable
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Automatically delete Security Lake in the specified Regions to stop
-- ingesting security data. When you delete Amazon Security Lake from your
-- account, Security Lake is disabled in all Regions. Also, this API
-- automatically performs the off-boarding steps to off-board the account
-- from Security Lake . This includes ingesting security data from sources,
-- storing data, and making data accessible to subscribers. Security Lake
-- also deletes all the existing settings and resources that it stores or
-- maintains for your account in the current Region, including security log
-- and event data. For more information, see the Amazon Security Lake User
-- Guide.
module Amazonka.SecurityLake.DeleteDatalakeAutoEnable
  ( -- * Creating a Request
    DeleteDatalakeAutoEnable (..),
    newDeleteDatalakeAutoEnable,

    -- * Request Lenses
    deleteDatalakeAutoEnable_removeFromConfigurationForNewAccounts,

    -- * Destructuring the Response
    DeleteDatalakeAutoEnableResponse (..),
    newDeleteDatalakeAutoEnableResponse,

    -- * Response Lenses
    deleteDatalakeAutoEnableResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SecurityLake.Types

-- | /See:/ 'newDeleteDatalakeAutoEnable' smart constructor.
data DeleteDatalakeAutoEnable = DeleteDatalakeAutoEnable'
  { -- | Delete Amazon Security Lake with the specified configurations settings
    -- to stop ingesting security data for new accounts in Security Lake.
    removeFromConfigurationForNewAccounts :: [AutoEnableNewRegionConfiguration]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatalakeAutoEnable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'removeFromConfigurationForNewAccounts', 'deleteDatalakeAutoEnable_removeFromConfigurationForNewAccounts' - Delete Amazon Security Lake with the specified configurations settings
-- to stop ingesting security data for new accounts in Security Lake.
newDeleteDatalakeAutoEnable ::
  DeleteDatalakeAutoEnable
newDeleteDatalakeAutoEnable =
  DeleteDatalakeAutoEnable'
    { removeFromConfigurationForNewAccounts =
        Prelude.mempty
    }

-- | Delete Amazon Security Lake with the specified configurations settings
-- to stop ingesting security data for new accounts in Security Lake.
deleteDatalakeAutoEnable_removeFromConfigurationForNewAccounts :: Lens.Lens' DeleteDatalakeAutoEnable [AutoEnableNewRegionConfiguration]
deleteDatalakeAutoEnable_removeFromConfigurationForNewAccounts = Lens.lens (\DeleteDatalakeAutoEnable' {removeFromConfigurationForNewAccounts} -> removeFromConfigurationForNewAccounts) (\s@DeleteDatalakeAutoEnable' {} a -> s {removeFromConfigurationForNewAccounts = a} :: DeleteDatalakeAutoEnable) Prelude.. Lens.coerced

instance Core.AWSRequest DeleteDatalakeAutoEnable where
  type
    AWSResponse DeleteDatalakeAutoEnable =
      DeleteDatalakeAutoEnableResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteDatalakeAutoEnableResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDatalakeAutoEnable where
  hashWithSalt _salt DeleteDatalakeAutoEnable' {..} =
    _salt
      `Prelude.hashWithSalt` removeFromConfigurationForNewAccounts

instance Prelude.NFData DeleteDatalakeAutoEnable where
  rnf DeleteDatalakeAutoEnable' {..} =
    Prelude.rnf removeFromConfigurationForNewAccounts

instance Data.ToHeaders DeleteDatalakeAutoEnable where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteDatalakeAutoEnable where
  toJSON DeleteDatalakeAutoEnable' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "removeFromConfigurationForNewAccounts"
                  Data..= removeFromConfigurationForNewAccounts
              )
          ]
      )

instance Data.ToPath DeleteDatalakeAutoEnable where
  toPath =
    Prelude.const "/v1/datalake/autoenable/delete"

instance Data.ToQuery DeleteDatalakeAutoEnable where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDatalakeAutoEnableResponse' smart constructor.
data DeleteDatalakeAutoEnableResponse = DeleteDatalakeAutoEnableResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDatalakeAutoEnableResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteDatalakeAutoEnableResponse_httpStatus' - The response's http status code.
newDeleteDatalakeAutoEnableResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDatalakeAutoEnableResponse
newDeleteDatalakeAutoEnableResponse pHttpStatus_ =
  DeleteDatalakeAutoEnableResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteDatalakeAutoEnableResponse_httpStatus :: Lens.Lens' DeleteDatalakeAutoEnableResponse Prelude.Int
deleteDatalakeAutoEnableResponse_httpStatus = Lens.lens (\DeleteDatalakeAutoEnableResponse' {httpStatus} -> httpStatus) (\s@DeleteDatalakeAutoEnableResponse' {} a -> s {httpStatus = a} :: DeleteDatalakeAutoEnableResponse)

instance
  Prelude.NFData
    DeleteDatalakeAutoEnableResponse
  where
  rnf DeleteDatalakeAutoEnableResponse' {..} =
    Prelude.rnf httpStatus
