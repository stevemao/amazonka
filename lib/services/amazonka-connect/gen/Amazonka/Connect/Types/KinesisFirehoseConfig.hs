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
-- Module      : Amazonka.Connect.Types.KinesisFirehoseConfig
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.KinesisFirehoseConfig where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration information of a Kinesis Data Firehose delivery stream.
--
-- /See:/ 'newKinesisFirehoseConfig' smart constructor.
data KinesisFirehoseConfig = KinesisFirehoseConfig'
  { -- | The Amazon Resource Name (ARN) of the delivery stream.
    firehoseArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisFirehoseConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firehoseArn', 'kinesisFirehoseConfig_firehoseArn' - The Amazon Resource Name (ARN) of the delivery stream.
newKinesisFirehoseConfig ::
  -- | 'firehoseArn'
  Prelude.Text ->
  KinesisFirehoseConfig
newKinesisFirehoseConfig pFirehoseArn_ =
  KinesisFirehoseConfig' {firehoseArn = pFirehoseArn_}

-- | The Amazon Resource Name (ARN) of the delivery stream.
kinesisFirehoseConfig_firehoseArn :: Lens.Lens' KinesisFirehoseConfig Prelude.Text
kinesisFirehoseConfig_firehoseArn = Lens.lens (\KinesisFirehoseConfig' {firehoseArn} -> firehoseArn) (\s@KinesisFirehoseConfig' {} a -> s {firehoseArn = a} :: KinesisFirehoseConfig)

instance Data.FromJSON KinesisFirehoseConfig where
  parseJSON =
    Data.withObject
      "KinesisFirehoseConfig"
      ( \x ->
          KinesisFirehoseConfig'
            Prelude.<$> (x Data..: "FirehoseArn")
      )

instance Prelude.Hashable KinesisFirehoseConfig where
  hashWithSalt _salt KinesisFirehoseConfig' {..} =
    _salt `Prelude.hashWithSalt` firehoseArn

instance Prelude.NFData KinesisFirehoseConfig where
  rnf KinesisFirehoseConfig' {..} =
    Prelude.rnf firehoseArn

instance Data.ToJSON KinesisFirehoseConfig where
  toJSON KinesisFirehoseConfig' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("FirehoseArn" Data..= firehoseArn)]
      )
