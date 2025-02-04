module Stratosphere.CloudFormation.GuardHook.TargetFiltersProperty (
        module Exports, TargetFiltersProperty(..), mkTargetFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.GuardHook.HookTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetFiltersProperty
  = TargetFiltersProperty {actions :: (Prelude.Maybe (ValueList Prelude.Text)),
                           invocationPoints :: (Prelude.Maybe (ValueList Prelude.Text)),
                           targetNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                           targets :: (Prelude.Maybe [HookTargetProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetFiltersProperty :: TargetFiltersProperty
mkTargetFiltersProperty
  = TargetFiltersProperty
      {actions = Prelude.Nothing, invocationPoints = Prelude.Nothing,
       targetNames = Prelude.Nothing, targets = Prelude.Nothing}
instance ToResourceProperties TargetFiltersProperty where
  toResourceProperties TargetFiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::GuardHook.TargetFilters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actions" Prelude.<$> actions,
                            (JSON..=) "InvocationPoints" Prelude.<$> invocationPoints,
                            (JSON..=) "TargetNames" Prelude.<$> targetNames,
                            (JSON..=) "Targets" Prelude.<$> targets])}
instance JSON.ToJSON TargetFiltersProperty where
  toJSON TargetFiltersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actions" Prelude.<$> actions,
               (JSON..=) "InvocationPoints" Prelude.<$> invocationPoints,
               (JSON..=) "TargetNames" Prelude.<$> targetNames,
               (JSON..=) "Targets" Prelude.<$> targets]))
instance Property "Actions" TargetFiltersProperty where
  type PropertyType "Actions" TargetFiltersProperty = ValueList Prelude.Text
  set newValue TargetFiltersProperty {..}
    = TargetFiltersProperty {actions = Prelude.pure newValue, ..}
instance Property "InvocationPoints" TargetFiltersProperty where
  type PropertyType "InvocationPoints" TargetFiltersProperty = ValueList Prelude.Text
  set newValue TargetFiltersProperty {..}
    = TargetFiltersProperty
        {invocationPoints = Prelude.pure newValue, ..}
instance Property "TargetNames" TargetFiltersProperty where
  type PropertyType "TargetNames" TargetFiltersProperty = ValueList Prelude.Text
  set newValue TargetFiltersProperty {..}
    = TargetFiltersProperty {targetNames = Prelude.pure newValue, ..}
instance Property "Targets" TargetFiltersProperty where
  type PropertyType "Targets" TargetFiltersProperty = [HookTargetProperty]
  set newValue TargetFiltersProperty {..}
    = TargetFiltersProperty {targets = Prelude.pure newValue, ..}