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
-- Module      : Amazonka.MediaPackageVOD.DeleteAsset
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing MediaPackage VOD Asset resource.
module Amazonka.MediaPackageVOD.DeleteAsset
  ( -- * Creating a Request
    DeleteAsset (..),
    newDeleteAsset,

    -- * Request Lenses
    deleteAsset_id,

    -- * Destructuring the Response
    DeleteAssetResponse (..),
    newDeleteAssetResponse,

    -- * Response Lenses
    deleteAssetResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.MediaPackageVOD.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteAsset' smart constructor.
data DeleteAsset = DeleteAsset'
  { -- | The ID of the MediaPackage VOD Asset resource to delete.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAsset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'deleteAsset_id' - The ID of the MediaPackage VOD Asset resource to delete.
newDeleteAsset ::
  -- | 'id'
  Prelude.Text ->
  DeleteAsset
newDeleteAsset pId_ = DeleteAsset' {id = pId_}

-- | The ID of the MediaPackage VOD Asset resource to delete.
deleteAsset_id :: Lens.Lens' DeleteAsset Prelude.Text
deleteAsset_id = Lens.lens (\DeleteAsset' {id} -> id) (\s@DeleteAsset' {} a -> s {id = a} :: DeleteAsset)

instance Core.AWSRequest DeleteAsset where
  type AWSResponse DeleteAsset = DeleteAssetResponse
  request overrides =
    Request.delete (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteAssetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteAsset where
  hashWithSalt _salt DeleteAsset' {..} =
    _salt `Prelude.hashWithSalt` id

instance Prelude.NFData DeleteAsset where
  rnf DeleteAsset' {..} = Prelude.rnf id

instance Data.ToHeaders DeleteAsset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToPath DeleteAsset where
  toPath DeleteAsset' {..} =
    Prelude.mconcat ["/assets/", Data.toBS id]

instance Data.ToQuery DeleteAsset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAssetResponse' smart constructor.
data DeleteAssetResponse = DeleteAssetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAssetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteAssetResponse_httpStatus' - The response's http status code.
newDeleteAssetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteAssetResponse
newDeleteAssetResponse pHttpStatus_ =
  DeleteAssetResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteAssetResponse_httpStatus :: Lens.Lens' DeleteAssetResponse Prelude.Int
deleteAssetResponse_httpStatus = Lens.lens (\DeleteAssetResponse' {httpStatus} -> httpStatus) (\s@DeleteAssetResponse' {} a -> s {httpStatus = a} :: DeleteAssetResponse)

instance Prelude.NFData DeleteAssetResponse where
  rnf DeleteAssetResponse' {..} = Prelude.rnf httpStatus
