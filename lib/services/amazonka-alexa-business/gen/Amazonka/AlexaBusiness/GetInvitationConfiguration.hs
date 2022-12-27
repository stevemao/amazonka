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
-- Module      : Amazonka.AlexaBusiness.GetInvitationConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the configured values for the user enrollment invitation email
-- template.
module Amazonka.AlexaBusiness.GetInvitationConfiguration
  ( -- * Creating a Request
    GetInvitationConfiguration (..),
    newGetInvitationConfiguration,

    -- * Destructuring the Response
    GetInvitationConfigurationResponse (..),
    newGetInvitationConfigurationResponse,

    -- * Response Lenses
    getInvitationConfigurationResponse_contactEmail,
    getInvitationConfigurationResponse_organizationName,
    getInvitationConfigurationResponse_privateSkillIds,
    getInvitationConfigurationResponse_httpStatus,
  )
where

import Amazonka.AlexaBusiness.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetInvitationConfiguration' smart constructor.
data GetInvitationConfiguration = GetInvitationConfiguration'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetInvitationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetInvitationConfiguration ::
  GetInvitationConfiguration
newGetInvitationConfiguration =
  GetInvitationConfiguration'

instance Core.AWSRequest GetInvitationConfiguration where
  type
    AWSResponse GetInvitationConfiguration =
      GetInvitationConfigurationResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          GetInvitationConfigurationResponse'
            Prelude.<$> (x Data..?> "ContactEmail")
            Prelude.<*> (x Data..?> "OrganizationName")
            Prelude.<*> ( x Data..?> "PrivateSkillIds"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetInvitationConfiguration where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData GetInvitationConfiguration where
  rnf _ = ()

instance Data.ToHeaders GetInvitationConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AlexaForBusiness.GetInvitationConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON GetInvitationConfiguration where
  toJSON = Prelude.const (Data.Object Prelude.mempty)

instance Data.ToPath GetInvitationConfiguration where
  toPath = Prelude.const "/"

instance Data.ToQuery GetInvitationConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetInvitationConfigurationResponse' smart constructor.
data GetInvitationConfigurationResponse = GetInvitationConfigurationResponse'
  { -- | The email ID of the organization or individual contact that the enrolled
    -- user can use.
    contactEmail :: Prelude.Maybe Prelude.Text,
    -- | The name of the organization sending the enrollment invite to a user.
    organizationName :: Prelude.Maybe Prelude.Text,
    -- | The list of private skill IDs that you want to recommend to the user to
    -- enable in the invitation.
    privateSkillIds :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetInvitationConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contactEmail', 'getInvitationConfigurationResponse_contactEmail' - The email ID of the organization or individual contact that the enrolled
-- user can use.
--
-- 'organizationName', 'getInvitationConfigurationResponse_organizationName' - The name of the organization sending the enrollment invite to a user.
--
-- 'privateSkillIds', 'getInvitationConfigurationResponse_privateSkillIds' - The list of private skill IDs that you want to recommend to the user to
-- enable in the invitation.
--
-- 'httpStatus', 'getInvitationConfigurationResponse_httpStatus' - The response's http status code.
newGetInvitationConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetInvitationConfigurationResponse
newGetInvitationConfigurationResponse pHttpStatus_ =
  GetInvitationConfigurationResponse'
    { contactEmail =
        Prelude.Nothing,
      organizationName = Prelude.Nothing,
      privateSkillIds = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The email ID of the organization or individual contact that the enrolled
-- user can use.
getInvitationConfigurationResponse_contactEmail :: Lens.Lens' GetInvitationConfigurationResponse (Prelude.Maybe Prelude.Text)
getInvitationConfigurationResponse_contactEmail = Lens.lens (\GetInvitationConfigurationResponse' {contactEmail} -> contactEmail) (\s@GetInvitationConfigurationResponse' {} a -> s {contactEmail = a} :: GetInvitationConfigurationResponse)

-- | The name of the organization sending the enrollment invite to a user.
getInvitationConfigurationResponse_organizationName :: Lens.Lens' GetInvitationConfigurationResponse (Prelude.Maybe Prelude.Text)
getInvitationConfigurationResponse_organizationName = Lens.lens (\GetInvitationConfigurationResponse' {organizationName} -> organizationName) (\s@GetInvitationConfigurationResponse' {} a -> s {organizationName = a} :: GetInvitationConfigurationResponse)

-- | The list of private skill IDs that you want to recommend to the user to
-- enable in the invitation.
getInvitationConfigurationResponse_privateSkillIds :: Lens.Lens' GetInvitationConfigurationResponse (Prelude.Maybe [Prelude.Text])
getInvitationConfigurationResponse_privateSkillIds = Lens.lens (\GetInvitationConfigurationResponse' {privateSkillIds} -> privateSkillIds) (\s@GetInvitationConfigurationResponse' {} a -> s {privateSkillIds = a} :: GetInvitationConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getInvitationConfigurationResponse_httpStatus :: Lens.Lens' GetInvitationConfigurationResponse Prelude.Int
getInvitationConfigurationResponse_httpStatus = Lens.lens (\GetInvitationConfigurationResponse' {httpStatus} -> httpStatus) (\s@GetInvitationConfigurationResponse' {} a -> s {httpStatus = a} :: GetInvitationConfigurationResponse)

instance
  Prelude.NFData
    GetInvitationConfigurationResponse
  where
  rnf GetInvitationConfigurationResponse' {..} =
    Prelude.rnf contactEmail
      `Prelude.seq` Prelude.rnf organizationName
      `Prelude.seq` Prelude.rnf privateSkillIds
      `Prelude.seq` Prelude.rnf httpStatus
