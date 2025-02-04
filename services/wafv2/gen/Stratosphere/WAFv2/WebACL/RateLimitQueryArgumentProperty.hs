module Stratosphere.WAFv2.WebACL.RateLimitQueryArgumentProperty (
        module Exports, RateLimitQueryArgumentProperty(..),
        mkRateLimitQueryArgumentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.TextTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitQueryArgumentProperty
  = RateLimitQueryArgumentProperty {name :: (Value Prelude.Text),
                                    textTransformations :: [TextTransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitQueryArgumentProperty ::
  Value Prelude.Text
  -> [TextTransformationProperty] -> RateLimitQueryArgumentProperty
mkRateLimitQueryArgumentProperty name textTransformations
  = RateLimitQueryArgumentProperty
      {name = name, textTransformations = textTransformations}
instance ToResourceProperties RateLimitQueryArgumentProperty where
  toResourceProperties RateLimitQueryArgumentProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateLimitQueryArgument",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "TextTransformations" JSON..= textTransformations]}
instance JSON.ToJSON RateLimitQueryArgumentProperty where
  toJSON RateLimitQueryArgumentProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "TextTransformations" JSON..= textTransformations]
instance Property "Name" RateLimitQueryArgumentProperty where
  type PropertyType "Name" RateLimitQueryArgumentProperty = Value Prelude.Text
  set newValue RateLimitQueryArgumentProperty {..}
    = RateLimitQueryArgumentProperty {name = newValue, ..}
instance Property "TextTransformations" RateLimitQueryArgumentProperty where
  type PropertyType "TextTransformations" RateLimitQueryArgumentProperty = [TextTransformationProperty]
  set newValue RateLimitQueryArgumentProperty {..}
    = RateLimitQueryArgumentProperty
        {textTransformations = newValue, ..}