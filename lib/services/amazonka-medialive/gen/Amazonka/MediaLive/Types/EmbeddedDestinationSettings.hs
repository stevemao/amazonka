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
-- Module      : Amazonka.MediaLive.Types.EmbeddedDestinationSettings
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.EmbeddedDestinationSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Embedded Destination Settings
--
-- /See:/ 'newEmbeddedDestinationSettings' smart constructor.
data EmbeddedDestinationSettings = EmbeddedDestinationSettings'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EmbeddedDestinationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newEmbeddedDestinationSettings ::
  EmbeddedDestinationSettings
newEmbeddedDestinationSettings =
  EmbeddedDestinationSettings'

instance Data.FromJSON EmbeddedDestinationSettings where
  parseJSON =
    Data.withObject
      "EmbeddedDestinationSettings"
      (\x -> Prelude.pure EmbeddedDestinationSettings')

instance Prelude.Hashable EmbeddedDestinationSettings where
  hashWithSalt _salt _ =
    _salt `Prelude.hashWithSalt` ()

instance Prelude.NFData EmbeddedDestinationSettings where
  rnf _ = ()

instance Data.ToJSON EmbeddedDestinationSettings where
  toJSON = Prelude.const (Data.Object Prelude.mempty)
