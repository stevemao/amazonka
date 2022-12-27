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
-- Module      : Amazonka.Pinpoint.Types.TemplateActiveVersionRequest
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.TemplateActiveVersionRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies which version of a message template to use as the active
-- version of the template.
--
-- /See:/ 'newTemplateActiveVersionRequest' smart constructor.
data TemplateActiveVersionRequest = TemplateActiveVersionRequest'
  { -- | The version of the message template to use as the active version of the
    -- template. Valid values are: latest, for the most recent version of the
    -- template; or, the unique identifier for any existing version of the
    -- template. If you specify an identifier, the value must match the
    -- identifier for an existing template version. To retrieve a list of
    -- versions and version identifiers for a template, use the Template
    -- Versions resource.
    version :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateActiveVersionRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'templateActiveVersionRequest_version' - The version of the message template to use as the active version of the
-- template. Valid values are: latest, for the most recent version of the
-- template; or, the unique identifier for any existing version of the
-- template. If you specify an identifier, the value must match the
-- identifier for an existing template version. To retrieve a list of
-- versions and version identifiers for a template, use the Template
-- Versions resource.
newTemplateActiveVersionRequest ::
  TemplateActiveVersionRequest
newTemplateActiveVersionRequest =
  TemplateActiveVersionRequest'
    { version =
        Prelude.Nothing
    }

-- | The version of the message template to use as the active version of the
-- template. Valid values are: latest, for the most recent version of the
-- template; or, the unique identifier for any existing version of the
-- template. If you specify an identifier, the value must match the
-- identifier for an existing template version. To retrieve a list of
-- versions and version identifiers for a template, use the Template
-- Versions resource.
templateActiveVersionRequest_version :: Lens.Lens' TemplateActiveVersionRequest (Prelude.Maybe Prelude.Text)
templateActiveVersionRequest_version = Lens.lens (\TemplateActiveVersionRequest' {version} -> version) (\s@TemplateActiveVersionRequest' {} a -> s {version = a} :: TemplateActiveVersionRequest)

instance
  Prelude.Hashable
    TemplateActiveVersionRequest
  where
  hashWithSalt _salt TemplateActiveVersionRequest' {..} =
    _salt `Prelude.hashWithSalt` version

instance Prelude.NFData TemplateActiveVersionRequest where
  rnf TemplateActiveVersionRequest' {..} =
    Prelude.rnf version

instance Data.ToJSON TemplateActiveVersionRequest where
  toJSON TemplateActiveVersionRequest' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Version" Data..=) Prelude.<$> version]
      )
