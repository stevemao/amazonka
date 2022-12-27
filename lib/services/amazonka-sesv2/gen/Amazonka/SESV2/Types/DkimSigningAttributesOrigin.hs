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
-- Module      : Amazonka.SESV2.Types.DkimSigningAttributesOrigin
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SESV2.Types.DkimSigningAttributesOrigin
  ( DkimSigningAttributesOrigin
      ( ..,
        DkimSigningAttributesOrigin_AWS_SES,
        DkimSigningAttributesOrigin_EXTERNAL
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype DkimSigningAttributesOrigin = DkimSigningAttributesOrigin'
  { fromDkimSigningAttributesOrigin ::
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

pattern DkimSigningAttributesOrigin_AWS_SES :: DkimSigningAttributesOrigin
pattern DkimSigningAttributesOrigin_AWS_SES = DkimSigningAttributesOrigin' "AWS_SES"

pattern DkimSigningAttributesOrigin_EXTERNAL :: DkimSigningAttributesOrigin
pattern DkimSigningAttributesOrigin_EXTERNAL = DkimSigningAttributesOrigin' "EXTERNAL"

{-# COMPLETE
  DkimSigningAttributesOrigin_AWS_SES,
  DkimSigningAttributesOrigin_EXTERNAL,
  DkimSigningAttributesOrigin'
  #-}
