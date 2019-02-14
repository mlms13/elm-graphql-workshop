-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.Blob exposing (abbreviatedOid, byteSize, commitResourcePath, commitUrl, id, isBinary, isTruncated, oid, repository, text)

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


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String ElmGithub.Object.Blob
abbreviatedOid =
    Object.selectionForField "String" "abbreviatedOid" [] Decode.string


{-| Byte size of Blob object
-}
byteSize : SelectionSet Int ElmGithub.Object.Blob
byteSize =
    Object.selectionForField "Int" "byteSize" [] Decode.int


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Blob
commitResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "commitResourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.Blob
commitUrl =
    Object.selectionForField "ScalarCodecs.Uri" "commitUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.Blob
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Indicates whether the Blob is binary or text
-}
isBinary : SelectionSet Bool ElmGithub.Object.Blob
isBinary =
    Object.selectionForField "Bool" "isBinary" [] Decode.bool


{-| Indicates whether the contents is truncated
-}
isTruncated : SelectionSet Bool ElmGithub.Object.Blob
isTruncated =
    Object.selectionForField "Bool" "isTruncated" [] Decode.bool


{-| The Git object ID
-}
oid : SelectionSet ElmGithub.ScalarCodecs.GitObjectID ElmGithub.Object.Blob
oid =
    Object.selectionForField "ScalarCodecs.GitObjectID" "oid" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet decodesTo ElmGithub.Object.Blob
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| UTF8 text data or null if the Blob is binary
-}
text : SelectionSet (Maybe String) ElmGithub.Object.Blob
text =
    Object.selectionForField "(Maybe String)" "text" [] (Decode.string |> Decode.nullable)
