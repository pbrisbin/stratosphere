module Stratosphere.Transfer.Server.EndpointDetailsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EndpointDetailsProperty :: Prelude.Type
instance ToResourceProperties EndpointDetailsProperty
instance JSON.ToJSON EndpointDetailsProperty