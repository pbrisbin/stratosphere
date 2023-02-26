module Stratosphere.SageMaker.Endpoint.DeploymentConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeploymentConfigProperty :: Prelude.Type
instance ToResourceProperties DeploymentConfigProperty
instance JSON.ToJSON DeploymentConfigProperty