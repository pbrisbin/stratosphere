module Stratosphere.QuickSight.Dashboard.DataColorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataColorProperty :: Prelude.Type
instance ToResourceProperties DataColorProperty
instance JSON.ToJSON DataColorProperty