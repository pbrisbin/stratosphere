module Stratosphere.EKS.Addon.PodIdentityAssociationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PodIdentityAssociationProperty :: Prelude.Type
instance ToResourceProperties PodIdentityAssociationProperty
instance Prelude.Eq PodIdentityAssociationProperty
instance Prelude.Show PodIdentityAssociationProperty
instance JSON.ToJSON PodIdentityAssociationProperty