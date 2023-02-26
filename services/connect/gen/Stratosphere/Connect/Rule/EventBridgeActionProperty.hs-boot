module Stratosphere.Connect.Rule.EventBridgeActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventBridgeActionProperty :: Prelude.Type
instance ToResourceProperties EventBridgeActionProperty
instance JSON.ToJSON EventBridgeActionProperty