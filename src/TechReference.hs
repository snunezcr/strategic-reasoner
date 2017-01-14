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
  show t = "\tReference for Technology\n" ++
           "\t\tID: " ++ show (techRefID t) ++
           "\n\t\tCountry: " ++ techRefCountry t ++
           "\n\t\tOrganization: " ++ techRefOrganization t ++
           "\n\t\tDependency: " ++ techRefDependency t ++
           "\n\t\tExpert: " ++ techRefExpert t ++
           "\n\t\tEmail: " ++ techRefEmail t
