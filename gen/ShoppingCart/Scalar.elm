-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ShoppingCart.Scalar exposing (Codecs, ProductCode(..), Upload(..), defaultCodecs, defineCodecs, unwrapCodecs, unwrapEncoder)

import Graphql.Codec exposing (Codec)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode


type ProductCode
    = ProductCode String


type Upload
    = Upload String


defineCodecs :
    { codecProductCode : Codec valueProductCode
    , codecUpload : Codec valueUpload
    }
    -> Codecs valueProductCode valueUpload
defineCodecs definitions =
    Codecs definitions


unwrapCodecs :
    Codecs valueProductCode valueUpload
    ->
        { codecProductCode : Codec valueProductCode
        , codecUpload : Codec valueUpload
        }
unwrapCodecs (Codecs unwrappedCodecs) =
    unwrappedCodecs


unwrapEncoder getter (Codecs unwrappedCodecs) =
    (unwrappedCodecs |> getter |> .encoder) >> Graphql.Internal.Encode.fromJson


type Codecs valueProductCode valueUpload
    = Codecs (RawCodecs valueProductCode valueUpload)


type alias RawCodecs valueProductCode valueUpload =
    { codecProductCode : Codec valueProductCode
    , codecUpload : Codec valueUpload
    }


defaultCodecs : RawCodecs ProductCode Upload
defaultCodecs =
    { codecProductCode =
        { encoder = \(ProductCode raw) -> Encode.string raw
        , decoder = Object.scalarDecoder |> Decode.map ProductCode
        }
    , codecUpload =
        { encoder = \(Upload raw) -> Encode.string raw
        , decoder = Object.scalarDecoder |> Decode.map Upload
        }
    }
