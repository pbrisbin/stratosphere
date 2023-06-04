module Stratosphere.QuickSight.Analysis.TableConditionalFormattingProperty (
        module Exports, TableConditionalFormattingProperty(..),
        mkTableConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data TableConditionalFormattingProperty
  = TableConditionalFormattingProperty {conditionalFormattingOptions :: (Prelude.Maybe [TableConditionalFormattingOptionProperty])}
mkTableConditionalFormattingProperty ::
  TableConditionalFormattingProperty
mkTableConditionalFormattingProperty
  = TableConditionalFormattingProperty
      {conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties TableConditionalFormattingProperty where
  toResourceProperties TableConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON TableConditionalFormattingProperty where
  toJSON TableConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" TableConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" TableConditionalFormattingProperty = [TableConditionalFormattingOptionProperty]
  set newValue TableConditionalFormattingProperty {}
    = TableConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}