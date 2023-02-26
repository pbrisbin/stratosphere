module Stratosphere.CodePipeline.Pipeline.BlockerDeclarationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BlockerDeclarationProperty :: Prelude.Type
instance ToResourceProperties BlockerDeclarationProperty
instance JSON.ToJSON BlockerDeclarationProperty