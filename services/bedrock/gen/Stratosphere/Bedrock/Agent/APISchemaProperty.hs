module Stratosphere.Bedrock.Agent.APISchemaProperty (
        module Exports, APISchemaProperty(..), mkAPISchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.S3IdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data APISchemaProperty
  = APISchemaProperty {payload :: (Prelude.Maybe (Value Prelude.Text)),
                       s3 :: (Prelude.Maybe S3IdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAPISchemaProperty :: APISchemaProperty
mkAPISchemaProperty
  = APISchemaProperty
      {payload = Prelude.Nothing, s3 = Prelude.Nothing}
instance ToResourceProperties APISchemaProperty where
  toResourceProperties APISchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.APISchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Payload" Prelude.<$> payload,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON APISchemaProperty where
  toJSON APISchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Payload" Prelude.<$> payload,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "Payload" APISchemaProperty where
  type PropertyType "Payload" APISchemaProperty = Value Prelude.Text
  set newValue APISchemaProperty {..}
    = APISchemaProperty {payload = Prelude.pure newValue, ..}
instance Property "S3" APISchemaProperty where
  type PropertyType "S3" APISchemaProperty = S3IdentifierProperty
  set newValue APISchemaProperty {..}
    = APISchemaProperty {s3 = Prelude.pure newValue, ..}