-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Enum.TeamMembershipType exposing (TeamMembershipType(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Defines which types of team members are included in the returned list. Can be one of IMMEDIATE, CHILD\_TEAM or ALL.

  - Immediate - Includes only immediate members of the team.
  - ChildTeam - Includes only child team members for the team.
  - All - Includes immediate and child team members for the team.

-}
type TeamMembershipType
    = Immediate
    | ChildTeam
    | All


list : List TeamMembershipType
list =
    [ Immediate, ChildTeam, All ]


decoder : Decoder TeamMembershipType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "IMMEDIATE" ->
                        Decode.succeed Immediate

                    "CHILD_TEAM" ->
                        Decode.succeed ChildTeam

                    "ALL" ->
                        Decode.succeed All

                    _ ->
                        Decode.fail ("Invalid TeamMembershipType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TeamMembershipType -> String
toString enum =
    case enum of
        Immediate ->
            "IMMEDIATE"

        ChildTeam ->
            "CHILD_TEAM"

        All ->
            "ALL"
