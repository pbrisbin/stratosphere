module Stratosphere.QuickSight.DataSet.DatasetParameterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DatasetParameterProperty :: Prelude.Type
instance ToResourceProperties DatasetParameterProperty
instance JSON.ToJSON DatasetParameterProperty