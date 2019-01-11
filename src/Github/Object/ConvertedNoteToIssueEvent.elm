-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ConvertedNoteToIssueEvent exposing (actor, createdAt, databaseId, id)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ConvertedNoteToIssueEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.ConvertedNoteToIssueEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.ConvertedNoteToIssueEvent
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.ConvertedNoteToIssueEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)
