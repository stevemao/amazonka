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
-- Module      : Amazonka.Transcribe.Types.MedicalTranscript
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Transcribe.Types.MedicalTranscript where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Provides you with the Amazon S3 URI you can use to access your
-- transcript.
--
-- /See:/ 'newMedicalTranscript' smart constructor.
data MedicalTranscript = MedicalTranscript'
  { -- | The Amazon S3 location of your transcript. You can use this URI to
    -- access or download your transcript.
    --
    -- Note that this is the Amazon S3 location you specified in your request
    -- using the @OutputBucketName@ parameter.
    transcriptFileUri :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MedicalTranscript' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transcriptFileUri', 'medicalTranscript_transcriptFileUri' - The Amazon S3 location of your transcript. You can use this URI to
-- access or download your transcript.
--
-- Note that this is the Amazon S3 location you specified in your request
-- using the @OutputBucketName@ parameter.
newMedicalTranscript ::
  MedicalTranscript
newMedicalTranscript =
  MedicalTranscript'
    { transcriptFileUri =
        Prelude.Nothing
    }

-- | The Amazon S3 location of your transcript. You can use this URI to
-- access or download your transcript.
--
-- Note that this is the Amazon S3 location you specified in your request
-- using the @OutputBucketName@ parameter.
medicalTranscript_transcriptFileUri :: Lens.Lens' MedicalTranscript (Prelude.Maybe Prelude.Text)
medicalTranscript_transcriptFileUri = Lens.lens (\MedicalTranscript' {transcriptFileUri} -> transcriptFileUri) (\s@MedicalTranscript' {} a -> s {transcriptFileUri = a} :: MedicalTranscript)

instance Data.FromJSON MedicalTranscript where
  parseJSON =
    Data.withObject
      "MedicalTranscript"
      ( \x ->
          MedicalTranscript'
            Prelude.<$> (x Data..:? "TranscriptFileUri")
      )

instance Prelude.Hashable MedicalTranscript where
  hashWithSalt _salt MedicalTranscript' {..} =
    _salt `Prelude.hashWithSalt` transcriptFileUri

instance Prelude.NFData MedicalTranscript where
  rnf MedicalTranscript' {..} =
    Prelude.rnf transcriptFileUri
