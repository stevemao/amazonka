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
-- Module      : Amazonka.ChimeSdkVoice.ListPhoneNumberOrders
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Undocumented operation.
module Amazonka.ChimeSdkVoice.ListPhoneNumberOrders
  ( -- * Creating a Request
    ListPhoneNumberOrders (..),
    newListPhoneNumberOrders,

    -- * Request Lenses
    listPhoneNumberOrders_maxResults,
    listPhoneNumberOrders_nextToken,

    -- * Destructuring the Response
    ListPhoneNumberOrdersResponse (..),
    newListPhoneNumberOrdersResponse,

    -- * Response Lenses
    listPhoneNumberOrdersResponse_nextToken,
    listPhoneNumberOrdersResponse_phoneNumberOrders,
    listPhoneNumberOrdersResponse_httpStatus,
  )
where

import Amazonka.ChimeSdkVoice.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListPhoneNumberOrders' smart constructor.
data ListPhoneNumberOrders = ListPhoneNumberOrders'
  { maxResults :: Prelude.Maybe Prelude.Natural,
    nextToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumberOrders' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxResults', 'listPhoneNumberOrders_maxResults' - Undocumented member.
--
-- 'nextToken', 'listPhoneNumberOrders_nextToken' - Undocumented member.
newListPhoneNumberOrders ::
  ListPhoneNumberOrders
newListPhoneNumberOrders =
  ListPhoneNumberOrders'
    { maxResults =
        Prelude.Nothing,
      nextToken = Prelude.Nothing
    }

-- | Undocumented member.
listPhoneNumberOrders_maxResults :: Lens.Lens' ListPhoneNumberOrders (Prelude.Maybe Prelude.Natural)
listPhoneNumberOrders_maxResults = Lens.lens (\ListPhoneNumberOrders' {maxResults} -> maxResults) (\s@ListPhoneNumberOrders' {} a -> s {maxResults = a} :: ListPhoneNumberOrders)

-- | Undocumented member.
listPhoneNumberOrders_nextToken :: Lens.Lens' ListPhoneNumberOrders (Prelude.Maybe Prelude.Text)
listPhoneNumberOrders_nextToken = Lens.lens (\ListPhoneNumberOrders' {nextToken} -> nextToken) (\s@ListPhoneNumberOrders' {} a -> s {nextToken = a} :: ListPhoneNumberOrders)

instance Core.AWSRequest ListPhoneNumberOrders where
  type
    AWSResponse ListPhoneNumberOrders =
      ListPhoneNumberOrdersResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPhoneNumberOrdersResponse'
            Prelude.<$> (x Data..?> "NextToken")
            Prelude.<*> ( x Data..?> "PhoneNumberOrders"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPhoneNumberOrders where
  hashWithSalt _salt ListPhoneNumberOrders' {..} =
    _salt `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` nextToken

instance Prelude.NFData ListPhoneNumberOrders where
  rnf ListPhoneNumberOrders' {..} =
    Prelude.rnf maxResults
      `Prelude.seq` Prelude.rnf nextToken

instance Data.ToHeaders ListPhoneNumberOrders where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath ListPhoneNumberOrders where
  toPath = Prelude.const "/phone-number-orders"

instance Data.ToQuery ListPhoneNumberOrders where
  toQuery ListPhoneNumberOrders' {..} =
    Prelude.mconcat
      [ "max-results" Data.=: maxResults,
        "next-token" Data.=: nextToken
      ]

-- | /See:/ 'newListPhoneNumberOrdersResponse' smart constructor.
data ListPhoneNumberOrdersResponse = ListPhoneNumberOrdersResponse'
  { nextToken :: Prelude.Maybe Prelude.Text,
    phoneNumberOrders :: Prelude.Maybe [PhoneNumberOrder],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumberOrdersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPhoneNumberOrdersResponse_nextToken' - Undocumented member.
--
-- 'phoneNumberOrders', 'listPhoneNumberOrdersResponse_phoneNumberOrders' - Undocumented member.
--
-- 'httpStatus', 'listPhoneNumberOrdersResponse_httpStatus' - The response's http status code.
newListPhoneNumberOrdersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPhoneNumberOrdersResponse
newListPhoneNumberOrdersResponse pHttpStatus_ =
  ListPhoneNumberOrdersResponse'
    { nextToken =
        Prelude.Nothing,
      phoneNumberOrders = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listPhoneNumberOrdersResponse_nextToken :: Lens.Lens' ListPhoneNumberOrdersResponse (Prelude.Maybe Prelude.Text)
listPhoneNumberOrdersResponse_nextToken = Lens.lens (\ListPhoneNumberOrdersResponse' {nextToken} -> nextToken) (\s@ListPhoneNumberOrdersResponse' {} a -> s {nextToken = a} :: ListPhoneNumberOrdersResponse)

-- | Undocumented member.
listPhoneNumberOrdersResponse_phoneNumberOrders :: Lens.Lens' ListPhoneNumberOrdersResponse (Prelude.Maybe [PhoneNumberOrder])
listPhoneNumberOrdersResponse_phoneNumberOrders = Lens.lens (\ListPhoneNumberOrdersResponse' {phoneNumberOrders} -> phoneNumberOrders) (\s@ListPhoneNumberOrdersResponse' {} a -> s {phoneNumberOrders = a} :: ListPhoneNumberOrdersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listPhoneNumberOrdersResponse_httpStatus :: Lens.Lens' ListPhoneNumberOrdersResponse Prelude.Int
listPhoneNumberOrdersResponse_httpStatus = Lens.lens (\ListPhoneNumberOrdersResponse' {httpStatus} -> httpStatus) (\s@ListPhoneNumberOrdersResponse' {} a -> s {httpStatus = a} :: ListPhoneNumberOrdersResponse)

instance Prelude.NFData ListPhoneNumberOrdersResponse where
  rnf ListPhoneNumberOrdersResponse' {..} =
    Prelude.rnf nextToken
      `Prelude.seq` Prelude.rnf phoneNumberOrders
      `Prelude.seq` Prelude.rnf httpStatus
