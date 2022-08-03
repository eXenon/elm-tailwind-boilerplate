module Main exposing (..)

import Browser
import Browser.Navigation
import Html exposing (div, text)
import Html.Attributes exposing (class)
import Url



-- MAIN


main =
    Browser.application
        { init = init
        , update = update
        , view = view
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    Int


type alias Flags =
    String



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- URL MANAGEMENT


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest request =
    NoOp


onUrlChange : Url.Url -> Msg
onUrlChange url =
    NoOp



-- INIT


init : Flags -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ =
    ( 0
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Elm Tailwind Boilerplate"
    , body =
        [ div [ class "text-2xl" ] [ text "Hello World, from Elm!" ]
        ]
    }
