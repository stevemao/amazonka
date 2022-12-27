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
-- Module      : Amazonka.SNS.ConfirmSubscription
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Verifies an endpoint owner\'s intent to receive messages by validating
-- the token sent to the endpoint by an earlier @Subscribe@ action. If the
-- token is valid, the action creates a new subscription and returns its
-- Amazon Resource Name (ARN). This call requires an AWS signature only
-- when the @AuthenticateOnUnsubscribe@ flag is set to \"true\".
module Amazonka.SNS.ConfirmSubscription
  ( -- * Creating a Request
    ConfirmSubscription (..),
    newConfirmSubscription,

    -- * Request Lenses
    confirmSubscription_authenticateOnUnsubscribe,
    confirmSubscription_topicArn,
    confirmSubscription_token,

    -- * Destructuring the Response
    ConfirmSubscriptionResponse (..),
    newConfirmSubscriptionResponse,

    -- * Response Lenses
    confirmSubscriptionResponse_subscriptionArn,
    confirmSubscriptionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SNS.Types

-- | Input for ConfirmSubscription action.
--
-- /See:/ 'newConfirmSubscription' smart constructor.
data ConfirmSubscription = ConfirmSubscription'
  { -- | Disallows unauthenticated unsubscribes of the subscription. If the value
    -- of this parameter is @true@ and the request has an Amazon Web Services
    -- signature, then only the topic owner and the subscription owner can
    -- unsubscribe the endpoint. The unsubscribe action requires Amazon Web
    -- Services authentication.
    authenticateOnUnsubscribe :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the topic for which you wish to confirm a subscription.
    topicArn :: Prelude.Text,
    -- | Short-lived token sent to an endpoint during the @Subscribe@ action.
    token :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfirmSubscription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authenticateOnUnsubscribe', 'confirmSubscription_authenticateOnUnsubscribe' - Disallows unauthenticated unsubscribes of the subscription. If the value
-- of this parameter is @true@ and the request has an Amazon Web Services
-- signature, then only the topic owner and the subscription owner can
-- unsubscribe the endpoint. The unsubscribe action requires Amazon Web
-- Services authentication.
--
-- 'topicArn', 'confirmSubscription_topicArn' - The ARN of the topic for which you wish to confirm a subscription.
--
-- 'token', 'confirmSubscription_token' - Short-lived token sent to an endpoint during the @Subscribe@ action.
newConfirmSubscription ::
  -- | 'topicArn'
  Prelude.Text ->
  -- | 'token'
  Prelude.Text ->
  ConfirmSubscription
newConfirmSubscription pTopicArn_ pToken_ =
  ConfirmSubscription'
    { authenticateOnUnsubscribe =
        Prelude.Nothing,
      topicArn = pTopicArn_,
      token = pToken_
    }

-- | Disallows unauthenticated unsubscribes of the subscription. If the value
-- of this parameter is @true@ and the request has an Amazon Web Services
-- signature, then only the topic owner and the subscription owner can
-- unsubscribe the endpoint. The unsubscribe action requires Amazon Web
-- Services authentication.
confirmSubscription_authenticateOnUnsubscribe :: Lens.Lens' ConfirmSubscription (Prelude.Maybe Prelude.Text)
confirmSubscription_authenticateOnUnsubscribe = Lens.lens (\ConfirmSubscription' {authenticateOnUnsubscribe} -> authenticateOnUnsubscribe) (\s@ConfirmSubscription' {} a -> s {authenticateOnUnsubscribe = a} :: ConfirmSubscription)

-- | The ARN of the topic for which you wish to confirm a subscription.
confirmSubscription_topicArn :: Lens.Lens' ConfirmSubscription Prelude.Text
confirmSubscription_topicArn = Lens.lens (\ConfirmSubscription' {topicArn} -> topicArn) (\s@ConfirmSubscription' {} a -> s {topicArn = a} :: ConfirmSubscription)

-- | Short-lived token sent to an endpoint during the @Subscribe@ action.
confirmSubscription_token :: Lens.Lens' ConfirmSubscription Prelude.Text
confirmSubscription_token = Lens.lens (\ConfirmSubscription' {token} -> token) (\s@ConfirmSubscription' {} a -> s {token = a} :: ConfirmSubscription)

instance Core.AWSRequest ConfirmSubscription where
  type
    AWSResponse ConfirmSubscription =
      ConfirmSubscriptionResponse
  request overrides =
    Request.postQuery (overrides defaultService)
  response =
    Response.receiveXMLWrapper
      "ConfirmSubscriptionResult"
      ( \s h x ->
          ConfirmSubscriptionResponse'
            Prelude.<$> (x Data..@? "SubscriptionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ConfirmSubscription where
  hashWithSalt _salt ConfirmSubscription' {..} =
    _salt
      `Prelude.hashWithSalt` authenticateOnUnsubscribe
      `Prelude.hashWithSalt` topicArn
      `Prelude.hashWithSalt` token

instance Prelude.NFData ConfirmSubscription where
  rnf ConfirmSubscription' {..} =
    Prelude.rnf authenticateOnUnsubscribe
      `Prelude.seq` Prelude.rnf topicArn
      `Prelude.seq` Prelude.rnf token

instance Data.ToHeaders ConfirmSubscription where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath ConfirmSubscription where
  toPath = Prelude.const "/"

instance Data.ToQuery ConfirmSubscription where
  toQuery ConfirmSubscription' {..} =
    Prelude.mconcat
      [ "Action"
          Data.=: ("ConfirmSubscription" :: Prelude.ByteString),
        "Version"
          Data.=: ("2010-03-31" :: Prelude.ByteString),
        "AuthenticateOnUnsubscribe"
          Data.=: authenticateOnUnsubscribe,
        "TopicArn" Data.=: topicArn,
        "Token" Data.=: token
      ]

-- | Response for ConfirmSubscriptions action.
--
-- /See:/ 'newConfirmSubscriptionResponse' smart constructor.
data ConfirmSubscriptionResponse = ConfirmSubscriptionResponse'
  { -- | The ARN of the created subscription.
    subscriptionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConfirmSubscriptionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'subscriptionArn', 'confirmSubscriptionResponse_subscriptionArn' - The ARN of the created subscription.
--
-- 'httpStatus', 'confirmSubscriptionResponse_httpStatus' - The response's http status code.
newConfirmSubscriptionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ConfirmSubscriptionResponse
newConfirmSubscriptionResponse pHttpStatus_ =
  ConfirmSubscriptionResponse'
    { subscriptionArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the created subscription.
confirmSubscriptionResponse_subscriptionArn :: Lens.Lens' ConfirmSubscriptionResponse (Prelude.Maybe Prelude.Text)
confirmSubscriptionResponse_subscriptionArn = Lens.lens (\ConfirmSubscriptionResponse' {subscriptionArn} -> subscriptionArn) (\s@ConfirmSubscriptionResponse' {} a -> s {subscriptionArn = a} :: ConfirmSubscriptionResponse)

-- | The response's http status code.
confirmSubscriptionResponse_httpStatus :: Lens.Lens' ConfirmSubscriptionResponse Prelude.Int
confirmSubscriptionResponse_httpStatus = Lens.lens (\ConfirmSubscriptionResponse' {httpStatus} -> httpStatus) (\s@ConfirmSubscriptionResponse' {} a -> s {httpStatus = a} :: ConfirmSubscriptionResponse)

instance Prelude.NFData ConfirmSubscriptionResponse where
  rnf ConfirmSubscriptionResponse' {..} =
    Prelude.rnf subscriptionArn
      `Prelude.seq` Prelude.rnf httpStatus
