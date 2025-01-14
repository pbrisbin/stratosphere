module Stratosphere.SecurityHub.ConfigurationPolicy.ParameterValueProperty (
        ParameterValueProperty(..), mkParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterValueProperty
  = ParameterValueProperty {boolean :: (Prelude.Maybe (Value Prelude.Bool)),
                            double :: (Prelude.Maybe (Value Prelude.Double)),
                            enum :: (Prelude.Maybe (Value Prelude.Text)),
                            enumList :: (Prelude.Maybe (ValueList Prelude.Text)),
                            integer :: (Prelude.Maybe (Value Prelude.Integer)),
                            integerList :: (Prelude.Maybe (ValueList Prelude.Integer)),
                            string :: (Prelude.Maybe (Value Prelude.Text)),
                            stringList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterValueProperty :: ParameterValueProperty
mkParameterValueProperty
  = ParameterValueProperty
      {boolean = Prelude.Nothing, double = Prelude.Nothing,
       enum = Prelude.Nothing, enumList = Prelude.Nothing,
       integer = Prelude.Nothing, integerList = Prelude.Nothing,
       string = Prelude.Nothing, stringList = Prelude.Nothing}
instance ToResourceProperties ParameterValueProperty where
  toResourceProperties ParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ConfigurationPolicy.ParameterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Boolean" Prelude.<$> boolean,
                            (JSON..=) "Double" Prelude.<$> double,
                            (JSON..=) "Enum" Prelude.<$> enum,
                            (JSON..=) "EnumList" Prelude.<$> enumList,
                            (JSON..=) "Integer" Prelude.<$> integer,
                            (JSON..=) "IntegerList" Prelude.<$> integerList,
                            (JSON..=) "String" Prelude.<$> string,
                            (JSON..=) "StringList" Prelude.<$> stringList])}
instance JSON.ToJSON ParameterValueProperty where
  toJSON ParameterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Boolean" Prelude.<$> boolean,
               (JSON..=) "Double" Prelude.<$> double,
               (JSON..=) "Enum" Prelude.<$> enum,
               (JSON..=) "EnumList" Prelude.<$> enumList,
               (JSON..=) "Integer" Prelude.<$> integer,
               (JSON..=) "IntegerList" Prelude.<$> integerList,
               (JSON..=) "String" Prelude.<$> string,
               (JSON..=) "StringList" Prelude.<$> stringList]))
instance Property "Boolean" ParameterValueProperty where
  type PropertyType "Boolean" ParameterValueProperty = Value Prelude.Bool
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {boolean = Prelude.pure newValue, ..}
instance Property "Double" ParameterValueProperty where
  type PropertyType "Double" ParameterValueProperty = Value Prelude.Double
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {double = Prelude.pure newValue, ..}
instance Property "Enum" ParameterValueProperty where
  type PropertyType "Enum" ParameterValueProperty = Value Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {enum = Prelude.pure newValue, ..}
instance Property "EnumList" ParameterValueProperty where
  type PropertyType "EnumList" ParameterValueProperty = ValueList Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {enumList = Prelude.pure newValue, ..}
instance Property "Integer" ParameterValueProperty where
  type PropertyType "Integer" ParameterValueProperty = Value Prelude.Integer
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {integer = Prelude.pure newValue, ..}
instance Property "IntegerList" ParameterValueProperty where
  type PropertyType "IntegerList" ParameterValueProperty = ValueList Prelude.Integer
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {integerList = Prelude.pure newValue, ..}
instance Property "String" ParameterValueProperty where
  type PropertyType "String" ParameterValueProperty = Value Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {string = Prelude.pure newValue, ..}
instance Property "StringList" ParameterValueProperty where
  type PropertyType "StringList" ParameterValueProperty = ValueList Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {stringList = Prelude.pure newValue, ..}