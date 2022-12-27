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
-- Module      : Amazonka.LookoutEquipment.DescribeModel
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a JSON containing the overall information about a specific ML
-- model, including model name and ARN, dataset, training and evaluation
-- information, status, and so on.
module Amazonka.LookoutEquipment.DescribeModel
  ( -- * Creating a Request
    DescribeModel (..),
    newDescribeModel,

    -- * Request Lenses
    describeModel_modelName,

    -- * Destructuring the Response
    DescribeModelResponse (..),
    newDescribeModelResponse,

    -- * Response Lenses
    describeModelResponse_createdAt,
    describeModelResponse_dataPreProcessingConfiguration,
    describeModelResponse_datasetArn,
    describeModelResponse_datasetName,
    describeModelResponse_evaluationDataEndTime,
    describeModelResponse_evaluationDataStartTime,
    describeModelResponse_failedReason,
    describeModelResponse_labelsInputConfiguration,
    describeModelResponse_lastUpdatedTime,
    describeModelResponse_modelArn,
    describeModelResponse_modelMetrics,
    describeModelResponse_modelName,
    describeModelResponse_offCondition,
    describeModelResponse_roleArn,
    describeModelResponse_schema,
    describeModelResponse_serverSideKmsKeyId,
    describeModelResponse_status,
    describeModelResponse_trainingDataEndTime,
    describeModelResponse_trainingDataStartTime,
    describeModelResponse_trainingExecutionEndTime,
    describeModelResponse_trainingExecutionStartTime,
    describeModelResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDescribeModel' smart constructor.
data DescribeModel = DescribeModel'
  { -- | The name of the ML model to be described.
    modelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelName', 'describeModel_modelName' - The name of the ML model to be described.
newDescribeModel ::
  -- | 'modelName'
  Prelude.Text ->
  DescribeModel
newDescribeModel pModelName_ =
  DescribeModel' {modelName = pModelName_}

-- | The name of the ML model to be described.
describeModel_modelName :: Lens.Lens' DescribeModel Prelude.Text
describeModel_modelName = Lens.lens (\DescribeModel' {modelName} -> modelName) (\s@DescribeModel' {} a -> s {modelName = a} :: DescribeModel)

instance Core.AWSRequest DescribeModel where
  type
    AWSResponse DescribeModel =
      DescribeModelResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeModelResponse'
            Prelude.<$> (x Data..?> "CreatedAt")
            Prelude.<*> (x Data..?> "DataPreProcessingConfiguration")
            Prelude.<*> (x Data..?> "DatasetArn")
            Prelude.<*> (x Data..?> "DatasetName")
            Prelude.<*> (x Data..?> "EvaluationDataEndTime")
            Prelude.<*> (x Data..?> "EvaluationDataStartTime")
            Prelude.<*> (x Data..?> "FailedReason")
            Prelude.<*> (x Data..?> "LabelsInputConfiguration")
            Prelude.<*> (x Data..?> "LastUpdatedTime")
            Prelude.<*> (x Data..?> "ModelArn")
            Prelude.<*> (x Data..?> "ModelMetrics")
            Prelude.<*> (x Data..?> "ModelName")
            Prelude.<*> (x Data..?> "OffCondition")
            Prelude.<*> (x Data..?> "RoleArn")
            Prelude.<*> (x Data..?> "Schema")
            Prelude.<*> (x Data..?> "ServerSideKmsKeyId")
            Prelude.<*> (x Data..?> "Status")
            Prelude.<*> (x Data..?> "TrainingDataEndTime")
            Prelude.<*> (x Data..?> "TrainingDataStartTime")
            Prelude.<*> (x Data..?> "TrainingExecutionEndTime")
            Prelude.<*> (x Data..?> "TrainingExecutionStartTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeModel where
  hashWithSalt _salt DescribeModel' {..} =
    _salt `Prelude.hashWithSalt` modelName

instance Prelude.NFData DescribeModel where
  rnf DescribeModel' {..} = Prelude.rnf modelName

instance Data.ToHeaders DescribeModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSLookoutEquipmentFrontendService.DescribeModel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DescribeModel where
  toJSON DescribeModel' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("ModelName" Data..= modelName)]
      )

instance Data.ToPath DescribeModel where
  toPath = Prelude.const "/"

instance Data.ToQuery DescribeModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeModelResponse' smart constructor.
data DescribeModelResponse = DescribeModelResponse'
  { -- | Indicates the time and date at which the ML model was created.
    createdAt :: Prelude.Maybe Data.POSIX,
    -- | The configuration is the @TargetSamplingRate@, which is the sampling
    -- rate of the data after post processing by Amazon Lookout for Equipment.
    -- For example, if you provide data that has been collected at a 1 second
    -- level and you want the system to resample the data at a 1 minute rate
    -- before training, the @TargetSamplingRate@ is 1 minute.
    --
    -- When providing a value for the @TargetSamplingRate@, you must attach the
    -- prefix \"PT\" to the rate you want. The value for a 1 second rate is
    -- therefore /PT1S/, the value for a 15 minute rate is /PT15M/, and the
    -- value for a 1 hour rate is /PT1H/
    dataPreProcessingConfiguration :: Prelude.Maybe DataPreProcessingConfiguration,
    -- | The Amazon Resouce Name (ARN) of the dataset used to create the ML model
    -- being described.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the dataset being used by the ML being described.
    datasetName :: Prelude.Maybe Prelude.Text,
    -- | Indicates the time reference in the dataset that was used to end the
    -- subset of evaluation data for the ML model.
    evaluationDataEndTime :: Prelude.Maybe Data.POSIX,
    -- | Indicates the time reference in the dataset that was used to begin the
    -- subset of evaluation data for the ML model.
    evaluationDataStartTime :: Prelude.Maybe Data.POSIX,
    -- | If the training of the ML model failed, this indicates the reason for
    -- that failure.
    failedReason :: Prelude.Maybe Prelude.Text,
    -- | Specifies configuration information about the labels input, including
    -- its S3 location.
    labelsInputConfiguration :: Prelude.Maybe LabelsInputConfiguration,
    -- | Indicates the last time the ML model was updated. The type of update is
    -- not specified.
    lastUpdatedTime :: Prelude.Maybe Data.POSIX,
    -- | The Amazon Resource Name (ARN) of the ML model being described.
    modelArn :: Prelude.Maybe Prelude.Text,
    -- | The Model Metrics show an aggregated summary of the model\'s performance
    -- within the evaluation time range. This is the JSON content of the
    -- metrics created when evaluating the model.
    modelMetrics :: Prelude.Maybe Prelude.Text,
    -- | The name of the ML model being described.
    modelName :: Prelude.Maybe Prelude.Text,
    -- | Indicates that the asset associated with this sensor has been shut off.
    -- As long as this condition is met, Lookout for Equipment will not use
    -- data from this asset for training, evaluation, or inference.
    offCondition :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of a role with permission to access the
    -- data source for the ML model being described.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | A JSON description of the data that is in each time series dataset,
    -- including names, column names, and data types.
    schema :: Prelude.Maybe Prelude.Text,
    -- | Provides the identifier of the KMS key used to encrypt model data by
    -- Amazon Lookout for Equipment.
    serverSideKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the current status of the model being described. Status
    -- describes the status of the most recent action of the model.
    status :: Prelude.Maybe ModelStatus,
    -- | Indicates the time reference in the dataset that was used to end the
    -- subset of training data for the ML model.
    trainingDataEndTime :: Prelude.Maybe Data.POSIX,
    -- | Indicates the time reference in the dataset that was used to begin the
    -- subset of training data for the ML model.
    trainingDataStartTime :: Prelude.Maybe Data.POSIX,
    -- | Indicates the time at which the training of the ML model was completed.
    trainingExecutionEndTime :: Prelude.Maybe Data.POSIX,
    -- | Indicates the time at which the training of the ML model began.
    trainingExecutionStartTime :: Prelude.Maybe Data.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdAt', 'describeModelResponse_createdAt' - Indicates the time and date at which the ML model was created.
--
-- 'dataPreProcessingConfiguration', 'describeModelResponse_dataPreProcessingConfiguration' - The configuration is the @TargetSamplingRate@, which is the sampling
-- rate of the data after post processing by Amazon Lookout for Equipment.
-- For example, if you provide data that has been collected at a 1 second
-- level and you want the system to resample the data at a 1 minute rate
-- before training, the @TargetSamplingRate@ is 1 minute.
--
-- When providing a value for the @TargetSamplingRate@, you must attach the
-- prefix \"PT\" to the rate you want. The value for a 1 second rate is
-- therefore /PT1S/, the value for a 15 minute rate is /PT15M/, and the
-- value for a 1 hour rate is /PT1H/
--
-- 'datasetArn', 'describeModelResponse_datasetArn' - The Amazon Resouce Name (ARN) of the dataset used to create the ML model
-- being described.
--
-- 'datasetName', 'describeModelResponse_datasetName' - The name of the dataset being used by the ML being described.
--
-- 'evaluationDataEndTime', 'describeModelResponse_evaluationDataEndTime' - Indicates the time reference in the dataset that was used to end the
-- subset of evaluation data for the ML model.
--
-- 'evaluationDataStartTime', 'describeModelResponse_evaluationDataStartTime' - Indicates the time reference in the dataset that was used to begin the
-- subset of evaluation data for the ML model.
--
-- 'failedReason', 'describeModelResponse_failedReason' - If the training of the ML model failed, this indicates the reason for
-- that failure.
--
-- 'labelsInputConfiguration', 'describeModelResponse_labelsInputConfiguration' - Specifies configuration information about the labels input, including
-- its S3 location.
--
-- 'lastUpdatedTime', 'describeModelResponse_lastUpdatedTime' - Indicates the last time the ML model was updated. The type of update is
-- not specified.
--
-- 'modelArn', 'describeModelResponse_modelArn' - The Amazon Resource Name (ARN) of the ML model being described.
--
-- 'modelMetrics', 'describeModelResponse_modelMetrics' - The Model Metrics show an aggregated summary of the model\'s performance
-- within the evaluation time range. This is the JSON content of the
-- metrics created when evaluating the model.
--
-- 'modelName', 'describeModelResponse_modelName' - The name of the ML model being described.
--
-- 'offCondition', 'describeModelResponse_offCondition' - Indicates that the asset associated with this sensor has been shut off.
-- As long as this condition is met, Lookout for Equipment will not use
-- data from this asset for training, evaluation, or inference.
--
-- 'roleArn', 'describeModelResponse_roleArn' - The Amazon Resource Name (ARN) of a role with permission to access the
-- data source for the ML model being described.
--
-- 'schema', 'describeModelResponse_schema' - A JSON description of the data that is in each time series dataset,
-- including names, column names, and data types.
--
-- 'serverSideKmsKeyId', 'describeModelResponse_serverSideKmsKeyId' - Provides the identifier of the KMS key used to encrypt model data by
-- Amazon Lookout for Equipment.
--
-- 'status', 'describeModelResponse_status' - Specifies the current status of the model being described. Status
-- describes the status of the most recent action of the model.
--
-- 'trainingDataEndTime', 'describeModelResponse_trainingDataEndTime' - Indicates the time reference in the dataset that was used to end the
-- subset of training data for the ML model.
--
-- 'trainingDataStartTime', 'describeModelResponse_trainingDataStartTime' - Indicates the time reference in the dataset that was used to begin the
-- subset of training data for the ML model.
--
-- 'trainingExecutionEndTime', 'describeModelResponse_trainingExecutionEndTime' - Indicates the time at which the training of the ML model was completed.
--
-- 'trainingExecutionStartTime', 'describeModelResponse_trainingExecutionStartTime' - Indicates the time at which the training of the ML model began.
--
-- 'httpStatus', 'describeModelResponse_httpStatus' - The response's http status code.
newDescribeModelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeModelResponse
newDescribeModelResponse pHttpStatus_ =
  DescribeModelResponse'
    { createdAt = Prelude.Nothing,
      dataPreProcessingConfiguration = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      datasetName = Prelude.Nothing,
      evaluationDataEndTime = Prelude.Nothing,
      evaluationDataStartTime = Prelude.Nothing,
      failedReason = Prelude.Nothing,
      labelsInputConfiguration = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing,
      modelArn = Prelude.Nothing,
      modelMetrics = Prelude.Nothing,
      modelName = Prelude.Nothing,
      offCondition = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      schema = Prelude.Nothing,
      serverSideKmsKeyId = Prelude.Nothing,
      status = Prelude.Nothing,
      trainingDataEndTime = Prelude.Nothing,
      trainingDataStartTime = Prelude.Nothing,
      trainingExecutionEndTime = Prelude.Nothing,
      trainingExecutionStartTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Indicates the time and date at which the ML model was created.
describeModelResponse_createdAt :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_createdAt = Lens.lens (\DescribeModelResponse' {createdAt} -> createdAt) (\s@DescribeModelResponse' {} a -> s {createdAt = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | The configuration is the @TargetSamplingRate@, which is the sampling
-- rate of the data after post processing by Amazon Lookout for Equipment.
-- For example, if you provide data that has been collected at a 1 second
-- level and you want the system to resample the data at a 1 minute rate
-- before training, the @TargetSamplingRate@ is 1 minute.
--
-- When providing a value for the @TargetSamplingRate@, you must attach the
-- prefix \"PT\" to the rate you want. The value for a 1 second rate is
-- therefore /PT1S/, the value for a 15 minute rate is /PT15M/, and the
-- value for a 1 hour rate is /PT1H/
describeModelResponse_dataPreProcessingConfiguration :: Lens.Lens' DescribeModelResponse (Prelude.Maybe DataPreProcessingConfiguration)
describeModelResponse_dataPreProcessingConfiguration = Lens.lens (\DescribeModelResponse' {dataPreProcessingConfiguration} -> dataPreProcessingConfiguration) (\s@DescribeModelResponse' {} a -> s {dataPreProcessingConfiguration = a} :: DescribeModelResponse)

-- | The Amazon Resouce Name (ARN) of the dataset used to create the ML model
-- being described.
describeModelResponse_datasetArn :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_datasetArn = Lens.lens (\DescribeModelResponse' {datasetArn} -> datasetArn) (\s@DescribeModelResponse' {} a -> s {datasetArn = a} :: DescribeModelResponse)

-- | The name of the dataset being used by the ML being described.
describeModelResponse_datasetName :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_datasetName = Lens.lens (\DescribeModelResponse' {datasetName} -> datasetName) (\s@DescribeModelResponse' {} a -> s {datasetName = a} :: DescribeModelResponse)

-- | Indicates the time reference in the dataset that was used to end the
-- subset of evaluation data for the ML model.
describeModelResponse_evaluationDataEndTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_evaluationDataEndTime = Lens.lens (\DescribeModelResponse' {evaluationDataEndTime} -> evaluationDataEndTime) (\s@DescribeModelResponse' {} a -> s {evaluationDataEndTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | Indicates the time reference in the dataset that was used to begin the
-- subset of evaluation data for the ML model.
describeModelResponse_evaluationDataStartTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_evaluationDataStartTime = Lens.lens (\DescribeModelResponse' {evaluationDataStartTime} -> evaluationDataStartTime) (\s@DescribeModelResponse' {} a -> s {evaluationDataStartTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | If the training of the ML model failed, this indicates the reason for
-- that failure.
describeModelResponse_failedReason :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_failedReason = Lens.lens (\DescribeModelResponse' {failedReason} -> failedReason) (\s@DescribeModelResponse' {} a -> s {failedReason = a} :: DescribeModelResponse)

-- | Specifies configuration information about the labels input, including
-- its S3 location.
describeModelResponse_labelsInputConfiguration :: Lens.Lens' DescribeModelResponse (Prelude.Maybe LabelsInputConfiguration)
describeModelResponse_labelsInputConfiguration = Lens.lens (\DescribeModelResponse' {labelsInputConfiguration} -> labelsInputConfiguration) (\s@DescribeModelResponse' {} a -> s {labelsInputConfiguration = a} :: DescribeModelResponse)

-- | Indicates the last time the ML model was updated. The type of update is
-- not specified.
describeModelResponse_lastUpdatedTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_lastUpdatedTime = Lens.lens (\DescribeModelResponse' {lastUpdatedTime} -> lastUpdatedTime) (\s@DescribeModelResponse' {} a -> s {lastUpdatedTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | The Amazon Resource Name (ARN) of the ML model being described.
describeModelResponse_modelArn :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_modelArn = Lens.lens (\DescribeModelResponse' {modelArn} -> modelArn) (\s@DescribeModelResponse' {} a -> s {modelArn = a} :: DescribeModelResponse)

-- | The Model Metrics show an aggregated summary of the model\'s performance
-- within the evaluation time range. This is the JSON content of the
-- metrics created when evaluating the model.
describeModelResponse_modelMetrics :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_modelMetrics = Lens.lens (\DescribeModelResponse' {modelMetrics} -> modelMetrics) (\s@DescribeModelResponse' {} a -> s {modelMetrics = a} :: DescribeModelResponse)

-- | The name of the ML model being described.
describeModelResponse_modelName :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_modelName = Lens.lens (\DescribeModelResponse' {modelName} -> modelName) (\s@DescribeModelResponse' {} a -> s {modelName = a} :: DescribeModelResponse)

-- | Indicates that the asset associated with this sensor has been shut off.
-- As long as this condition is met, Lookout for Equipment will not use
-- data from this asset for training, evaluation, or inference.
describeModelResponse_offCondition :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_offCondition = Lens.lens (\DescribeModelResponse' {offCondition} -> offCondition) (\s@DescribeModelResponse' {} a -> s {offCondition = a} :: DescribeModelResponse)

-- | The Amazon Resource Name (ARN) of a role with permission to access the
-- data source for the ML model being described.
describeModelResponse_roleArn :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_roleArn = Lens.lens (\DescribeModelResponse' {roleArn} -> roleArn) (\s@DescribeModelResponse' {} a -> s {roleArn = a} :: DescribeModelResponse)

-- | A JSON description of the data that is in each time series dataset,
-- including names, column names, and data types.
describeModelResponse_schema :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_schema = Lens.lens (\DescribeModelResponse' {schema} -> schema) (\s@DescribeModelResponse' {} a -> s {schema = a} :: DescribeModelResponse)

-- | Provides the identifier of the KMS key used to encrypt model data by
-- Amazon Lookout for Equipment.
describeModelResponse_serverSideKmsKeyId :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.Text)
describeModelResponse_serverSideKmsKeyId = Lens.lens (\DescribeModelResponse' {serverSideKmsKeyId} -> serverSideKmsKeyId) (\s@DescribeModelResponse' {} a -> s {serverSideKmsKeyId = a} :: DescribeModelResponse)

-- | Specifies the current status of the model being described. Status
-- describes the status of the most recent action of the model.
describeModelResponse_status :: Lens.Lens' DescribeModelResponse (Prelude.Maybe ModelStatus)
describeModelResponse_status = Lens.lens (\DescribeModelResponse' {status} -> status) (\s@DescribeModelResponse' {} a -> s {status = a} :: DescribeModelResponse)

-- | Indicates the time reference in the dataset that was used to end the
-- subset of training data for the ML model.
describeModelResponse_trainingDataEndTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_trainingDataEndTime = Lens.lens (\DescribeModelResponse' {trainingDataEndTime} -> trainingDataEndTime) (\s@DescribeModelResponse' {} a -> s {trainingDataEndTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | Indicates the time reference in the dataset that was used to begin the
-- subset of training data for the ML model.
describeModelResponse_trainingDataStartTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_trainingDataStartTime = Lens.lens (\DescribeModelResponse' {trainingDataStartTime} -> trainingDataStartTime) (\s@DescribeModelResponse' {} a -> s {trainingDataStartTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | Indicates the time at which the training of the ML model was completed.
describeModelResponse_trainingExecutionEndTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_trainingExecutionEndTime = Lens.lens (\DescribeModelResponse' {trainingExecutionEndTime} -> trainingExecutionEndTime) (\s@DescribeModelResponse' {} a -> s {trainingExecutionEndTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | Indicates the time at which the training of the ML model began.
describeModelResponse_trainingExecutionStartTime :: Lens.Lens' DescribeModelResponse (Prelude.Maybe Prelude.UTCTime)
describeModelResponse_trainingExecutionStartTime = Lens.lens (\DescribeModelResponse' {trainingExecutionStartTime} -> trainingExecutionStartTime) (\s@DescribeModelResponse' {} a -> s {trainingExecutionStartTime = a} :: DescribeModelResponse) Prelude.. Lens.mapping Data._Time

-- | The response's http status code.
describeModelResponse_httpStatus :: Lens.Lens' DescribeModelResponse Prelude.Int
describeModelResponse_httpStatus = Lens.lens (\DescribeModelResponse' {httpStatus} -> httpStatus) (\s@DescribeModelResponse' {} a -> s {httpStatus = a} :: DescribeModelResponse)

instance Prelude.NFData DescribeModelResponse where
  rnf DescribeModelResponse' {..} =
    Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf dataPreProcessingConfiguration
      `Prelude.seq` Prelude.rnf datasetArn
      `Prelude.seq` Prelude.rnf datasetName
      `Prelude.seq` Prelude.rnf evaluationDataEndTime
      `Prelude.seq` Prelude.rnf evaluationDataStartTime
      `Prelude.seq` Prelude.rnf failedReason
      `Prelude.seq` Prelude.rnf labelsInputConfiguration
      `Prelude.seq` Prelude.rnf lastUpdatedTime
      `Prelude.seq` Prelude.rnf modelArn
      `Prelude.seq` Prelude.rnf modelMetrics
      `Prelude.seq` Prelude.rnf modelName
      `Prelude.seq` Prelude.rnf offCondition
      `Prelude.seq` Prelude.rnf roleArn
      `Prelude.seq` Prelude.rnf schema
      `Prelude.seq` Prelude.rnf serverSideKmsKeyId
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf trainingDataEndTime
      `Prelude.seq` Prelude.rnf
        trainingDataStartTime
      `Prelude.seq` Prelude.rnf
        trainingExecutionEndTime
      `Prelude.seq` Prelude.rnf
        trainingExecutionStartTime
      `Prelude.seq` Prelude.rnf httpStatus
