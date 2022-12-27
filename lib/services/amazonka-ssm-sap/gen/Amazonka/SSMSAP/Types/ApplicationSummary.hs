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
-- Module      : Amazonka.SSMSAP.Types.ApplicationSummary
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SSMSAP.Types.ApplicationSummary where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.SSMSAP.Types.ApplicationType

-- |
--
-- /See:/ 'newApplicationSummary' smart constructor.
data ApplicationSummary = ApplicationSummary'
  { arn :: Prelude.Maybe Prelude.Text,
    id :: Prelude.Maybe Prelude.Text,
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    type' :: Prelude.Maybe ApplicationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'applicationSummary_arn' -
--
-- 'id', 'applicationSummary_id' -
--
-- 'tags', 'applicationSummary_tags' -
--
-- 'type'', 'applicationSummary_type' -
newApplicationSummary ::
  ApplicationSummary
newApplicationSummary =
  ApplicationSummary'
    { arn = Prelude.Nothing,
      id = Prelude.Nothing,
      tags = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- |
applicationSummary_arn :: Lens.Lens' ApplicationSummary (Prelude.Maybe Prelude.Text)
applicationSummary_arn = Lens.lens (\ApplicationSummary' {arn} -> arn) (\s@ApplicationSummary' {} a -> s {arn = a} :: ApplicationSummary)

-- |
applicationSummary_id :: Lens.Lens' ApplicationSummary (Prelude.Maybe Prelude.Text)
applicationSummary_id = Lens.lens (\ApplicationSummary' {id} -> id) (\s@ApplicationSummary' {} a -> s {id = a} :: ApplicationSummary)

-- |
applicationSummary_tags :: Lens.Lens' ApplicationSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
applicationSummary_tags = Lens.lens (\ApplicationSummary' {tags} -> tags) (\s@ApplicationSummary' {} a -> s {tags = a} :: ApplicationSummary) Prelude.. Lens.mapping Lens.coerced

-- |
applicationSummary_type :: Lens.Lens' ApplicationSummary (Prelude.Maybe ApplicationType)
applicationSummary_type = Lens.lens (\ApplicationSummary' {type'} -> type') (\s@ApplicationSummary' {} a -> s {type' = a} :: ApplicationSummary)

instance Data.FromJSON ApplicationSummary where
  parseJSON =
    Data.withObject
      "ApplicationSummary"
      ( \x ->
          ApplicationSummary'
            Prelude.<$> (x Data..:? "Arn")
            Prelude.<*> (x Data..:? "Id")
            Prelude.<*> (x Data..:? "Tags" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "Type")
      )

instance Prelude.Hashable ApplicationSummary where
  hashWithSalt _salt ApplicationSummary' {..} =
    _salt `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` type'

instance Prelude.NFData ApplicationSummary where
  rnf ApplicationSummary' {..} =
    Prelude.rnf arn
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf type'
