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
-- Module      : Amazonka.OpsWorksCM.DeleteServer
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the server and the underlying AWS CloudFormation stacks
-- (including the server\'s EC2 instance). When you run this command, the
-- server state is updated to @DELETING@. After the server is deleted, it
-- is no longer returned by @DescribeServer@ requests. If the AWS
-- CloudFormation stack cannot be deleted, the server cannot be deleted.
--
-- This operation is asynchronous.
--
-- An @InvalidStateException@ is thrown when a server deletion is already
-- in progress. A @ResourceNotFoundException@ is thrown when the server
-- does not exist. A @ValidationException@ is raised when parameters of the
-- request are not valid.
module Amazonka.OpsWorksCM.DeleteServer
  ( -- * Creating a Request
    DeleteServer (..),
    newDeleteServer,

    -- * Request Lenses
    deleteServer_serverName,

    -- * Destructuring the Response
    DeleteServerResponse (..),
    newDeleteServerResponse,

    -- * Response Lenses
    deleteServerResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.OpsWorksCM.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteServer' smart constructor.
data DeleteServer = DeleteServer'
  { -- | The ID of the server to delete.
    serverName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverName', 'deleteServer_serverName' - The ID of the server to delete.
newDeleteServer ::
  -- | 'serverName'
  Prelude.Text ->
  DeleteServer
newDeleteServer pServerName_ =
  DeleteServer' {serverName = pServerName_}

-- | The ID of the server to delete.
deleteServer_serverName :: Lens.Lens' DeleteServer Prelude.Text
deleteServer_serverName = Lens.lens (\DeleteServer' {serverName} -> serverName) (\s@DeleteServer' {} a -> s {serverName = a} :: DeleteServer)

instance Core.AWSRequest DeleteServer where
  type AWSResponse DeleteServer = DeleteServerResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteServerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteServer where
  hashWithSalt _salt DeleteServer' {..} =
    _salt `Prelude.hashWithSalt` serverName

instance Prelude.NFData DeleteServer where
  rnf DeleteServer' {..} = Prelude.rnf serverName

instance Data.ToHeaders DeleteServer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "OpsWorksCM_V2016_11_01.DeleteServer" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteServer where
  toJSON DeleteServer' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("ServerName" Data..= serverName)]
      )

instance Data.ToPath DeleteServer where
  toPath = Prelude.const "/"

instance Data.ToQuery DeleteServer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteServerResponse' smart constructor.
data DeleteServerResponse = DeleteServerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteServerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteServerResponse_httpStatus' - The response's http status code.
newDeleteServerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteServerResponse
newDeleteServerResponse pHttpStatus_ =
  DeleteServerResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteServerResponse_httpStatus :: Lens.Lens' DeleteServerResponse Prelude.Int
deleteServerResponse_httpStatus = Lens.lens (\DeleteServerResponse' {httpStatus} -> httpStatus) (\s@DeleteServerResponse' {} a -> s {httpStatus = a} :: DeleteServerResponse)

instance Prelude.NFData DeleteServerResponse where
  rnf DeleteServerResponse' {..} =
    Prelude.rnf httpStatus
