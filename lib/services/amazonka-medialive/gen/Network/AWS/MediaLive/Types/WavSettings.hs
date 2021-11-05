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
-- Module      : Amazonka.MediaLive.Types.WavSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.WavSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.WavCodingMode
import qualified Amazonka.Prelude as Prelude

-- | Wav Settings
--
-- /See:/ 'newWavSettings' smart constructor.
data WavSettings = WavSettings'
  { -- | Bits per sample.
    bitDepth :: Prelude.Maybe Prelude.Double,
    -- | The audio coding mode for the WAV audio. The mode determines the number
    -- of channels in the audio.
    codingMode :: Prelude.Maybe WavCodingMode,
    -- | Sample rate in Hz.
    sampleRate :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WavSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bitDepth', 'wavSettings_bitDepth' - Bits per sample.
--
-- 'codingMode', 'wavSettings_codingMode' - The audio coding mode for the WAV audio. The mode determines the number
-- of channels in the audio.
--
-- 'sampleRate', 'wavSettings_sampleRate' - Sample rate in Hz.
newWavSettings ::
  WavSettings
newWavSettings =
  WavSettings'
    { bitDepth = Prelude.Nothing,
      codingMode = Prelude.Nothing,
      sampleRate = Prelude.Nothing
    }

-- | Bits per sample.
wavSettings_bitDepth :: Lens.Lens' WavSettings (Prelude.Maybe Prelude.Double)
wavSettings_bitDepth = Lens.lens (\WavSettings' {bitDepth} -> bitDepth) (\s@WavSettings' {} a -> s {bitDepth = a} :: WavSettings)

-- | The audio coding mode for the WAV audio. The mode determines the number
-- of channels in the audio.
wavSettings_codingMode :: Lens.Lens' WavSettings (Prelude.Maybe WavCodingMode)
wavSettings_codingMode = Lens.lens (\WavSettings' {codingMode} -> codingMode) (\s@WavSettings' {} a -> s {codingMode = a} :: WavSettings)

-- | Sample rate in Hz.
wavSettings_sampleRate :: Lens.Lens' WavSettings (Prelude.Maybe Prelude.Double)
wavSettings_sampleRate = Lens.lens (\WavSettings' {sampleRate} -> sampleRate) (\s@WavSettings' {} a -> s {sampleRate = a} :: WavSettings)

instance Core.FromJSON WavSettings where
  parseJSON =
    Core.withObject
      "WavSettings"
      ( \x ->
          WavSettings'
            Prelude.<$> (x Core..:? "bitDepth")
            Prelude.<*> (x Core..:? "codingMode")
            Prelude.<*> (x Core..:? "sampleRate")
      )

instance Prelude.Hashable WavSettings

instance Prelude.NFData WavSettings

instance Core.ToJSON WavSettings where
  toJSON WavSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("bitDepth" Core..=) Prelude.<$> bitDepth,
            ("codingMode" Core..=) Prelude.<$> codingMode,
            ("sampleRate" Core..=) Prelude.<$> sampleRate
          ]
      )
