module Stratosphere.Events.Rule.InputTransformerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputTransformerProperty :: Prelude.Type
instance ToResourceProperties InputTransformerProperty
instance JSON.ToJSON InputTransformerProperty