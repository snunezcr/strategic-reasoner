-- TechReference

-- This module takes care of representing a referent for a given technology
-- for later computing associations and viability.

module TechReference
    ( TechReference(..), toLatexSpa
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


toLatexSpa :: TechReference -> String
toLatexSpa t = "\\subsection{Referencia " ++ show (techRefID t) ++ "}\n\n" ++
               "\\begin{description}\n" ++
               "\t\\item [Pa\\'is] " ++ techRefCountry t ++ "}\n" ++
               "\t\\item [Organiza\\'on] " ++ techRefOrganization t ++ "}\n" ++
               "\t\\item [Dependencia] " ++ techRefDependency t ++ "}\n" ++
               "\t\\item [Persona] " ++ techRefExpert t ++ "}\n" ++
               "\t\\item [Email] " ++ techRefEmail t ++ "}\n" ++
               "\\end{description}\n"
