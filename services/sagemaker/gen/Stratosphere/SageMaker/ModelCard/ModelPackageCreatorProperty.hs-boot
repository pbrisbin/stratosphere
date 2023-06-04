module Stratosphere.SageMaker.ModelCard.ModelPackageCreatorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ModelPackageCreatorProperty :: Prelude.Type
instance ToResourceProperties ModelPackageCreatorProperty
instance JSON.ToJSON ModelPackageCreatorProperty