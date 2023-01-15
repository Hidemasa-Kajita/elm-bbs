module Form exposing (..)

import Browser
import Counter exposing (Msg, update)
import Html exposing (Html, button, div, input, li, text, ul)
import Html.Attributes exposing (disabled, value)
import Html.Events exposing (onClick, onInput, onSubmit)
import List exposing (filter)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


type alias Model =
    { input : String
    , memos : List String
    }


init : Model
init =
    { input = ""
    , memos = []
    }


type Msg
    = Input String
    | Delete String
    | Submit


update : Msg -> Model -> Model
update msg model =
    case msg of
        Input input ->
            { model | input = input }

        Delete memo ->
            { model | memos = List.filter (\v -> memo /= v) model.memos }

        Submit ->
            { model
                | input = ""
                , memos = model.input :: model.memos
            }


view : Model -> Html Msg
view model =
    div []
        [ Html.form [ onSubmit Submit ]
            [ input [ value model.input, onInput Input ] []
            , button
                [ disabled (String.length model.input < 1) ]
                [ text "Submit" ]
            ]
        , ul [] (List.map viewMemo model.memos)
        ]


viewMemo : String -> Html Msg
viewMemo memo =
    div []
        [ li []
            [ text memo ]
        , button
            [ onClick (Delete memo) ]
            [ text "Delete" ]
        ]
