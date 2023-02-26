module Stratosphere.SageMaker.Model.MultiModelConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MultiModelConfigProperty :: Prelude.Type
instance ToResourceProperties MultiModelConfigProperty
instance JSON.ToJSON MultiModelConfigProperty