{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Firehose.Types.SplunkDestinationDescription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Firehose.Types.SplunkDestinationDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Firehose.Types.CloudWatchLoggingOptions
import Amazonka.Firehose.Types.HECEndpointType
import Amazonka.Firehose.Types.ProcessingConfiguration
import Amazonka.Firehose.Types.S3DestinationDescription
import Amazonka.Firehose.Types.SplunkRetryOptions
import Amazonka.Firehose.Types.SplunkS3BackupMode
import qualified Amazonka.Prelude as Prelude

-- | Describes a destination in Splunk.
--
-- /See:/ 'newSplunkDestinationDescription' smart constructor.
data SplunkDestinationDescription = SplunkDestinationDescription'
  { -- | The Amazon CloudWatch logging options for your delivery stream.
    cloudWatchLoggingOptions :: Prelude.Maybe CloudWatchLoggingOptions,
    -- | The amount of time that Kinesis Data Firehose waits to receive an
    -- acknowledgment from Splunk after it sends it data. At the end of the
    -- timeout period, Kinesis Data Firehose either tries to send the data
    -- again or considers it an error, based on your retry settings.
    hECAcknowledgmentTimeoutInSeconds :: Prelude.Maybe Prelude.Natural,
    -- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
    -- sends your data.
    hECEndpoint :: Prelude.Maybe Prelude.Text,
    -- | This type can be either \"Raw\" or \"Event.\"
    hECEndpointType :: Prelude.Maybe HECEndpointType,
    -- | A GUID you obtain from your Splunk cluster when you create a new HEC
    -- endpoint.
    hECToken :: Prelude.Maybe Prelude.Text,
    -- | The data processing configuration.
    processingConfiguration :: Prelude.Maybe ProcessingConfiguration,
    -- | The retry behavior in case Kinesis Data Firehose is unable to deliver
    -- data to Splunk or if it doesn\'t receive an acknowledgment of receipt
    -- from Splunk.
    retryOptions :: Prelude.Maybe SplunkRetryOptions,
    -- | Defines how documents should be delivered to Amazon S3. When set to
    -- @FailedDocumentsOnly@, Kinesis Data Firehose writes any data that could
    -- not be indexed to the configured Amazon S3 destination. When set to
    -- @AllDocuments@, Kinesis Data Firehose delivers all incoming records to
    -- Amazon S3, and also writes failed documents to Amazon S3. Default value
    -- is @FailedDocumentsOnly@.
    s3BackupMode :: Prelude.Maybe SplunkS3BackupMode,
    -- | The Amazon S3 destination.>
    s3DestinationDescription :: Prelude.Maybe S3DestinationDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SplunkDestinationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchLoggingOptions', 'splunkDestinationDescription_cloudWatchLoggingOptions' - The Amazon CloudWatch logging options for your delivery stream.
--
-- 'hECAcknowledgmentTimeoutInSeconds', 'splunkDestinationDescription_hECAcknowledgmentTimeoutInSeconds' - The amount of time that Kinesis Data Firehose waits to receive an
-- acknowledgment from Splunk after it sends it data. At the end of the
-- timeout period, Kinesis Data Firehose either tries to send the data
-- again or considers it an error, based on your retry settings.
--
-- 'hECEndpoint', 'splunkDestinationDescription_hECEndpoint' - The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
-- sends your data.
--
-- 'hECEndpointType', 'splunkDestinationDescription_hECEndpointType' - This type can be either \"Raw\" or \"Event.\"
--
-- 'hECToken', 'splunkDestinationDescription_hECToken' - A GUID you obtain from your Splunk cluster when you create a new HEC
-- endpoint.
--
-- 'processingConfiguration', 'splunkDestinationDescription_processingConfiguration' - The data processing configuration.
--
-- 'retryOptions', 'splunkDestinationDescription_retryOptions' - The retry behavior in case Kinesis Data Firehose is unable to deliver
-- data to Splunk or if it doesn\'t receive an acknowledgment of receipt
-- from Splunk.
--
-- 's3BackupMode', 'splunkDestinationDescription_s3BackupMode' - Defines how documents should be delivered to Amazon S3. When set to
-- @FailedDocumentsOnly@, Kinesis Data Firehose writes any data that could
-- not be indexed to the configured Amazon S3 destination. When set to
-- @AllDocuments@, Kinesis Data Firehose delivers all incoming records to
-- Amazon S3, and also writes failed documents to Amazon S3. Default value
-- is @FailedDocumentsOnly@.
--
-- 's3DestinationDescription', 'splunkDestinationDescription_s3DestinationDescription' - The Amazon S3 destination.>
newSplunkDestinationDescription ::
  SplunkDestinationDescription
newSplunkDestinationDescription =
  SplunkDestinationDescription'
    { cloudWatchLoggingOptions =
        Prelude.Nothing,
      hECAcknowledgmentTimeoutInSeconds =
        Prelude.Nothing,
      hECEndpoint = Prelude.Nothing,
      hECEndpointType = Prelude.Nothing,
      hECToken = Prelude.Nothing,
      processingConfiguration = Prelude.Nothing,
      retryOptions = Prelude.Nothing,
      s3BackupMode = Prelude.Nothing,
      s3DestinationDescription = Prelude.Nothing
    }

-- | The Amazon CloudWatch logging options for your delivery stream.
splunkDestinationDescription_cloudWatchLoggingOptions :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe CloudWatchLoggingOptions)
splunkDestinationDescription_cloudWatchLoggingOptions = Lens.lens (\SplunkDestinationDescription' {cloudWatchLoggingOptions} -> cloudWatchLoggingOptions) (\s@SplunkDestinationDescription' {} a -> s {cloudWatchLoggingOptions = a} :: SplunkDestinationDescription)

-- | The amount of time that Kinesis Data Firehose waits to receive an
-- acknowledgment from Splunk after it sends it data. At the end of the
-- timeout period, Kinesis Data Firehose either tries to send the data
-- again or considers it an error, based on your retry settings.
splunkDestinationDescription_hECAcknowledgmentTimeoutInSeconds :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe Prelude.Natural)
splunkDestinationDescription_hECAcknowledgmentTimeoutInSeconds = Lens.lens (\SplunkDestinationDescription' {hECAcknowledgmentTimeoutInSeconds} -> hECAcknowledgmentTimeoutInSeconds) (\s@SplunkDestinationDescription' {} a -> s {hECAcknowledgmentTimeoutInSeconds = a} :: SplunkDestinationDescription)

-- | The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
-- sends your data.
splunkDestinationDescription_hECEndpoint :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe Prelude.Text)
splunkDestinationDescription_hECEndpoint = Lens.lens (\SplunkDestinationDescription' {hECEndpoint} -> hECEndpoint) (\s@SplunkDestinationDescription' {} a -> s {hECEndpoint = a} :: SplunkDestinationDescription)

-- | This type can be either \"Raw\" or \"Event.\"
splunkDestinationDescription_hECEndpointType :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe HECEndpointType)
splunkDestinationDescription_hECEndpointType = Lens.lens (\SplunkDestinationDescription' {hECEndpointType} -> hECEndpointType) (\s@SplunkDestinationDescription' {} a -> s {hECEndpointType = a} :: SplunkDestinationDescription)

-- | A GUID you obtain from your Splunk cluster when you create a new HEC
-- endpoint.
splunkDestinationDescription_hECToken :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe Prelude.Text)
splunkDestinationDescription_hECToken = Lens.lens (\SplunkDestinationDescription' {hECToken} -> hECToken) (\s@SplunkDestinationDescription' {} a -> s {hECToken = a} :: SplunkDestinationDescription)

-- | The data processing configuration.
splunkDestinationDescription_processingConfiguration :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe ProcessingConfiguration)
splunkDestinationDescription_processingConfiguration = Lens.lens (\SplunkDestinationDescription' {processingConfiguration} -> processingConfiguration) (\s@SplunkDestinationDescription' {} a -> s {processingConfiguration = a} :: SplunkDestinationDescription)

-- | The retry behavior in case Kinesis Data Firehose is unable to deliver
-- data to Splunk or if it doesn\'t receive an acknowledgment of receipt
-- from Splunk.
splunkDestinationDescription_retryOptions :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe SplunkRetryOptions)
splunkDestinationDescription_retryOptions = Lens.lens (\SplunkDestinationDescription' {retryOptions} -> retryOptions) (\s@SplunkDestinationDescription' {} a -> s {retryOptions = a} :: SplunkDestinationDescription)

-- | Defines how documents should be delivered to Amazon S3. When set to
-- @FailedDocumentsOnly@, Kinesis Data Firehose writes any data that could
-- not be indexed to the configured Amazon S3 destination. When set to
-- @AllDocuments@, Kinesis Data Firehose delivers all incoming records to
-- Amazon S3, and also writes failed documents to Amazon S3. Default value
-- is @FailedDocumentsOnly@.
splunkDestinationDescription_s3BackupMode :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe SplunkS3BackupMode)
splunkDestinationDescription_s3BackupMode = Lens.lens (\SplunkDestinationDescription' {s3BackupMode} -> s3BackupMode) (\s@SplunkDestinationDescription' {} a -> s {s3BackupMode = a} :: SplunkDestinationDescription)

-- | The Amazon S3 destination.>
splunkDestinationDescription_s3DestinationDescription :: Lens.Lens' SplunkDestinationDescription (Prelude.Maybe S3DestinationDescription)
splunkDestinationDescription_s3DestinationDescription = Lens.lens (\SplunkDestinationDescription' {s3DestinationDescription} -> s3DestinationDescription) (\s@SplunkDestinationDescription' {} a -> s {s3DestinationDescription = a} :: SplunkDestinationDescription)

instance Data.FromJSON SplunkDestinationDescription where
  parseJSON =
    Data.withObject
      "SplunkDestinationDescription"
      ( \x ->
          SplunkDestinationDescription'
            Prelude.<$> (x Data..:? "CloudWatchLoggingOptions")
            Prelude.<*> (x Data..:? "HECAcknowledgmentTimeoutInSeconds")
            Prelude.<*> (x Data..:? "HECEndpoint")
            Prelude.<*> (x Data..:? "HECEndpointType")
            Prelude.<*> (x Data..:? "HECToken")
            Prelude.<*> (x Data..:? "ProcessingConfiguration")
            Prelude.<*> (x Data..:? "RetryOptions")
            Prelude.<*> (x Data..:? "S3BackupMode")
            Prelude.<*> (x Data..:? "S3DestinationDescription")
      )

instance
  Prelude.Hashable
    SplunkDestinationDescription
  where
  hashWithSalt _salt SplunkDestinationDescription' {..} =
    _salt
      `Prelude.hashWithSalt` cloudWatchLoggingOptions
      `Prelude.hashWithSalt` hECAcknowledgmentTimeoutInSeconds
      `Prelude.hashWithSalt` hECEndpoint
      `Prelude.hashWithSalt` hECEndpointType
      `Prelude.hashWithSalt` hECToken
      `Prelude.hashWithSalt` processingConfiguration
      `Prelude.hashWithSalt` retryOptions
      `Prelude.hashWithSalt` s3BackupMode
      `Prelude.hashWithSalt` s3DestinationDescription

instance Prelude.NFData SplunkDestinationDescription where
  rnf SplunkDestinationDescription' {..} =
    Prelude.rnf cloudWatchLoggingOptions
      `Prelude.seq` Prelude.rnf hECAcknowledgmentTimeoutInSeconds
      `Prelude.seq` Prelude.rnf hECEndpoint
      `Prelude.seq` Prelude.rnf hECEndpointType
      `Prelude.seq` Prelude.rnf hECToken
      `Prelude.seq` Prelude.rnf processingConfiguration
      `Prelude.seq` Prelude.rnf retryOptions
      `Prelude.seq` Prelude.rnf s3BackupMode
      `Prelude.seq` Prelude.rnf s3DestinationDescription
