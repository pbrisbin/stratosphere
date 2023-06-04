module Stratosphere.QuickSight.Dashboard.RelativeDateTimeControlDisplayOptionsProperty (
        module Exports, RelativeDateTimeControlDisplayOptionsProperty(..),
        mkRelativeDateTimeControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelativeDateTimeControlDisplayOptionsProperty
  = RelativeDateTimeControlDisplayOptionsProperty {dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                   titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
mkRelativeDateTimeControlDisplayOptionsProperty ::
  RelativeDateTimeControlDisplayOptionsProperty
mkRelativeDateTimeControlDisplayOptionsProperty
  = RelativeDateTimeControlDisplayOptionsProperty
      {dateTimeFormat = Prelude.Nothing, titleOptions = Prelude.Nothing}
instance ToResourceProperties RelativeDateTimeControlDisplayOptionsProperty where
  toResourceProperties
    RelativeDateTimeControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.RelativeDateTimeControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON RelativeDateTimeControlDisplayOptionsProperty where
  toJSON RelativeDateTimeControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "DateTimeFormat" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "DateTimeFormat" RelativeDateTimeControlDisplayOptionsProperty = Value Prelude.Text
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "TitleOptions" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" RelativeDateTimeControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}