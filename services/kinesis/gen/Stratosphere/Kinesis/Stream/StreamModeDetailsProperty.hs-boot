module Stratosphere.Kinesis.Stream.StreamModeDetailsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StreamModeDetailsProperty :: Prelude.Type
instance ToResourceProperties StreamModeDetailsProperty
instance JSON.ToJSON StreamModeDetailsProperty