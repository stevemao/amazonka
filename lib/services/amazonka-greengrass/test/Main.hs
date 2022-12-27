{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Main
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Main (main) where

import Test.Amazonka.Greengrass
import Test.Amazonka.Greengrass.Internal
import Test.Tasty

main :: IO ()
main =
  defaultMain $
    testGroup
      "Greengrass"
      [ testGroup "tests" tests,
        testGroup "fixtures" fixtures
      ]
