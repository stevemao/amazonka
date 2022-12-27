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
-- Module      : Amazonka.IoT.DeleteTopicRuleDestination
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a topic rule destination.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions DeleteTopicRuleDestination>
-- action.
module Amazonka.IoT.DeleteTopicRuleDestination
  ( -- * Creating a Request
    DeleteTopicRuleDestination (..),
    newDeleteTopicRuleDestination,

    -- * Request Lenses
    deleteTopicRuleDestination_arn,

    -- * Destructuring the Response
    DeleteTopicRuleDestinationResponse (..),
    newDeleteTopicRuleDestinationResponse,

    -- * Response Lenses
    deleteTopicRuleDestinationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.IoT.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteTopicRuleDestination' smart constructor.
data DeleteTopicRuleDestination = DeleteTopicRuleDestination'
  { -- | The ARN of the topic rule destination to delete.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTopicRuleDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'deleteTopicRuleDestination_arn' - The ARN of the topic rule destination to delete.
newDeleteTopicRuleDestination ::
  -- | 'arn'
  Prelude.Text ->
  DeleteTopicRuleDestination
newDeleteTopicRuleDestination pArn_ =
  DeleteTopicRuleDestination' {arn = pArn_}

-- | The ARN of the topic rule destination to delete.
deleteTopicRuleDestination_arn :: Lens.Lens' DeleteTopicRuleDestination Prelude.Text
deleteTopicRuleDestination_arn = Lens.lens (\DeleteTopicRuleDestination' {arn} -> arn) (\s@DeleteTopicRuleDestination' {} a -> s {arn = a} :: DeleteTopicRuleDestination)

instance Core.AWSRequest DeleteTopicRuleDestination where
  type
    AWSResponse DeleteTopicRuleDestination =
      DeleteTopicRuleDestinationResponse
  request overrides =
    Request.delete (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteTopicRuleDestinationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteTopicRuleDestination where
  hashWithSalt _salt DeleteTopicRuleDestination' {..} =
    _salt `Prelude.hashWithSalt` arn

instance Prelude.NFData DeleteTopicRuleDestination where
  rnf DeleteTopicRuleDestination' {..} = Prelude.rnf arn

instance Data.ToHeaders DeleteTopicRuleDestination where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath DeleteTopicRuleDestination where
  toPath DeleteTopicRuleDestination' {..} =
    Prelude.mconcat ["/destinations/", Data.toBS arn]

instance Data.ToQuery DeleteTopicRuleDestination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteTopicRuleDestinationResponse' smart constructor.
data DeleteTopicRuleDestinationResponse = DeleteTopicRuleDestinationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTopicRuleDestinationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteTopicRuleDestinationResponse_httpStatus' - The response's http status code.
newDeleteTopicRuleDestinationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteTopicRuleDestinationResponse
newDeleteTopicRuleDestinationResponse pHttpStatus_ =
  DeleteTopicRuleDestinationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteTopicRuleDestinationResponse_httpStatus :: Lens.Lens' DeleteTopicRuleDestinationResponse Prelude.Int
deleteTopicRuleDestinationResponse_httpStatus = Lens.lens (\DeleteTopicRuleDestinationResponse' {httpStatus} -> httpStatus) (\s@DeleteTopicRuleDestinationResponse' {} a -> s {httpStatus = a} :: DeleteTopicRuleDestinationResponse)

instance
  Prelude.NFData
    DeleteTopicRuleDestinationResponse
  where
  rnf DeleteTopicRuleDestinationResponse' {..} =
    Prelude.rnf httpStatus
