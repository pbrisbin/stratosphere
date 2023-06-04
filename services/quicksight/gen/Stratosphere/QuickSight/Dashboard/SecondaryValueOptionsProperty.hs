module Stratosphere.QuickSight.Dashboard.SecondaryValueOptionsProperty (
        SecondaryValueOptionsProperty(..), mkSecondaryValueOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecondaryValueOptionsProperty
  = SecondaryValueOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkSecondaryValueOptionsProperty :: SecondaryValueOptionsProperty
mkSecondaryValueOptionsProperty
  = SecondaryValueOptionsProperty {visibility = Prelude.Nothing}
instance ToResourceProperties SecondaryValueOptionsProperty where
  toResourceProperties SecondaryValueOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SecondaryValueOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON SecondaryValueOptionsProperty where
  toJSON SecondaryValueOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" SecondaryValueOptionsProperty where
  type PropertyType "Visibility" SecondaryValueOptionsProperty = Value Prelude.Text
  set newValue SecondaryValueOptionsProperty {}
    = SecondaryValueOptionsProperty
        {visibility = Prelude.pure newValue, ..}