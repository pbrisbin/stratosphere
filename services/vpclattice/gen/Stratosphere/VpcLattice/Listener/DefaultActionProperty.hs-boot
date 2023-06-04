module Stratosphere.VpcLattice.Listener.DefaultActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DefaultActionProperty :: Prelude.Type
instance ToResourceProperties DefaultActionProperty
instance JSON.ToJSON DefaultActionProperty