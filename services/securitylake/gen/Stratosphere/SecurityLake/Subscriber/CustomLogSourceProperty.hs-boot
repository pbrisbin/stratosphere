module Stratosphere.SecurityLake.Subscriber.CustomLogSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomLogSourceProperty :: Prelude.Type
instance ToResourceProperties CustomLogSourceProperty
instance Prelude.Eq CustomLogSourceProperty
instance Prelude.Show CustomLogSourceProperty
instance JSON.ToJSON CustomLogSourceProperty