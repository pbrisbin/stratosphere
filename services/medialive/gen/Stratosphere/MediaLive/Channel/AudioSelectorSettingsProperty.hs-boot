module Stratosphere.MediaLive.Channel.AudioSelectorSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AudioSelectorSettingsProperty :: Prelude.Type
instance ToResourceProperties AudioSelectorSettingsProperty
instance JSON.ToJSON AudioSelectorSettingsProperty