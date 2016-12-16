module Update exposing (..)

import Model exposing (..)

type Msg
  = NoOp

update msg model =
  case msg of
    NoOp -> 
      model

