module Stratosphere.SageMaker.ModelCard.InferenceSpecificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InferenceSpecificationProperty :: Prelude.Type
instance ToResourceProperties InferenceSpecificationProperty
instance JSON.ToJSON InferenceSpecificationProperty