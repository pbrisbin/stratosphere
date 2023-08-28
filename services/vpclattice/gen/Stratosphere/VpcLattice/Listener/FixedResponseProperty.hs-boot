module Stratosphere.VpcLattice.Listener.FixedResponseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FixedResponseProperty :: Prelude.Type
instance ToResourceProperties FixedResponseProperty
instance JSON.ToJSON FixedResponseProperty