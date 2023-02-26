module Stratosphere.Config.ConfigRule.CustomPolicyDetailsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomPolicyDetailsProperty :: Prelude.Type
instance ToResourceProperties CustomPolicyDetailsProperty
instance JSON.ToJSON CustomPolicyDetailsProperty