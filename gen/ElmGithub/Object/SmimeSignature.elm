-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.SmimeSignature exposing (email, isValid, payload, signature, signer, state, wasSignedByGitHub)

import ElmGithub.Enum.GitSignatureState
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


{-| Email used to sign this object.
-}
email : SelectionSet String ElmGithub.Object.SmimeSignature
email =
    Object.selectionForField "String" "email" [] Decode.string


{-| True if the signature is valid and verified by GitHub.
-}
isValid : SelectionSet Bool ElmGithub.Object.SmimeSignature
isValid =
    Object.selectionForField "Bool" "isValid" [] Decode.bool


{-| Payload for GPG signing object. Raw ODB object without the signature header.
-}
payload : SelectionSet String ElmGithub.Object.SmimeSignature
payload =
    Object.selectionForField "String" "payload" [] Decode.string


{-| ASCII-armored signature header from object.
-}
signature : SelectionSet String ElmGithub.Object.SmimeSignature
signature =
    Object.selectionForField "String" "signature" [] Decode.string


{-| GitHub user corresponding to the email signing this commit.
-}
signer : SelectionSet decodesTo ElmGithub.Object.User -> SelectionSet (Maybe decodesTo) ElmGithub.Object.SmimeSignature
signer object_ =
    Object.selectionForCompositeField "signer" [] object_ (identity >> Decode.nullable)


{-| The state of this signature. `VALID` if signature is valid and verified by
GitHub, otherwise represents reason why signature is considered invalid.
-}
state : SelectionSet ElmGithub.Enum.GitSignatureState.GitSignatureState ElmGithub.Object.SmimeSignature
state =
    Object.selectionForField "Enum.GitSignatureState.GitSignatureState" "state" [] ElmGithub.Enum.GitSignatureState.decoder


{-| True if the signature was made with GitHub's signing key.
-}
wasSignedByGitHub : SelectionSet Bool ElmGithub.Object.SmimeSignature
wasSignedByGitHub =
    Object.selectionForField "Bool" "wasSignedByGitHub" [] Decode.bool
