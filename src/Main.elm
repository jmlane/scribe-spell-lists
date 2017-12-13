module Main exposing (Model, Msg, update, view, subscriptions, init)


import Html exposing (..)
import Html.Attributes exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
    }


type alias Model =
    {}


type Msg
    = Search String
    | NoOp


init : (Model, Cmd Msg)
init =
    (Model, Cmd.none)


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        _ ->
            (model, Cmd.none)


view : Model -> Html Msg
view model =
    section []
        [ table [ class "table" ]
            [ thead []
                [ tr []
                    [ th [ scope "col" ] []
                    , th [ scope "col" ] []
                    ]
                ]
            , tbody []
                [ tr []
                    [ th [ scope "row" ] []
                    , td [] []
                    ]
                ]
            ]
        ]
