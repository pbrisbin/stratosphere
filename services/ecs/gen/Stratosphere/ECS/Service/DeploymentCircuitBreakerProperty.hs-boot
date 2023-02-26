module Stratosphere.ECS.Service.DeploymentCircuitBreakerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeploymentCircuitBreakerProperty :: Prelude.Type
instance ToResourceProperties DeploymentCircuitBreakerProperty
instance JSON.ToJSON DeploymentCircuitBreakerProperty