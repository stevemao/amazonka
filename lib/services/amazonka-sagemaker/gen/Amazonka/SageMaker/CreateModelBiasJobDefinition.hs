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
-- Module      : Amazonka.SageMaker.CreateModelBiasJobDefinition
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the definition for a model bias job.
module Amazonka.SageMaker.CreateModelBiasJobDefinition
  ( -- * Creating a Request
    CreateModelBiasJobDefinition (..),
    newCreateModelBiasJobDefinition,

    -- * Request Lenses
    createModelBiasJobDefinition_modelBiasBaselineConfig,
    createModelBiasJobDefinition_networkConfig,
    createModelBiasJobDefinition_stoppingCondition,
    createModelBiasJobDefinition_tags,
    createModelBiasJobDefinition_jobDefinitionName,
    createModelBiasJobDefinition_modelBiasAppSpecification,
    createModelBiasJobDefinition_modelBiasJobInput,
    createModelBiasJobDefinition_modelBiasJobOutputConfig,
    createModelBiasJobDefinition_jobResources,
    createModelBiasJobDefinition_roleArn,

    -- * Destructuring the Response
    CreateModelBiasJobDefinitionResponse (..),
    newCreateModelBiasJobDefinitionResponse,

    -- * Response Lenses
    createModelBiasJobDefinitionResponse_httpStatus,
    createModelBiasJobDefinitionResponse_jobDefinitionArn,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newCreateModelBiasJobDefinition' smart constructor.
data CreateModelBiasJobDefinition = CreateModelBiasJobDefinition'
  { -- | The baseline configuration for a model bias job.
    modelBiasBaselineConfig :: Prelude.Maybe ModelBiasBaselineConfig,
    -- | Networking options for a model bias job.
    networkConfig :: Prelude.Maybe MonitoringNetworkConfig,
    stoppingCondition :: Prelude.Maybe MonitoringStoppingCondition,
    -- | (Optional) An array of key-value pairs. For more information, see
    -- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags>
    -- in the /Amazon Web Services Billing and Cost Management User Guide/.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the bias job definition. The name must be unique within an
    -- Amazon Web Services Region in the Amazon Web Services account.
    jobDefinitionName :: Prelude.Text,
    -- | Configures the model bias job to run a specified Docker container image.
    modelBiasAppSpecification :: ModelBiasAppSpecification,
    -- | Inputs for the model bias job.
    modelBiasJobInput :: ModelBiasJobInput,
    modelBiasJobOutputConfig :: MonitoringOutputConfig,
    jobResources :: MonitoringResources,
    -- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
    -- assume to perform tasks on your behalf.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelBiasJobDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelBiasBaselineConfig', 'createModelBiasJobDefinition_modelBiasBaselineConfig' - The baseline configuration for a model bias job.
--
-- 'networkConfig', 'createModelBiasJobDefinition_networkConfig' - Networking options for a model bias job.
--
-- 'stoppingCondition', 'createModelBiasJobDefinition_stoppingCondition' - Undocumented member.
--
-- 'tags', 'createModelBiasJobDefinition_tags' - (Optional) An array of key-value pairs. For more information, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags>
-- in the /Amazon Web Services Billing and Cost Management User Guide/.
--
-- 'jobDefinitionName', 'createModelBiasJobDefinition_jobDefinitionName' - The name of the bias job definition. The name must be unique within an
-- Amazon Web Services Region in the Amazon Web Services account.
--
-- 'modelBiasAppSpecification', 'createModelBiasJobDefinition_modelBiasAppSpecification' - Configures the model bias job to run a specified Docker container image.
--
-- 'modelBiasJobInput', 'createModelBiasJobDefinition_modelBiasJobInput' - Inputs for the model bias job.
--
-- 'modelBiasJobOutputConfig', 'createModelBiasJobDefinition_modelBiasJobOutputConfig' - Undocumented member.
--
-- 'jobResources', 'createModelBiasJobDefinition_jobResources' - Undocumented member.
--
-- 'roleArn', 'createModelBiasJobDefinition_roleArn' - The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
-- assume to perform tasks on your behalf.
newCreateModelBiasJobDefinition ::
  -- | 'jobDefinitionName'
  Prelude.Text ->
  -- | 'modelBiasAppSpecification'
  ModelBiasAppSpecification ->
  -- | 'modelBiasJobInput'
  ModelBiasJobInput ->
  -- | 'modelBiasJobOutputConfig'
  MonitoringOutputConfig ->
  -- | 'jobResources'
  MonitoringResources ->
  -- | 'roleArn'
  Prelude.Text ->
  CreateModelBiasJobDefinition
newCreateModelBiasJobDefinition
  pJobDefinitionName_
  pModelBiasAppSpecification_
  pModelBiasJobInput_
  pModelBiasJobOutputConfig_
  pJobResources_
  pRoleArn_ =
    CreateModelBiasJobDefinition'
      { modelBiasBaselineConfig =
          Prelude.Nothing,
        networkConfig = Prelude.Nothing,
        stoppingCondition = Prelude.Nothing,
        tags = Prelude.Nothing,
        jobDefinitionName = pJobDefinitionName_,
        modelBiasAppSpecification =
          pModelBiasAppSpecification_,
        modelBiasJobInput = pModelBiasJobInput_,
        modelBiasJobOutputConfig =
          pModelBiasJobOutputConfig_,
        jobResources = pJobResources_,
        roleArn = pRoleArn_
      }

-- | The baseline configuration for a model bias job.
createModelBiasJobDefinition_modelBiasBaselineConfig :: Lens.Lens' CreateModelBiasJobDefinition (Prelude.Maybe ModelBiasBaselineConfig)
createModelBiasJobDefinition_modelBiasBaselineConfig = Lens.lens (\CreateModelBiasJobDefinition' {modelBiasBaselineConfig} -> modelBiasBaselineConfig) (\s@CreateModelBiasJobDefinition' {} a -> s {modelBiasBaselineConfig = a} :: CreateModelBiasJobDefinition)

-- | Networking options for a model bias job.
createModelBiasJobDefinition_networkConfig :: Lens.Lens' CreateModelBiasJobDefinition (Prelude.Maybe MonitoringNetworkConfig)
createModelBiasJobDefinition_networkConfig = Lens.lens (\CreateModelBiasJobDefinition' {networkConfig} -> networkConfig) (\s@CreateModelBiasJobDefinition' {} a -> s {networkConfig = a} :: CreateModelBiasJobDefinition)

-- | Undocumented member.
createModelBiasJobDefinition_stoppingCondition :: Lens.Lens' CreateModelBiasJobDefinition (Prelude.Maybe MonitoringStoppingCondition)
createModelBiasJobDefinition_stoppingCondition = Lens.lens (\CreateModelBiasJobDefinition' {stoppingCondition} -> stoppingCondition) (\s@CreateModelBiasJobDefinition' {} a -> s {stoppingCondition = a} :: CreateModelBiasJobDefinition)

-- | (Optional) An array of key-value pairs. For more information, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL Using Cost Allocation Tags>
-- in the /Amazon Web Services Billing and Cost Management User Guide/.
createModelBiasJobDefinition_tags :: Lens.Lens' CreateModelBiasJobDefinition (Prelude.Maybe [Tag])
createModelBiasJobDefinition_tags = Lens.lens (\CreateModelBiasJobDefinition' {tags} -> tags) (\s@CreateModelBiasJobDefinition' {} a -> s {tags = a} :: CreateModelBiasJobDefinition) Prelude.. Lens.mapping Lens.coerced

-- | The name of the bias job definition. The name must be unique within an
-- Amazon Web Services Region in the Amazon Web Services account.
createModelBiasJobDefinition_jobDefinitionName :: Lens.Lens' CreateModelBiasJobDefinition Prelude.Text
createModelBiasJobDefinition_jobDefinitionName = Lens.lens (\CreateModelBiasJobDefinition' {jobDefinitionName} -> jobDefinitionName) (\s@CreateModelBiasJobDefinition' {} a -> s {jobDefinitionName = a} :: CreateModelBiasJobDefinition)

-- | Configures the model bias job to run a specified Docker container image.
createModelBiasJobDefinition_modelBiasAppSpecification :: Lens.Lens' CreateModelBiasJobDefinition ModelBiasAppSpecification
createModelBiasJobDefinition_modelBiasAppSpecification = Lens.lens (\CreateModelBiasJobDefinition' {modelBiasAppSpecification} -> modelBiasAppSpecification) (\s@CreateModelBiasJobDefinition' {} a -> s {modelBiasAppSpecification = a} :: CreateModelBiasJobDefinition)

-- | Inputs for the model bias job.
createModelBiasJobDefinition_modelBiasJobInput :: Lens.Lens' CreateModelBiasJobDefinition ModelBiasJobInput
createModelBiasJobDefinition_modelBiasJobInput = Lens.lens (\CreateModelBiasJobDefinition' {modelBiasJobInput} -> modelBiasJobInput) (\s@CreateModelBiasJobDefinition' {} a -> s {modelBiasJobInput = a} :: CreateModelBiasJobDefinition)

-- | Undocumented member.
createModelBiasJobDefinition_modelBiasJobOutputConfig :: Lens.Lens' CreateModelBiasJobDefinition MonitoringOutputConfig
createModelBiasJobDefinition_modelBiasJobOutputConfig = Lens.lens (\CreateModelBiasJobDefinition' {modelBiasJobOutputConfig} -> modelBiasJobOutputConfig) (\s@CreateModelBiasJobDefinition' {} a -> s {modelBiasJobOutputConfig = a} :: CreateModelBiasJobDefinition)

-- | Undocumented member.
createModelBiasJobDefinition_jobResources :: Lens.Lens' CreateModelBiasJobDefinition MonitoringResources
createModelBiasJobDefinition_jobResources = Lens.lens (\CreateModelBiasJobDefinition' {jobResources} -> jobResources) (\s@CreateModelBiasJobDefinition' {} a -> s {jobResources = a} :: CreateModelBiasJobDefinition)

-- | The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can
-- assume to perform tasks on your behalf.
createModelBiasJobDefinition_roleArn :: Lens.Lens' CreateModelBiasJobDefinition Prelude.Text
createModelBiasJobDefinition_roleArn = Lens.lens (\CreateModelBiasJobDefinition' {roleArn} -> roleArn) (\s@CreateModelBiasJobDefinition' {} a -> s {roleArn = a} :: CreateModelBiasJobDefinition)

instance Core.AWSRequest CreateModelBiasJobDefinition where
  type
    AWSResponse CreateModelBiasJobDefinition =
      CreateModelBiasJobDefinitionResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateModelBiasJobDefinitionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "JobDefinitionArn")
      )

instance
  Prelude.Hashable
    CreateModelBiasJobDefinition
  where
  hashWithSalt _salt CreateModelBiasJobDefinition' {..} =
    _salt
      `Prelude.hashWithSalt` modelBiasBaselineConfig
      `Prelude.hashWithSalt` networkConfig
      `Prelude.hashWithSalt` stoppingCondition
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` jobDefinitionName
      `Prelude.hashWithSalt` modelBiasAppSpecification
      `Prelude.hashWithSalt` modelBiasJobInput
      `Prelude.hashWithSalt` modelBiasJobOutputConfig
      `Prelude.hashWithSalt` jobResources
      `Prelude.hashWithSalt` roleArn

instance Prelude.NFData CreateModelBiasJobDefinition where
  rnf CreateModelBiasJobDefinition' {..} =
    Prelude.rnf modelBiasBaselineConfig
      `Prelude.seq` Prelude.rnf networkConfig
      `Prelude.seq` Prelude.rnf stoppingCondition
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf jobDefinitionName
      `Prelude.seq` Prelude.rnf modelBiasAppSpecification
      `Prelude.seq` Prelude.rnf modelBiasJobInput
      `Prelude.seq` Prelude.rnf modelBiasJobOutputConfig
      `Prelude.seq` Prelude.rnf jobResources
      `Prelude.seq` Prelude.rnf roleArn

instance Data.ToHeaders CreateModelBiasJobDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "SageMaker.CreateModelBiasJobDefinition" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON CreateModelBiasJobDefinition where
  toJSON CreateModelBiasJobDefinition' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("ModelBiasBaselineConfig" Data..=)
              Prelude.<$> modelBiasBaselineConfig,
            ("NetworkConfig" Data..=) Prelude.<$> networkConfig,
            ("StoppingCondition" Data..=)
              Prelude.<$> stoppingCondition,
            ("Tags" Data..=) Prelude.<$> tags,
            Prelude.Just
              ("JobDefinitionName" Data..= jobDefinitionName),
            Prelude.Just
              ( "ModelBiasAppSpecification"
                  Data..= modelBiasAppSpecification
              ),
            Prelude.Just
              ("ModelBiasJobInput" Data..= modelBiasJobInput),
            Prelude.Just
              ( "ModelBiasJobOutputConfig"
                  Data..= modelBiasJobOutputConfig
              ),
            Prelude.Just ("JobResources" Data..= jobResources),
            Prelude.Just ("RoleArn" Data..= roleArn)
          ]
      )

instance Data.ToPath CreateModelBiasJobDefinition where
  toPath = Prelude.const "/"

instance Data.ToQuery CreateModelBiasJobDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateModelBiasJobDefinitionResponse' smart constructor.
data CreateModelBiasJobDefinitionResponse = CreateModelBiasJobDefinitionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the model bias job.
    jobDefinitionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateModelBiasJobDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createModelBiasJobDefinitionResponse_httpStatus' - The response's http status code.
--
-- 'jobDefinitionArn', 'createModelBiasJobDefinitionResponse_jobDefinitionArn' - The Amazon Resource Name (ARN) of the model bias job.
newCreateModelBiasJobDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobDefinitionArn'
  Prelude.Text ->
  CreateModelBiasJobDefinitionResponse
newCreateModelBiasJobDefinitionResponse
  pHttpStatus_
  pJobDefinitionArn_ =
    CreateModelBiasJobDefinitionResponse'
      { httpStatus =
          pHttpStatus_,
        jobDefinitionArn = pJobDefinitionArn_
      }

-- | The response's http status code.
createModelBiasJobDefinitionResponse_httpStatus :: Lens.Lens' CreateModelBiasJobDefinitionResponse Prelude.Int
createModelBiasJobDefinitionResponse_httpStatus = Lens.lens (\CreateModelBiasJobDefinitionResponse' {httpStatus} -> httpStatus) (\s@CreateModelBiasJobDefinitionResponse' {} a -> s {httpStatus = a} :: CreateModelBiasJobDefinitionResponse)

-- | The Amazon Resource Name (ARN) of the model bias job.
createModelBiasJobDefinitionResponse_jobDefinitionArn :: Lens.Lens' CreateModelBiasJobDefinitionResponse Prelude.Text
createModelBiasJobDefinitionResponse_jobDefinitionArn = Lens.lens (\CreateModelBiasJobDefinitionResponse' {jobDefinitionArn} -> jobDefinitionArn) (\s@CreateModelBiasJobDefinitionResponse' {} a -> s {jobDefinitionArn = a} :: CreateModelBiasJobDefinitionResponse)

instance
  Prelude.NFData
    CreateModelBiasJobDefinitionResponse
  where
  rnf CreateModelBiasJobDefinitionResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf jobDefinitionArn
