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
-- Module      : Amazonka.WorkSpaces.Types.WorkspaceBundleState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.WorkSpaces.Types.WorkspaceBundleState
  ( WorkspaceBundleState
      ( ..,
        WorkspaceBundleState_AVAILABLE,
        WorkspaceBundleState_ERROR,
        WorkspaceBundleState_PENDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype WorkspaceBundleState = WorkspaceBundleState'
  { fromWorkspaceBundleState ::
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

pattern WorkspaceBundleState_AVAILABLE :: WorkspaceBundleState
pattern WorkspaceBundleState_AVAILABLE = WorkspaceBundleState' "AVAILABLE"

pattern WorkspaceBundleState_ERROR :: WorkspaceBundleState
pattern WorkspaceBundleState_ERROR = WorkspaceBundleState' "ERROR"

pattern WorkspaceBundleState_PENDING :: WorkspaceBundleState
pattern WorkspaceBundleState_PENDING = WorkspaceBundleState' "PENDING"

{-# COMPLETE
  WorkspaceBundleState_AVAILABLE,
  WorkspaceBundleState_ERROR,
  WorkspaceBundleState_PENDING,
  WorkspaceBundleState'
  #-}
