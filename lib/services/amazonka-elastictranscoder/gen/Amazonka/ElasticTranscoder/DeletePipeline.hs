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
-- Module      : Amazonka.ElasticTranscoder.DeletePipeline
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The DeletePipeline operation removes a pipeline.
--
-- You can only delete a pipeline that has never been used or that is not
-- currently in use (doesn\'t contain any active jobs). If the pipeline is
-- currently in use, @DeletePipeline@ returns an error.
module Amazonka.ElasticTranscoder.DeletePipeline
  ( -- * Creating a Request
    DeletePipeline (..),
    newDeletePipeline,

    -- * Request Lenses
    deletePipeline_id,

    -- * Destructuring the Response
    DeletePipelineResponse (..),
    newDeletePipelineResponse,

    -- * Response Lenses
    deletePipelineResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.ElasticTranscoder.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | The @DeletePipelineRequest@ structure.
--
-- /See:/ 'newDeletePipeline' smart constructor.
data DeletePipeline = DeletePipeline'
  { -- | The identifier of the pipeline that you want to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deletePipeline_id' - The identifier of the pipeline that you want to delete.
newDeletePipeline ::
  -- | 'id'
  Prelude.Text ->
  DeletePipeline
newDeletePipeline pId_ = DeletePipeline' {id = pId_}

-- | The identifier of the pipeline that you want to delete.
deletePipeline_id :: Lens.Lens' DeletePipeline Prelude.Text
deletePipeline_id = Lens.lens (\DeletePipeline' {id} -> id) (\s@DeletePipeline' {} a -> s {id = a} :: DeletePipeline)

instance Core.AWSRequest DeletePipeline where
  type
    AWSResponse DeletePipeline =
      DeletePipelineResponse
  request overrides =
    Request.delete (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePipelineResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeletePipeline where
  hashWithSalt _salt DeletePipeline' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData DeletePipeline where
  rnf DeletePipeline' {..} = Prelude.rnf id

instance Data.ToHeaders DeletePipeline where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath DeletePipeline where
  toPath DeletePipeline' {..} =
    Prelude.mconcat
      ["/2012-09-25/pipelines/", Data.toBS id]

instance Data.ToQuery DeletePipeline where
  toQuery = Prelude.const Prelude.mempty

-- | The @DeletePipelineResponse@ structure.
--
-- /See:/ 'newDeletePipelineResponse' smart constructor.
data DeletePipelineResponse = DeletePipelineResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePipelineResponse_httpStatus' - The response's http status code.
newDeletePipelineResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePipelineResponse
newDeletePipelineResponse pHttpStatus_ =
  DeletePipelineResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deletePipelineResponse_httpStatus :: Lens.Lens' DeletePipelineResponse Prelude.Int
deletePipelineResponse_httpStatus = Lens.lens (\DeletePipelineResponse' {httpStatus} -> httpStatus) (\s@DeletePipelineResponse' {} a -> s {httpStatus = a} :: DeletePipelineResponse)

instance Prelude.NFData DeletePipelineResponse where
  rnf DeletePipelineResponse' {..} =
    Prelude.rnf httpStatus
