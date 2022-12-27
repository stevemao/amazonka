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
-- Module      : Amazonka.SMS.DeleteReplicationJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified replication job.
--
-- After you delete a replication job, there are no further replication
-- runs. Amazon Web Services deletes the contents of the Amazon S3 bucket
-- used to store Server Migration Service artifacts. The AMIs created by
-- the replication runs are not deleted.
module Amazonka.SMS.DeleteReplicationJob
  ( -- * Creating a Request
    DeleteReplicationJob (..),
    newDeleteReplicationJob,

    -- * Request Lenses
    deleteReplicationJob_replicationJobId,

    -- * Destructuring the Response
    DeleteReplicationJobResponse (..),
    newDeleteReplicationJobResponse,

    -- * Response Lenses
    deleteReplicationJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SMS.Types

-- | /See:/ 'newDeleteReplicationJob' smart constructor.
data DeleteReplicationJob = DeleteReplicationJob'
  { -- | The ID of the replication job.
    replicationJobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteReplicationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationJobId', 'deleteReplicationJob_replicationJobId' - The ID of the replication job.
newDeleteReplicationJob ::
  -- | 'replicationJobId'
  Prelude.Text ->
  DeleteReplicationJob
newDeleteReplicationJob pReplicationJobId_ =
  DeleteReplicationJob'
    { replicationJobId =
        pReplicationJobId_
    }

-- | The ID of the replication job.
deleteReplicationJob_replicationJobId :: Lens.Lens' DeleteReplicationJob Prelude.Text
deleteReplicationJob_replicationJobId = Lens.lens (\DeleteReplicationJob' {replicationJobId} -> replicationJobId) (\s@DeleteReplicationJob' {} a -> s {replicationJobId = a} :: DeleteReplicationJob)

instance Core.AWSRequest DeleteReplicationJob where
  type
    AWSResponse DeleteReplicationJob =
      DeleteReplicationJobResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteReplicationJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteReplicationJob where
  hashWithSalt _salt DeleteReplicationJob' {..} =
    _salt `Prelude.hashWithSalt` replicationJobId

instance Prelude.NFData DeleteReplicationJob where
  rnf DeleteReplicationJob' {..} =
    Prelude.rnf replicationJobId

instance Data.ToHeaders DeleteReplicationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSServerMigrationService_V2016_10_24.DeleteReplicationJob" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteReplicationJob where
  toJSON DeleteReplicationJob' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("replicationJobId" Data..= replicationJobId)
          ]
      )

instance Data.ToPath DeleteReplicationJob where
  toPath = Prelude.const "/"

instance Data.ToQuery DeleteReplicationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteReplicationJobResponse' smart constructor.
data DeleteReplicationJobResponse = DeleteReplicationJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteReplicationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteReplicationJobResponse_httpStatus' - The response's http status code.
newDeleteReplicationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteReplicationJobResponse
newDeleteReplicationJobResponse pHttpStatus_ =
  DeleteReplicationJobResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteReplicationJobResponse_httpStatus :: Lens.Lens' DeleteReplicationJobResponse Prelude.Int
deleteReplicationJobResponse_httpStatus = Lens.lens (\DeleteReplicationJobResponse' {httpStatus} -> httpStatus) (\s@DeleteReplicationJobResponse' {} a -> s {httpStatus = a} :: DeleteReplicationJobResponse)

instance Prelude.NFData DeleteReplicationJobResponse where
  rnf DeleteReplicationJobResponse' {..} =
    Prelude.rnf httpStatus
