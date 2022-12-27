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
-- Module      : Amazonka.IVS.Types.S3DestinationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IVS.Types.S3DestinationConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | A complex type that describes an S3 location where recorded videos will
-- be stored.
--
-- /See:/ 'newS3DestinationConfiguration' smart constructor.
data S3DestinationConfiguration = S3DestinationConfiguration'
  { -- | Location (S3 bucket name) where recorded videos will be stored.
    bucketName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3DestinationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketName', 's3DestinationConfiguration_bucketName' - Location (S3 bucket name) where recorded videos will be stored.
newS3DestinationConfiguration ::
  -- | 'bucketName'
  Prelude.Text ->
  S3DestinationConfiguration
newS3DestinationConfiguration pBucketName_ =
  S3DestinationConfiguration'
    { bucketName =
        pBucketName_
    }

-- | Location (S3 bucket name) where recorded videos will be stored.
s3DestinationConfiguration_bucketName :: Lens.Lens' S3DestinationConfiguration Prelude.Text
s3DestinationConfiguration_bucketName = Lens.lens (\S3DestinationConfiguration' {bucketName} -> bucketName) (\s@S3DestinationConfiguration' {} a -> s {bucketName = a} :: S3DestinationConfiguration)

instance Data.FromJSON S3DestinationConfiguration where
  parseJSON =
    Data.withObject
      "S3DestinationConfiguration"
      ( \x ->
          S3DestinationConfiguration'
            Prelude.<$> (x Data..: "bucketName")
      )

instance Prelude.Hashable S3DestinationConfiguration where
  hashWithSalt _salt S3DestinationConfiguration' {..} =
    _salt `Prelude.hashWithSalt` bucketName

instance Prelude.NFData S3DestinationConfiguration where
  rnf S3DestinationConfiguration' {..} =
    Prelude.rnf bucketName

instance Data.ToJSON S3DestinationConfiguration where
  toJSON S3DestinationConfiguration' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("bucketName" Data..= bucketName)]
      )
