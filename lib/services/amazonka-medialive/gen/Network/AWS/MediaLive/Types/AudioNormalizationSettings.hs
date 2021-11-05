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
-- Module      : Amazonka.MediaLive.Types.AudioNormalizationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.AudioNormalizationSettings where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.MediaLive.Types.AudioNormalizationAlgorithm
import Amazonka.MediaLive.Types.AudioNormalizationAlgorithmControl
import qualified Amazonka.Prelude as Prelude

-- | Audio Normalization Settings
--
-- /See:/ 'newAudioNormalizationSettings' smart constructor.
data AudioNormalizationSettings = AudioNormalizationSettings'
  { -- | When set to correctAudio the output audio is corrected using the chosen
    -- algorithm. If set to measureOnly, the audio will be measured but not
    -- adjusted.
    algorithmControl :: Prelude.Maybe AudioNormalizationAlgorithmControl,
    -- | Target LKFS(loudness) to adjust volume to. If no value is entered, a
    -- default value will be used according to the chosen algorithm. The CALM
    -- Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
    -- specification (1770-2) recommends a target of -23 LKFS.
    targetLkfs :: Prelude.Maybe Prelude.Double,
    -- | Audio normalization algorithm to use. itu17701 conforms to the CALM Act
    -- specification, itu17702 conforms to the EBU R-128 specification.
    algorithm :: Prelude.Maybe AudioNormalizationAlgorithm
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AudioNormalizationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'algorithmControl', 'audioNormalizationSettings_algorithmControl' - When set to correctAudio the output audio is corrected using the chosen
-- algorithm. If set to measureOnly, the audio will be measured but not
-- adjusted.
--
-- 'targetLkfs', 'audioNormalizationSettings_targetLkfs' - Target LKFS(loudness) to adjust volume to. If no value is entered, a
-- default value will be used according to the chosen algorithm. The CALM
-- Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
-- specification (1770-2) recommends a target of -23 LKFS.
--
-- 'algorithm', 'audioNormalizationSettings_algorithm' - Audio normalization algorithm to use. itu17701 conforms to the CALM Act
-- specification, itu17702 conforms to the EBU R-128 specification.
newAudioNormalizationSettings ::
  AudioNormalizationSettings
newAudioNormalizationSettings =
  AudioNormalizationSettings'
    { algorithmControl =
        Prelude.Nothing,
      targetLkfs = Prelude.Nothing,
      algorithm = Prelude.Nothing
    }

-- | When set to correctAudio the output audio is corrected using the chosen
-- algorithm. If set to measureOnly, the audio will be measured but not
-- adjusted.
audioNormalizationSettings_algorithmControl :: Lens.Lens' AudioNormalizationSettings (Prelude.Maybe AudioNormalizationAlgorithmControl)
audioNormalizationSettings_algorithmControl = Lens.lens (\AudioNormalizationSettings' {algorithmControl} -> algorithmControl) (\s@AudioNormalizationSettings' {} a -> s {algorithmControl = a} :: AudioNormalizationSettings)

-- | Target LKFS(loudness) to adjust volume to. If no value is entered, a
-- default value will be used according to the chosen algorithm. The CALM
-- Act (1770-1) recommends a target of -24 LKFS. The EBU R-128
-- specification (1770-2) recommends a target of -23 LKFS.
audioNormalizationSettings_targetLkfs :: Lens.Lens' AudioNormalizationSettings (Prelude.Maybe Prelude.Double)
audioNormalizationSettings_targetLkfs = Lens.lens (\AudioNormalizationSettings' {targetLkfs} -> targetLkfs) (\s@AudioNormalizationSettings' {} a -> s {targetLkfs = a} :: AudioNormalizationSettings)

-- | Audio normalization algorithm to use. itu17701 conforms to the CALM Act
-- specification, itu17702 conforms to the EBU R-128 specification.
audioNormalizationSettings_algorithm :: Lens.Lens' AudioNormalizationSettings (Prelude.Maybe AudioNormalizationAlgorithm)
audioNormalizationSettings_algorithm = Lens.lens (\AudioNormalizationSettings' {algorithm} -> algorithm) (\s@AudioNormalizationSettings' {} a -> s {algorithm = a} :: AudioNormalizationSettings)

instance Core.FromJSON AudioNormalizationSettings where
  parseJSON =
    Core.withObject
      "AudioNormalizationSettings"
      ( \x ->
          AudioNormalizationSettings'
            Prelude.<$> (x Core..:? "algorithmControl")
            Prelude.<*> (x Core..:? "targetLkfs")
            Prelude.<*> (x Core..:? "algorithm")
      )

instance Prelude.Hashable AudioNormalizationSettings

instance Prelude.NFData AudioNormalizationSettings

instance Core.ToJSON AudioNormalizationSettings where
  toJSON AudioNormalizationSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("algorithmControl" Core..=)
              Prelude.<$> algorithmControl,
            ("targetLkfs" Core..=) Prelude.<$> targetLkfs,
            ("algorithm" Core..=) Prelude.<$> algorithm
          ]
      )
