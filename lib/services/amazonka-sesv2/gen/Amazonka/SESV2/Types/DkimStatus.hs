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
-- Module      : Amazonka.SESV2.Types.DkimStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SESV2.Types.DkimStatus
  ( DkimStatus
      ( ..,
        DkimStatus_FAILED,
        DkimStatus_NOT_STARTED,
        DkimStatus_PENDING,
        DkimStatus_SUCCESS,
        DkimStatus_TEMPORARY_FAILURE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The DKIM authentication status of the identity. The status can be one of
-- the following:
--
-- -   @PENDING@ – The verification process was initiated, but Amazon SES
--     hasn\'t yet detected the DKIM records in the DNS configuration for
--     the domain.
--
-- -   @SUCCESS@ – The verification process completed successfully.
--
-- -   @FAILED@ – The verification process failed. This typically occurs
--     when Amazon SES fails to find the DKIM records in the DNS
--     configuration of the domain.
--
-- -   @TEMPORARY_FAILURE@ – A temporary issue is preventing Amazon SES
--     from determining the DKIM authentication status of the domain.
--
-- -   @NOT_STARTED@ – The DKIM verification process hasn\'t been initiated
--     for the domain.
newtype DkimStatus = DkimStatus'
  { fromDkimStatus ::
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

pattern DkimStatus_FAILED :: DkimStatus
pattern DkimStatus_FAILED = DkimStatus' "FAILED"

pattern DkimStatus_NOT_STARTED :: DkimStatus
pattern DkimStatus_NOT_STARTED = DkimStatus' "NOT_STARTED"

pattern DkimStatus_PENDING :: DkimStatus
pattern DkimStatus_PENDING = DkimStatus' "PENDING"

pattern DkimStatus_SUCCESS :: DkimStatus
pattern DkimStatus_SUCCESS = DkimStatus' "SUCCESS"

pattern DkimStatus_TEMPORARY_FAILURE :: DkimStatus
pattern DkimStatus_TEMPORARY_FAILURE = DkimStatus' "TEMPORARY_FAILURE"

{-# COMPLETE
  DkimStatus_FAILED,
  DkimStatus_NOT_STARTED,
  DkimStatus_PENDING,
  DkimStatus_SUCCESS,
  DkimStatus_TEMPORARY_FAILURE,
  DkimStatus'
  #-}
