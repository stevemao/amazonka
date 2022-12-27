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
-- Module      : Amazonka.MacieV2.CreateSampleFindings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates sample findings.
module Amazonka.MacieV2.CreateSampleFindings
  ( -- * Creating a Request
    CreateSampleFindings (..),
    newCreateSampleFindings,

    -- * Request Lenses
    createSampleFindings_findingTypes,

    -- * Destructuring the Response
    CreateSampleFindingsResponse (..),
    newCreateSampleFindingsResponse,

    -- * Response Lenses
    createSampleFindingsResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.MacieV2.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateSampleFindings' smart constructor.
data CreateSampleFindings = CreateSampleFindings'
  { -- | An array of finding types, one for each type of sample finding to
    -- create. To create a sample of every type of finding that Amazon Macie
    -- supports, don\'t include this array in your request.
    findingTypes :: Prelude.Maybe [FindingType]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSampleFindings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'findingTypes', 'createSampleFindings_findingTypes' - An array of finding types, one for each type of sample finding to
-- create. To create a sample of every type of finding that Amazon Macie
-- supports, don\'t include this array in your request.
newCreateSampleFindings ::
  CreateSampleFindings
newCreateSampleFindings =
  CreateSampleFindings'
    { findingTypes =
        Prelude.Nothing
    }

-- | An array of finding types, one for each type of sample finding to
-- create. To create a sample of every type of finding that Amazon Macie
-- supports, don\'t include this array in your request.
createSampleFindings_findingTypes :: Lens.Lens' CreateSampleFindings (Prelude.Maybe [FindingType])
createSampleFindings_findingTypes = Lens.lens (\CreateSampleFindings' {findingTypes} -> findingTypes) (\s@CreateSampleFindings' {} a -> s {findingTypes = a} :: CreateSampleFindings) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest CreateSampleFindings where
  type
    AWSResponse CreateSampleFindings =
      CreateSampleFindingsResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateSampleFindingsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateSampleFindings where
  hashWithSalt _salt CreateSampleFindings' {..} =
    _salt `Prelude.hashWithSalt` findingTypes

instance Prelude.NFData CreateSampleFindings where
  rnf CreateSampleFindings' {..} =
    Prelude.rnf findingTypes

instance Data.ToHeaders CreateSampleFindings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON CreateSampleFindings where
  toJSON CreateSampleFindings' {..} =
    Data.object
      ( Prelude.catMaybes
          [("findingTypes" Data..=) Prelude.<$> findingTypes]
      )

instance Data.ToPath CreateSampleFindings where
  toPath = Prelude.const "/findings/sample"

instance Data.ToQuery CreateSampleFindings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSampleFindingsResponse' smart constructor.
data CreateSampleFindingsResponse = CreateSampleFindingsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSampleFindingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createSampleFindingsResponse_httpStatus' - The response's http status code.
newCreateSampleFindingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSampleFindingsResponse
newCreateSampleFindingsResponse pHttpStatus_ =
  CreateSampleFindingsResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
createSampleFindingsResponse_httpStatus :: Lens.Lens' CreateSampleFindingsResponse Prelude.Int
createSampleFindingsResponse_httpStatus = Lens.lens (\CreateSampleFindingsResponse' {httpStatus} -> httpStatus) (\s@CreateSampleFindingsResponse' {} a -> s {httpStatus = a} :: CreateSampleFindingsResponse)

instance Prelude.NFData CreateSampleFindingsResponse where
  rnf CreateSampleFindingsResponse' {..} =
    Prelude.rnf httpStatus
