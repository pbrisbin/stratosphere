module Stratosphere.FinSpace.Environment.AttributeMapItemsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AttributeMapItemsProperty :: Prelude.Type
instance ToResourceProperties AttributeMapItemsProperty
instance JSON.ToJSON AttributeMapItemsProperty