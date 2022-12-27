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
-- Module      : Amazonka.S3.Types.Tag
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.Tag where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

-- | A container of a key value name pair.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | Name of the object key.
    key :: ObjectKey,
    -- | Value of the tag.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tag_key' - Name of the object key.
--
-- 'value', 'tag_value' - Value of the tag.
newTag ::
  -- | 'key'
  ObjectKey ->
  -- | 'value'
  Prelude.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | Name of the object key.
tag_key :: Lens.Lens' Tag ObjectKey
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | Value of the tag.
tag_value :: Lens.Lens' Tag Prelude.Text
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag)

instance Data.FromXML Tag where
  parseXML x =
    Tag'
      Prelude.<$> (x Data..@ "Key") Prelude.<*> (x Data..@ "Value")

instance Prelude.Hashable Tag where
  hashWithSalt _salt Tag' {..} =
    _salt `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` value

instance Prelude.NFData Tag where
  rnf Tag' {..} =
    Prelude.rnf key `Prelude.seq` Prelude.rnf value

instance Data.ToXML Tag where
  toXML Tag' {..} =
    Prelude.mconcat
      ["Key" Data.@= key, "Value" Data.@= value]
