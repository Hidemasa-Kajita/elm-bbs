module ExampleTests exposing (..)

import Expect exposing (..)
import Test exposing (..)

suite : Test
suite =
    describe "Example Test Suite"
        [ test "should equal" <|
            \() ->
                description
                    |> Expect.equal "Elm is functional language."
        ]

description : String
description =
    "Elm is functional language."