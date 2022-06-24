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
-- Module      : Amazonka.RobOMaker.UpdateSimulationApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a simulation application.
module Amazonka.RobOMaker.UpdateSimulationApplication
  ( -- * Creating a Request
    UpdateSimulationApplication (..),
    newUpdateSimulationApplication,

    -- * Request Lenses
    updateSimulationApplication_sources,
    updateSimulationApplication_environment,
    updateSimulationApplication_renderingEngine,
    updateSimulationApplication_currentRevisionId,
    updateSimulationApplication_application,
    updateSimulationApplication_simulationSoftwareSuite,
    updateSimulationApplication_robotSoftwareSuite,

    -- * Destructuring the Response
    UpdateSimulationApplicationResponse (..),
    newUpdateSimulationApplicationResponse,

    -- * Response Lenses
    updateSimulationApplicationResponse_name,
    updateSimulationApplicationResponse_sources,
    updateSimulationApplicationResponse_environment,
    updateSimulationApplicationResponse_renderingEngine,
    updateSimulationApplicationResponse_lastUpdatedAt,
    updateSimulationApplicationResponse_arn,
    updateSimulationApplicationResponse_robotSoftwareSuite,
    updateSimulationApplicationResponse_simulationSoftwareSuite,
    updateSimulationApplicationResponse_revisionId,
    updateSimulationApplicationResponse_version,
    updateSimulationApplicationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.RobOMaker.Types

-- | /See:/ 'newUpdateSimulationApplication' smart constructor.
data UpdateSimulationApplication = UpdateSimulationApplication'
  { -- | The sources of the simulation application.
    sources :: Prelude.Maybe [SourceConfig],
    -- | The object that contains the Docker image URI for your simulation
    -- application.
    environment :: Prelude.Maybe Environment,
    -- | The rendering engine for the simulation application.
    renderingEngine :: Prelude.Maybe RenderingEngine,
    -- | The revision id for the robot application.
    currentRevisionId :: Prelude.Maybe Prelude.Text,
    -- | The application information for the simulation application.
    application :: Prelude.Text,
    -- | The simulation software suite used by the simulation application.
    simulationSoftwareSuite :: SimulationSoftwareSuite,
    -- | Information about the robot software suite (ROS distribution).
    robotSoftwareSuite :: RobotSoftwareSuite
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSimulationApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sources', 'updateSimulationApplication_sources' - The sources of the simulation application.
--
-- 'environment', 'updateSimulationApplication_environment' - The object that contains the Docker image URI for your simulation
-- application.
--
-- 'renderingEngine', 'updateSimulationApplication_renderingEngine' - The rendering engine for the simulation application.
--
-- 'currentRevisionId', 'updateSimulationApplication_currentRevisionId' - The revision id for the robot application.
--
-- 'application', 'updateSimulationApplication_application' - The application information for the simulation application.
--
-- 'simulationSoftwareSuite', 'updateSimulationApplication_simulationSoftwareSuite' - The simulation software suite used by the simulation application.
--
-- 'robotSoftwareSuite', 'updateSimulationApplication_robotSoftwareSuite' - Information about the robot software suite (ROS distribution).
newUpdateSimulationApplication ::
  -- | 'application'
  Prelude.Text ->
  -- | 'simulationSoftwareSuite'
  SimulationSoftwareSuite ->
  -- | 'robotSoftwareSuite'
  RobotSoftwareSuite ->
  UpdateSimulationApplication
newUpdateSimulationApplication
  pApplication_
  pSimulationSoftwareSuite_
  pRobotSoftwareSuite_ =
    UpdateSimulationApplication'
      { sources =
          Prelude.Nothing,
        environment = Prelude.Nothing,
        renderingEngine = Prelude.Nothing,
        currentRevisionId = Prelude.Nothing,
        application = pApplication_,
        simulationSoftwareSuite =
          pSimulationSoftwareSuite_,
        robotSoftwareSuite = pRobotSoftwareSuite_
      }

-- | The sources of the simulation application.
updateSimulationApplication_sources :: Lens.Lens' UpdateSimulationApplication (Prelude.Maybe [SourceConfig])
updateSimulationApplication_sources = Lens.lens (\UpdateSimulationApplication' {sources} -> sources) (\s@UpdateSimulationApplication' {} a -> s {sources = a} :: UpdateSimulationApplication) Prelude.. Lens.mapping Lens.coerced

-- | The object that contains the Docker image URI for your simulation
-- application.
updateSimulationApplication_environment :: Lens.Lens' UpdateSimulationApplication (Prelude.Maybe Environment)
updateSimulationApplication_environment = Lens.lens (\UpdateSimulationApplication' {environment} -> environment) (\s@UpdateSimulationApplication' {} a -> s {environment = a} :: UpdateSimulationApplication)

-- | The rendering engine for the simulation application.
updateSimulationApplication_renderingEngine :: Lens.Lens' UpdateSimulationApplication (Prelude.Maybe RenderingEngine)
updateSimulationApplication_renderingEngine = Lens.lens (\UpdateSimulationApplication' {renderingEngine} -> renderingEngine) (\s@UpdateSimulationApplication' {} a -> s {renderingEngine = a} :: UpdateSimulationApplication)

-- | The revision id for the robot application.
updateSimulationApplication_currentRevisionId :: Lens.Lens' UpdateSimulationApplication (Prelude.Maybe Prelude.Text)
updateSimulationApplication_currentRevisionId = Lens.lens (\UpdateSimulationApplication' {currentRevisionId} -> currentRevisionId) (\s@UpdateSimulationApplication' {} a -> s {currentRevisionId = a} :: UpdateSimulationApplication)

-- | The application information for the simulation application.
updateSimulationApplication_application :: Lens.Lens' UpdateSimulationApplication Prelude.Text
updateSimulationApplication_application = Lens.lens (\UpdateSimulationApplication' {application} -> application) (\s@UpdateSimulationApplication' {} a -> s {application = a} :: UpdateSimulationApplication)

-- | The simulation software suite used by the simulation application.
updateSimulationApplication_simulationSoftwareSuite :: Lens.Lens' UpdateSimulationApplication SimulationSoftwareSuite
updateSimulationApplication_simulationSoftwareSuite = Lens.lens (\UpdateSimulationApplication' {simulationSoftwareSuite} -> simulationSoftwareSuite) (\s@UpdateSimulationApplication' {} a -> s {simulationSoftwareSuite = a} :: UpdateSimulationApplication)

-- | Information about the robot software suite (ROS distribution).
updateSimulationApplication_robotSoftwareSuite :: Lens.Lens' UpdateSimulationApplication RobotSoftwareSuite
updateSimulationApplication_robotSoftwareSuite = Lens.lens (\UpdateSimulationApplication' {robotSoftwareSuite} -> robotSoftwareSuite) (\s@UpdateSimulationApplication' {} a -> s {robotSoftwareSuite = a} :: UpdateSimulationApplication)

instance Core.AWSRequest UpdateSimulationApplication where
  type
    AWSResponse UpdateSimulationApplication =
      UpdateSimulationApplicationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateSimulationApplicationResponse'
            Prelude.<$> (x Core..?> "name")
            Prelude.<*> (x Core..?> "sources" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "environment")
            Prelude.<*> (x Core..?> "renderingEngine")
            Prelude.<*> (x Core..?> "lastUpdatedAt")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "robotSoftwareSuite")
            Prelude.<*> (x Core..?> "simulationSoftwareSuite")
            Prelude.<*> (x Core..?> "revisionId")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateSimulationApplication where
  hashWithSalt _salt UpdateSimulationApplication' {..} =
    _salt `Prelude.hashWithSalt` sources
      `Prelude.hashWithSalt` environment
      `Prelude.hashWithSalt` renderingEngine
      `Prelude.hashWithSalt` currentRevisionId
      `Prelude.hashWithSalt` application
      `Prelude.hashWithSalt` simulationSoftwareSuite
      `Prelude.hashWithSalt` robotSoftwareSuite

instance Prelude.NFData UpdateSimulationApplication where
  rnf UpdateSimulationApplication' {..} =
    Prelude.rnf sources
      `Prelude.seq` Prelude.rnf environment
      `Prelude.seq` Prelude.rnf renderingEngine
      `Prelude.seq` Prelude.rnf currentRevisionId
      `Prelude.seq` Prelude.rnf application
      `Prelude.seq` Prelude.rnf simulationSoftwareSuite
      `Prelude.seq` Prelude.rnf robotSoftwareSuite

instance Core.ToHeaders UpdateSimulationApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateSimulationApplication where
  toJSON UpdateSimulationApplication' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sources" Core..=) Prelude.<$> sources,
            ("environment" Core..=) Prelude.<$> environment,
            ("renderingEngine" Core..=)
              Prelude.<$> renderingEngine,
            ("currentRevisionId" Core..=)
              Prelude.<$> currentRevisionId,
            Prelude.Just ("application" Core..= application),
            Prelude.Just
              ( "simulationSoftwareSuite"
                  Core..= simulationSoftwareSuite
              ),
            Prelude.Just
              ("robotSoftwareSuite" Core..= robotSoftwareSuite)
          ]
      )

instance Core.ToPath UpdateSimulationApplication where
  toPath = Prelude.const "/updateSimulationApplication"

instance Core.ToQuery UpdateSimulationApplication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateSimulationApplicationResponse' smart constructor.
data UpdateSimulationApplicationResponse = UpdateSimulationApplicationResponse'
  { -- | The name of the simulation application.
    name :: Prelude.Maybe Prelude.Text,
    -- | The sources of the simulation application.
    sources :: Prelude.Maybe [Source],
    -- | The object that contains the Docker image URI used for your simulation
    -- application.
    environment :: Prelude.Maybe Environment,
    -- | The rendering engine for the simulation application.
    renderingEngine :: Prelude.Maybe RenderingEngine,
    -- | The time, in milliseconds since the epoch, when the simulation
    -- application was last updated.
    lastUpdatedAt :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the updated simulation application.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Information about the robot software suite (ROS distribution).
    robotSoftwareSuite :: Prelude.Maybe RobotSoftwareSuite,
    -- | The simulation software suite used by the simulation application.
    simulationSoftwareSuite :: Prelude.Maybe SimulationSoftwareSuite,
    -- | The revision id of the simulation application.
    revisionId :: Prelude.Maybe Prelude.Text,
    -- | The version of the robot application.
    version :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateSimulationApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'updateSimulationApplicationResponse_name' - The name of the simulation application.
--
-- 'sources', 'updateSimulationApplicationResponse_sources' - The sources of the simulation application.
--
-- 'environment', 'updateSimulationApplicationResponse_environment' - The object that contains the Docker image URI used for your simulation
-- application.
--
-- 'renderingEngine', 'updateSimulationApplicationResponse_renderingEngine' - The rendering engine for the simulation application.
--
-- 'lastUpdatedAt', 'updateSimulationApplicationResponse_lastUpdatedAt' - The time, in milliseconds since the epoch, when the simulation
-- application was last updated.
--
-- 'arn', 'updateSimulationApplicationResponse_arn' - The Amazon Resource Name (ARN) of the updated simulation application.
--
-- 'robotSoftwareSuite', 'updateSimulationApplicationResponse_robotSoftwareSuite' - Information about the robot software suite (ROS distribution).
--
-- 'simulationSoftwareSuite', 'updateSimulationApplicationResponse_simulationSoftwareSuite' - The simulation software suite used by the simulation application.
--
-- 'revisionId', 'updateSimulationApplicationResponse_revisionId' - The revision id of the simulation application.
--
-- 'version', 'updateSimulationApplicationResponse_version' - The version of the robot application.
--
-- 'httpStatus', 'updateSimulationApplicationResponse_httpStatus' - The response's http status code.
newUpdateSimulationApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateSimulationApplicationResponse
newUpdateSimulationApplicationResponse pHttpStatus_ =
  UpdateSimulationApplicationResponse'
    { name =
        Prelude.Nothing,
      sources = Prelude.Nothing,
      environment = Prelude.Nothing,
      renderingEngine = Prelude.Nothing,
      lastUpdatedAt = Prelude.Nothing,
      arn = Prelude.Nothing,
      robotSoftwareSuite = Prelude.Nothing,
      simulationSoftwareSuite =
        Prelude.Nothing,
      revisionId = Prelude.Nothing,
      version = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the simulation application.
updateSimulationApplicationResponse_name :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe Prelude.Text)
updateSimulationApplicationResponse_name = Lens.lens (\UpdateSimulationApplicationResponse' {name} -> name) (\s@UpdateSimulationApplicationResponse' {} a -> s {name = a} :: UpdateSimulationApplicationResponse)

-- | The sources of the simulation application.
updateSimulationApplicationResponse_sources :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe [Source])
updateSimulationApplicationResponse_sources = Lens.lens (\UpdateSimulationApplicationResponse' {sources} -> sources) (\s@UpdateSimulationApplicationResponse' {} a -> s {sources = a} :: UpdateSimulationApplicationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The object that contains the Docker image URI used for your simulation
-- application.
updateSimulationApplicationResponse_environment :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe Environment)
updateSimulationApplicationResponse_environment = Lens.lens (\UpdateSimulationApplicationResponse' {environment} -> environment) (\s@UpdateSimulationApplicationResponse' {} a -> s {environment = a} :: UpdateSimulationApplicationResponse)

-- | The rendering engine for the simulation application.
updateSimulationApplicationResponse_renderingEngine :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe RenderingEngine)
updateSimulationApplicationResponse_renderingEngine = Lens.lens (\UpdateSimulationApplicationResponse' {renderingEngine} -> renderingEngine) (\s@UpdateSimulationApplicationResponse' {} a -> s {renderingEngine = a} :: UpdateSimulationApplicationResponse)

-- | The time, in milliseconds since the epoch, when the simulation
-- application was last updated.
updateSimulationApplicationResponse_lastUpdatedAt :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe Prelude.UTCTime)
updateSimulationApplicationResponse_lastUpdatedAt = Lens.lens (\UpdateSimulationApplicationResponse' {lastUpdatedAt} -> lastUpdatedAt) (\s@UpdateSimulationApplicationResponse' {} a -> s {lastUpdatedAt = a} :: UpdateSimulationApplicationResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the updated simulation application.
updateSimulationApplicationResponse_arn :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe Prelude.Text)
updateSimulationApplicationResponse_arn = Lens.lens (\UpdateSimulationApplicationResponse' {arn} -> arn) (\s@UpdateSimulationApplicationResponse' {} a -> s {arn = a} :: UpdateSimulationApplicationResponse)

-- | Information about the robot software suite (ROS distribution).
updateSimulationApplicationResponse_robotSoftwareSuite :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe RobotSoftwareSuite)
updateSimulationApplicationResponse_robotSoftwareSuite = Lens.lens (\UpdateSimulationApplicationResponse' {robotSoftwareSuite} -> robotSoftwareSuite) (\s@UpdateSimulationApplicationResponse' {} a -> s {robotSoftwareSuite = a} :: UpdateSimulationApplicationResponse)

-- | The simulation software suite used by the simulation application.
updateSimulationApplicationResponse_simulationSoftwareSuite :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe SimulationSoftwareSuite)
updateSimulationApplicationResponse_simulationSoftwareSuite = Lens.lens (\UpdateSimulationApplicationResponse' {simulationSoftwareSuite} -> simulationSoftwareSuite) (\s@UpdateSimulationApplicationResponse' {} a -> s {simulationSoftwareSuite = a} :: UpdateSimulationApplicationResponse)

-- | The revision id of the simulation application.
updateSimulationApplicationResponse_revisionId :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe Prelude.Text)
updateSimulationApplicationResponse_revisionId = Lens.lens (\UpdateSimulationApplicationResponse' {revisionId} -> revisionId) (\s@UpdateSimulationApplicationResponse' {} a -> s {revisionId = a} :: UpdateSimulationApplicationResponse)

-- | The version of the robot application.
updateSimulationApplicationResponse_version :: Lens.Lens' UpdateSimulationApplicationResponse (Prelude.Maybe Prelude.Text)
updateSimulationApplicationResponse_version = Lens.lens (\UpdateSimulationApplicationResponse' {version} -> version) (\s@UpdateSimulationApplicationResponse' {} a -> s {version = a} :: UpdateSimulationApplicationResponse)

-- | The response's http status code.
updateSimulationApplicationResponse_httpStatus :: Lens.Lens' UpdateSimulationApplicationResponse Prelude.Int
updateSimulationApplicationResponse_httpStatus = Lens.lens (\UpdateSimulationApplicationResponse' {httpStatus} -> httpStatus) (\s@UpdateSimulationApplicationResponse' {} a -> s {httpStatus = a} :: UpdateSimulationApplicationResponse)

instance
  Prelude.NFData
    UpdateSimulationApplicationResponse
  where
  rnf UpdateSimulationApplicationResponse' {..} =
    Prelude.rnf name
      `Prelude.seq` Prelude.rnf sources
      `Prelude.seq` Prelude.rnf environment
      `Prelude.seq` Prelude.rnf renderingEngine
      `Prelude.seq` Prelude.rnf lastUpdatedAt
      `Prelude.seq` Prelude.rnf arn
      `Prelude.seq` Prelude.rnf robotSoftwareSuite
      `Prelude.seq` Prelude.rnf simulationSoftwareSuite
      `Prelude.seq` Prelude.rnf revisionId
      `Prelude.seq` Prelude.rnf version
      `Prelude.seq` Prelude.rnf httpStatus
