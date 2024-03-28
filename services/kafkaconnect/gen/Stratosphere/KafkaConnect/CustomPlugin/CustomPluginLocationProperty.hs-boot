module Stratosphere.KafkaConnect.CustomPlugin.CustomPluginLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomPluginLocationProperty :: Prelude.Type
instance ToResourceProperties CustomPluginLocationProperty
instance Prelude.Eq CustomPluginLocationProperty
instance Prelude.Show CustomPluginLocationProperty
instance JSON.ToJSON CustomPluginLocationProperty