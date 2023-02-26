module Stratosphere.DevOpsGuru.ResourceCollection.ResourceCollectionFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceCollectionFilterProperty :: Prelude.Type
instance ToResourceProperties ResourceCollectionFilterProperty
instance JSON.ToJSON ResourceCollectionFilterProperty