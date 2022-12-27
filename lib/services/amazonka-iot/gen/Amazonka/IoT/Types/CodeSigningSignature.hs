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
-- Module      : Amazonka.IoT.Types.CodeSigningSignature
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IoT.Types.CodeSigningSignature where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Describes the signature for a file.
--
-- /See:/ 'newCodeSigningSignature' smart constructor.
data CodeSigningSignature = CodeSigningSignature'
  { -- | A base64 encoded binary representation of the code signing signature.
    inlineDocument :: Prelude.Maybe Data.Base64
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeSigningSignature' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inlineDocument', 'codeSigningSignature_inlineDocument' - A base64 encoded binary representation of the code signing signature.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
newCodeSigningSignature ::
  CodeSigningSignature
newCodeSigningSignature =
  CodeSigningSignature'
    { inlineDocument =
        Prelude.Nothing
    }

-- | A base64 encoded binary representation of the code signing signature.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
codeSigningSignature_inlineDocument :: Lens.Lens' CodeSigningSignature (Prelude.Maybe Prelude.ByteString)
codeSigningSignature_inlineDocument = Lens.lens (\CodeSigningSignature' {inlineDocument} -> inlineDocument) (\s@CodeSigningSignature' {} a -> s {inlineDocument = a} :: CodeSigningSignature) Prelude.. Lens.mapping Data._Base64

instance Data.FromJSON CodeSigningSignature where
  parseJSON =
    Data.withObject
      "CodeSigningSignature"
      ( \x ->
          CodeSigningSignature'
            Prelude.<$> (x Data..:? "inlineDocument")
      )

instance Prelude.Hashable CodeSigningSignature where
  hashWithSalt _salt CodeSigningSignature' {..} =
    _salt `Prelude.hashWithSalt` inlineDocument

instance Prelude.NFData CodeSigningSignature where
  rnf CodeSigningSignature' {..} =
    Prelude.rnf inlineDocument

instance Data.ToJSON CodeSigningSignature where
  toJSON CodeSigningSignature' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("inlineDocument" Data..=)
              Prelude.<$> inlineDocument
          ]
      )
