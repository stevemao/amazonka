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
-- Module      : Amazonka.CloudWatchEvents.DeauthorizeConnection
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes all authorization parameters from the connection. This lets you
-- remove the secret from the connection so you can reuse it without having
-- to create a new connection.
module Amazonka.CloudWatchEvents.DeauthorizeConnection
  ( -- * Creating a Request
    DeauthorizeConnection (..),
    newDeauthorizeConnection,

    -- * Request Lenses
    deauthorizeConnection_name,

    -- * Destructuring the Response
    DeauthorizeConnectionResponse (..),
    newDeauthorizeConnectionResponse,

    -- * Response Lenses
    deauthorizeConnectionResponse_connectionArn,
    deauthorizeConnectionResponse_connectionState,
    deauthorizeConnectionResponse_creationTime,
    deauthorizeConnectionResponse_lastAuthorizedTime,
    deauthorizeConnectionResponse_lastModifiedTime,
    deauthorizeConnectionResponse_httpStatus,
  )
where

import Amazonka.CloudWatchEvents.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeauthorizeConnection' smart constructor.
data DeauthorizeConnection = DeauthorizeConnection'
  { -- | The name of the connection to remove authorization from.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeauthorizeConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deauthorizeConnection_name' - The name of the connection to remove authorization from.
newDeauthorizeConnection ::
  -- | 'name'
  Prelude.Text ->
  DeauthorizeConnection
newDeauthorizeConnection pName_ =
  DeauthorizeConnection' {name = pName_}

-- | The name of the connection to remove authorization from.
deauthorizeConnection_name :: Lens.Lens' DeauthorizeConnection Prelude.Text
deauthorizeConnection_name = Lens.lens (\DeauthorizeConnection' {name} -> name) (\s@DeauthorizeConnection' {} a -> s {name = a} :: DeauthorizeConnection)

instance Core.AWSRequest DeauthorizeConnection where
  type
    AWSResponse DeauthorizeConnection =
      DeauthorizeConnectionResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          DeauthorizeConnectionResponse'
            Prelude.<$> (x Data..?> "ConnectionArn")
            Prelude.<*> (x Data..?> "ConnectionState")
            Prelude.<*> (x Data..?> "CreationTime")
            Prelude.<*> (x Data..?> "LastAuthorizedTime")
            Prelude.<*> (x Data..?> "LastModifiedTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeauthorizeConnection where
  hashWithSalt _salt DeauthorizeConnection' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData DeauthorizeConnection where
  rnf DeauthorizeConnection' {..} = Prelude.rnf name

instance Data.ToHeaders DeauthorizeConnection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSEvents.DeauthorizeConnection" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeauthorizeConnection where
  toJSON DeauthorizeConnection' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("Name" Data..= name)]
      )

instance Data.ToPath DeauthorizeConnection where
  toPath = Prelude.const "/"

instance Data.ToQuery DeauthorizeConnection where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeauthorizeConnectionResponse' smart constructor.
data DeauthorizeConnectionResponse = DeauthorizeConnectionResponse'
  { -- | The ARN of the connection that authorization was removed from.
    connectionArn :: Prelude.Maybe Prelude.Text,
    -- | The state of the connection.
    connectionState :: Prelude.Maybe ConnectionState,
    -- | A time stamp for the time that the connection was created.
    creationTime :: Prelude.Maybe Data.POSIX,
    -- | A time stamp for the time that the connection was last authorized.
    lastAuthorizedTime :: Prelude.Maybe Data.POSIX,
    -- | A time stamp for the time that the connection was last updated.
    lastModifiedTime :: Prelude.Maybe Data.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeauthorizeConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionArn', 'deauthorizeConnectionResponse_connectionArn' - The ARN of the connection that authorization was removed from.
--
-- 'connectionState', 'deauthorizeConnectionResponse_connectionState' - The state of the connection.
--
-- 'creationTime', 'deauthorizeConnectionResponse_creationTime' - A time stamp for the time that the connection was created.
--
-- 'lastAuthorizedTime', 'deauthorizeConnectionResponse_lastAuthorizedTime' - A time stamp for the time that the connection was last authorized.
--
-- 'lastModifiedTime', 'deauthorizeConnectionResponse_lastModifiedTime' - A time stamp for the time that the connection was last updated.
--
-- 'httpStatus', 'deauthorizeConnectionResponse_httpStatus' - The response's http status code.
newDeauthorizeConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeauthorizeConnectionResponse
newDeauthorizeConnectionResponse pHttpStatus_ =
  DeauthorizeConnectionResponse'
    { connectionArn =
        Prelude.Nothing,
      connectionState = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      lastAuthorizedTime = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the connection that authorization was removed from.
deauthorizeConnectionResponse_connectionArn :: Lens.Lens' DeauthorizeConnectionResponse (Prelude.Maybe Prelude.Text)
deauthorizeConnectionResponse_connectionArn = Lens.lens (\DeauthorizeConnectionResponse' {connectionArn} -> connectionArn) (\s@DeauthorizeConnectionResponse' {} a -> s {connectionArn = a} :: DeauthorizeConnectionResponse)

-- | The state of the connection.
deauthorizeConnectionResponse_connectionState :: Lens.Lens' DeauthorizeConnectionResponse (Prelude.Maybe ConnectionState)
deauthorizeConnectionResponse_connectionState = Lens.lens (\DeauthorizeConnectionResponse' {connectionState} -> connectionState) (\s@DeauthorizeConnectionResponse' {} a -> s {connectionState = a} :: DeauthorizeConnectionResponse)

-- | A time stamp for the time that the connection was created.
deauthorizeConnectionResponse_creationTime :: Lens.Lens' DeauthorizeConnectionResponse (Prelude.Maybe Prelude.UTCTime)
deauthorizeConnectionResponse_creationTime = Lens.lens (\DeauthorizeConnectionResponse' {creationTime} -> creationTime) (\s@DeauthorizeConnectionResponse' {} a -> s {creationTime = a} :: DeauthorizeConnectionResponse) Prelude.. Lens.mapping Data._Time

-- | A time stamp for the time that the connection was last authorized.
deauthorizeConnectionResponse_lastAuthorizedTime :: Lens.Lens' DeauthorizeConnectionResponse (Prelude.Maybe Prelude.UTCTime)
deauthorizeConnectionResponse_lastAuthorizedTime = Lens.lens (\DeauthorizeConnectionResponse' {lastAuthorizedTime} -> lastAuthorizedTime) (\s@DeauthorizeConnectionResponse' {} a -> s {lastAuthorizedTime = a} :: DeauthorizeConnectionResponse) Prelude.. Lens.mapping Data._Time

-- | A time stamp for the time that the connection was last updated.
deauthorizeConnectionResponse_lastModifiedTime :: Lens.Lens' DeauthorizeConnectionResponse (Prelude.Maybe Prelude.UTCTime)
deauthorizeConnectionResponse_lastModifiedTime = Lens.lens (\DeauthorizeConnectionResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DeauthorizeConnectionResponse' {} a -> s {lastModifiedTime = a} :: DeauthorizeConnectionResponse) Prelude.. Lens.mapping Data._Time

-- | The response's http status code.
deauthorizeConnectionResponse_httpStatus :: Lens.Lens' DeauthorizeConnectionResponse Prelude.Int
deauthorizeConnectionResponse_httpStatus = Lens.lens (\DeauthorizeConnectionResponse' {httpStatus} -> httpStatus) (\s@DeauthorizeConnectionResponse' {} a -> s {httpStatus = a} :: DeauthorizeConnectionResponse)

instance Prelude.NFData DeauthorizeConnectionResponse where
  rnf DeauthorizeConnectionResponse' {..} =
    Prelude.rnf connectionArn
      `Prelude.seq` Prelude.rnf connectionState
      `Prelude.seq` Prelude.rnf creationTime
      `Prelude.seq` Prelude.rnf lastAuthorizedTime
      `Prelude.seq` Prelude.rnf lastModifiedTime
      `Prelude.seq` Prelude.rnf httpStatus
