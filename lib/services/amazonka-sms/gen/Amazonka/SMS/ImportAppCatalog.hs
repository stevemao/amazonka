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
-- Module      : Amazonka.SMS.ImportAppCatalog
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows application import from Migration Hub.
module Amazonka.SMS.ImportAppCatalog
  ( -- * Creating a Request
    ImportAppCatalog (..),
    newImportAppCatalog,

    -- * Request Lenses
    importAppCatalog_roleName,

    -- * Destructuring the Response
    ImportAppCatalogResponse (..),
    newImportAppCatalogResponse,

    -- * Response Lenses
    importAppCatalogResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SMS.Types

-- | /See:/ 'newImportAppCatalog' smart constructor.
data ImportAppCatalog = ImportAppCatalog'
  { -- | The name of the service role. If you omit this parameter, we create a
    -- service-linked role for Migration Hub in your account. Otherwise, the
    -- role that you provide must have the
    -- <https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed policy and trust policy>
    -- described in the /Migration Hub User Guide/.
    roleName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportAppCatalog' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleName', 'importAppCatalog_roleName' - The name of the service role. If you omit this parameter, we create a
-- service-linked role for Migration Hub in your account. Otherwise, the
-- role that you provide must have the
-- <https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed policy and trust policy>
-- described in the /Migration Hub User Guide/.
newImportAppCatalog ::
  ImportAppCatalog
newImportAppCatalog =
  ImportAppCatalog' {roleName = Prelude.Nothing}

-- | The name of the service role. If you omit this parameter, we create a
-- service-linked role for Migration Hub in your account. Otherwise, the
-- role that you provide must have the
-- <https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed policy and trust policy>
-- described in the /Migration Hub User Guide/.
importAppCatalog_roleName :: Lens.Lens' ImportAppCatalog (Prelude.Maybe Prelude.Text)
importAppCatalog_roleName = Lens.lens (\ImportAppCatalog' {roleName} -> roleName) (\s@ImportAppCatalog' {} a -> s {roleName = a} :: ImportAppCatalog)

instance Core.AWSRequest ImportAppCatalog where
  type
    AWSResponse ImportAppCatalog =
      ImportAppCatalogResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          ImportAppCatalogResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ImportAppCatalog where
  hashWithSalt _salt ImportAppCatalog' {..} =
    _salt `Prelude.hashWithSalt` roleName

instance Prelude.NFData ImportAppCatalog where
  rnf ImportAppCatalog' {..} = Prelude.rnf roleName

instance Data.ToHeaders ImportAppCatalog where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSServerMigrationService_V2016_10_24.ImportAppCatalog" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON ImportAppCatalog where
  toJSON ImportAppCatalog' {..} =
    Data.object
      ( Prelude.catMaybes
          [("roleName" Data..=) Prelude.<$> roleName]
      )

instance Data.ToPath ImportAppCatalog where
  toPath = Prelude.const "/"

instance Data.ToQuery ImportAppCatalog where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newImportAppCatalogResponse' smart constructor.
data ImportAppCatalogResponse = ImportAppCatalogResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportAppCatalogResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'importAppCatalogResponse_httpStatus' - The response's http status code.
newImportAppCatalogResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ImportAppCatalogResponse
newImportAppCatalogResponse pHttpStatus_ =
  ImportAppCatalogResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
importAppCatalogResponse_httpStatus :: Lens.Lens' ImportAppCatalogResponse Prelude.Int
importAppCatalogResponse_httpStatus = Lens.lens (\ImportAppCatalogResponse' {httpStatus} -> httpStatus) (\s@ImportAppCatalogResponse' {} a -> s {httpStatus = a} :: ImportAppCatalogResponse)

instance Prelude.NFData ImportAppCatalogResponse where
  rnf ImportAppCatalogResponse' {..} =
    Prelude.rnf httpStatus
