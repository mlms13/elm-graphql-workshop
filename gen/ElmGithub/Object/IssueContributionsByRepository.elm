-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.IssueContributionsByRepository exposing (ContributionsOptionalArguments, contributions, repository)

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


type alias ContributionsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument ElmGithub.InputObject.ContributionOrder
    }


{-| The issue contributions.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Ordering options for contributions returned from the connection.

-}
contributions : (ContributionsOptionalArguments -> ContributionsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.CreatedIssueContributionConnection -> SelectionSet decodesTo ElmGithub.Object.IssueContributionsByRepository
contributions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy ElmGithub.InputObject.encodeContributionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "contributions" optionalArgs object_ identity


{-| The repository in which the issues were opened.
-}
repository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet decodesTo ElmGithub.Object.IssueContributionsByRepository
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity
