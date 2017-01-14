-- TechnologyReference

-- This module takes care of representing a referent for a given technology
-- for later computing associations and viability.

module TechReference
    ( TechReference(..)
    ) where

data TechReference = TechReference
    { techRefID           :: Int
    , techRefCountry      :: String
    , techRefOrganization :: String
    , techRefDependency   :: String
    , techRefExpert       :: String
    , techRefEmail        :: String
    }

instance Show TechReference where
  show t = "\tReference for Technology\n" ++ "\t------------------------\n" ++
           "\tID: " ++ show (techRefID t) ++
           "\n\tCountry: " ++ techRefCountry t ++
           "\n\tOrganization: " ++ techRefOrganization t ++
           "\n\tDependency: " ++ techRefDependency t ++
           "\n\tExpert: " ++ techRefExpert t ++
           "\n\tEmail: " ++ techRefEmail t
