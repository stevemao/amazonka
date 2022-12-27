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
-- Module      : Amazonka.MediaConvert.Types.EsamManifestConfirmConditionNotification
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.EsamManifestConfirmConditionNotification where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | ESAM ManifestConfirmConditionNotification defined by
-- OC-SP-ESAM-API-I03-131025.
--
-- /See:/ 'newEsamManifestConfirmConditionNotification' smart constructor.
data EsamManifestConfirmConditionNotification = EsamManifestConfirmConditionNotification'
  { -- | Provide your ESAM ManifestConfirmConditionNotification XML document
    -- inside your JSON job settings. Form the XML document as per
    -- OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest
    -- Conditioning instructions in the message that you supply.
    mccXml :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EsamManifestConfirmConditionNotification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mccXml', 'esamManifestConfirmConditionNotification_mccXml' - Provide your ESAM ManifestConfirmConditionNotification XML document
-- inside your JSON job settings. Form the XML document as per
-- OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest
-- Conditioning instructions in the message that you supply.
newEsamManifestConfirmConditionNotification ::
  EsamManifestConfirmConditionNotification
newEsamManifestConfirmConditionNotification =
  EsamManifestConfirmConditionNotification'
    { mccXml =
        Prelude.Nothing
    }

-- | Provide your ESAM ManifestConfirmConditionNotification XML document
-- inside your JSON job settings. Form the XML document as per
-- OC-SP-ESAM-API-I03-131025. The transcoder will use the Manifest
-- Conditioning instructions in the message that you supply.
esamManifestConfirmConditionNotification_mccXml :: Lens.Lens' EsamManifestConfirmConditionNotification (Prelude.Maybe Prelude.Text)
esamManifestConfirmConditionNotification_mccXml = Lens.lens (\EsamManifestConfirmConditionNotification' {mccXml} -> mccXml) (\s@EsamManifestConfirmConditionNotification' {} a -> s {mccXml = a} :: EsamManifestConfirmConditionNotification)

instance
  Data.FromJSON
    EsamManifestConfirmConditionNotification
  where
  parseJSON =
    Data.withObject
      "EsamManifestConfirmConditionNotification"
      ( \x ->
          EsamManifestConfirmConditionNotification'
            Prelude.<$> (x Data..:? "mccXml")
      )

instance
  Prelude.Hashable
    EsamManifestConfirmConditionNotification
  where
  hashWithSalt
    _salt
    EsamManifestConfirmConditionNotification' {..} =
      _salt `Prelude.hashWithSalt` mccXml

instance
  Prelude.NFData
    EsamManifestConfirmConditionNotification
  where
  rnf EsamManifestConfirmConditionNotification' {..} =
    Prelude.rnf mccXml

instance
  Data.ToJSON
    EsamManifestConfirmConditionNotification
  where
  toJSON EsamManifestConfirmConditionNotification' {..} =
    Data.object
      ( Prelude.catMaybes
          [("mccXml" Data..=) Prelude.<$> mccXml]
      )
