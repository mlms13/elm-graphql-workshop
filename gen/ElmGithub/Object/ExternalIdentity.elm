-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.ExternalIdentity exposing (guid, id, organizationInvitation, samlIdentity, scimIdentity, user)

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


{-| The GUID for this identity
-}
guid : SelectionSet String ElmGithub.Object.ExternalIdentity
guid =
    Object.selectionForField "String" "guid" [] Decode.string


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.ExternalIdentity
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Organization invitation for this SCIM-provisioned external identity
-}
organizationInvitation : SelectionSet decodesTo ElmGithub.Object.OrganizationInvitation -> SelectionSet (Maybe decodesTo) ElmGithub.Object.ExternalIdentity
organizationInvitation object_ =
    Object.selectionForCompositeField "organizationInvitation" [] object_ (identity >> Decode.nullable)


{-| SAML Identity attributes
-}
samlIdentity : SelectionSet decodesTo ElmGithub.Object.ExternalIdentitySamlAttributes -> SelectionSet (Maybe decodesTo) ElmGithub.Object.ExternalIdentity
samlIdentity object_ =
    Object.selectionForCompositeField "samlIdentity" [] object_ (identity >> Decode.nullable)


{-| SCIM Identity attributes
-}
scimIdentity : SelectionSet decodesTo ElmGithub.Object.ExternalIdentityScimAttributes -> SelectionSet (Maybe decodesTo) ElmGithub.Object.ExternalIdentity
scimIdentity object_ =
    Object.selectionForCompositeField "scimIdentity" [] object_ (identity >> Decode.nullable)


{-| User linked to this external identity. Will be NULL if this identity has not been claimed by an organization member.
-}
user : SelectionSet decodesTo ElmGithub.Object.User -> SelectionSet (Maybe decodesTo) ElmGithub.Object.ExternalIdentity
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)
