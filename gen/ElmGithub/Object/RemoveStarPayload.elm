-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.RemoveStarPayload exposing (clientMutationId, starrable)

import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) ElmGithub.Object.RemoveStarPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The starrable.
-}
starrable : SelectionSet decodesTo ElmGithub.Interface.Starrable -> SelectionSet (Maybe decodesTo) ElmGithub.Object.RemoveStarPayload
starrable object_ =
    Object.selectionForCompositeField "starrable" [] object_ (identity >> Decode.nullable)
