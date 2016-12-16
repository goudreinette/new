module View exposing (..)

import Model exposing (Model, Tool(..))
import Update exposing (Msg(..))
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

view : Model -> Html Msg
view model =
  div [class "container"]
    [ node "link" [href "../public/stylesheets/style.css", rel "stylesheet"] []
    ]
