module Stratosphere.Rekognition.StreamProcessor.S3DestinationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3DestinationProperty :: Prelude.Type
instance ToResourceProperties S3DestinationProperty
instance JSON.ToJSON S3DestinationProperty