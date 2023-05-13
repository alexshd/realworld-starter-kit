module Main exposing (main)

import Browser
import Helpers exposing (tailwind)
import Html exposing (..)
import Html.Attributes exposing (..)


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }


type alias Letter =
    { l : Char, pron : String, sample : List String }


type alias Model =
    { letters : List Letter
    }


init : Model
init =
    Model
        [ { l = 'א', pron = "Alef", sample = [ "אדם", "ארון" ] }
        , { l = 'ב', pron = "Bet", sample = [ "בית", "בורג" ] }
        , { l = 'ג', pron = "Gimel", sample = [ "בית", "בורג" ] }
        , { l = 'ד', pron = "Dalet", sample = [ "בית", "בורג" ] }
        , { l = 'ה', pron = "Hey", sample = [ "בית", "בורג" ] }
        , { l = 'ז', pron = "Zayin", sample = [ "בית", "בורג" ] }
        , { l = 'ח', pron = "Chet", sample = [ "בית", "בורג" ] }
        , { l = 'ט', pron = "Tet", sample = [ "בית", "בורג" ] }
        , { l = 'י', pron = "Yod", sample = [ "בית", "בורג" ] }
        , { l = 'כ', pron = "Kaf", sample = [ "בית", "בורג" ] }
        , { l = 'ך', pron = "Kaf S", sample = [ "בית", "בורג" ] }
        , { l = 'ל', pron = "Lamed", sample = [ "בית", "בורג" ] }
        , { l = 'מ', pron = "Mem", sample = [ "בית", "בורג" ] }
        , { l = 'נ', pron = "Nun", sample = [ "בית", "בורג" ] }
        , { l = 'ן', pron = "Nun S", sample = [ "בית", "בורג" ] }
        , { l = 'ס', pron = "Samekh", sample = [ "בית", "בורג" ] }
        , { l = 'ע', pron = "`Ayin", sample = [ "בית", "בורג" ] }
        , { l = 'פ', pron = "Pey", sample = [ "בית", "בורג" ] }
        , { l = 'ף', pron = "Pey S", sample = [ "בית", "בורג" ] }
        , { l = 'צ', pron = "Zadik", sample = [ "בית", "בורג" ] }
        , { l = 'ץ', pron = "Zadik S", sample = [ "בית", "בורג" ] }
        , { l = 'ק', pron = "Kuf", sample = [ "בית", "בורג" ] }
        , { l = 'ר', pron = "Raysh", sample = [ "בית", "בורג" ] }
        , { l = 'ש', pron = "Shin", sample = [ "בית", "בורג" ] }
        , { l = 'ת', pron = "Tav", sample = [ "בית", "בורג" ] }
        ]


type Msg
    = Msg1
    | Msg2


update : Msg -> Model -> Model
update msg model =
    case msg of
        Msg1 ->
            model

        Msg2 ->
            model


view : Model -> Html Msg
view model =
    div
        [ class <|
            tailwind
                { css = "bg-slate-100 px-4 gap-2 flex text-slate-800 flex-col text-7xl" }
        ]
        (List.map showLetters model.letters)


showLetters : Letter -> Html Msg
showLetters card =
    div [ class <| tailwind { css = "flex justify-around items-center text-center shadow-sm rounded-b-lg" } ]
        [ span
            [ lang "he"
            , class <|
                tailwind { css = "" }
            ]
            [ String.fromChar card.l |> text ]
        , span
            [ lang "en"
            , class <|
                tailwind { css = "" }
            ]
            [ text card.pron ]
        ]
