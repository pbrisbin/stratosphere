module Stratosphere.EKS.IdentityProviderConfig.OidcIdentityProviderConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OidcIdentityProviderConfigProperty :: Prelude.Type
instance ToResourceProperties OidcIdentityProviderConfigProperty
instance JSON.ToJSON OidcIdentityProviderConfigProperty