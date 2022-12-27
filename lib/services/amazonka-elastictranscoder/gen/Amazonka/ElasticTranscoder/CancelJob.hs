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
-- Module      : Amazonka.ElasticTranscoder.CancelJob
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The CancelJob operation cancels an unfinished job.
--
-- You can only cancel a job that has a status of @Submitted@. To prevent a
-- pipeline from starting to process a job while you\'re getting the job
-- identifier, use UpdatePipelineStatus to temporarily pause the pipeline.
module Amazonka.ElasticTranscoder.CancelJob
  ( -- * Creating a Request
    CancelJob (..),
    newCancelJob,

    -- * Request Lenses
    cancelJob_id,

    -- * Destructuring the Response
    CancelJobResponse (..),
    newCancelJobResponse,

    -- * Response Lenses
    cancelJobResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.ElasticTranscoder.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The @CancelJobRequest@ structure.
--
-- /See:/ 'newCancelJob' smart constructor.
data CancelJob = CancelJob'
  { -- | The identifier of the job that you want to cancel.
    --
    -- To get a list of the jobs (including their @jobId@) that have a status
    -- of @Submitted@, use the ListJobsByStatus API action.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'cancelJob_id' - The identifier of the job that you want to cancel.
--
-- To get a list of the jobs (including their @jobId@) that have a status
-- of @Submitted@, use the ListJobsByStatus API action.
newCancelJob ::
  -- | 'id'
  Prelude.Text ->
  CancelJob
newCancelJob pId_ = CancelJob' {id = pId_}

-- | The identifier of the job that you want to cancel.
--
-- To get a list of the jobs (including their @jobId@) that have a status
-- of @Submitted@, use the ListJobsByStatus API action.
cancelJob_id :: Lens.Lens' CancelJob Prelude.Text
cancelJob_id = Lens.lens (\CancelJob' {id} -> id) (\s@CancelJob' {} a -> s {id = a} :: CancelJob)

instance Core.AWSRequest CancelJob where
  type AWSResponse CancelJob = CancelJobResponse
  request overrides =
    Request.delete (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          CancelJobResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CancelJob where
  hashWithSalt _salt CancelJob' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData CancelJob where
  rnf CancelJob' {..} = Prelude.rnf id

instance Data.ToHeaders CancelJob where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath CancelJob where
  toPath CancelJob' {..} =
    Prelude.mconcat ["/2012-09-25/jobs/", Data.toBS id]

instance Data.ToQuery CancelJob where
  toQuery = Prelude.const Prelude.mempty

-- | The response body contains a JSON object. If the job is successfully
-- canceled, the value of @Success@ is @true@.
--
-- /See:/ 'newCancelJobResponse' smart constructor.
data CancelJobResponse = CancelJobResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'cancelJobResponse_httpStatus' - The response's http status code.
newCancelJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelJobResponse
newCancelJobResponse pHttpStatus_ =
  CancelJobResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
cancelJobResponse_httpStatus :: Lens.Lens' CancelJobResponse Prelude.Int
cancelJobResponse_httpStatus = Lens.lens (\CancelJobResponse' {httpStatus} -> httpStatus) (\s@CancelJobResponse' {} a -> s {httpStatus = a} :: CancelJobResponse)

instance Prelude.NFData CancelJobResponse where
  rnf CancelJobResponse' {..} = Prelude.rnf httpStatus
