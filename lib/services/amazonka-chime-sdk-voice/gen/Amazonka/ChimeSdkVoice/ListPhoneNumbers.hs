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
-- Module      : Amazonka.ChimeSdkVoice.ListPhoneNumbers
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Undocumented operation.
module Amazonka.ChimeSdkVoice.ListPhoneNumbers
  ( -- * Creating a Request
    ListPhoneNumbers (..),
    newListPhoneNumbers,

    -- * Request Lenses
    listPhoneNumbers_filterName,
    listPhoneNumbers_filterValue,
    listPhoneNumbers_maxResults,
    listPhoneNumbers_nextToken,
    listPhoneNumbers_productType,
    listPhoneNumbers_status,

    -- * Destructuring the Response
    ListPhoneNumbersResponse (..),
    newListPhoneNumbersResponse,

    -- * Response Lenses
    listPhoneNumbersResponse_nextToken,
    listPhoneNumbersResponse_phoneNumbers,
    listPhoneNumbersResponse_httpStatus,
  )
where

import Amazonka.ChimeSdkVoice.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListPhoneNumbers' smart constructor.
data ListPhoneNumbers = ListPhoneNumbers'
  { filterName :: Prelude.Maybe PhoneNumberAssociationName,
    filterValue :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Natural,
    nextToken :: Prelude.Maybe Prelude.Text,
    productType :: Prelude.Maybe PhoneNumberProductType,
    status :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumbers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filterName', 'listPhoneNumbers_filterName' - Undocumented member.
--
-- 'filterValue', 'listPhoneNumbers_filterValue' - Undocumented member.
--
-- 'maxResults', 'listPhoneNumbers_maxResults' - Undocumented member.
--
-- 'nextToken', 'listPhoneNumbers_nextToken' - Undocumented member.
--
-- 'productType', 'listPhoneNumbers_productType' - Undocumented member.
--
-- 'status', 'listPhoneNumbers_status' - Undocumented member.
newListPhoneNumbers ::
  ListPhoneNumbers
newListPhoneNumbers =
  ListPhoneNumbers'
    { filterName = Prelude.Nothing,
      filterValue = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      productType = Prelude.Nothing,
      status = Prelude.Nothing
    }

-- | Undocumented member.
listPhoneNumbers_filterName :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe PhoneNumberAssociationName)
listPhoneNumbers_filterName = Lens.lens (\ListPhoneNumbers' {filterName} -> filterName) (\s@ListPhoneNumbers' {} a -> s {filterName = a} :: ListPhoneNumbers)

-- | Undocumented member.
listPhoneNumbers_filterValue :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Text)
listPhoneNumbers_filterValue = Lens.lens (\ListPhoneNumbers' {filterValue} -> filterValue) (\s@ListPhoneNumbers' {} a -> s {filterValue = a} :: ListPhoneNumbers)

-- | Undocumented member.
listPhoneNumbers_maxResults :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Natural)
listPhoneNumbers_maxResults = Lens.lens (\ListPhoneNumbers' {maxResults} -> maxResults) (\s@ListPhoneNumbers' {} a -> s {maxResults = a} :: ListPhoneNumbers)

-- | Undocumented member.
listPhoneNumbers_nextToken :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Text)
listPhoneNumbers_nextToken = Lens.lens (\ListPhoneNumbers' {nextToken} -> nextToken) (\s@ListPhoneNumbers' {} a -> s {nextToken = a} :: ListPhoneNumbers)

-- | Undocumented member.
listPhoneNumbers_productType :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe PhoneNumberProductType)
listPhoneNumbers_productType = Lens.lens (\ListPhoneNumbers' {productType} -> productType) (\s@ListPhoneNumbers' {} a -> s {productType = a} :: ListPhoneNumbers)

-- | Undocumented member.
listPhoneNumbers_status :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Text)
listPhoneNumbers_status = Lens.lens (\ListPhoneNumbers' {status} -> status) (\s@ListPhoneNumbers' {} a -> s {status = a} :: ListPhoneNumbers)

instance Core.AWSRequest ListPhoneNumbers where
  type
    AWSResponse ListPhoneNumbers =
      ListPhoneNumbersResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPhoneNumbersResponse'
            Prelude.<$> (x Data..?> "NextToken")
            Prelude.<*> (x Data..?> "PhoneNumbers" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPhoneNumbers where
  hashWithSalt _salt ListPhoneNumbers' {..} =
    _salt `Prelude.hashWithSalt` filterName
      `Prelude.hashWithSalt` filterValue
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` productType
      `Prelude.hashWithSalt` status

instance Prelude.NFData ListPhoneNumbers where
  rnf ListPhoneNumbers' {..} =
    Prelude.rnf filterName
      `Prelude.seq` Prelude.rnf filterValue
      `Prelude.seq` Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf productType
      `Prelude.seq` Prelude.rnf status

instance Data.ToHeaders ListPhoneNumbers where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath ListPhoneNumbers where
  toPath = Prelude.const "/phone-numbers"

instance Data.ToQuery ListPhoneNumbers where
  toQuery ListPhoneNumbers' {..} =
    Prelude.mconcat
      [ "filter-name" Data.=: filterName,
        "filter-value" Data.=: filterValue,
        "max-results" Data.=: maxResults,
        "next-token" Data.=: nextToken,
        "product-type" Data.=: productType,
        "status" Data.=: status
      ]

-- | /See:/ 'newListPhoneNumbersResponse' smart constructor.
data ListPhoneNumbersResponse = ListPhoneNumbersResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    phoneNumbers :: Prelude.Maybe [PhoneNumber],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumbersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPhoneNumbersResponse_nextToken' - Undocumented member.
--
-- 'phoneNumbers', 'listPhoneNumbersResponse_phoneNumbers' - Undocumented member.
--
-- 'httpStatus', 'listPhoneNumbersResponse_httpStatus' - The response's http status code.
newListPhoneNumbersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPhoneNumbersResponse
newListPhoneNumbersResponse pHttpStatus_ =
  ListPhoneNumbersResponse'
    { nextToken =
        Prelude.Nothing,
      phoneNumbers = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listPhoneNumbersResponse_nextToken :: Lens.Lens' ListPhoneNumbersResponse (Prelude.Maybe Prelude.Text)
listPhoneNumbersResponse_nextToken = Lens.lens (\ListPhoneNumbersResponse' {nextToken} -> nextToken) (\s@ListPhoneNumbersResponse' {} a -> s {nextToken = a} :: ListPhoneNumbersResponse)

-- | Undocumented member.
listPhoneNumbersResponse_phoneNumbers :: Lens.Lens' ListPhoneNumbersResponse (Prelude.Maybe [PhoneNumber])
listPhoneNumbersResponse_phoneNumbers = Lens.lens (\ListPhoneNumbersResponse' {phoneNumbers} -> phoneNumbers) (\s@ListPhoneNumbersResponse' {} a -> s {phoneNumbers = a} :: ListPhoneNumbersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPhoneNumbersResponse_httpStatus :: Lens.Lens' ListPhoneNumbersResponse Prelude.Int
listPhoneNumbersResponse_httpStatus = Lens.lens (\ListPhoneNumbersResponse' {httpStatus} -> httpStatus) (\s@ListPhoneNumbersResponse' {} a -> s {httpStatus = a} :: ListPhoneNumbersResponse)

instance Prelude.NFData ListPhoneNumbersResponse where
  rnf ListPhoneNumbersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf phoneNumbers
      `Prelude.seq` Prelude.rnf httpStatus
