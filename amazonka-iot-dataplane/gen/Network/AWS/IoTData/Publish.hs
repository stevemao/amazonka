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
-- Module      : Network.AWS.IoTData.Publish
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes an MQTT message.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions Publish>
-- action.
--
-- For more information about MQTT messages, see
-- <http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html MQTT Protocol>
-- in the IoT Developer Guide.
--
-- For more information about messaging costs, see
-- <http://aws.amazon.com/iot-core/pricing/#Messaging IoT Core pricing - Messaging>.
module Network.AWS.IoTData.Publish
  ( -- * Creating a Request
    Publish (..),
    newPublish,

    -- * Request Lenses
    publish_payload,
    publish_retain,
    publish_qos,
    publish_topic,

    -- * Destructuring the Response
    PublishResponse (..),
    newPublishResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTData.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for the Publish operation.
--
-- /See:/ 'newPublish' smart constructor.
data Publish = Publish'
  { -- | The message body. MQTT accepts text, binary, and empty (null) message
    -- payloads.
    --
    -- Publishing an empty (null) payload with __retain__ = @true@ deletes the
    -- retained message identified by __topic__ from IoT Core.
    payload :: Prelude.Maybe Prelude.ByteString,
    -- | A Boolean value that determines whether to set the RETAIN flag when the
    -- message is published.
    --
    -- Setting the RETAIN flag causes the message to be retained and sent to
    -- new subscribers to the topic.
    --
    -- Valid values: @true@ | @false@
    --
    -- Default value: @false@
    retain :: Prelude.Maybe Prelude.Bool,
    -- | The Quality of Service (QoS) level.
    qos :: Prelude.Maybe Prelude.Natural,
    -- | The name of the MQTT topic.
    topic :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Publish' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'payload', 'publish_payload' - The message body. MQTT accepts text, binary, and empty (null) message
-- payloads.
--
-- Publishing an empty (null) payload with __retain__ = @true@ deletes the
-- retained message identified by __topic__ from IoT Core.
--
-- 'retain', 'publish_retain' - A Boolean value that determines whether to set the RETAIN flag when the
-- message is published.
--
-- Setting the RETAIN flag causes the message to be retained and sent to
-- new subscribers to the topic.
--
-- Valid values: @true@ | @false@
--
-- Default value: @false@
--
-- 'qos', 'publish_qos' - The Quality of Service (QoS) level.
--
-- 'topic', 'publish_topic' - The name of the MQTT topic.
newPublish ::
  -- | 'topic'
  Prelude.Text ->
  Publish
newPublish pTopic_ =
  Publish'
    { payload = Prelude.Nothing,
      retain = Prelude.Nothing,
      qos = Prelude.Nothing,
      topic = pTopic_
    }

-- | The message body. MQTT accepts text, binary, and empty (null) message
-- payloads.
--
-- Publishing an empty (null) payload with __retain__ = @true@ deletes the
-- retained message identified by __topic__ from IoT Core.
publish_payload :: Lens.Lens' Publish (Prelude.Maybe Prelude.ByteString)
publish_payload = Lens.lens (\Publish' {payload} -> payload) (\s@Publish' {} a -> s {payload = a} :: Publish)

-- | A Boolean value that determines whether to set the RETAIN flag when the
-- message is published.
--
-- Setting the RETAIN flag causes the message to be retained and sent to
-- new subscribers to the topic.
--
-- Valid values: @true@ | @false@
--
-- Default value: @false@
publish_retain :: Lens.Lens' Publish (Prelude.Maybe Prelude.Bool)
publish_retain = Lens.lens (\Publish' {retain} -> retain) (\s@Publish' {} a -> s {retain = a} :: Publish)

-- | The Quality of Service (QoS) level.
publish_qos :: Lens.Lens' Publish (Prelude.Maybe Prelude.Natural)
publish_qos = Lens.lens (\Publish' {qos} -> qos) (\s@Publish' {} a -> s {qos = a} :: Publish)

-- | The name of the MQTT topic.
publish_topic :: Lens.Lens' Publish Prelude.Text
publish_topic = Lens.lens (\Publish' {topic} -> topic) (\s@Publish' {} a -> s {topic = a} :: Publish)

instance Core.AWSRequest Publish where
  type AWSResponse Publish = PublishResponse
  request = Request.postBody defaultService
  response = Response.receiveNull PublishResponse'

instance Prelude.Hashable Publish

instance Prelude.NFData Publish

instance Core.ToBody Publish where
  toBody Publish' {..} = Core.toBody payload

instance Core.ToHeaders Publish where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath Publish where
  toPath Publish' {..} =
    Prelude.mconcat ["/topics/", Core.toBS topic]

instance Core.ToQuery Publish where
  toQuery Publish' {..} =
    Prelude.mconcat
      ["retain" Core.=: retain, "qos" Core.=: qos]

-- | /See:/ 'newPublishResponse' smart constructor.
data PublishResponse = PublishResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PublishResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPublishResponse ::
  PublishResponse
newPublishResponse = PublishResponse'

instance Prelude.NFData PublishResponse
