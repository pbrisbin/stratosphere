module Stratosphere.GreengrassV2.ComponentVersion.ComponentDependencyRequirementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComponentDependencyRequirementProperty :: Prelude.Type
instance ToResourceProperties ComponentDependencyRequirementProperty
instance JSON.ToJSON ComponentDependencyRequirementProperty