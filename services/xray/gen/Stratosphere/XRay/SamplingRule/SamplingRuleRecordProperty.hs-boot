module Stratosphere.XRay.SamplingRule.SamplingRuleRecordProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SamplingRuleRecordProperty :: Prelude.Type
instance ToResourceProperties SamplingRuleRecordProperty
instance JSON.ToJSON SamplingRuleRecordProperty