module Main exposing (main)

import Books.Object.Book
import Books.Query as Query
import Browser
import Graphql.Document as Document
import Graphql.Http
import Graphql.Operation exposing (RootQuery)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet as SelectionSet exposing (SelectionSet, hardcoded, with)
import Helpers.Main
import RemoteData exposing (RemoteData)
import Time


type alias Response =
    ()


query : SelectionSet Response RootQuery
query =
    SelectionSet.empty


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
            { title = "Deconstructing Constructors"
            , body = """This simple Elm concept can really trip you up if you don't take the time to fully understand it. Let's take a moment to demystify Elm constructors!

What is a constructor? Well, it's a way to build up a record.

| Blockquote
    An Elm constructor is just a function to build a record.

    The only difference it has from a regular Elm function is that it __________________.




We'll fill in that blank in a minute.

First, let's define a function manually that satisfies the first part.

| Ellie
    4BVqf9HJc7xa1


Okay, so our {Code|buildPerson} function is functionally the same thing as an Elm Constructor. There's just one small difference. Did you guess it? Let's fill in the blank:


| Blockquote
    An Elm constructor is just a function to build a record.

    The only difference it has from a regular Elm function is that *it starts with a capital letter*.

That's right, Elm doesn't let you name your functions starting with a capital letter. So Elm Constructors are the only functions in Elm which start with a capital letter. And you define them in a special way: by defining a type.


To wrap up, there are 2 ways that you can define a Type Constructor in Elm:

| List
    # *Record Type Aliases* Example: {Code|type alias User = \\{ name : String, id : Int \\}}. Now the type of the {Code|User} function Elm defines for us is {Code|(String -> Int -> User)}.

    # *Custom Type Constructors* Example: {Code|type User = Guest \\| LoggedInUser String Int}. Now the type of the {Code|LoggedInUser} function Elm defines for us is {Code|String -> Int -> User}. Note that we have two things here. A function called {Code|LoggedInUser}, and a /type/ called {Code|User}. You can't use {Code|User} as a function, nor can you use {Code|LoggedInUser} as a type.

| List
    (?) What Elm things exist after you define your {Code|type alias} that didn't before?
    (?) In what context can these things be used?

| Ellie
    4BTH7sy8zRWa1

| List
    -> Try using `type alias Person = String`. Does it compile? What does Elm define in this case?
"""
            }
        }
