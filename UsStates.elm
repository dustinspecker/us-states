module UsStates (fromAbbr, toAbbr) where

{-| Get the last element from a List.

# Usage
@docs fromAbbr
@docs toAbbr
-}

import Char
import Dict
import StatesAndAbbrs
import String


capitalizeFirstLetter : String -> String
capitalizeFirstLetter word =
  (String.slice 1 (String.length word) word)
    |> (++) (String.toUpper (String.slice 0 1 word))


capitalizeWords : String -> String
capitalizeWords sentence =
  String.words sentence
    |> List.map (\word -> (capitalizeFirstLetter word))
    |> String.join " "


{-| Get state name from abbrevation

    fromAbbr "ZZ" -- Nothing
    fromAbbr "mo" -- "Missouri"
    fromAbbr "MO" -- "Missouri"

-}
fromAbbr : String -> Maybe String
fromAbbr abbr =
  let
    stateName =
      Dict.get (String.toLower abbr) StatesAndAbbrs.withAbbrKeys
  in
    case stateName of
      Nothing ->
        Nothing

      _ ->
        Just (capitalizeWords (Maybe.withDefault "" stateName))


{-| Get abbrevation from state name

    toAbbr "Cow" -- Nothing
    toAbbr "missouri" -- "MO"
    toAbbr "Missouri" -- "MO"

-}
toAbbr : String -> Maybe String
toAbbr stateName =
  let
    stateAbbr =
      Dict.get (String.toLower stateName) StatesAndAbbrs.withStateKeys
  in
    case stateAbbr of
      Nothing ->
        Nothing

      _ ->
        Just (String.toUpper (Maybe.withDefault "" stateAbbr))
