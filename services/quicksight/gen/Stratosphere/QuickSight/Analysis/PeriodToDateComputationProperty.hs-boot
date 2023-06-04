module Stratosphere.QuickSight.Analysis.PeriodToDateComputationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PeriodToDateComputationProperty :: Prelude.Type
instance ToResourceProperties PeriodToDateComputationProperty
instance JSON.ToJSON PeriodToDateComputationProperty