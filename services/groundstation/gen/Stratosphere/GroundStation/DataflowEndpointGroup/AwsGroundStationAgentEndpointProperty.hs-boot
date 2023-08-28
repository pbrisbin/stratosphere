module Stratosphere.GroundStation.DataflowEndpointGroup.AwsGroundStationAgentEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AwsGroundStationAgentEndpointProperty :: Prelude.Type
instance ToResourceProperties AwsGroundStationAgentEndpointProperty
instance JSON.ToJSON AwsGroundStationAgentEndpointProperty