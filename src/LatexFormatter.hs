-- LaTeX Formatter
--
-- This module takes care of representing various objects into LaTeX format
-- for generating technical reports and other types of documents

module LatexFormatter
  (
    toLatexTRefSpa, toLatexEmail
  ) where

import TechReference

-- Formatting of a technology reference as LaTeX code in Spanish
toLatexTRefSpa :: TechReference -> Int -> String
toLatexTRefSpa t sq =  "\\subsection{Referencia " ++ show (sq) ++ "}\n\n" ++
                       "\\begin{description}\n" ++
                       "\t\\item [Pa\\'is] " ++ techRefCountry t ++ "\n" ++
                       "\t\\item [Organiza\\'on] " ++ techRefOrganization t ++ "\n" ++
                       "\t\\item [Dependencia] " ++ techRefDependency t ++ "\n" ++
                       "\t\\item [Persona] " ++ techRefExpert t ++ "\n" ++
                       "\t\\item [Email] " ++ toLatexEmail(techRefEmail t) ++ "\n" ++
                       "\\end{description}\n"

-- Formatting emails assumes the use of package hyperref
toLatexEmail :: String -> String
toLatexEmail em = "\\href{" ++ em ++ "}{" ++ em ++ "}"
