-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.Label exposing (IssuesOptionalArguments, PullRequestsOptionalArguments, color, createdAt, description, id, isDefault, issues, name, pullRequests, repository, resourcePath, updatedAt, url)

import ElmGithub.Enum.IssueState
import ElmGithub.Enum.PullRequestState
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


{-| Identifies the label color.
-}
color : SelectionSet String ElmGithub.Object.Label
color =
    Object.selectionForField "String" "color" [] Decode.string


{-| Identifies the date and time when the label was created.
-}
createdAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.Label
createdAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| A brief description of this label.
-}
description : SelectionSet (Maybe String) ElmGithub.Object.Label
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.Label
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Indicates whether or not this is a default label.
-}
isDefault : SelectionSet Bool ElmGithub.Object.Label
isDefault =
    Object.selectionForField "Bool" "isDefault" [] Decode.bool


type alias IssuesOptionalArguments =
    { orderBy : OptionalArgument ElmGithub.InputObject.IssueOrder
    , labels : OptionalArgument (List String)
    , states : OptionalArgument (List ElmGithub.Enum.IssueState.IssueState)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of issues associated with this label.

  - orderBy - Ordering options for issues returned from the connection.
  - labels - A list of label names to filter the pull requests by.
  - states - A list of states to filter the issues by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
issues : (IssuesOptionalArguments -> IssuesOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.IssueConnection -> SelectionSet decodesTo ElmGithub.Object.Label
issues fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, labels = Absent, states = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeIssueOrder, Argument.optional "labels" filledInOptionals.labels (Encode.string |> Encode.list), Argument.optional "states" filledInOptionals.states (Encode.enum ElmGithub.Enum.IssueState.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "issues" optionalArgs object_ identity


{-| Identifies the label name.
-}
name : SelectionSet String ElmGithub.Object.Label
name =
    Object.selectionForField "String" "name" [] Decode.string


type alias PullRequestsOptionalArguments =
    { states : OptionalArgument (List ElmGithub.Enum.PullRequestState.PullRequestState)
    , labels : OptionalArgument (List String)
    , headRefName : OptionalArgument String
    , baseRefName : OptionalArgument String
    , orderBy : OptionalArgument ElmGithub.InputObject.IssueOrder
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of pull requests associated with this label.

  - states - A list of states to filter the pull requests by.
  - labels - A list of label names to filter the pull requests by.
  - headRefName - The head ref name to filter the pull requests by.
  - baseRefName - The base ref name to filter the pull requests by.
  - orderBy - Ordering options for pull requests returned from the connection.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pullRequests : (PullRequestsOptionalArguments -> PullRequestsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestConnection -> SelectionSet decodesTo ElmGithub.Object.Label
pullRequests fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { states = Absent, labels = Absent, headRefName = Absent, baseRefName = Absent, orderBy = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "states" filledInOptionals.states (Encode.enum ElmGithub.Enum.PullRequestState.toString |> Encode.list), Argument.optional "labels" filledInOptionals.labels (Encode.string |> Encode.list), Argument.optional "headRefName" filledInOptionals.headRefName Encode.string, Argument.optional "baseRefName" filledInOptionals.baseRefName Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeIssueOrder, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pullRequests" optionalArgs object_ identity


{-| The repository associated with this label.
-}
repository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet decodesTo ElmGithub.Object.Label
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| The HTTP path for this label.
-}
resourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Label
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the date and time when the label was last updated.
-}
updatedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.Label
updatedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "updatedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The HTTP URL for this label.
-}
url : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Label
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
