module Stratosphere.EC2.VerifiedAccessInstance.KinesisDataFirehoseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KinesisDataFirehoseProperty :: Prelude.Type
instance ToResourceProperties KinesisDataFirehoseProperty
instance JSON.ToJSON KinesisDataFirehoseProperty