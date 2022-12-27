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
-- Module      : Amazonka.Pinpoint.Types.CampaignCustomMessage
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Pinpoint.Types.CampaignCustomMessage where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Specifies the contents of a message that\'s sent through a custom
-- channel to recipients of a campaign.
--
-- /See:/ 'newCampaignCustomMessage' smart constructor.
data CampaignCustomMessage = CampaignCustomMessage'
  { -- | The raw, JSON-formatted string to use as the payload for the message.
    -- The maximum size is 5 KB.
    data' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CampaignCustomMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'data'', 'campaignCustomMessage_data' - The raw, JSON-formatted string to use as the payload for the message.
-- The maximum size is 5 KB.
newCampaignCustomMessage ::
  CampaignCustomMessage
newCampaignCustomMessage =
  CampaignCustomMessage' {data' = Prelude.Nothing}

-- | The raw, JSON-formatted string to use as the payload for the message.
-- The maximum size is 5 KB.
campaignCustomMessage_data :: Lens.Lens' CampaignCustomMessage (Prelude.Maybe Prelude.Text)
campaignCustomMessage_data = Lens.lens (\CampaignCustomMessage' {data'} -> data') (\s@CampaignCustomMessage' {} a -> s {data' = a} :: CampaignCustomMessage)

instance Data.FromJSON CampaignCustomMessage where
  parseJSON =
    Data.withObject
      "CampaignCustomMessage"
      ( \x ->
          CampaignCustomMessage'
            Prelude.<$> (x Data..:? "Data")
      )

instance Prelude.Hashable CampaignCustomMessage where
  hashWithSalt _salt CampaignCustomMessage' {..} =
    _salt `Prelude.hashWithSalt` data'

instance Prelude.NFData CampaignCustomMessage where
  rnf CampaignCustomMessage' {..} = Prelude.rnf data'

instance Data.ToJSON CampaignCustomMessage where
  toJSON CampaignCustomMessage' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Data" Data..=) Prelude.<$> data']
      )
