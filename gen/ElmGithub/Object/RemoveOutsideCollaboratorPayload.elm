-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.RemoveOutsideCollaboratorPayload exposing (clientMutationId, removedUser)

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
clientMutationId : SelectionSet (Maybe String) ElmGithub.Object.RemoveOutsideCollaboratorPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The user that was removed as an outside collaborator.
-}
removedUser : SelectionSet decodesTo ElmGithub.Object.User -> SelectionSet (Maybe decodesTo) ElmGithub.Object.RemoveOutsideCollaboratorPayload
removedUser object_ =
    Object.selectionForCompositeField "removedUser" [] object_ (identity >> Decode.nullable)
