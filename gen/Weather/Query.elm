-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Weather.Query exposing (CurrentWeatherByCityNameOptionalArguments, CurrentWeatherByCityNameRequiredArguments, currentWeatherByCityName)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Weather.InputObject
import Weather.Interface
import Weather.Object
import Weather.Scalar
import Weather.ScalarDecoders
import Weather.Union


type alias CurrentWeatherByCityNameOptionalArguments =
    { countryCode : OptionalArgument String }


type alias CurrentWeatherByCityNameRequiredArguments =
    { name : String }


{-|

  - name -
  - countryCode -

-}
currentWeatherByCityName : (CurrentWeatherByCityNameOptionalArguments -> CurrentWeatherByCityNameOptionalArguments) -> CurrentWeatherByCityNameRequiredArguments -> SelectionSet decodesTo Weather.Object.CurrentWeather -> SelectionSet decodesTo RootQuery
currentWeatherByCityName fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { countryCode = Absent }

        optionalArgs =
            [ Argument.optional "countryCode" filledInOptionals.countryCode Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "currentWeatherByCityName" (optionalArgs ++ [ Argument.required "name" requiredArgs.name Encode.string ]) object_ identity