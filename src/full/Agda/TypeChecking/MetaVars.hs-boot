
module Agda.TypeChecking.MetaVars where

import Agda.Syntax.Internal	    ( MetaId, Term, Type, Args, Abs, Dom, Telescope )
import Agda.TypeChecking.Monad.Base ( TCM, RunMetaOccursCheck(..), CompareDirection(..) )

type Condition = Dom Type -> Abs Type -> Bool
newArgsMeta'      :: Condition -> Type -> TCM Args
newArgsMeta       :: Type -> TCM Args
assignTerm        :: MetaId -> Term -> TCM ()
etaExpandMetaSafe :: MetaId -> TCM ()
assignV           :: CompareDirection -> MetaId -> Args -> Term -> TCM ()
assign 		  :: CompareDirection -> MetaId -> Args -> Term -> TCM ()
newIFSMeta 	  :: String -> Type -> [(Term, Type)] -> TCM Term
newValueMeta      :: RunMetaOccursCheck -> Type -> TCM Term
newNamedValueMeta :: RunMetaOccursCheck -> String -> Type -> TCM Term
newTelMeta        :: Telescope -> TCM Args
