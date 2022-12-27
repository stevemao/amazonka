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
-- Module      : Amazonka.AlexaBusiness.DisassociateContactFromAddressBook
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates a contact from a given address book.
module Amazonka.AlexaBusiness.DisassociateContactFromAddressBook
  ( -- * Creating a Request
    DisassociateContactFromAddressBook (..),
    newDisassociateContactFromAddressBook,

    -- * Request Lenses
    disassociateContactFromAddressBook_contactArn,
    disassociateContactFromAddressBook_addressBookArn,

    -- * Destructuring the Response
    DisassociateContactFromAddressBookResponse (..),
    newDisassociateContactFromAddressBookResponse,

    -- * Response Lenses
    disassociateContactFromAddressBookResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDisassociateContactFromAddressBook' smart constructor.
data DisassociateContactFromAddressBook = DisassociateContactFromAddressBook'
  { -- | The ARN of the contact to disassociate from an address book.
    contactArn :: Prelude.Text,
    -- | The ARN of the address from which to disassociate the contact.
    addressBookArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateContactFromAddressBook' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactArn', 'disassociateContactFromAddressBook_contactArn' - The ARN of the contact to disassociate from an address book.
--
-- 'addressBookArn', 'disassociateContactFromAddressBook_addressBookArn' - The ARN of the address from which to disassociate the contact.
newDisassociateContactFromAddressBook ::
  -- | 'contactArn'
  Prelude.Text ->
  -- | 'addressBookArn'
  Prelude.Text ->
  DisassociateContactFromAddressBook
newDisassociateContactFromAddressBook
  pContactArn_
  pAddressBookArn_ =
    DisassociateContactFromAddressBook'
      { contactArn =
          pContactArn_,
        addressBookArn = pAddressBookArn_
      }

-- | The ARN of the contact to disassociate from an address book.
disassociateContactFromAddressBook_contactArn :: Lens.Lens' DisassociateContactFromAddressBook Prelude.Text
disassociateContactFromAddressBook_contactArn = Lens.lens (\DisassociateContactFromAddressBook' {contactArn} -> contactArn) (\s@DisassociateContactFromAddressBook' {} a -> s {contactArn = a} :: DisassociateContactFromAddressBook)

-- | The ARN of the address from which to disassociate the contact.
disassociateContactFromAddressBook_addressBookArn :: Lens.Lens' DisassociateContactFromAddressBook Prelude.Text
disassociateContactFromAddressBook_addressBookArn = Lens.lens (\DisassociateContactFromAddressBook' {addressBookArn} -> addressBookArn) (\s@DisassociateContactFromAddressBook' {} a -> s {addressBookArn = a} :: DisassociateContactFromAddressBook)

instance
  Core.AWSRequest
    DisassociateContactFromAddressBook
  where
  type
    AWSResponse DisassociateContactFromAddressBook =
      DisassociateContactFromAddressBookResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateContactFromAddressBookResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateContactFromAddressBook
  where
  hashWithSalt
    _salt
    DisassociateContactFromAddressBook' {..} =
      _salt `Prelude.hashWithSalt` contactArn
        `Prelude.hashWithSalt` addressBookArn

instance
  Prelude.NFData
    DisassociateContactFromAddressBook
  where
  rnf DisassociateContactFromAddressBook' {..} =
    Prelude.rnf contactArn
      `Prelude.seq` Prelude.rnf addressBookArn

instance
  Data.ToHeaders
    DisassociateContactFromAddressBook
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AlexaForBusiness.DisassociateContactFromAddressBook" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Data.ToJSON
    DisassociateContactFromAddressBook
  where
  toJSON DisassociateContactFromAddressBook' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ContactArn" Data..= contactArn),
            Prelude.Just
              ("AddressBookArn" Data..= addressBookArn)
          ]
      )

instance
  Data.ToPath
    DisassociateContactFromAddressBook
  where
  toPath = Prelude.const "/"

instance
  Data.ToQuery
    DisassociateContactFromAddressBook
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateContactFromAddressBookResponse' smart constructor.
data DisassociateContactFromAddressBookResponse = DisassociateContactFromAddressBookResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateContactFromAddressBookResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateContactFromAddressBookResponse_httpStatus' - The response's http status code.
newDisassociateContactFromAddressBookResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateContactFromAddressBookResponse
newDisassociateContactFromAddressBookResponse
  pHttpStatus_ =
    DisassociateContactFromAddressBookResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateContactFromAddressBookResponse_httpStatus :: Lens.Lens' DisassociateContactFromAddressBookResponse Prelude.Int
disassociateContactFromAddressBookResponse_httpStatus = Lens.lens (\DisassociateContactFromAddressBookResponse' {httpStatus} -> httpStatus) (\s@DisassociateContactFromAddressBookResponse' {} a -> s {httpStatus = a} :: DisassociateContactFromAddressBookResponse)

instance
  Prelude.NFData
    DisassociateContactFromAddressBookResponse
  where
  rnf DisassociateContactFromAddressBookResponse' {..} =
    Prelude.rnf httpStatus
