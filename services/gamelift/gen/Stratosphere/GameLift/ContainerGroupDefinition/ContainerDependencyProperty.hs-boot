module Stratosphere.GameLift.ContainerGroupDefinition.ContainerDependencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContainerDependencyProperty :: Prelude.Type
instance ToResourceProperties ContainerDependencyProperty
instance Prelude.Eq ContainerDependencyProperty
instance Prelude.Show ContainerDependencyProperty
instance JSON.ToJSON ContainerDependencyProperty