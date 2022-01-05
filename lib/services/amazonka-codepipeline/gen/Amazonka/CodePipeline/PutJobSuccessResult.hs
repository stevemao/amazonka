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
-- Module      : Amazonka.CodePipeline.PutJobSuccessResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents the success of a job as returned to the pipeline by a job
-- worker. Used for custom actions only.
module Amazonka.CodePipeline.PutJobSuccessResult
  ( -- * Creating a Request
    PutJobSuccessResult (..),
    newPutJobSuccessResult,

    -- * Request Lenses
    putJobSuccessResult_outputVariables,
    putJobSuccessResult_continuationToken,
    putJobSuccessResult_executionDetails,
    putJobSuccessResult_currentRevision,
    putJobSuccessResult_jobId,

    -- * Destructuring the Response
    PutJobSuccessResultResponse (..),
    newPutJobSuccessResultResponse,
  )
where

import Amazonka.CodePipeline.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Represents the input of a @PutJobSuccessResult@ action.
--
-- /See:/ 'newPutJobSuccessResult' smart constructor.
data PutJobSuccessResult = PutJobSuccessResult'
  { -- | Key-value pairs produced as output by a job worker that can be made
    -- available to a downstream action configuration. @outputVariables@ can be
    -- included only when there is no continuation token on the request.
    outputVariables :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A token generated by a job worker, such as an AWS CodeDeploy deployment
    -- ID, that a successful job provides to identify a custom action in
    -- progress. Future jobs use this token to identify the running instance of
    -- the action. It can be reused to return more information about the
    -- progress of the custom action. When the action is complete, no
    -- continuation token should be supplied.
    continuationToken :: Prelude.Maybe Prelude.Text,
    -- | The execution details of the successful job, such as the actions taken
    -- by the job worker.
    executionDetails :: Prelude.Maybe ExecutionDetails,
    -- | The ID of the current revision of the artifact successfully worked on by
    -- the job.
    currentRevision :: Prelude.Maybe CurrentRevision,
    -- | The unique system-generated ID of the job that succeeded. This is the
    -- same ID returned from @PollForJobs@.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutJobSuccessResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputVariables', 'putJobSuccessResult_outputVariables' - Key-value pairs produced as output by a job worker that can be made
-- available to a downstream action configuration. @outputVariables@ can be
-- included only when there is no continuation token on the request.
--
-- 'continuationToken', 'putJobSuccessResult_continuationToken' - A token generated by a job worker, such as an AWS CodeDeploy deployment
-- ID, that a successful job provides to identify a custom action in
-- progress. Future jobs use this token to identify the running instance of
-- the action. It can be reused to return more information about the
-- progress of the custom action. When the action is complete, no
-- continuation token should be supplied.
--
-- 'executionDetails', 'putJobSuccessResult_executionDetails' - The execution details of the successful job, such as the actions taken
-- by the job worker.
--
-- 'currentRevision', 'putJobSuccessResult_currentRevision' - The ID of the current revision of the artifact successfully worked on by
-- the job.
--
-- 'jobId', 'putJobSuccessResult_jobId' - The unique system-generated ID of the job that succeeded. This is the
-- same ID returned from @PollForJobs@.
newPutJobSuccessResult ::
  -- | 'jobId'
  Prelude.Text ->
  PutJobSuccessResult
newPutJobSuccessResult pJobId_ =
  PutJobSuccessResult'
    { outputVariables =
        Prelude.Nothing,
      continuationToken = Prelude.Nothing,
      executionDetails = Prelude.Nothing,
      currentRevision = Prelude.Nothing,
      jobId = pJobId_
    }

-- | Key-value pairs produced as output by a job worker that can be made
-- available to a downstream action configuration. @outputVariables@ can be
-- included only when there is no continuation token on the request.
putJobSuccessResult_outputVariables :: Lens.Lens' PutJobSuccessResult (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
putJobSuccessResult_outputVariables = Lens.lens (\PutJobSuccessResult' {outputVariables} -> outputVariables) (\s@PutJobSuccessResult' {} a -> s {outputVariables = a} :: PutJobSuccessResult) Prelude.. Lens.mapping Lens.coerced

-- | A token generated by a job worker, such as an AWS CodeDeploy deployment
-- ID, that a successful job provides to identify a custom action in
-- progress. Future jobs use this token to identify the running instance of
-- the action. It can be reused to return more information about the
-- progress of the custom action. When the action is complete, no
-- continuation token should be supplied.
putJobSuccessResult_continuationToken :: Lens.Lens' PutJobSuccessResult (Prelude.Maybe Prelude.Text)
putJobSuccessResult_continuationToken = Lens.lens (\PutJobSuccessResult' {continuationToken} -> continuationToken) (\s@PutJobSuccessResult' {} a -> s {continuationToken = a} :: PutJobSuccessResult)

-- | The execution details of the successful job, such as the actions taken
-- by the job worker.
putJobSuccessResult_executionDetails :: Lens.Lens' PutJobSuccessResult (Prelude.Maybe ExecutionDetails)
putJobSuccessResult_executionDetails = Lens.lens (\PutJobSuccessResult' {executionDetails} -> executionDetails) (\s@PutJobSuccessResult' {} a -> s {executionDetails = a} :: PutJobSuccessResult)

-- | The ID of the current revision of the artifact successfully worked on by
-- the job.
putJobSuccessResult_currentRevision :: Lens.Lens' PutJobSuccessResult (Prelude.Maybe CurrentRevision)
putJobSuccessResult_currentRevision = Lens.lens (\PutJobSuccessResult' {currentRevision} -> currentRevision) (\s@PutJobSuccessResult' {} a -> s {currentRevision = a} :: PutJobSuccessResult)

-- | The unique system-generated ID of the job that succeeded. This is the
-- same ID returned from @PollForJobs@.
putJobSuccessResult_jobId :: Lens.Lens' PutJobSuccessResult Prelude.Text
putJobSuccessResult_jobId = Lens.lens (\PutJobSuccessResult' {jobId} -> jobId) (\s@PutJobSuccessResult' {} a -> s {jobId = a} :: PutJobSuccessResult)

instance Core.AWSRequest PutJobSuccessResult where
  type
    AWSResponse PutJobSuccessResult =
      PutJobSuccessResultResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull PutJobSuccessResultResponse'

instance Prelude.Hashable PutJobSuccessResult where
  hashWithSalt _salt PutJobSuccessResult' {..} =
    _salt `Prelude.hashWithSalt` outputVariables
      `Prelude.hashWithSalt` continuationToken
      `Prelude.hashWithSalt` executionDetails
      `Prelude.hashWithSalt` currentRevision
      `Prelude.hashWithSalt` jobId

instance Prelude.NFData PutJobSuccessResult where
  rnf PutJobSuccessResult' {..} =
    Prelude.rnf outputVariables
      `Prelude.seq` Prelude.rnf continuationToken
      `Prelude.seq` Prelude.rnf executionDetails
      `Prelude.seq` Prelude.rnf currentRevision
      `Prelude.seq` Prelude.rnf jobId

instance Core.ToHeaders PutJobSuccessResult where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodePipeline_20150709.PutJobSuccessResult" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutJobSuccessResult where
  toJSON PutJobSuccessResult' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("outputVariables" Core..=)
              Prelude.<$> outputVariables,
            ("continuationToken" Core..=)
              Prelude.<$> continuationToken,
            ("executionDetails" Core..=)
              Prelude.<$> executionDetails,
            ("currentRevision" Core..=)
              Prelude.<$> currentRevision,
            Prelude.Just ("jobId" Core..= jobId)
          ]
      )

instance Core.ToPath PutJobSuccessResult where
  toPath = Prelude.const "/"

instance Core.ToQuery PutJobSuccessResult where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutJobSuccessResultResponse' smart constructor.
data PutJobSuccessResultResponse = PutJobSuccessResultResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutJobSuccessResultResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutJobSuccessResultResponse ::
  PutJobSuccessResultResponse
newPutJobSuccessResultResponse =
  PutJobSuccessResultResponse'

instance Prelude.NFData PutJobSuccessResultResponse where
  rnf _ = ()
