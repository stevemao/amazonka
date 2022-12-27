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
-- Module      : Amazonka.IAM.Types.PolicyOwnerEntityType
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.IAM.Types.PolicyOwnerEntityType
  ( PolicyOwnerEntityType
      ( ..,
        PolicyOwnerEntityType_GROUP,
        PolicyOwnerEntityType_ROLE,
        PolicyOwnerEntityType_USER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype PolicyOwnerEntityType = PolicyOwnerEntityType'
  { fromPolicyOwnerEntityType ::
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

pattern PolicyOwnerEntityType_GROUP :: PolicyOwnerEntityType
pattern PolicyOwnerEntityType_GROUP = PolicyOwnerEntityType' "GROUP"

pattern PolicyOwnerEntityType_ROLE :: PolicyOwnerEntityType
pattern PolicyOwnerEntityType_ROLE = PolicyOwnerEntityType' "ROLE"

pattern PolicyOwnerEntityType_USER :: PolicyOwnerEntityType
pattern PolicyOwnerEntityType_USER = PolicyOwnerEntityType' "USER"

{-# COMPLETE
  PolicyOwnerEntityType_GROUP,
  PolicyOwnerEntityType_ROLE,
  PolicyOwnerEntityType_USER,
  PolicyOwnerEntityType'
  #-}
