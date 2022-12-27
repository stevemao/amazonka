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
-- Module      : Amazonka.Rekognition.CreateProject
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Rekognition Custom Labels project. A project is a
-- group of resources (datasets, model versions) that you use to create and
-- manage Amazon Rekognition Custom Labels models.
--
-- This operation requires permissions to perform the
-- @rekognition:CreateProject@ action.
module Amazonka.Rekognition.CreateProject
  ( -- * Creating a Request
    CreateProject (..),
    newCreateProject,

    -- * Request Lenses
    createProject_projectName,

    -- * Destructuring the Response
    CreateProjectResponse (..),
    newCreateProjectResponse,

    -- * Response Lenses
    createProjectResponse_projectArn,
    createProjectResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.Rekognition.Types
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateProject' smart constructor.
data CreateProject = CreateProject'
  { -- | The name of the project to create.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectName', 'createProject_projectName' - The name of the project to create.
newCreateProject ::
  -- | 'projectName'
  Prelude.Text ->
  CreateProject
newCreateProject pProjectName_ =
  CreateProject' {projectName = pProjectName_}

-- | The name of the project to create.
createProject_projectName :: Lens.Lens' CreateProject Prelude.Text
createProject_projectName = Lens.lens (\CreateProject' {projectName} -> projectName) (\s@CreateProject' {} a -> s {projectName = a} :: CreateProject)

instance Core.AWSRequest CreateProject where
  type
    AWSResponse CreateProject =
      CreateProjectResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateProjectResponse'
            Prelude.<$> (x Data..?> "ProjectArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateProject where
  hashWithSalt _salt CreateProject' {..} =
    _salt `Prelude.hashWithSalt` projectName

instance Prelude.NFData CreateProject where
  rnf CreateProject' {..} = Prelude.rnf projectName

instance Data.ToHeaders CreateProject where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "RekognitionService.CreateProject" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON CreateProject where
  toJSON CreateProject' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("ProjectName" Data..= projectName)]
      )

instance Data.ToPath CreateProject where
  toPath = Prelude.const "/"

instance Data.ToQuery CreateProject where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateProjectResponse' smart constructor.
data CreateProjectResponse = CreateProjectResponse'
  { -- | The Amazon Resource Name (ARN) of the new project. You can use the ARN
    -- to configure IAM access to the project.
    projectArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateProjectResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectArn', 'createProjectResponse_projectArn' - The Amazon Resource Name (ARN) of the new project. You can use the ARN
-- to configure IAM access to the project.
--
-- 'httpStatus', 'createProjectResponse_httpStatus' - The response's http status code.
newCreateProjectResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateProjectResponse
newCreateProjectResponse pHttpStatus_ =
  CreateProjectResponse'
    { projectArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the new project. You can use the ARN
-- to configure IAM access to the project.
createProjectResponse_projectArn :: Lens.Lens' CreateProjectResponse (Prelude.Maybe Prelude.Text)
createProjectResponse_projectArn = Lens.lens (\CreateProjectResponse' {projectArn} -> projectArn) (\s@CreateProjectResponse' {} a -> s {projectArn = a} :: CreateProjectResponse)

-- | The response's http status code.
createProjectResponse_httpStatus :: Lens.Lens' CreateProjectResponse Prelude.Int
createProjectResponse_httpStatus = Lens.lens (\CreateProjectResponse' {httpStatus} -> httpStatus) (\s@CreateProjectResponse' {} a -> s {httpStatus = a} :: CreateProjectResponse)

instance Prelude.NFData CreateProjectResponse where
  rnf CreateProjectResponse' {..} =
    Prelude.rnf projectArn
      `Prelude.seq` Prelude.rnf httpStatus
