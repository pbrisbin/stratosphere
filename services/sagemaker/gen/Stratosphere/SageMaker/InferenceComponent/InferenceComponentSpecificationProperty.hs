module Stratosphere.SageMaker.InferenceComponent.InferenceComponentSpecificationProperty (
        module Exports, InferenceComponentSpecificationProperty(..),
        mkInferenceComponentSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentComputeResourceRequirementsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentContainerSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.InferenceComponentStartupParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentSpecificationProperty
  = InferenceComponentSpecificationProperty {computeResourceRequirements :: InferenceComponentComputeResourceRequirementsProperty,
                                             container :: (Prelude.Maybe InferenceComponentContainerSpecificationProperty),
                                             modelName :: (Prelude.Maybe (Value Prelude.Text)),
                                             startupParameters :: (Prelude.Maybe InferenceComponentStartupParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentSpecificationProperty ::
  InferenceComponentComputeResourceRequirementsProperty
  -> InferenceComponentSpecificationProperty
mkInferenceComponentSpecificationProperty
  computeResourceRequirements
  = InferenceComponentSpecificationProperty
      {computeResourceRequirements = computeResourceRequirements,
       container = Prelude.Nothing, modelName = Prelude.Nothing,
       startupParameters = Prelude.Nothing}
instance ToResourceProperties InferenceComponentSpecificationProperty where
  toResourceProperties InferenceComponentSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComputeResourceRequirements" JSON..= computeResourceRequirements]
                           (Prelude.catMaybes
                              [(JSON..=) "Container" Prelude.<$> container,
                               (JSON..=) "ModelName" Prelude.<$> modelName,
                               (JSON..=) "StartupParameters" Prelude.<$> startupParameters]))}
instance JSON.ToJSON InferenceComponentSpecificationProperty where
  toJSON InferenceComponentSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComputeResourceRequirements" JSON..= computeResourceRequirements]
              (Prelude.catMaybes
                 [(JSON..=) "Container" Prelude.<$> container,
                  (JSON..=) "ModelName" Prelude.<$> modelName,
                  (JSON..=) "StartupParameters" Prelude.<$> startupParameters])))
instance Property "ComputeResourceRequirements" InferenceComponentSpecificationProperty where
  type PropertyType "ComputeResourceRequirements" InferenceComponentSpecificationProperty = InferenceComponentComputeResourceRequirementsProperty
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {computeResourceRequirements = newValue, ..}
instance Property "Container" InferenceComponentSpecificationProperty where
  type PropertyType "Container" InferenceComponentSpecificationProperty = InferenceComponentContainerSpecificationProperty
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {container = Prelude.pure newValue, ..}
instance Property "ModelName" InferenceComponentSpecificationProperty where
  type PropertyType "ModelName" InferenceComponentSpecificationProperty = Value Prelude.Text
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {modelName = Prelude.pure newValue, ..}
instance Property "StartupParameters" InferenceComponentSpecificationProperty where
  type PropertyType "StartupParameters" InferenceComponentSpecificationProperty = InferenceComponentStartupParametersProperty
  set newValue InferenceComponentSpecificationProperty {..}
    = InferenceComponentSpecificationProperty
        {startupParameters = Prelude.pure newValue, ..}