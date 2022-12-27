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
-- Module      : Amazonka.Transcribe.GetVocabulary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the specified custom vocabulary.
--
-- To view the status of the specified custom vocabulary, check the
-- @VocabularyState@ field. If the status is @READY@, your custom
-- vocabulary is available to use. If the status is @FAILED@,
-- @FailureReason@ provides details on why your custom vocabulary failed.
--
-- To get a list of your custom vocabularies, use the operation.
module Amazonka.Transcribe.GetVocabulary
  ( -- * Creating a Request
    GetVocabulary (..),
    newGetVocabulary,

    -- * Request Lenses
    getVocabulary_vocabularyName,

    -- * Destructuring the Response
    GetVocabularyResponse (..),
    newGetVocabularyResponse,

    -- * Response Lenses
    getVocabularyResponse_downloadUri,
    getVocabularyResponse_failureReason,
    getVocabularyResponse_languageCode,
    getVocabularyResponse_lastModifiedTime,
    getVocabularyResponse_vocabularyName,
    getVocabularyResponse_vocabularyState,
    getVocabularyResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.Transcribe.Types

-- | /See:/ 'newGetVocabulary' smart constructor.
data GetVocabulary = GetVocabulary'
  { -- | The name of the custom vocabulary you want information about. Custom
    -- vocabulary names are case sensitive.
    vocabularyName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVocabulary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyName', 'getVocabulary_vocabularyName' - The name of the custom vocabulary you want information about. Custom
-- vocabulary names are case sensitive.
newGetVocabulary ::
  -- | 'vocabularyName'
  Prelude.Text ->
  GetVocabulary
newGetVocabulary pVocabularyName_ =
  GetVocabulary' {vocabularyName = pVocabularyName_}

-- | The name of the custom vocabulary you want information about. Custom
-- vocabulary names are case sensitive.
getVocabulary_vocabularyName :: Lens.Lens' GetVocabulary Prelude.Text
getVocabulary_vocabularyName = Lens.lens (\GetVocabulary' {vocabularyName} -> vocabularyName) (\s@GetVocabulary' {} a -> s {vocabularyName = a} :: GetVocabulary)

instance Core.AWSRequest GetVocabulary where
  type
    AWSResponse GetVocabulary =
      GetVocabularyResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetVocabularyResponse'
            Prelude.<$> (x Data..?> "DownloadUri")
            Prelude.<*> (x Data..?> "FailureReason")
            Prelude.<*> (x Data..?> "LanguageCode")
            Prelude.<*> (x Data..?> "LastModifiedTime")
            Prelude.<*> (x Data..?> "VocabularyName")
            Prelude.<*> (x Data..?> "VocabularyState")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetVocabulary where
  hashWithSalt _salt GetVocabulary' {..} =
    _salt `Prelude.hashWithSalt` vocabularyName

instance Prelude.NFData GetVocabulary where
  rnf GetVocabulary' {..} = Prelude.rnf vocabularyName

instance Data.ToHeaders GetVocabulary where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ("Transcribe.GetVocabulary" :: Prelude.ByteString),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON GetVocabulary where
  toJSON GetVocabulary' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("VocabularyName" Data..= vocabularyName)
          ]
      )

instance Data.ToPath GetVocabulary where
  toPath = Prelude.const "/"

instance Data.ToQuery GetVocabulary where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetVocabularyResponse' smart constructor.
data GetVocabularyResponse = GetVocabularyResponse'
  { -- | The S3 location where the custom vocabulary is stored; use this URI to
    -- view or download the custom vocabulary.
    downloadUri :: Prelude.Maybe Prelude.Text,
    -- | If @VocabularyState@ is @FAILED@, @FailureReason@ contains information
    -- about why the custom vocabulary request failed. See also:
    -- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The language code you selected for your custom vocabulary.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | The date and time the specified custom vocabulary was last modified.
    --
    -- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
    -- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
    -- May 4, 2022.
    lastModifiedTime :: Prelude.Maybe Data.POSIX,
    -- | The name of the custom vocabulary you requested information about.
    vocabularyName :: Prelude.Maybe Prelude.Text,
    -- | The processing state of your custom vocabulary. If the state is @READY@,
    -- you can use the custom vocabulary in a @StartTranscriptionJob@ request.
    vocabularyState :: Prelude.Maybe VocabularyState,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetVocabularyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'downloadUri', 'getVocabularyResponse_downloadUri' - The S3 location where the custom vocabulary is stored; use this URI to
-- view or download the custom vocabulary.
--
-- 'failureReason', 'getVocabularyResponse_failureReason' - If @VocabularyState@ is @FAILED@, @FailureReason@ contains information
-- about why the custom vocabulary request failed. See also:
-- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
--
-- 'languageCode', 'getVocabularyResponse_languageCode' - The language code you selected for your custom vocabulary.
--
-- 'lastModifiedTime', 'getVocabularyResponse_lastModifiedTime' - The date and time the specified custom vocabulary was last modified.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
-- May 4, 2022.
--
-- 'vocabularyName', 'getVocabularyResponse_vocabularyName' - The name of the custom vocabulary you requested information about.
--
-- 'vocabularyState', 'getVocabularyResponse_vocabularyState' - The processing state of your custom vocabulary. If the state is @READY@,
-- you can use the custom vocabulary in a @StartTranscriptionJob@ request.
--
-- 'httpStatus', 'getVocabularyResponse_httpStatus' - The response's http status code.
newGetVocabularyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetVocabularyResponse
newGetVocabularyResponse pHttpStatus_ =
  GetVocabularyResponse'
    { downloadUri =
        Prelude.Nothing,
      failureReason = Prelude.Nothing,
      languageCode = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      vocabularyName = Prelude.Nothing,
      vocabularyState = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The S3 location where the custom vocabulary is stored; use this URI to
-- view or download the custom vocabulary.
getVocabularyResponse_downloadUri :: Lens.Lens' GetVocabularyResponse (Prelude.Maybe Prelude.Text)
getVocabularyResponse_downloadUri = Lens.lens (\GetVocabularyResponse' {downloadUri} -> downloadUri) (\s@GetVocabularyResponse' {} a -> s {downloadUri = a} :: GetVocabularyResponse)

-- | If @VocabularyState@ is @FAILED@, @FailureReason@ contains information
-- about why the custom vocabulary request failed. See also:
-- <https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html Common Errors>.
getVocabularyResponse_failureReason :: Lens.Lens' GetVocabularyResponse (Prelude.Maybe Prelude.Text)
getVocabularyResponse_failureReason = Lens.lens (\GetVocabularyResponse' {failureReason} -> failureReason) (\s@GetVocabularyResponse' {} a -> s {failureReason = a} :: GetVocabularyResponse)

-- | The language code you selected for your custom vocabulary.
getVocabularyResponse_languageCode :: Lens.Lens' GetVocabularyResponse (Prelude.Maybe LanguageCode)
getVocabularyResponse_languageCode = Lens.lens (\GetVocabularyResponse' {languageCode} -> languageCode) (\s@GetVocabularyResponse' {} a -> s {languageCode = a} :: GetVocabularyResponse)

-- | The date and time the specified custom vocabulary was last modified.
--
-- Timestamps are in the format @YYYY-MM-DD\'T\'HH:MM:SS.SSSSSS-UTC@. For
-- example, @2022-05-04T12:32:58.761000-07:00@ represents 12:32 PM UTC-7 on
-- May 4, 2022.
getVocabularyResponse_lastModifiedTime :: Lens.Lens' GetVocabularyResponse (Prelude.Maybe Prelude.UTCTime)
getVocabularyResponse_lastModifiedTime = Lens.lens (\GetVocabularyResponse' {lastModifiedTime} -> lastModifiedTime) (\s@GetVocabularyResponse' {} a -> s {lastModifiedTime = a} :: GetVocabularyResponse) Prelude.. Lens.mapping Data._Time

-- | The name of the custom vocabulary you requested information about.
getVocabularyResponse_vocabularyName :: Lens.Lens' GetVocabularyResponse (Prelude.Maybe Prelude.Text)
getVocabularyResponse_vocabularyName = Lens.lens (\GetVocabularyResponse' {vocabularyName} -> vocabularyName) (\s@GetVocabularyResponse' {} a -> s {vocabularyName = a} :: GetVocabularyResponse)

-- | The processing state of your custom vocabulary. If the state is @READY@,
-- you can use the custom vocabulary in a @StartTranscriptionJob@ request.
getVocabularyResponse_vocabularyState :: Lens.Lens' GetVocabularyResponse (Prelude.Maybe VocabularyState)
getVocabularyResponse_vocabularyState = Lens.lens (\GetVocabularyResponse' {vocabularyState} -> vocabularyState) (\s@GetVocabularyResponse' {} a -> s {vocabularyState = a} :: GetVocabularyResponse)

-- | The response's http status code.
getVocabularyResponse_httpStatus :: Lens.Lens' GetVocabularyResponse Prelude.Int
getVocabularyResponse_httpStatus = Lens.lens (\GetVocabularyResponse' {httpStatus} -> httpStatus) (\s@GetVocabularyResponse' {} a -> s {httpStatus = a} :: GetVocabularyResponse)

instance Prelude.NFData GetVocabularyResponse where
  rnf GetVocabularyResponse' {..} =
    Prelude.rnf downloadUri
      `Prelude.seq` Prelude.rnf failureReason
      `Prelude.seq` Prelude.rnf languageCode
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf vocabularyName
      `Prelude.seq` Prelude.rnf vocabularyState
      `Prelude.seq` Prelude.rnf httpStatus
