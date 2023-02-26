module Stratosphere.Events.Rule.PlacementStrategyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PlacementStrategyProperty :: Prelude.Type
instance ToResourceProperties PlacementStrategyProperty
instance JSON.ToJSON PlacementStrategyProperty