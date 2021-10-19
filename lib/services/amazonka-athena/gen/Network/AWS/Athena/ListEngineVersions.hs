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
-- Module      : Network.AWS.Athena.ListEngineVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of engine versions that are available to choose from,
-- including the Auto option.
module Network.AWS.Athena.ListEngineVersions
  ( -- * Creating a Request
    ListEngineVersions (..),
    newListEngineVersions,

    -- * Request Lenses
    listEngineVersions_nextToken,
    listEngineVersions_maxResults,

    -- * Destructuring the Response
    ListEngineVersionsResponse (..),
    newListEngineVersionsResponse,

    -- * Response Lenses
    listEngineVersionsResponse_nextToken,
    listEngineVersionsResponse_engineVersions,
    listEngineVersionsResponse_httpStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListEngineVersions' smart constructor.
data ListEngineVersions = ListEngineVersions'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of engine versions to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEngineVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEngineVersions_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'maxResults', 'listEngineVersions_maxResults' - The maximum number of engine versions to return in this request.
newListEngineVersions ::
  ListEngineVersions
newListEngineVersions =
  ListEngineVersions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listEngineVersions_nextToken :: Lens.Lens' ListEngineVersions (Prelude.Maybe Prelude.Text)
listEngineVersions_nextToken = Lens.lens (\ListEngineVersions' {nextToken} -> nextToken) (\s@ListEngineVersions' {} a -> s {nextToken = a} :: ListEngineVersions)

-- | The maximum number of engine versions to return in this request.
listEngineVersions_maxResults :: Lens.Lens' ListEngineVersions (Prelude.Maybe Prelude.Natural)
listEngineVersions_maxResults = Lens.lens (\ListEngineVersions' {maxResults} -> maxResults) (\s@ListEngineVersions' {} a -> s {maxResults = a} :: ListEngineVersions)

instance Core.AWSRequest ListEngineVersions where
  type
    AWSResponse ListEngineVersions =
      ListEngineVersionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEngineVersionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "EngineVersions" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListEngineVersions

instance Prelude.NFData ListEngineVersions

instance Core.ToHeaders ListEngineVersions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonAthena.ListEngineVersions" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListEngineVersions where
  toJSON ListEngineVersions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListEngineVersions where
  toPath = Prelude.const "/"

instance Core.ToQuery ListEngineVersions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListEngineVersionsResponse' smart constructor.
data ListEngineVersionsResponse = ListEngineVersionsResponse'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of engine versions that are available to choose from.
    engineVersions :: Prelude.Maybe [EngineVersion],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEngineVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEngineVersionsResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'engineVersions', 'listEngineVersionsResponse_engineVersions' - A list of engine versions that are available to choose from.
--
-- 'httpStatus', 'listEngineVersionsResponse_httpStatus' - The response's http status code.
newListEngineVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEngineVersionsResponse
newListEngineVersionsResponse pHttpStatus_ =
  ListEngineVersionsResponse'
    { nextToken =
        Prelude.Nothing,
      engineVersions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listEngineVersionsResponse_nextToken :: Lens.Lens' ListEngineVersionsResponse (Prelude.Maybe Prelude.Text)
listEngineVersionsResponse_nextToken = Lens.lens (\ListEngineVersionsResponse' {nextToken} -> nextToken) (\s@ListEngineVersionsResponse' {} a -> s {nextToken = a} :: ListEngineVersionsResponse)

-- | A list of engine versions that are available to choose from.
listEngineVersionsResponse_engineVersions :: Lens.Lens' ListEngineVersionsResponse (Prelude.Maybe [EngineVersion])
listEngineVersionsResponse_engineVersions = Lens.lens (\ListEngineVersionsResponse' {engineVersions} -> engineVersions) (\s@ListEngineVersionsResponse' {} a -> s {engineVersions = a} :: ListEngineVersionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listEngineVersionsResponse_httpStatus :: Lens.Lens' ListEngineVersionsResponse Prelude.Int
listEngineVersionsResponse_httpStatus = Lens.lens (\ListEngineVersionsResponse' {httpStatus} -> httpStatus) (\s@ListEngineVersionsResponse' {} a -> s {httpStatus = a} :: ListEngineVersionsResponse)

instance Prelude.NFData ListEngineVersionsResponse
