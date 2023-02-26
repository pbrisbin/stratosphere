module Stratosphere.CodeBuild.Project.ProjectSourceVersionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProjectSourceVersionProperty :: Prelude.Type
instance ToResourceProperties ProjectSourceVersionProperty
instance JSON.ToJSON ProjectSourceVersionProperty