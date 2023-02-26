module Stratosphere.Scheduler.Schedule.EcsParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EcsParametersProperty :: Prelude.Type
instance ToResourceProperties EcsParametersProperty
instance JSON.ToJSON EcsParametersProperty