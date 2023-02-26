module Stratosphere.CloudFront.Distribution.DistributionConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DistributionConfigProperty :: Prelude.Type
instance ToResourceProperties DistributionConfigProperty
instance JSON.ToJSON DistributionConfigProperty