module View exposing (..)

import Model exposing (Model)
import Update exposing (Msg(..))
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

view : Model -> Html Msg
view model =
  div [class "container"]
    [ node "link" [href "../public/css/style.css", rel "stylesheet"] []
    ]
