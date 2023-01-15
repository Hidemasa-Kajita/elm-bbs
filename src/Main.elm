module Main exposing (main)

import Html exposing (Html, a, div, h1, li, text, ul)
import Html.Attributes exposing (href)


main : Html msg
main =
    div [] [ header, content ]


header : Html msg
header =
    h1 [] [ text "Useful Links" ]


linkItem : String -> String -> Html msg
linkItem url text_ =
    li [] [ a [ href url ] [ text text_ ] ]


content : Html msg
content =
    ul []
        [ linkItem "htts://elm-lang" "Homepage"
        , linkItem "htts://elm-lang" "Packages"
        , linkItem "htts://elm-lang" "Playground"
        ]
