module Stratosphere.Lightsail.Distribution.QueryStringObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data QueryStringObjectProperty :: Prelude.Type
instance ToResourceProperties QueryStringObjectProperty
instance JSON.ToJSON QueryStringObjectProperty