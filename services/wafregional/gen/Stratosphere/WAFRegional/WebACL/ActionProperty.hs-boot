module Stratosphere.WAFRegional.WebACL.ActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ActionProperty :: Prelude.Type
instance ToResourceProperties ActionProperty
instance JSON.ToJSON ActionProperty