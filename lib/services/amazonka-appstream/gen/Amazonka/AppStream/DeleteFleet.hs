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
-- Module      : Amazonka.AppStream.DeleteFleet
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified fleet.
module Amazonka.AppStream.DeleteFleet
  ( -- * Creating a Request
    DeleteFleet (..),
    newDeleteFleet,

    -- * Request Lenses
    deleteFleet_name,

    -- * Destructuring the Response
    DeleteFleetResponse (..),
    newDeleteFleetResponse,

    -- * Response Lenses
    deleteFleetResponse_httpStatus,
  )
where

import Amazonka.AppStream.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteFleet' smart constructor.
data DeleteFleet = DeleteFleet'
  { -- | The name of the fleet.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteFleet_name' - The name of the fleet.
newDeleteFleet ::
  -- | 'name'
  Prelude.Text ->
  DeleteFleet
newDeleteFleet pName_ = DeleteFleet' {name = pName_}

-- | The name of the fleet.
deleteFleet_name :: Lens.Lens' DeleteFleet Prelude.Text
deleteFleet_name = Lens.lens (\DeleteFleet' {name} -> name) (\s@DeleteFleet' {} a -> s {name = a} :: DeleteFleet)

instance Core.AWSRequest DeleteFleet where
  type AWSResponse DeleteFleet = DeleteFleetResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteFleetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteFleet where
  hashWithSalt _salt DeleteFleet' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DeleteFleet where
  rnf DeleteFleet' {..} = Prelude.rnf name

instance Data.ToHeaders DeleteFleet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "PhotonAdminProxyService.DeleteFleet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteFleet where
  toJSON DeleteFleet' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("Name" Data..= name)]
      )

instance Data.ToPath DeleteFleet where
  toPath = Prelude.const "/"

instance Data.ToQuery DeleteFleet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteFleetResponse' smart constructor.
data DeleteFleetResponse = DeleteFleetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteFleetResponse_httpStatus' - The response's http status code.
newDeleteFleetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteFleetResponse
newDeleteFleetResponse pHttpStatus_ =
  DeleteFleetResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteFleetResponse_httpStatus :: Lens.Lens' DeleteFleetResponse Prelude.Int
deleteFleetResponse_httpStatus = Lens.lens (\DeleteFleetResponse' {httpStatus} -> httpStatus) (\s@DeleteFleetResponse' {} a -> s {httpStatus = a} :: DeleteFleetResponse)

instance Prelude.NFData DeleteFleetResponse where
  rnf DeleteFleetResponse' {..} = Prelude.rnf httpStatus
