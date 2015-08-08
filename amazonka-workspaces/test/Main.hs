{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Main
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Main (main) where

import Test.Tasty
import Test.AWS.WorkSpaces
import Test.AWS.WorkSpaces.Internal

main :: IO ()
main = defaultMain $ testGroup "WorkSpaces"
    [ testGroup "tests"    tests
    , testGroup "fixtures" fixtures
    ]
