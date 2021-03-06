module Main exposing (main)

import Browser
import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet, hardcoded, with)
import Helpers.Main
import RemoteData exposing (RemoteData)
import ShoppingCart.Enum.DiscountLookupReason exposing (DiscountLookupReason)
import ShoppingCart.Object.DiscountInfo
import ShoppingCart.Object.DiscountLookupError
import ShoppingCart.Query as Query
import ShoppingCart.Union.DiscountInfoOrError
import Time


type alias Response =
    ()


type DiscountInfoOrError
    = DiscountInfo { discountedPrice : String }
    | DiscountLookupError { reason : DiscountLookupReason }


query : SelectionSet Response RootQuery
query =
    Query.discountOrError { code = "abc" }
        (ShoppingCart.Union.DiscountInfoOrError.fragments
            { onDiscountInfo = SelectionSet.empty
            , onDiscountLookupError = SelectionSet.empty
            }
         -- { onDiscountInfo = ShoppingCart.Object.DiscountInfo.applicableProduct
         -- , onDiscountLookupError = ShoppingCart.Object.DiscountLookupError.reason
         -- }
        )


makeRequest : Cmd Msg
makeRequest =
    query
        |> Graphql.Http.queryRequest "/api"
        |> Graphql.Http.send (RemoteData.fromResult >> GotResponse)



-- Elm Architecture Setup


type Msg
    = GotResponse Model


type alias Model =
    RemoteData (Graphql.Http.Error Response) Response


type alias Flags =
    ()


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( RemoteData.Loading, makeRequest )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotResponse response ->
            ( response, Cmd.none )


main : Helpers.Main.Program Flags Model Msg
main =
    Helpers.Main.document
        { init = init
        , update = update
        , queryString = Document.serializeQuery query
        , instructions =
            { title = "Inexhaustive Unions"
            , body = """
| List
    -> Use {Code|ShoppingCart.Union.DiscountInfoOrError.maybeFragments} to build up a union that *always* is {Code|Nothing}.
    (?) Why take this step?
    -> Now get the discountedPrice for the success case. You should have a {Code|query : SelectionSet (Maybe Int) RootQuery}."""
            }
        }
