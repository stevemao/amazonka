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
-- Module      : Amazonka.Route53AutoNaming.DeleteService
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified service. If the service still contains one or more
-- registered instances, the request fails.
module Amazonka.Route53AutoNaming.DeleteService
  ( -- * Creating a Request
    DeleteService (..),
    newDeleteService,

    -- * Request Lenses
    deleteService_id,

    -- * Destructuring the Response
    DeleteServiceResponse (..),
    newDeleteServiceResponse,

    -- * Response Lenses
    deleteServiceResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Route53AutoNaming.Types

-- | /See:/ 'newDeleteService' smart constructor.
data DeleteService = DeleteService'
  { -- | The ID of the service that you want to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteService' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteService_id' - The ID of the service that you want to delete.
newDeleteService ::
  -- | 'id'
  Prelude.Text ->
  DeleteService
newDeleteService pId_ = DeleteService' {id = pId_}

-- | The ID of the service that you want to delete.
deleteService_id :: Lens.Lens' DeleteService Prelude.Text
deleteService_id = Lens.lens (\DeleteService' {id} -> id) (\s@DeleteService' {} a -> s {id = a} :: DeleteService)

instance Core.AWSRequest DeleteService where
  type
    AWSResponse DeleteService =
      DeleteServiceResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServiceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteService where
  hashWithSalt _salt DeleteService' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData DeleteService where
  rnf DeleteService' {..} = Prelude.rnf id

instance Data.ToHeaders DeleteService where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "Route53AutoNaming_v20170314.DeleteService" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteService where
  toJSON DeleteService' {..} =
    Data.object
      (Prelude.catMaybes [Prelude.Just ("Id" Data..= id)])

instance Data.ToPath DeleteService where
  toPath = Prelude.const "/"

instance Data.ToQuery DeleteService where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServiceResponse' smart constructor.
data DeleteServiceResponse = DeleteServiceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServiceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServiceResponse_httpStatus' - The response's http status code.
newDeleteServiceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteServiceResponse
newDeleteServiceResponse pHttpStatus_ =
  DeleteServiceResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteServiceResponse_httpStatus :: Lens.Lens' DeleteServiceResponse Prelude.Int
deleteServiceResponse_httpStatus = Lens.lens (\DeleteServiceResponse' {httpStatus} -> httpStatus) (\s@DeleteServiceResponse' {} a -> s {httpStatus = a} :: DeleteServiceResponse)

instance Prelude.NFData DeleteServiceResponse where
  rnf DeleteServiceResponse' {..} =
    Prelude.rnf httpStatus
