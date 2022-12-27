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
-- Module      : Amazonka.ECS.Types.ApplicationProtocol
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ECS.Types.ApplicationProtocol
  ( ApplicationProtocol
      ( ..,
        ApplicationProtocol_Grpc,
        ApplicationProtocol_Http,
        ApplicationProtocol_Http2
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ApplicationProtocol = ApplicationProtocol'
  { fromApplicationProtocol ::
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

pattern ApplicationProtocol_Grpc :: ApplicationProtocol
pattern ApplicationProtocol_Grpc = ApplicationProtocol' "grpc"

pattern ApplicationProtocol_Http :: ApplicationProtocol
pattern ApplicationProtocol_Http = ApplicationProtocol' "http"

pattern ApplicationProtocol_Http2 :: ApplicationProtocol
pattern ApplicationProtocol_Http2 = ApplicationProtocol' "http2"

{-# COMPLETE
  ApplicationProtocol_Grpc,
  ApplicationProtocol_Http,
  ApplicationProtocol_Http2,
  ApplicationProtocol'
  #-}
