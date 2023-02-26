module Stratosphere.DynamoDB.GlobalTable.ProjectionProperty (
        ProjectionProperty(..), mkProjectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectionProperty
  = ProjectionProperty {nonKeyAttributes :: (Prelude.Maybe (ValueList Prelude.Text)),
                        projectionType :: (Prelude.Maybe (Value Prelude.Text))}
mkProjectionProperty :: ProjectionProperty
mkProjectionProperty
  = ProjectionProperty
      {nonKeyAttributes = Prelude.Nothing,
       projectionType = Prelude.Nothing}
instance ToResourceProperties ProjectionProperty where
  toResourceProperties ProjectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.Projection",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NonKeyAttributes" Prelude.<$> nonKeyAttributes,
                            (JSON..=) "ProjectionType" Prelude.<$> projectionType])}
instance JSON.ToJSON ProjectionProperty where
  toJSON ProjectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NonKeyAttributes" Prelude.<$> nonKeyAttributes,
               (JSON..=) "ProjectionType" Prelude.<$> projectionType]))
instance Property "NonKeyAttributes" ProjectionProperty where
  type PropertyType "NonKeyAttributes" ProjectionProperty = ValueList Prelude.Text
  set newValue ProjectionProperty {..}
    = ProjectionProperty {nonKeyAttributes = Prelude.pure newValue, ..}
instance Property "ProjectionType" ProjectionProperty where
  type PropertyType "ProjectionType" ProjectionProperty = Value Prelude.Text
  set newValue ProjectionProperty {..}
    = ProjectionProperty {projectionType = Prelude.pure newValue, ..}