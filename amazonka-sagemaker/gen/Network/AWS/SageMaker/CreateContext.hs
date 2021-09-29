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
-- Module      : Network.AWS.SageMaker.CreateContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a /context/. A context is a lineage tracking entity that
-- represents a logical grouping of other tracking or experiment entities.
-- Some examples are an endpoint and a model package. For more information,
-- see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking>.
module Network.AWS.SageMaker.CreateContext
  ( -- * Creating a Request
    CreateContext (..),
    newCreateContext,

    -- * Request Lenses
    createContext_tags,
    createContext_properties,
    createContext_description,
    createContext_contextName,
    createContext_source,
    createContext_contextType,

    -- * Destructuring the Response
    CreateContextResponse (..),
    newCreateContextResponse,

    -- * Response Lenses
    createContextResponse_contextArn,
    createContextResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newCreateContext' smart constructor.
data CreateContext = CreateContext'
  { -- | A list of tags to apply to the context.
    tags :: Prelude.Maybe [Tag],
    -- | A list of properties to add to the context.
    properties :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The description of the context.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the context. Must be unique to your account in an Amazon Web
    -- Services Region.
    contextName :: Prelude.Text,
    -- | The source type, ID, and URI.
    source :: ContextSource,
    -- | The context type.
    contextType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createContext_tags' - A list of tags to apply to the context.
--
-- 'properties', 'createContext_properties' - A list of properties to add to the context.
--
-- 'description', 'createContext_description' - The description of the context.
--
-- 'contextName', 'createContext_contextName' - The name of the context. Must be unique to your account in an Amazon Web
-- Services Region.
--
-- 'source', 'createContext_source' - The source type, ID, and URI.
--
-- 'contextType', 'createContext_contextType' - The context type.
newCreateContext ::
  -- | 'contextName'
  Prelude.Text ->
  -- | 'source'
  ContextSource ->
  -- | 'contextType'
  Prelude.Text ->
  CreateContext
newCreateContext pContextName_ pSource_ pContextType_ =
  CreateContext'
    { tags = Prelude.Nothing,
      properties = Prelude.Nothing,
      description = Prelude.Nothing,
      contextName = pContextName_,
      source = pSource_,
      contextType = pContextType_
    }

-- | A list of tags to apply to the context.
createContext_tags :: Lens.Lens' CreateContext (Prelude.Maybe [Tag])
createContext_tags = Lens.lens (\CreateContext' {tags} -> tags) (\s@CreateContext' {} a -> s {tags = a} :: CreateContext) Prelude.. Lens.mapping Lens._Coerce

-- | A list of properties to add to the context.
createContext_properties :: Lens.Lens' CreateContext (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createContext_properties = Lens.lens (\CreateContext' {properties} -> properties) (\s@CreateContext' {} a -> s {properties = a} :: CreateContext) Prelude.. Lens.mapping Lens._Coerce

-- | The description of the context.
createContext_description :: Lens.Lens' CreateContext (Prelude.Maybe Prelude.Text)
createContext_description = Lens.lens (\CreateContext' {description} -> description) (\s@CreateContext' {} a -> s {description = a} :: CreateContext)

-- | The name of the context. Must be unique to your account in an Amazon Web
-- Services Region.
createContext_contextName :: Lens.Lens' CreateContext Prelude.Text
createContext_contextName = Lens.lens (\CreateContext' {contextName} -> contextName) (\s@CreateContext' {} a -> s {contextName = a} :: CreateContext)

-- | The source type, ID, and URI.
createContext_source :: Lens.Lens' CreateContext ContextSource
createContext_source = Lens.lens (\CreateContext' {source} -> source) (\s@CreateContext' {} a -> s {source = a} :: CreateContext)

-- | The context type.
createContext_contextType :: Lens.Lens' CreateContext Prelude.Text
createContext_contextType = Lens.lens (\CreateContext' {contextType} -> contextType) (\s@CreateContext' {} a -> s {contextType = a} :: CreateContext)

instance Core.AWSRequest CreateContext where
  type
    AWSResponse CreateContext =
      CreateContextResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateContextResponse'
            Prelude.<$> (x Core..?> "ContextArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateContext

instance Prelude.NFData CreateContext

instance Core.ToHeaders CreateContext where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.CreateContext" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateContext where
  toJSON CreateContext' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            ("Properties" Core..=) Prelude.<$> properties,
            ("Description" Core..=) Prelude.<$> description,
            Prelude.Just ("ContextName" Core..= contextName),
            Prelude.Just ("Source" Core..= source),
            Prelude.Just ("ContextType" Core..= contextType)
          ]
      )

instance Core.ToPath CreateContext where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateContext where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateContextResponse' smart constructor.
data CreateContextResponse = CreateContextResponse'
  { -- | The Amazon Resource Name (ARN) of the context.
    contextArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateContextResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contextArn', 'createContextResponse_contextArn' - The Amazon Resource Name (ARN) of the context.
--
-- 'httpStatus', 'createContextResponse_httpStatus' - The response's http status code.
newCreateContextResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateContextResponse
newCreateContextResponse pHttpStatus_ =
  CreateContextResponse'
    { contextArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the context.
createContextResponse_contextArn :: Lens.Lens' CreateContextResponse (Prelude.Maybe Prelude.Text)
createContextResponse_contextArn = Lens.lens (\CreateContextResponse' {contextArn} -> contextArn) (\s@CreateContextResponse' {} a -> s {contextArn = a} :: CreateContextResponse)

-- | The response's http status code.
createContextResponse_httpStatus :: Lens.Lens' CreateContextResponse Prelude.Int
createContextResponse_httpStatus = Lens.lens (\CreateContextResponse' {httpStatus} -> httpStatus) (\s@CreateContextResponse' {} a -> s {httpStatus = a} :: CreateContextResponse)

instance Prelude.NFData CreateContextResponse
