{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.SSM.TerminateSession
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently ends a session and closes the data connection between the
-- Session Manager client and SSM Agent on the managed node. A terminated
-- session can\'t be resumed.
module Amazonka.SSM.TerminateSession
  ( -- * Creating a Request
    TerminateSession (..),
    newTerminateSession,

    -- * Request Lenses
    terminateSession_sessionId,

    -- * Destructuring the Response
    TerminateSessionResponse (..),
    newTerminateSessionResponse,

    -- * Response Lenses
    terminateSessionResponse_sessionId,
    terminateSessionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SSM.Types

-- | /See:/ 'newTerminateSession' smart constructor.
data TerminateSession = TerminateSession'
  { -- | The ID of the session to terminate.
    sessionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateSession' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sessionId', 'terminateSession_sessionId' - The ID of the session to terminate.
newTerminateSession ::
  -- | 'sessionId'
  Prelude.Text ->
  TerminateSession
newTerminateSession pSessionId_ =
  TerminateSession' {sessionId = pSessionId_}

-- | The ID of the session to terminate.
terminateSession_sessionId :: Lens.Lens' TerminateSession Prelude.Text
terminateSession_sessionId = Lens.lens (\TerminateSession' {sessionId} -> sessionId) (\s@TerminateSession' {} a -> s {sessionId = a} :: TerminateSession)

instance Core.AWSRequest TerminateSession where
  type
    AWSResponse TerminateSession =
      TerminateSessionResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          TerminateSessionResponse'
            Prelude.<$> (x Data..?> "SessionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TerminateSession where
  hashWithSalt _salt TerminateSession' {..} =
    _salt `Prelude.hashWithSalt` sessionId

instance Prelude.NFData TerminateSession where
  rnf TerminateSession' {..} = Prelude.rnf sessionId

instance Data.ToHeaders TerminateSession where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ("AmazonSSM.TerminateSession" :: Prelude.ByteString),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON TerminateSession where
  toJSON TerminateSession' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("SessionId" Data..= sessionId)]
      )

instance Data.ToPath TerminateSession where
  toPath = Prelude.const "/"

instance Data.ToQuery TerminateSession where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTerminateSessionResponse' smart constructor.
data TerminateSessionResponse = TerminateSessionResponse'
  { -- | The ID of the session that has been terminated.
    sessionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TerminateSessionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sessionId', 'terminateSessionResponse_sessionId' - The ID of the session that has been terminated.
--
-- 'httpStatus', 'terminateSessionResponse_httpStatus' - The response's http status code.
newTerminateSessionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TerminateSessionResponse
newTerminateSessionResponse pHttpStatus_ =
  TerminateSessionResponse'
    { sessionId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the session that has been terminated.
terminateSessionResponse_sessionId :: Lens.Lens' TerminateSessionResponse (Prelude.Maybe Prelude.Text)
terminateSessionResponse_sessionId = Lens.lens (\TerminateSessionResponse' {sessionId} -> sessionId) (\s@TerminateSessionResponse' {} a -> s {sessionId = a} :: TerminateSessionResponse)

-- | The response's http status code.
terminateSessionResponse_httpStatus :: Lens.Lens' TerminateSessionResponse Prelude.Int
terminateSessionResponse_httpStatus = Lens.lens (\TerminateSessionResponse' {httpStatus} -> httpStatus) (\s@TerminateSessionResponse' {} a -> s {httpStatus = a} :: TerminateSessionResponse)

instance Prelude.NFData TerminateSessionResponse where
  rnf TerminateSessionResponse' {..} =
    Prelude.rnf sessionId
      `Prelude.seq` Prelude.rnf httpStatus
