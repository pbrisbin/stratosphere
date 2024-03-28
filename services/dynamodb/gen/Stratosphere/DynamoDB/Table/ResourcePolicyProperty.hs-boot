module Stratosphere.DynamoDB.Table.ResourcePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourcePolicyProperty :: Prelude.Type
instance ToResourceProperties ResourcePolicyProperty
instance Prelude.Eq ResourcePolicyProperty
instance Prelude.Show ResourcePolicyProperty
instance JSON.ToJSON ResourcePolicyProperty