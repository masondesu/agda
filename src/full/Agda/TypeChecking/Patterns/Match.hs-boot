
module Agda.TypeChecking.Patterns.Match where

import Agda.Syntax.Internal
import Agda.TypeChecking.Monad
import Agda.TypeChecking.Reduce.Monad

data Match a = Yes Simplification [a] | No | DontKnow (Maybe MetaId)

matchPatterns   :: [NamedArg Pattern] -> Args  -> ReduceM (Match Term, Args)
matchCopatterns :: [NamedArg Pattern] -> Elims -> ReduceM (Match Term, Elims)
