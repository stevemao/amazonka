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
-- Module      : Network.AWS.CloudFormation.DeleteStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified stack. Once the call completes successfully, stack
-- deletion starts. Deleted stacks do not show up in the DescribeStacks API
-- if the deletion has been completed successfully.
module Network.AWS.CloudFormation.DeleteStack
  ( -- * Creating a Request
    DeleteStack (..),
    newDeleteStack,

    -- * Request Lenses
    deleteStack_retainResources,
    deleteStack_roleARN,
    deleteStack_clientRequestToken,
    deleteStack_stackName,

    -- * Destructuring the Response
    DeleteStackResponse (..),
    newDeleteStackResponse,
  )
where

import Network.AWS.CloudFormation.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for DeleteStack action.
--
-- /See:/ 'newDeleteStack' smart constructor.
data DeleteStack = DeleteStack'
  { -- | For stacks in the @DELETE_FAILED@ state, a list of resource logical IDs
    -- that are associated with the resources you want to retain. During
    -- deletion, CloudFormation deletes the stack but does not delete the
    -- retained resources.
    --
    -- Retaining resources is useful when you cannot delete a resource, such as
    -- a non-empty S3 bucket, but you want to delete the stack.
    retainResources :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of an Identity and Access Management
    -- (IAM) role that CloudFormation assumes to delete the stack.
    -- CloudFormation uses the role\'s credentials to make calls on your
    -- behalf.
    --
    -- If you don\'t specify a value, CloudFormation uses the role that was
    -- previously associated with the stack. If no role is available,
    -- CloudFormation uses a temporary session that is generated from your user
    -- credentials.
    roleARN :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for this @DeleteStack@ request. Specify this token
    -- if you plan to retry requests so that CloudFormation knows that you\'re
    -- not attempting to delete a stack with the same name. You might retry
    -- @DeleteStack@ requests to ensure that CloudFormation successfully
    -- received them.
    --
    -- All events triggered by a given stack operation are assigned the same
    -- client request token, which you can use to track operations. For
    -- example, if you execute a @CreateStack@ operation with the token
    -- @token1@, then all the @StackEvents@ generated by that operation will
    -- have @ClientRequestToken@ set as @token1@.
    --
    -- In the console, stack operations display the client request token on the
    -- Events tab. Stack operations that are initiated from the console use the
    -- token format /Console-StackOperation-ID/, which helps you easily
    -- identify the stack operation . For example, if you create a stack using
    -- the console, each stack event would be assigned the same token in the
    -- following format:
    -- @Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002@.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The name or the unique stack ID that is associated with the stack.
    stackName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteStack' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retainResources', 'deleteStack_retainResources' - For stacks in the @DELETE_FAILED@ state, a list of resource logical IDs
-- that are associated with the resources you want to retain. During
-- deletion, CloudFormation deletes the stack but does not delete the
-- retained resources.
--
-- Retaining resources is useful when you cannot delete a resource, such as
-- a non-empty S3 bucket, but you want to delete the stack.
--
-- 'roleARN', 'deleteStack_roleARN' - The Amazon Resource Name (ARN) of an Identity and Access Management
-- (IAM) role that CloudFormation assumes to delete the stack.
-- CloudFormation uses the role\'s credentials to make calls on your
-- behalf.
--
-- If you don\'t specify a value, CloudFormation uses the role that was
-- previously associated with the stack. If no role is available,
-- CloudFormation uses a temporary session that is generated from your user
-- credentials.
--
-- 'clientRequestToken', 'deleteStack_clientRequestToken' - A unique identifier for this @DeleteStack@ request. Specify this token
-- if you plan to retry requests so that CloudFormation knows that you\'re
-- not attempting to delete a stack with the same name. You might retry
-- @DeleteStack@ requests to ensure that CloudFormation successfully
-- received them.
--
-- All events triggered by a given stack operation are assigned the same
-- client request token, which you can use to track operations. For
-- example, if you execute a @CreateStack@ operation with the token
-- @token1@, then all the @StackEvents@ generated by that operation will
-- have @ClientRequestToken@ set as @token1@.
--
-- In the console, stack operations display the client request token on the
-- Events tab. Stack operations that are initiated from the console use the
-- token format /Console-StackOperation-ID/, which helps you easily
-- identify the stack operation . For example, if you create a stack using
-- the console, each stack event would be assigned the same token in the
-- following format:
-- @Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002@.
--
-- 'stackName', 'deleteStack_stackName' - The name or the unique stack ID that is associated with the stack.
newDeleteStack ::
  -- | 'stackName'
  Prelude.Text ->
  DeleteStack
newDeleteStack pStackName_ =
  DeleteStack'
    { retainResources = Prelude.Nothing,
      roleARN = Prelude.Nothing,
      clientRequestToken = Prelude.Nothing,
      stackName = pStackName_
    }

-- | For stacks in the @DELETE_FAILED@ state, a list of resource logical IDs
-- that are associated with the resources you want to retain. During
-- deletion, CloudFormation deletes the stack but does not delete the
-- retained resources.
--
-- Retaining resources is useful when you cannot delete a resource, such as
-- a non-empty S3 bucket, but you want to delete the stack.
deleteStack_retainResources :: Lens.Lens' DeleteStack (Prelude.Maybe [Prelude.Text])
deleteStack_retainResources = Lens.lens (\DeleteStack' {retainResources} -> retainResources) (\s@DeleteStack' {} a -> s {retainResources = a} :: DeleteStack) Prelude.. Lens.mapping Lens._Coerce

-- | The Amazon Resource Name (ARN) of an Identity and Access Management
-- (IAM) role that CloudFormation assumes to delete the stack.
-- CloudFormation uses the role\'s credentials to make calls on your
-- behalf.
--
-- If you don\'t specify a value, CloudFormation uses the role that was
-- previously associated with the stack. If no role is available,
-- CloudFormation uses a temporary session that is generated from your user
-- credentials.
deleteStack_roleARN :: Lens.Lens' DeleteStack (Prelude.Maybe Prelude.Text)
deleteStack_roleARN = Lens.lens (\DeleteStack' {roleARN} -> roleARN) (\s@DeleteStack' {} a -> s {roleARN = a} :: DeleteStack)

-- | A unique identifier for this @DeleteStack@ request. Specify this token
-- if you plan to retry requests so that CloudFormation knows that you\'re
-- not attempting to delete a stack with the same name. You might retry
-- @DeleteStack@ requests to ensure that CloudFormation successfully
-- received them.
--
-- All events triggered by a given stack operation are assigned the same
-- client request token, which you can use to track operations. For
-- example, if you execute a @CreateStack@ operation with the token
-- @token1@, then all the @StackEvents@ generated by that operation will
-- have @ClientRequestToken@ set as @token1@.
--
-- In the console, stack operations display the client request token on the
-- Events tab. Stack operations that are initiated from the console use the
-- token format /Console-StackOperation-ID/, which helps you easily
-- identify the stack operation . For example, if you create a stack using
-- the console, each stack event would be assigned the same token in the
-- following format:
-- @Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002@.
deleteStack_clientRequestToken :: Lens.Lens' DeleteStack (Prelude.Maybe Prelude.Text)
deleteStack_clientRequestToken = Lens.lens (\DeleteStack' {clientRequestToken} -> clientRequestToken) (\s@DeleteStack' {} a -> s {clientRequestToken = a} :: DeleteStack)

-- | The name or the unique stack ID that is associated with the stack.
deleteStack_stackName :: Lens.Lens' DeleteStack Prelude.Text
deleteStack_stackName = Lens.lens (\DeleteStack' {stackName} -> stackName) (\s@DeleteStack' {} a -> s {stackName = a} :: DeleteStack)

instance Core.AWSRequest DeleteStack where
  type AWSResponse DeleteStack = DeleteStackResponse
  request = Request.postQuery defaultService
  response = Response.receiveNull DeleteStackResponse'

instance Prelude.Hashable DeleteStack

instance Prelude.NFData DeleteStack

instance Core.ToHeaders DeleteStack where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteStack where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteStack where
  toQuery DeleteStack' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DeleteStack" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-05-15" :: Prelude.ByteString),
        "RetainResources"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> retainResources
            ),
        "RoleARN" Core.=: roleARN,
        "ClientRequestToken" Core.=: clientRequestToken,
        "StackName" Core.=: stackName
      ]

-- | /See:/ 'newDeleteStackResponse' smart constructor.
data DeleteStackResponse = DeleteStackResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteStackResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteStackResponse ::
  DeleteStackResponse
newDeleteStackResponse = DeleteStackResponse'

instance Prelude.NFData DeleteStackResponse
