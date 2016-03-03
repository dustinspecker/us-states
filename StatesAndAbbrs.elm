module StatesAndAbbrs (withAbbrKeys, withStateKeys) where

import Dict


statesAndAbbrsList : List ( String, String )
statesAndAbbrsList =
  [ ( "al", "alabama" )
  , ( "ak", "alaska" )
  , ( "az", "arizona" )
  , ( "ar", "arkansas" )
  , ( "ca", "california" )
  , ( "co", "colorado" )
  , ( "ct", "connecticut" )
  , ( "de", "delaware" )
  , ( "dc", "district of columbia" )
  , ( "fl", "florida" )
  , ( "ga", "georgia" )
  , ( "hi", "hawaii" )
  , ( "id", "idaho" )
  , ( "il", "illinois" )
  , ( "in", "indiana" )
  , ( "ia", "iowa" )
  , ( "ks", "kansas" )
  , ( "ky", "kentucky" )
  , ( "la", "louisiana" )
  , ( "me", "maine" )
  , ( "md", "maryland" )
  , ( "ma", "massachusetts" )
  , ( "mi", "michigan" )
  , ( "mn", "minnesota" )
  , ( "ms", "mississippi" )
  , ( "mo", "missouri" )
  , ( "mt", "montana" )
  , ( "ne", "nebraska" )
  , ( "nv", "nevada" )
  , ( "nh", "new hampshire" )
  , ( "nj", "new jersey" )
  , ( "nm", "new mexico" )
  , ( "ny", "new york" )
  , ( "nc", "north carolina" )
  , ( "nd", "north dakota" )
  , ( "oh", "ohio" )
  , ( "ok", "oklahoma" )
  , ( "or", "oregon" )
  , ( "pa", "pennsylvania" )
  , ( "ri", "rhode island" )
  , ( "sc", "south carolina" )
  , ( "sd", "south dakota" )
  , ( "tn", "tennessee" )
  , ( "tx", "texas" )
  , ( "ut", "utah" )
  , ( "vt", "vermont" )
  , ( "va", "virginia" )
  , ( "wa", "washington" )
  , ( "wv", "west virginia" )
  , ( "wi", "wisconsin" )
  , ( "wy", "wyoming" )
  ]


withAbbrKeys : Dict.Dict String String
withAbbrKeys =
  Dict.fromList statesAndAbbrsList


withStateKeys : Dict.Dict String String
withStateKeys =
  Dict.fromList (List.map (\( abbr, name ) -> ( name, abbr )) statesAndAbbrsList)
