module Stratosphere.VpcLattice.Listener.ForwardProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ForwardProperty :: Prelude.Type
instance ToResourceProperties ForwardProperty
instance JSON.ToJSON ForwardProperty