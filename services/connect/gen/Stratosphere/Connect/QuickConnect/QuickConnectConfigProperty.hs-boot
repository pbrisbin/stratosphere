module Stratosphere.Connect.QuickConnect.QuickConnectConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data QuickConnectConfigProperty :: Prelude.Type
instance ToResourceProperties QuickConnectConfigProperty
instance JSON.ToJSON QuickConnectConfigProperty