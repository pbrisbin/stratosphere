module Stratosphere.Lex.Bot.TextLogDestinationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TextLogDestinationProperty :: Prelude.Type
instance ToResourceProperties TextLogDestinationProperty
instance JSON.ToJSON TextLogDestinationProperty