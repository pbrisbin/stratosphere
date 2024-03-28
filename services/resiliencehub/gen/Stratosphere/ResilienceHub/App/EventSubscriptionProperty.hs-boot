module Stratosphere.ResilienceHub.App.EventSubscriptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventSubscriptionProperty :: Prelude.Type
instance ToResourceProperties EventSubscriptionProperty
instance Prelude.Eq EventSubscriptionProperty
instance Prelude.Show EventSubscriptionProperty
instance JSON.ToJSON EventSubscriptionProperty