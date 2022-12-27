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
-- Module      : Amazonka.Comprehend.Types.DocumentClassifierOutputDataConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Comprehend.Types.DocumentClassifierOutputDataConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Provides output results configuration parameters for custom classifier
-- jobs.
--
-- /See:/ 'newDocumentClassifierOutputDataConfig' smart constructor.
data DocumentClassifierOutputDataConfig = DocumentClassifierOutputDataConfig'
  { -- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    -- uses to encrypt the output results from an analysis job. The KmsKeyId
    -- can be one of the following formats:
    --
    -- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
    --
    -- -   Amazon Resource Name (ARN) of a KMS Key:
    --     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
    --
    -- -   KMS Key Alias: @\"alias\/ExampleAlias\"@
    --
    -- -   ARN of a KMS Key Alias:
    --     @\"arn:aws:kms:us-west-2:111122223333:alias\/ExampleAlias\"@
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | When you use the @OutputDataConfig@ object while creating a custom
    -- classifier, you specify the Amazon S3 location where you want to write
    -- the confusion matrix. The URI must be in the same region as the API
    -- endpoint that you are calling. The location is used as the prefix for
    -- the actual location of this output file.
    --
    -- When the custom classifier job is finished, the service creates the
    -- output file in a directory specific to the job. The @S3Uri@ field
    -- contains the location of the output file, called @output.tar.gz@. It is
    -- a compressed archive that contains the confusion matrix.
    s3Uri :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DocumentClassifierOutputDataConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyId', 'documentClassifierOutputDataConfig_kmsKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt the output results from an analysis job. The KmsKeyId
-- can be one of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   KMS Key Alias: @\"alias\/ExampleAlias\"@
--
-- -   ARN of a KMS Key Alias:
--     @\"arn:aws:kms:us-west-2:111122223333:alias\/ExampleAlias\"@
--
-- 's3Uri', 'documentClassifierOutputDataConfig_s3Uri' - When you use the @OutputDataConfig@ object while creating a custom
-- classifier, you specify the Amazon S3 location where you want to write
-- the confusion matrix. The URI must be in the same region as the API
-- endpoint that you are calling. The location is used as the prefix for
-- the actual location of this output file.
--
-- When the custom classifier job is finished, the service creates the
-- output file in a directory specific to the job. The @S3Uri@ field
-- contains the location of the output file, called @output.tar.gz@. It is
-- a compressed archive that contains the confusion matrix.
newDocumentClassifierOutputDataConfig ::
  DocumentClassifierOutputDataConfig
newDocumentClassifierOutputDataConfig =
  DocumentClassifierOutputDataConfig'
    { kmsKeyId =
        Prelude.Nothing,
      s3Uri = Prelude.Nothing
    }

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt the output results from an analysis job. The KmsKeyId
-- can be one of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   KMS Key Alias: @\"alias\/ExampleAlias\"@
--
-- -   ARN of a KMS Key Alias:
--     @\"arn:aws:kms:us-west-2:111122223333:alias\/ExampleAlias\"@
documentClassifierOutputDataConfig_kmsKeyId :: Lens.Lens' DocumentClassifierOutputDataConfig (Prelude.Maybe Prelude.Text)
documentClassifierOutputDataConfig_kmsKeyId = Lens.lens (\DocumentClassifierOutputDataConfig' {kmsKeyId} -> kmsKeyId) (\s@DocumentClassifierOutputDataConfig' {} a -> s {kmsKeyId = a} :: DocumentClassifierOutputDataConfig)

-- | When you use the @OutputDataConfig@ object while creating a custom
-- classifier, you specify the Amazon S3 location where you want to write
-- the confusion matrix. The URI must be in the same region as the API
-- endpoint that you are calling. The location is used as the prefix for
-- the actual location of this output file.
--
-- When the custom classifier job is finished, the service creates the
-- output file in a directory specific to the job. The @S3Uri@ field
-- contains the location of the output file, called @output.tar.gz@. It is
-- a compressed archive that contains the confusion matrix.
documentClassifierOutputDataConfig_s3Uri :: Lens.Lens' DocumentClassifierOutputDataConfig (Prelude.Maybe Prelude.Text)
documentClassifierOutputDataConfig_s3Uri = Lens.lens (\DocumentClassifierOutputDataConfig' {s3Uri} -> s3Uri) (\s@DocumentClassifierOutputDataConfig' {} a -> s {s3Uri = a} :: DocumentClassifierOutputDataConfig)

instance
  Data.FromJSON
    DocumentClassifierOutputDataConfig
  where
  parseJSON =
    Data.withObject
      "DocumentClassifierOutputDataConfig"
      ( \x ->
          DocumentClassifierOutputDataConfig'
            Prelude.<$> (x Data..:? "KmsKeyId")
            Prelude.<*> (x Data..:? "S3Uri")
      )

instance
  Prelude.Hashable
    DocumentClassifierOutputDataConfig
  where
  hashWithSalt
    _salt
    DocumentClassifierOutputDataConfig' {..} =
      _salt `Prelude.hashWithSalt` kmsKeyId
        `Prelude.hashWithSalt` s3Uri

instance
  Prelude.NFData
    DocumentClassifierOutputDataConfig
  where
  rnf DocumentClassifierOutputDataConfig' {..} =
    Prelude.rnf kmsKeyId
      `Prelude.seq` Prelude.rnf s3Uri

instance
  Data.ToJSON
    DocumentClassifierOutputDataConfig
  where
  toJSON DocumentClassifierOutputDataConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("KmsKeyId" Data..=) Prelude.<$> kmsKeyId,
            ("S3Uri" Data..=) Prelude.<$> s3Uri
          ]
      )
