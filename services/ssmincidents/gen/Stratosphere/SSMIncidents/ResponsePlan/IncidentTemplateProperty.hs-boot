module Stratosphere.SSMIncidents.ResponsePlan.IncidentTemplateProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IncidentTemplateProperty :: Prelude.Type
instance ToResourceProperties IncidentTemplateProperty
instance JSON.ToJSON IncidentTemplateProperty