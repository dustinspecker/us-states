module Tests (..) where

import ElmTest exposing (..)
import UsStates


all : Test
all =
  suite
    "UsSates"
    [ defaultTest
        (assertEqual
          Nothing
          (UsStates.fromAbbr "ZZ")
        )
    , defaultTest
        (assertEqual
          (Just "Missouri")
          (UsStates.fromAbbr "MO")
        )
    , defaultTest
        (assertEqual
          (Just "Rhode Island")
          (UsStates.fromAbbr "RI")
        )
    , defaultTest
        (assertEqual
          Nothing
          (UsStates.toAbbr "zz")
        )
    , defaultTest
        (assertEqual
          (Just "RI")
          (UsStates.toAbbr "rhOdE isLand")
        )
    , defaultTest
        (assertEqual
          (Just "MO")
          (UsStates.toAbbr "miSSouRi")
        )
    ]
