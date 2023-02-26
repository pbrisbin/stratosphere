module Stratosphere.MediaLive.Channel.UdpGroupSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UdpGroupSettingsProperty :: Prelude.Type
instance ToResourceProperties UdpGroupSettingsProperty
instance JSON.ToJSON UdpGroupSettingsProperty