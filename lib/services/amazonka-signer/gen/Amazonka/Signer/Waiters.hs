{-# LANGUAGE DisambiguateRecordFields #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Signer.Waiters
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Signer.Waiters where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.Signer.DescribeSigningJob
import Amazonka.Signer.Lens
import Amazonka.Signer.Types

-- | Polls 'Amazonka.Signer.DescribeSigningJob' every 20 seconds until a successful state is reached. An error is returned after 25 failed checks.
newSuccessfulSigningJob :: Core.Wait DescribeSigningJob
newSuccessfulSigningJob =
  Core.Wait
    { Core.name = "SuccessfulSigningJob",
      Core.attempts = 25,
      Core.delay = 20,
      Core.acceptors =
        [ Core.matchAll
            "Succeeded"
            Core.AcceptSuccess
            ( describeSigningJobResponse_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Data.toTextCI
            ),
          Core.matchAll
            "Failed"
            Core.AcceptFailure
            ( describeSigningJobResponse_status
                Prelude.. Lens._Just
                Prelude.. Lens.to Data.toTextCI
            ),
          Core.matchError
            "ResourceNotFoundException"
            Core.AcceptFailure
        ]
    }
