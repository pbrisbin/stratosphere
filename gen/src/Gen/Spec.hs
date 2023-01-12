-- | Generation of renderable spec from Gen.Raw

module Gen.Spec
  ( Spec(..)
  , specFromRaw
  , PropertyType(..)
  , Property(..)
  , SpecType(..)
  , subPropertyTypeNames
  , AtomicType(..)
  , ResourceType(..)
  )
where

import Data.List (sortOn)
import Data.Map (toList)
import Data.Maybe (catMaybes)
import GHC.Generics hiding (to)
import Gen.Prelude

import qualified Gen.Raw as Raw

data Spec = Spec
  { specPropertyTypes :: [PropertyType]
  , specVersion       :: Text
  , specResourceTypes :: [ResourceType]
  }
  deriving (Show, Eq)

specFromRaw :: Raw.Spec -> Spec
specFromRaw Raw.Spec{..}
  = Spec
  { specPropertyTypes = uncurry propertyTypeFromRaw <$> sortOn fst (toList specPropertyTypes)
  , specResourceTypes = uncurry resourceTypeFromRaw <$> sortOn fst (toList specResourceTypes)
  , specVersion       = specResourceSpecificationVersion
  }

data PropertyType = PropertyType
  { propertyTypeName          :: Text
  , propertyTypeDocumentation :: Text
  , propertyTypeProperties    :: [Property]
  }
  deriving (Show, Eq)

propertyTypeFromRaw :: Text -> Raw.PropertySpecification -> PropertyType
propertyTypeFromRaw fullName Raw.PropertySpecification{..}
  = PropertyType
  { propertyTypeName          = fullName
  , propertyTypeDocumentation = propertyTypeDocumentation
  , propertyTypeProperties    = (uncurry propertyFromRaw <$> sortOn fst (toList propertyTypeProperties))
  }

data Property = Property
  { propertyName          :: Text
  , propertyDocumentation :: Text
  --, propertyDuplicatesAllowed :: Maybe Bool -- Don't care about this
  , propertySpecType      :: SpecType
  , propertyRequired      :: Bool
  --, propertyUpdateType :: Maybe Text -- Don't care about this
  }
  deriving (Show, Eq)

propertyFromRaw :: Text -> Raw.Property -> Property
propertyFromRaw name property@Raw.Property{..}
  = Property
  { propertyName          = name
  , propertyDocumentation = propertyDocumentation
  , propertySpecType      = specType
  , propertyRequired      = propertyRequired
  }
  where
    specType = case (propertyPrimitiveType, propertyType, propertyPrimitiveItemType, propertyItemType) of
      ( (Just prim), Nothing,                          Nothing,     Nothing)     -> AtomicType $ primitiveType prim
      ( Nothing,     (Just Raw.PropertyTypeList),      (Just prim), Nothing)     -> ListType $ primitiveType prim
      ( Nothing,     (Just Raw.PropertyTypeList),      Nothing,     (Just item)) -> ListType $ SubPropertyType item
      ( Nothing,     (Just Raw.PropertyTypeMap),       (Just prim), Nothing)     -> MapType $ primitiveType prim
      ( Nothing,     (Just Raw.PropertyTypeMap),       Nothing,     (Just item)) -> MapType $ SubPropertyType item
      ( Nothing,     (Just (Raw.PropertyTypeSub sub)), Nothing,     Nothing)     -> AtomicType $ SubPropertyType sub
      _other -> error $ "Unknown raw property type: " <> show property

    primitiveType :: Raw.PrimitiveType -> AtomicType
    primitiveType = \case
      Raw.PrimitiveTypeString    -> StringPrimitive
      Raw.PrimitiveTypeLong      -> IntegerPrimitive
      Raw.PrimitiveTypeInteger   -> IntegerPrimitive
      Raw.PrimitiveTypeDouble    -> DoublePrimitive
      Raw.PrimitiveTypeBoolean   -> BoolPrimitive
      Raw.PrimitiveTypeTimestamp -> StringPrimitive
      Raw.PrimitiveTypeJSON      -> JsonPrimitive

data SpecType
  = AtomicType AtomicType
  | ListType AtomicType
  | MapType AtomicType
  deriving (Show, Eq)

data AtomicType
  = StringPrimitive
  | IntegerPrimitive
  | DoublePrimitive
  | BoolPrimitive
  | JsonPrimitive
  | SubPropertyType Text
  deriving (Show, Eq)

subPropertyTypeName :: SpecType -> Maybe Text
subPropertyTypeName = \case
  (AtomicType (SubPropertyType name)) -> Just name
  (ListType (SubPropertyType name))   -> Just name
  (MapType (SubPropertyType name))    -> Just name
  _other                              -> Nothing

subPropertyTypeNames :: [Property] -> [Text]
subPropertyTypeNames = catMaybes . fmap (subPropertyTypeName . propertySpecType)

data ResourceType = ResourceType
  { resourceTypeFullName      :: Text
  --, resourceTypeAttributes :: [ResourceAttribute] -- Don't care about this yet, could be useful
  , resourceTypeDocumentation :: Text
  , resourceTypeProperties    :: [Property]
  }
  deriving (Show, Eq, Generic)

resourceTypeFromRaw :: Text -> Raw.ResourceSpecification -> ResourceType
resourceTypeFromRaw fullName Raw.ResourceSpecification{..}
  = ResourceType
  { resourceTypeFullName      = fullName
  , resourceTypeDocumentation = resourceTypeDocumentation
  , resourceTypeProperties    = uncurry propertyFromRaw <$> sortOn fst (toList resourceTypeProperties)
  }