module Stratosphere.NetworkFirewall.RuleGroup.MatchAttributesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatchAttributesProperty :: Prelude.Type
instance ToResourceProperties MatchAttributesProperty
instance JSON.ToJSON MatchAttributesProperty