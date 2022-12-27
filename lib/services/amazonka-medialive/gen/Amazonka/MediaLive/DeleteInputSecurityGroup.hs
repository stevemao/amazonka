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
-- Module      : Amazonka.MediaLive.DeleteInputSecurityGroup
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Input Security Group
module Amazonka.MediaLive.DeleteInputSecurityGroup
  ( -- * Creating a Request
    DeleteInputSecurityGroup (..),
    newDeleteInputSecurityGroup,

    -- * Request Lenses
    deleteInputSecurityGroup_inputSecurityGroupId,

    -- * Destructuring the Response
    DeleteInputSecurityGroupResponse (..),
    newDeleteInputSecurityGroupResponse,

    -- * Response Lenses
    deleteInputSecurityGroupResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.MediaLive.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | Placeholder documentation for DeleteInputSecurityGroupRequest
--
-- /See:/ 'newDeleteInputSecurityGroup' smart constructor.
data DeleteInputSecurityGroup = DeleteInputSecurityGroup'
  { -- | The Input Security Group to delete
    inputSecurityGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInputSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputSecurityGroupId', 'deleteInputSecurityGroup_inputSecurityGroupId' - The Input Security Group to delete
newDeleteInputSecurityGroup ::
  -- | 'inputSecurityGroupId'
  Prelude.Text ->
  DeleteInputSecurityGroup
newDeleteInputSecurityGroup pInputSecurityGroupId_ =
  DeleteInputSecurityGroup'
    { inputSecurityGroupId =
        pInputSecurityGroupId_
    }

-- | The Input Security Group to delete
deleteInputSecurityGroup_inputSecurityGroupId :: Lens.Lens' DeleteInputSecurityGroup Prelude.Text
deleteInputSecurityGroup_inputSecurityGroupId = Lens.lens (\DeleteInputSecurityGroup' {inputSecurityGroupId} -> inputSecurityGroupId) (\s@DeleteInputSecurityGroup' {} a -> s {inputSecurityGroupId = a} :: DeleteInputSecurityGroup)

instance Core.AWSRequest DeleteInputSecurityGroup where
  type
    AWSResponse DeleteInputSecurityGroup =
      DeleteInputSecurityGroupResponse
  request overrides =
    Request.delete (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteInputSecurityGroupResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteInputSecurityGroup where
  hashWithSalt _salt DeleteInputSecurityGroup' {..} =
    _salt `Prelude.hashWithSalt` inputSecurityGroupId

instance Prelude.NFData DeleteInputSecurityGroup where
  rnf DeleteInputSecurityGroup' {..} =
    Prelude.rnf inputSecurityGroupId

instance Data.ToHeaders DeleteInputSecurityGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToPath DeleteInputSecurityGroup where
  toPath DeleteInputSecurityGroup' {..} =
    Prelude.mconcat
      [ "/prod/inputSecurityGroups/",
        Data.toBS inputSecurityGroupId
      ]

instance Data.ToQuery DeleteInputSecurityGroup where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for DeleteInputSecurityGroupResponse
--
-- /See:/ 'newDeleteInputSecurityGroupResponse' smart constructor.
data DeleteInputSecurityGroupResponse = DeleteInputSecurityGroupResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInputSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteInputSecurityGroupResponse_httpStatus' - The response's http status code.
newDeleteInputSecurityGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInputSecurityGroupResponse
newDeleteInputSecurityGroupResponse pHttpStatus_ =
  DeleteInputSecurityGroupResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteInputSecurityGroupResponse_httpStatus :: Lens.Lens' DeleteInputSecurityGroupResponse Prelude.Int
deleteInputSecurityGroupResponse_httpStatus = Lens.lens (\DeleteInputSecurityGroupResponse' {httpStatus} -> httpStatus) (\s@DeleteInputSecurityGroupResponse' {} a -> s {httpStatus = a} :: DeleteInputSecurityGroupResponse)

instance
  Prelude.NFData
    DeleteInputSecurityGroupResponse
  where
  rnf DeleteInputSecurityGroupResponse' {..} =
    Prelude.rnf httpStatus
