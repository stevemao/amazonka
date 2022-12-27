{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Pinpoint.Types.TreatmentResource
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.TreatmentResource where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Pinpoint.Types.CampaignState
import Amazonka.Pinpoint.Types.CustomDeliveryConfiguration
import Amazonka.Pinpoint.Types.MessageConfiguration
import Amazonka.Pinpoint.Types.Schedule
import Amazonka.Pinpoint.Types.TemplateConfiguration
import qualified Amazonka.Prelude as Prelude

-- | Specifies the settings for a campaign treatment. A /treatment/ is a
-- variation of a campaign that\'s used for A\/B testing of a campaign.
--
-- /See:/ 'newTreatmentResource' smart constructor.
data TreatmentResource = TreatmentResource'
  { -- | The delivery configuration settings for sending the treatment through a
    -- custom channel. This object is required if the MessageConfiguration
    -- object for the treatment specifies a CustomMessage object.
    customDeliveryConfiguration :: Prelude.Maybe CustomDeliveryConfiguration,
    -- | The message configuration settings for the treatment.
    messageConfiguration :: Prelude.Maybe MessageConfiguration,
    -- | The schedule settings for the treatment.
    schedule :: Prelude.Maybe Schedule,
    -- | The current status of the treatment.
    state :: Prelude.Maybe CampaignState,
    -- | The message template to use for the treatment.
    templateConfiguration :: Prelude.Maybe TemplateConfiguration,
    -- | The custom description of the treatment.
    treatmentDescription :: Prelude.Maybe Prelude.Text,
    -- | The custom name of the treatment.
    treatmentName :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the treatment.
    id :: Prelude.Text,
    -- | The allocated percentage of users (segment members) that the treatment
    -- is sent to.
    sizePercent :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TreatmentResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customDeliveryConfiguration', 'treatmentResource_customDeliveryConfiguration' - The delivery configuration settings for sending the treatment through a
-- custom channel. This object is required if the MessageConfiguration
-- object for the treatment specifies a CustomMessage object.
--
-- 'messageConfiguration', 'treatmentResource_messageConfiguration' - The message configuration settings for the treatment.
--
-- 'schedule', 'treatmentResource_schedule' - The schedule settings for the treatment.
--
-- 'state', 'treatmentResource_state' - The current status of the treatment.
--
-- 'templateConfiguration', 'treatmentResource_templateConfiguration' - The message template to use for the treatment.
--
-- 'treatmentDescription', 'treatmentResource_treatmentDescription' - The custom description of the treatment.
--
-- 'treatmentName', 'treatmentResource_treatmentName' - The custom name of the treatment.
--
-- 'id', 'treatmentResource_id' - The unique identifier for the treatment.
--
-- 'sizePercent', 'treatmentResource_sizePercent' - The allocated percentage of users (segment members) that the treatment
-- is sent to.
newTreatmentResource ::
  -- | 'id'
  Prelude.Text ->
  -- | 'sizePercent'
  Prelude.Int ->
  TreatmentResource
newTreatmentResource pId_ pSizePercent_ =
  TreatmentResource'
    { customDeliveryConfiguration =
        Prelude.Nothing,
      messageConfiguration = Prelude.Nothing,
      schedule = Prelude.Nothing,
      state = Prelude.Nothing,
      templateConfiguration = Prelude.Nothing,
      treatmentDescription = Prelude.Nothing,
      treatmentName = Prelude.Nothing,
      id = pId_,
      sizePercent = pSizePercent_
    }

-- | The delivery configuration settings for sending the treatment through a
-- custom channel. This object is required if the MessageConfiguration
-- object for the treatment specifies a CustomMessage object.
treatmentResource_customDeliveryConfiguration :: Lens.Lens' TreatmentResource (Prelude.Maybe CustomDeliveryConfiguration)
treatmentResource_customDeliveryConfiguration = Lens.lens (\TreatmentResource' {customDeliveryConfiguration} -> customDeliveryConfiguration) (\s@TreatmentResource' {} a -> s {customDeliveryConfiguration = a} :: TreatmentResource)

-- | The message configuration settings for the treatment.
treatmentResource_messageConfiguration :: Lens.Lens' TreatmentResource (Prelude.Maybe MessageConfiguration)
treatmentResource_messageConfiguration = Lens.lens (\TreatmentResource' {messageConfiguration} -> messageConfiguration) (\s@TreatmentResource' {} a -> s {messageConfiguration = a} :: TreatmentResource)

-- | The schedule settings for the treatment.
treatmentResource_schedule :: Lens.Lens' TreatmentResource (Prelude.Maybe Schedule)
treatmentResource_schedule = Lens.lens (\TreatmentResource' {schedule} -> schedule) (\s@TreatmentResource' {} a -> s {schedule = a} :: TreatmentResource)

-- | The current status of the treatment.
treatmentResource_state :: Lens.Lens' TreatmentResource (Prelude.Maybe CampaignState)
treatmentResource_state = Lens.lens (\TreatmentResource' {state} -> state) (\s@TreatmentResource' {} a -> s {state = a} :: TreatmentResource)

-- | The message template to use for the treatment.
treatmentResource_templateConfiguration :: Lens.Lens' TreatmentResource (Prelude.Maybe TemplateConfiguration)
treatmentResource_templateConfiguration = Lens.lens (\TreatmentResource' {templateConfiguration} -> templateConfiguration) (\s@TreatmentResource' {} a -> s {templateConfiguration = a} :: TreatmentResource)

-- | The custom description of the treatment.
treatmentResource_treatmentDescription :: Lens.Lens' TreatmentResource (Prelude.Maybe Prelude.Text)
treatmentResource_treatmentDescription = Lens.lens (\TreatmentResource' {treatmentDescription} -> treatmentDescription) (\s@TreatmentResource' {} a -> s {treatmentDescription = a} :: TreatmentResource)

-- | The custom name of the treatment.
treatmentResource_treatmentName :: Lens.Lens' TreatmentResource (Prelude.Maybe Prelude.Text)
treatmentResource_treatmentName = Lens.lens (\TreatmentResource' {treatmentName} -> treatmentName) (\s@TreatmentResource' {} a -> s {treatmentName = a} :: TreatmentResource)

-- | The unique identifier for the treatment.
treatmentResource_id :: Lens.Lens' TreatmentResource Prelude.Text
treatmentResource_id = Lens.lens (\TreatmentResource' {id} -> id) (\s@TreatmentResource' {} a -> s {id = a} :: TreatmentResource)

-- | The allocated percentage of users (segment members) that the treatment
-- is sent to.
treatmentResource_sizePercent :: Lens.Lens' TreatmentResource Prelude.Int
treatmentResource_sizePercent = Lens.lens (\TreatmentResource' {sizePercent} -> sizePercent) (\s@TreatmentResource' {} a -> s {sizePercent = a} :: TreatmentResource)

instance Data.FromJSON TreatmentResource where
  parseJSON =
    Data.withObject
      "TreatmentResource"
      ( \x ->
          TreatmentResource'
            Prelude.<$> (x Data..:? "CustomDeliveryConfiguration")
            Prelude.<*> (x Data..:? "MessageConfiguration")
            Prelude.<*> (x Data..:? "Schedule")
            Prelude.<*> (x Data..:? "State")
            Prelude.<*> (x Data..:? "TemplateConfiguration")
            Prelude.<*> (x Data..:? "TreatmentDescription")
            Prelude.<*> (x Data..:? "TreatmentName")
            Prelude.<*> (x Data..: "Id")
            Prelude.<*> (x Data..: "SizePercent")
      )

instance Prelude.Hashable TreatmentResource where
  hashWithSalt _salt TreatmentResource' {..} =
    _salt
      `Prelude.hashWithSalt` customDeliveryConfiguration
      `Prelude.hashWithSalt` messageConfiguration
      `Prelude.hashWithSalt` schedule
      `Prelude.hashWithSalt` state
      `Prelude.hashWithSalt` templateConfiguration
      `Prelude.hashWithSalt` treatmentDescription
      `Prelude.hashWithSalt` treatmentName
      `Prelude.hashWithSalt` id
      `Prelude.hashWithSalt` sizePercent

instance Prelude.NFData TreatmentResource where
  rnf TreatmentResource' {..} =
    Prelude.rnf customDeliveryConfiguration
      `Prelude.seq` Prelude.rnf messageConfiguration
      `Prelude.seq` Prelude.rnf schedule
      `Prelude.seq` Prelude.rnf state
      `Prelude.seq` Prelude.rnf templateConfiguration
      `Prelude.seq` Prelude.rnf treatmentDescription
      `Prelude.seq` Prelude.rnf treatmentName
      `Prelude.seq` Prelude.rnf id
      `Prelude.seq` Prelude.rnf sizePercent
