module Main exposing (main)

import Browser
import Helpers exposing (tailwind)
import Html exposing (..)
import Html.Attributes exposing (..)
import Words exposing (words)


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
    { hebrew : List Letter
    , arabic : List Letter
    }


init : Model
init =
    { hebrew =
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
        , { l = 'ע', pron = "Ayin", sample = [ "בית", "בורג" ] }
        , { l = 'פ', pron = "Pey", sample = [ "בית", "בורג" ] }
        , { l = 'ף', pron = "Pey S", sample = [ "בית", "בורג" ] }
        , { l = 'צ', pron = "Zadik", sample = [ "בית", "בורג" ] }
        , { l = 'ץ', pron = "Zadik S", sample = [ "בית", "בורג" ] }
        , { l = 'ק', pron = "Kuf", sample = [ "בית", "בורג" ] }
        , { l = 'ר', pron = "Raysh", sample = [ "בית", "בורג" ] }
        , { l = 'ש', pron = "Shin", sample = [ "בית", "בורג" ] }
        , { l = 'ת', pron = "Tav", sample = [ "בית", "בורג" ] }
        ]
    , arabic =
        [ { l = 'أ'
          , pron = "Alif"
          , sample = [ "Arnab أرنب Rabbit" ]
          }
        , { l = 'ب'
          , pron = "Bih"
          , sample = [ "Bortoqalah برتقالة Orange" ]
          }
        , { l = 'ت'
          , pron = "Tih"
          , sample = [ "Tarabiza ترابيزه Table" ]
          }
        , { l = 'ث'
          , pron = "Thih"
          , sample = [ "thal'ab ثعلب Fox" ]
          }
        , { l = 'ج'
          , pron = "Geem"
          , sample = [ "gamal جمل Camel" ]
          }
        , { l = 'ح'
          , pron = "H'h"
          , sample = [ "Homar - حمار Donkey" ]
          }
        , { l = 'خ'
          , pron = "Kh'h"
          , sample = [ "Kharoof - خروف Sheep" ]
          }
        , { l = 'د'
          , pron = "Dal"
          , sample = [ "Dayman -دايما Always" ]
          }
        , { l = 'ذ'
          , pron = "Thal"
          , sample = [ "zaker -ذاكر Study" ]
          }
        , { l = 'ر'
          , pron = "Rih"
          , sample = [ "Riah رياح Winds" ]
          }
        , { l = 'ز'
          , pron = "Zain"
          , sample = [ "Zir زر Button" ]
          }
        , { l = 'س'
          , pron = "seen"
          , sample = [ "Sabbora سبورة Board" ]
          }
        , { l = 'ش'
          , pron = "sheen"
          , sample = [ "Sham'a شمعه Candel" ]
          }
        , { l = 'ص'
          , pron = "Sad"
          , sample = [ "Sayad صياد Hunter" ]
          }
        , { l = 'ض'
          , pron = "Dadd"
          , sample = [ "Dariba ضريبة Tax" ]
          }
        , { l = 'ط'
          , pron = "Tah"
          , sample = [ "Tariq طريق Road" ]
          }
        , { l = 'ظ'
          , pron = "Zah"
          , sample = [ "Zarif ظريف Nice" ]
          }
        , { l = 'ع'
          , pron = "Ain"
          , sample = [ "Amal عمل Work" ]
          }
        , { l = 'غ'
          , pron = "Ghin"
          , sample = [ "Ghaby غبي Stupid" ]
          }
        , { l = 'ف'
          , pron = "Feh"
          , sample = [ "Farhan فرحان Happy" ]
          }
        , { l = 'ق'
          , pron = "Qaf"
          , sample = [ "Qird قرد Monkey" ]
          }
        , { l = 'ك'
          , pron = "kaf"
          , sample = [ "Kilma كلمة Word" ]
          }
        , { l = 'ل'
          , pron = "Lam"
          , sample = [ "Lih ليه Why" ]
          }
        , { l = 'م'
          , pron = "Meem"
          , sample = [ "Meen مين Who" ]
          }
        , { l = 'ن'
          , pron = "Noon"
          , sample = [ "Na'am نعم Yes" ]
          }
        , { l = 'ه'
          , pron = "Hih"
          , sample = [ "Hia هى She" ]
          }
        , { l = 'و'
          , pron = "Wow"
          , sample = [ "warda وردة Flower" ]
          }
        , { l = 'ى'
          , pron = "Yih"
          , sample = [ "ynady ينادى Call" ]
          }
        ]
    }


type Msg
    = Hebrew
    | Arabic


update : Msg -> Model -> Model
update msg model =
    case msg of
        Hebrew ->
            model

        Arabic ->
            model


view : Model -> Html Msg
view model =
    div
        [ class <|
            tailwind
                { css = "flex flex-col gap-5 px-7" }
        ]
        [ table [ class "table table-auto my-5" ]
            [ thead [] [ th [] [ text "l" ], th [] [ text "pron" ] ]
            , tbody [ class <| tailwind { css = "" } ]
                (List.map showLetters model.hebrew
                    ++ List.map showLetters model.arabic
                )
            ]

        -- , div [ class <| tailwind { css = "" } ] [ words ]
        -- , div [ class <| tailwind { css = "" } ] [ phoneCard ]
        ]


showLetters : Letter -> Html Msg
showLetters card =
    tr
        [ class <|
            tailwind
                { css = "text-9xl" }
        ]
        [ td
            [ lang "he"
            , classList
                [ ( tdDecor, True )
                , ( tailwind
                        { css = "font-heb text-pink-900"
                        }
                  , True
                  )
                ]
            ]
            [ String.fromChar card.l |> text ]
        , td
            [ dir "ltr"
            , lang "en"
            , classList
                [ ( tdDecor, True )
                , ( tailwind
                        { css = "text-6xl text-slate-500"
                        }
                  , True
                  )
                ]
            ]
            [ text card.pron ]
        ]


tdDecor : String
tdDecor =
    tailwind { css = "" }


phoneCard : Html msg
phoneCard =
    div
        [ class "min-w-screen min-h-screen bg-gray-50 flex items-center justify-center px-3 py-5"
        ]
        [ div
            [ class "w-full bg-white text-gray-800 overflow-hidden border-4 border-white rounded-4xl shadow-lg relative"

            -- , style "max-width" "414px"
            ]
            [ div
                [ class "phone-top"
                ]
                [ div
                    [ class "phone-top-inner"
                    ]
                    []
                ]
            , div
                [ class "w-full bg-gradient-to-br from-yellow-500 to-pink-600 pt-12 pb-12 px-4 text-white"
                ]
                [ div
                    [ class "mb-5"
                    ]
                    [ input
                        [ type_ "text"
                        , class "w-full text-white bg-white bg-opacity-20 rounded-full border-2 border-transparent focus:border-white focus:border-opacity-50 focus:outline-none px-3 py-1 leading-none text-sm transition-colors placeholder-white placeholder-opacity-50"
                        , placeholder "Search..."
                        ]
                        []
                    ]
                , h1
                    [ class "text-3xl font-light mb-3"
                    ]
                    [ text "Market Overview" ]
                ]
            , div
                [ class "bg-gray-50 px-2"
                ]
                [ ul
                    [ class "relative -top-10"
                    ]
                    [ li
                        [ class "mb-2 bg-white p-3 shadow-lg rounded cursor-pointer transition-colors border-b-2 border-transparent hover:border-pink-500"
                        ]
                        [ div
                            [ class "flex items-center"
                            ]
                            [ div
                                [ class "w-16 text-3xl leading-none"
                                ]
                                [ i
                                    [ class "cc BTC text-yellow-500"
                                    ]
                                    []
                                ]
                            , div
                                [ class "w-full"
                                ]
                                [ text "Bitcoin"
                                , span
                                    [ class "ml-3 text-gray-400"
                                    ]
                                    [ text "BTC" ]
                                ]
                            , div
                                [ class "text-green-500"
                                ]
                                [ text "+0.65%" ]
                            ]
                        ]
                    , li
                        [ class "mb-2 bg-white p-3 shadow-lg rounded cursor-pointer transition-colors border-b-2 border-transparent hover:border-pink-500"
                        ]
                        [ div
                            [ class "flex items-center"
                            ]
                            [ div
                                [ class "w-16 text-3xl leading-none"
                                ]
                                [ i
                                    [ class "cc ETH text-gray-700"
                                    ]
                                    []
                                ]
                            , div
                                [ class "w-full"
                                ]
                                [ text "Ethereum"
                                , span
                                    [ class "ml-3 text-gray-400"
                                    ]
                                    [ text "ETH" ]
                                ]
                            , div
                                [ class "text-green-500"
                                ]
                                [ text "+0.98%" ]
                            ]
                        ]
                    , li
                        [ class "mb-2 bg-white p-3 shadow-lg rounded cursor-pointer transition-colors border-b-2 border-transparent hover:border-pink-500"
                        ]
                        [ div
                            [ class "flex items-center"
                            ]
                            [ div
                                [ class "w-16 text-3xl leading-none"
                                ]
                                [ i
                                    [ class "cc XLM text-blue-300"
                                    ]
                                    []
                                ]
                            , div
                                [ class "w-full"
                                ]
                                [ text "Stellar"
                                , span
                                    [ class "ml-3 text-gray-400"
                                    ]
                                    [ text "XLM" ]
                                ]
                            , div
                                [ class "text-red-500"
                                ]
                                [ text "-1.24%" ]
                            ]
                        ]
                    , li
                        [ class "mb-2 bg-white p-3 shadow-lg rounded cursor-pointer transition-colors border-b-2 border-transparent hover:border-pink-500"
                        ]
                        [ div
                            [ class "flex items-center"
                            ]
                            [ div
                                [ class "w-16 text-3xl leading-none"
                                ]
                                [ i
                                    [ class "cc XRP text-blue-700"
                                    ]
                                    []
                                ]
                            , div
                                [ class "w-full"
                                ]
                                [ text "Ripple"
                                , span
                                    [ class "ml-3 text-gray-400"
                                    ]
                                    [ text "XRP" ]
                                ]
                            , div
                                [ class "text-green-500"
                                ]
                                [ text "+0.30%" ]
                            ]
                        ]
                    ]
                ]
            , div
                [ class "px-5 bg-white pb-2"
                ]
                [ div
                    [ class "flex"
                    ]
                    [ div
                        [ class "flex-1 group"
                        ]
                        [ a
                            [ href "#"
                            , class "flex items-end justify-center text-center mx-auto px-4 w-full text-gray-400 group-hover:text-pink-500 border-b-2 border-transparent group-hover:border-pink-500"
                            ]
                            [ span
                                [ class "block px-1"
                                ]
                                [ i
                                    [ class "far fa-home text-xl pt-1 mb-1 block"
                                    ]
                                    []
                                , span
                                    [ class "block text-xs pb-1"
                                    ]
                                    [ text "Home" ]
                                ]
                            ]
                        ]
                    , div
                        [ class "flex-1 group"
                        ]
                        [ a
                            [ href "#"
                            , class "flex items-end justify-center text-center mx-auto px-4 w-full text-gray-400 group-hover:text-pink-500 border-b-2 border-transparent group-hover:border-pink-500"
                            ]
                            [ span
                                [ class "block px-1"
                                ]
                                [ i
                                    [ class "far fa-compass text-xl pt-1 mb-1 block"
                                    ]
                                    []
                                , span
                                    [ class "block text-xs pb-1"
                                    ]
                                    [ text "Explore" ]
                                ]
                            ]
                        ]
                    , div
                        [ class "flex-1 group"
                        ]
                        [ a
                            [ href "#"
                            , class "flex items-end justify-center text-center mx-auto px-4 w-full text-gray-400 group-hover:text-pink-500 border-b-2 border-transparent group-hover:border-pink-500"
                            ]
                            [ span
                                [ class "block px-1"
                                ]
                                [ i
                                    [ class "far fa-search text-xl pt-1 mb-1 block"
                                    ]
                                    []
                                , span
                                    [ class "block text-xs pb-1"
                                    ]
                                    [ text "Search" ]
                                ]
                            ]
                        ]
                    , div
                        [ class "flex-1 group"
                        ]
                        [ a
                            [ href "#"
                            , class "flex items-end justify-center text-center mx-auto px-4 w-full text-gray-400 group-hover:text-pink-500 border-b-2 border-transparent group-hover:border-pink-500"
                            ]
                            [ span
                                [ class "block px-1"
                                ]
                                [ i
                                    [ class "far fa-cog text-xl pt-1 mb-1 block"
                                    ]
                                    []
                                , span
                                    [ class "block text-xs pb-1"
                                    ]
                                    [ text "Settings" ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
