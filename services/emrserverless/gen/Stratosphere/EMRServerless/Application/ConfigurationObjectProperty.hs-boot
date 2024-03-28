module Stratosphere.EMRServerless.Application.ConfigurationObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConfigurationObjectProperty :: Prelude.Type
instance ToResourceProperties ConfigurationObjectProperty
instance Prelude.Eq ConfigurationObjectProperty
instance Prelude.Show ConfigurationObjectProperty
instance JSON.ToJSON ConfigurationObjectProperty