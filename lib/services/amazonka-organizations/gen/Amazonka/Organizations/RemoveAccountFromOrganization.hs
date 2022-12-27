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
-- Module      : Amazonka.Organizations.RemoveAccountFromOrganization
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified account from the organization.
--
-- The removed account becomes a standalone account that isn\'t a member of
-- any organization. It\'s no longer subject to any policies and is
-- responsible for its own bill payments. The organization\'s management
-- account is no longer charged for any expenses accrued by the member
-- account after it\'s removed from the organization.
--
-- This operation can be called only from the organization\'s management
-- account. Member accounts can remove themselves with LeaveOrganization
-- instead.
--
-- -   You can remove an account from your organization only if the account
--     is configured with the information required to operate as a
--     standalone account. When you create an account in an organization
--     using the Organizations console, API, or CLI commands, the
--     information required of standalone accounts is /not/ automatically
--     collected. For an account that you want to make standalone, you must
--     choose a support plan, provide and verify the required contact
--     information, and provide a current payment method. Amazon Web
--     Services uses the payment method to charge for any billable (not
--     free tier) Amazon Web Services activity that occurs while the
--     account isn\'t attached to an organization. To remove an account
--     that doesn\'t yet have this information, you must sign in as the
--     member account and follow the steps at
--     <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info To leave an organization when all required account information has not yet been provided>
--     in the /Organizations User Guide./
--
-- -   The account that you want to leave must not be a delegated
--     administrator account for any Amazon Web Services service enabled
--     for your organization. If the account is a delegated administrator,
--     you must first change the delegated administrator account to another
--     account that is remaining in the organization.
--
-- -   After the account leaves the organization, all tags that were
--     attached to the account object in the organization are deleted.
--     Amazon Web Services accounts outside of an organization do not
--     support tags.
module Amazonka.Organizations.RemoveAccountFromOrganization
  ( -- * Creating a Request
    RemoveAccountFromOrganization (..),
    newRemoveAccountFromOrganization,

    -- * Request Lenses
    removeAccountFromOrganization_accountId,

    -- * Destructuring the Response
    RemoveAccountFromOrganizationResponse (..),
    newRemoveAccountFromOrganizationResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Organizations.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newRemoveAccountFromOrganization' smart constructor.
data RemoveAccountFromOrganization = RemoveAccountFromOrganization'
  { -- | The unique identifier (ID) of the member account that you want to remove
    -- from the organization.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> for an account ID
    -- string requires exactly 12 digits.
    accountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveAccountFromOrganization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountId', 'removeAccountFromOrganization_accountId' - The unique identifier (ID) of the member account that you want to remove
-- from the organization.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for an account ID
-- string requires exactly 12 digits.
newRemoveAccountFromOrganization ::
  -- | 'accountId'
  Prelude.Text ->
  RemoveAccountFromOrganization
newRemoveAccountFromOrganization pAccountId_ =
  RemoveAccountFromOrganization'
    { accountId =
        pAccountId_
    }

-- | The unique identifier (ID) of the member account that you want to remove
-- from the organization.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for an account ID
-- string requires exactly 12 digits.
removeAccountFromOrganization_accountId :: Lens.Lens' RemoveAccountFromOrganization Prelude.Text
removeAccountFromOrganization_accountId = Lens.lens (\RemoveAccountFromOrganization' {accountId} -> accountId) (\s@RemoveAccountFromOrganization' {} a -> s {accountId = a} :: RemoveAccountFromOrganization)

instance
  Core.AWSRequest
    RemoveAccountFromOrganization
  where
  type
    AWSResponse RemoveAccountFromOrganization =
      RemoveAccountFromOrganizationResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveNull
      RemoveAccountFromOrganizationResponse'

instance
  Prelude.Hashable
    RemoveAccountFromOrganization
  where
  hashWithSalt _salt RemoveAccountFromOrganization' {..} =
    _salt `Prelude.hashWithSalt` accountId

instance Prelude.NFData RemoveAccountFromOrganization where
  rnf RemoveAccountFromOrganization' {..} =
    Prelude.rnf accountId

instance Data.ToHeaders RemoveAccountFromOrganization where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSOrganizationsV20161128.RemoveAccountFromOrganization" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON RemoveAccountFromOrganization where
  toJSON RemoveAccountFromOrganization' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("AccountId" Data..= accountId)]
      )

instance Data.ToPath RemoveAccountFromOrganization where
  toPath = Prelude.const "/"

instance Data.ToQuery RemoveAccountFromOrganization where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRemoveAccountFromOrganizationResponse' smart constructor.
data RemoveAccountFromOrganizationResponse = RemoveAccountFromOrganizationResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RemoveAccountFromOrganizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRemoveAccountFromOrganizationResponse ::
  RemoveAccountFromOrganizationResponse
newRemoveAccountFromOrganizationResponse =
  RemoveAccountFromOrganizationResponse'

instance
  Prelude.NFData
    RemoveAccountFromOrganizationResponse
  where
  rnf _ = ()
