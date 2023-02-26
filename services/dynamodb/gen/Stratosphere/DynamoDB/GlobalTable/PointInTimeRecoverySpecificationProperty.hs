module Stratosphere.DynamoDB.GlobalTable.PointInTimeRecoverySpecificationProperty (
        PointInTimeRecoverySpecificationProperty(..),
        mkPointInTimeRecoverySpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PointInTimeRecoverySpecificationProperty
  = PointInTimeRecoverySpecificationProperty {pointInTimeRecoveryEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkPointInTimeRecoverySpecificationProperty ::
  PointInTimeRecoverySpecificationProperty
mkPointInTimeRecoverySpecificationProperty
  = PointInTimeRecoverySpecificationProperty
      {pointInTimeRecoveryEnabled = Prelude.Nothing}
instance ToResourceProperties PointInTimeRecoverySpecificationProperty where
  toResourceProperties PointInTimeRecoverySpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.PointInTimeRecoverySpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PointInTimeRecoveryEnabled"
                              Prelude.<$> pointInTimeRecoveryEnabled])}
instance JSON.ToJSON PointInTimeRecoverySpecificationProperty where
  toJSON PointInTimeRecoverySpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PointInTimeRecoveryEnabled"
                 Prelude.<$> pointInTimeRecoveryEnabled]))
instance Property "PointInTimeRecoveryEnabled" PointInTimeRecoverySpecificationProperty where
  type PropertyType "PointInTimeRecoveryEnabled" PointInTimeRecoverySpecificationProperty = Value Prelude.Bool
  set newValue PointInTimeRecoverySpecificationProperty {}
    = PointInTimeRecoverySpecificationProperty
        {pointInTimeRecoveryEnabled = Prelude.pure newValue, ..}