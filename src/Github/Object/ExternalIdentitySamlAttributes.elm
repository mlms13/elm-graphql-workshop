-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ExternalIdentitySamlAttributes exposing (nameId)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarDecoders
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The NameID of the SAML identity
-}
nameId : SelectionSet (Maybe String) Github.Object.ExternalIdentitySamlAttributes
nameId =
    Object.selectionForField "(Maybe String)" "nameId" [] (Decode.string |> Decode.nullable)
