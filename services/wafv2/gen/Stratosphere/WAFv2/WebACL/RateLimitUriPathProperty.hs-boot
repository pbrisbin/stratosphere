module Stratosphere.WAFv2.WebACL.RateLimitUriPathProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RateLimitUriPathProperty :: Prelude.Type
instance ToResourceProperties RateLimitUriPathProperty
instance Prelude.Eq RateLimitUriPathProperty
instance Prelude.Show RateLimitUriPathProperty
instance JSON.ToJSON RateLimitUriPathProperty