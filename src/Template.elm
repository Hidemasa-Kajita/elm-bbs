module Template exposing (..)

import Browser
import Counter exposing (Msg, update)
import Html exposing (Html, text)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


type alias Model =
    {}


init : Model
init =
    {}


type Msg
    = Msg


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> Html Msg
view model =
    text ""
