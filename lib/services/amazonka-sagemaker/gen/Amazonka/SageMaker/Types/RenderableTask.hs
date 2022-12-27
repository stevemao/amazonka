{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SageMaker.Types.RenderableTask
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.RenderableTask where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Contains input values for a task.
--
-- /See:/ 'newRenderableTask' smart constructor.
data RenderableTask = RenderableTask'
  { -- | A JSON object that contains values for the variables defined in the
    -- template. It is made available to the template under the substitution
    -- variable @task.input@. For example, if you define a variable
    -- @task.input.text@ in your template, you can supply the variable in the
    -- JSON object as @\"text\": \"sample text\"@.
    input :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RenderableTask' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'input', 'renderableTask_input' - A JSON object that contains values for the variables defined in the
-- template. It is made available to the template under the substitution
-- variable @task.input@. For example, if you define a variable
-- @task.input.text@ in your template, you can supply the variable in the
-- JSON object as @\"text\": \"sample text\"@.
newRenderableTask ::
  -- | 'input'
  Prelude.Text ->
  RenderableTask
newRenderableTask pInput_ =
  RenderableTask' {input = pInput_}

-- | A JSON object that contains values for the variables defined in the
-- template. It is made available to the template under the substitution
-- variable @task.input@. For example, if you define a variable
-- @task.input.text@ in your template, you can supply the variable in the
-- JSON object as @\"text\": \"sample text\"@.
renderableTask_input :: Lens.Lens' RenderableTask Prelude.Text
renderableTask_input = Lens.lens (\RenderableTask' {input} -> input) (\s@RenderableTask' {} a -> s {input = a} :: RenderableTask)

instance Prelude.Hashable RenderableTask where
  hashWithSalt _salt RenderableTask' {..} =
    _salt `Prelude.hashWithSalt` input

instance Prelude.NFData RenderableTask where
  rnf RenderableTask' {..} = Prelude.rnf input

instance Data.ToJSON RenderableTask where
  toJSON RenderableTask' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("Input" Data..= input)]
      )
