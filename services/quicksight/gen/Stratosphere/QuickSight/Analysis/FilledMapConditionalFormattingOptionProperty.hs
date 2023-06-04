module Stratosphere.QuickSight.Analysis.FilledMapConditionalFormattingOptionProperty (
        module Exports, FilledMapConditionalFormattingOptionProperty(..),
        mkFilledMapConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilledMapShapeConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapConditionalFormattingOptionProperty
  = FilledMapConditionalFormattingOptionProperty {shape :: FilledMapShapeConditionalFormattingProperty}
mkFilledMapConditionalFormattingOptionProperty ::
  FilledMapShapeConditionalFormattingProperty
  -> FilledMapConditionalFormattingOptionProperty
mkFilledMapConditionalFormattingOptionProperty shape
  = FilledMapConditionalFormattingOptionProperty {shape = shape}
instance ToResourceProperties FilledMapConditionalFormattingOptionProperty where
  toResourceProperties
    FilledMapConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilledMapConditionalFormattingOption",
         supportsTags = Prelude.False, properties = ["Shape" JSON..= shape]}
instance JSON.ToJSON FilledMapConditionalFormattingOptionProperty where
  toJSON FilledMapConditionalFormattingOptionProperty {..}
    = JSON.object ["Shape" JSON..= shape]
instance Property "Shape" FilledMapConditionalFormattingOptionProperty where
  type PropertyType "Shape" FilledMapConditionalFormattingOptionProperty = FilledMapShapeConditionalFormattingProperty
  set newValue FilledMapConditionalFormattingOptionProperty {}
    = FilledMapConditionalFormattingOptionProperty
        {shape = newValue, ..}