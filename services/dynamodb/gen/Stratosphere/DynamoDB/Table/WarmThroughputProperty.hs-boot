module Stratosphere.DynamoDB.Table.WarmThroughputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WarmThroughputProperty :: Prelude.Type
instance ToResourceProperties WarmThroughputProperty
instance Prelude.Eq WarmThroughputProperty
instance Prelude.Show WarmThroughputProperty
instance JSON.ToJSON WarmThroughputProperty