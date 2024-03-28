module Stratosphere.ImageBuilder.LifecyclePolicy.AmiExclusionRulesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AmiExclusionRulesProperty :: Prelude.Type
instance ToResourceProperties AmiExclusionRulesProperty
instance Prelude.Eq AmiExclusionRulesProperty
instance Prelude.Show AmiExclusionRulesProperty
instance JSON.ToJSON AmiExclusionRulesProperty