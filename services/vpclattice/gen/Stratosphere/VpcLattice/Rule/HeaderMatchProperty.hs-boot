module Stratosphere.VpcLattice.Rule.HeaderMatchProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HeaderMatchProperty :: Prelude.Type
instance ToResourceProperties HeaderMatchProperty
instance JSON.ToJSON HeaderMatchProperty