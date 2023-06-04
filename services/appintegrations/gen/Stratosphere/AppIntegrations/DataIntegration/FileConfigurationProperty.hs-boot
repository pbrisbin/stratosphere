module Stratosphere.AppIntegrations.DataIntegration.FileConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FileConfigurationProperty :: Prelude.Type
instance ToResourceProperties FileConfigurationProperty
instance JSON.ToJSON FileConfigurationProperty