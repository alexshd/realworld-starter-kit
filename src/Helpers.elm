module Helpers exposing (..)

{-| Helper for tailwind autocomplition

    Html.Attributes.class <| tailwind { css = "bg-red-100..." }

-}


tailwind : { css : String } -> String
tailwind classes =
    classes.css
