{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.MediaConvert.Types.Mpeg2GopSizeUnits
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaConvert.Types.Mpeg2GopSizeUnits
  ( Mpeg2GopSizeUnits
      ( ..,
        Mpeg2GopSizeUnits_FRAMES,
        Mpeg2GopSizeUnits_SECONDS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specify the units for GOP size (GopSize). If you don\'t specify a value
-- here, by default the encoder measures GOP size in frames.
newtype Mpeg2GopSizeUnits = Mpeg2GopSizeUnits'
  { fromMpeg2GopSizeUnits ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern Mpeg2GopSizeUnits_FRAMES :: Mpeg2GopSizeUnits
pattern Mpeg2GopSizeUnits_FRAMES = Mpeg2GopSizeUnits' "FRAMES"

pattern Mpeg2GopSizeUnits_SECONDS :: Mpeg2GopSizeUnits
pattern Mpeg2GopSizeUnits_SECONDS = Mpeg2GopSizeUnits' "SECONDS"

{-# COMPLETE
  Mpeg2GopSizeUnits_FRAMES,
  Mpeg2GopSizeUnits_SECONDS,
  Mpeg2GopSizeUnits'
  #-}
