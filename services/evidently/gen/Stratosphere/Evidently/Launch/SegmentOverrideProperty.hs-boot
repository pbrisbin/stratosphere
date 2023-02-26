module Stratosphere.Evidently.Launch.SegmentOverrideProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SegmentOverrideProperty :: Prelude.Type
instance ToResourceProperties SegmentOverrideProperty
instance JSON.ToJSON SegmentOverrideProperty