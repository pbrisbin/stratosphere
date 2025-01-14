module Stratosphere.Events.Connection.AuthParametersProperty (
        module Exports, AuthParametersProperty(..),
        mkAuthParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Connection.ApiKeyAuthParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Connection.BasicAuthParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Connection.ConnectionHttpParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Connection.ConnectivityParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Connection.OAuthParametersProperty as Exports
import Stratosphere.ResourceProperties
data AuthParametersProperty
  = AuthParametersProperty {apiKeyAuthParameters :: (Prelude.Maybe ApiKeyAuthParametersProperty),
                            basicAuthParameters :: (Prelude.Maybe BasicAuthParametersProperty),
                            connectivityParameters :: (Prelude.Maybe ConnectivityParametersProperty),
                            invocationHttpParameters :: (Prelude.Maybe ConnectionHttpParametersProperty),
                            oAuthParameters :: (Prelude.Maybe OAuthParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthParametersProperty :: AuthParametersProperty
mkAuthParametersProperty
  = AuthParametersProperty
      {apiKeyAuthParameters = Prelude.Nothing,
       basicAuthParameters = Prelude.Nothing,
       connectivityParameters = Prelude.Nothing,
       invocationHttpParameters = Prelude.Nothing,
       oAuthParameters = Prelude.Nothing}
instance ToResourceProperties AuthParametersProperty where
  toResourceProperties AuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.AuthParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiKeyAuthParameters" Prelude.<$> apiKeyAuthParameters,
                            (JSON..=) "BasicAuthParameters" Prelude.<$> basicAuthParameters,
                            (JSON..=) "ConnectivityParameters"
                              Prelude.<$> connectivityParameters,
                            (JSON..=) "InvocationHttpParameters"
                              Prelude.<$> invocationHttpParameters,
                            (JSON..=) "OAuthParameters" Prelude.<$> oAuthParameters])}
instance JSON.ToJSON AuthParametersProperty where
  toJSON AuthParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiKeyAuthParameters" Prelude.<$> apiKeyAuthParameters,
               (JSON..=) "BasicAuthParameters" Prelude.<$> basicAuthParameters,
               (JSON..=) "ConnectivityParameters"
                 Prelude.<$> connectivityParameters,
               (JSON..=) "InvocationHttpParameters"
                 Prelude.<$> invocationHttpParameters,
               (JSON..=) "OAuthParameters" Prelude.<$> oAuthParameters]))
instance Property "ApiKeyAuthParameters" AuthParametersProperty where
  type PropertyType "ApiKeyAuthParameters" AuthParametersProperty = ApiKeyAuthParametersProperty
  set newValue AuthParametersProperty {..}
    = AuthParametersProperty
        {apiKeyAuthParameters = Prelude.pure newValue, ..}
instance Property "BasicAuthParameters" AuthParametersProperty where
  type PropertyType "BasicAuthParameters" AuthParametersProperty = BasicAuthParametersProperty
  set newValue AuthParametersProperty {..}
    = AuthParametersProperty
        {basicAuthParameters = Prelude.pure newValue, ..}
instance Property "ConnectivityParameters" AuthParametersProperty where
  type PropertyType "ConnectivityParameters" AuthParametersProperty = ConnectivityParametersProperty
  set newValue AuthParametersProperty {..}
    = AuthParametersProperty
        {connectivityParameters = Prelude.pure newValue, ..}
instance Property "InvocationHttpParameters" AuthParametersProperty where
  type PropertyType "InvocationHttpParameters" AuthParametersProperty = ConnectionHttpParametersProperty
  set newValue AuthParametersProperty {..}
    = AuthParametersProperty
        {invocationHttpParameters = Prelude.pure newValue, ..}
instance Property "OAuthParameters" AuthParametersProperty where
  type PropertyType "OAuthParameters" AuthParametersProperty = OAuthParametersProperty
  set newValue AuthParametersProperty {..}
    = AuthParametersProperty
        {oAuthParameters = Prelude.pure newValue, ..}