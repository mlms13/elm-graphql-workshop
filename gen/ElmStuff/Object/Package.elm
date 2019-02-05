-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmStuff.Object.Package exposing (name, summary, versions)

import ElmStuff.InputObject
import ElmStuff.Interface
import ElmStuff.Object
import ElmStuff.Scalar
import ElmStuff.ScalarDecoders
import ElmStuff.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| -}
name : SelectionSet String ElmStuff.Object.Package
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| -}
summary : SelectionSet String ElmStuff.Object.Package
summary =
    Object.selectionForField "String" "summary" [] Decode.string


{-| -}
versions : SelectionSet (List String) ElmStuff.Object.Package
versions =
    Object.selectionForField "(List String)" "versions" [] (Decode.string |> Decode.list)
