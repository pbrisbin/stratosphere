module Stratosphere.LookoutMetrics.AnomalyDetector.RDSSourceConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RDSSourceConfigProperty :: Prelude.Type
instance ToResourceProperties RDSSourceConfigProperty
instance JSON.ToJSON RDSSourceConfigProperty