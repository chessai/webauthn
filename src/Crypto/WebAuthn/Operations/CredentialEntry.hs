-- | This module represents all the information the Relying Party must store in
-- the database for every credential.
module Crypto.WebAuthn.Operations.CredentialEntry
  ( CredentialEntry (..),
  )
where

import qualified Crypto.WebAuthn.Model.Types as M
import Data.Aeson (ToJSON)
import GHC.Generics (Generic)

-- | This type represents the database row a Relying Party server needs to
-- store for each credential that's registered to a user
data CredentialEntry = CredentialEntry
  { ceCredentialId :: M.CredentialId,
    ceUserHandle :: M.UserHandle,
    cePublicKeyBytes :: M.PublicKeyBytes,
    ceSignCounter :: M.SignatureCounter
  }
  deriving (Eq, Show, Generic, ToJSON)