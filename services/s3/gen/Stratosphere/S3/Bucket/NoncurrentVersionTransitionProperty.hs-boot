module Stratosphere.S3.Bucket.NoncurrentVersionTransitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NoncurrentVersionTransitionProperty :: Prelude.Type
instance ToResourceProperties NoncurrentVersionTransitionProperty
instance JSON.ToJSON NoncurrentVersionTransitionProperty