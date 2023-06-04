module Stratosphere.QuickSight.Dashboard.DataLabelTypeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataLabelTypeProperty :: Prelude.Type
instance ToResourceProperties DataLabelTypeProperty
instance JSON.ToJSON DataLabelTypeProperty