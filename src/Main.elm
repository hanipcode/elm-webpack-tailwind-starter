module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    Int


initialModel : Model
initialModel =
    0


view : Model -> Html Msg
view model =
    div [ class "bg-teal-500 h-screen w-screen flex flex-col items-center justify-center" ]
        [ h1
            [ class "text-white text-5xl font-black uppercase" ]
            [ text "Welcome To Elm Tailwind Starter" ]
        , div
            [ class "w-1/2  bg-white flex items-center justify-center h-40 rounded-sm" ]
            [ p [] [ text "edit yoour text here" ] ]
        ]



-- div []
--     [ button [ onClick Decrement ] [ text "-" ]
--     , text (String.fromInt model)
--     , button [ onClick Increment ] [ text "+" ]
--     ]


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
