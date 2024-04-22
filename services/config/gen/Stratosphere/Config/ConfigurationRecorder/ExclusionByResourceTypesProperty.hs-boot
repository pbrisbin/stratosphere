module Stratosphere.Config.ConfigurationRecorder.ExclusionByResourceTypesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExclusionByResourceTypesProperty :: Prelude.Type
instance ToResourceProperties ExclusionByResourceTypesProperty
instance Prelude.Eq ExclusionByResourceTypesProperty
instance Prelude.Show ExclusionByResourceTypesProperty
instance JSON.ToJSON ExclusionByResourceTypesProperty