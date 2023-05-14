module Words exposing (..)

import Helpers exposing (tailwind)
import Html exposing (..)
import Html.Attributes exposing (..)


words =
    div
        [ class "wlv-item js-wlv-item"
        ]
        [ div
            [ class "wlv-item__box"
            ]
            [ div
                [ class "wlv-item__checkbox-box"
                ]
                [ input
                    [ type_ "checkbox"
                    , class "wlv-checkbox js-wlv-checkbox"
                    , value ""
                    , id "wlv-checkbox-1"
                    , attribute "data-id" "755"
                    , attribute "data-flashcardid" "2360596"
                    ]
                    []
                , label
                    [ for "wlv-checkbox-1"
                    ]
                    []
                ]
            , div
                [ class "wlv-item__image-box"
                ]
                [ img
                    [ src "https://d1pra95f92lrn3.cloudfront.net/media/thumb/22019_96square.jpg"
                    , class "wlv-item__image"
                    , alt "week"
                    , attribute "srcset" "https://d1pra95f92lrn3.cloudfront.net/media/thumb/22019_192square.jpg 2x"
                    ]
                    []
                ]
            , div
                [ class "wlv-item__word-box"
                ]
                [ div
                    [ class "wlv-item__word-container"
                    ]
                    [ div
                        [ class "wlv-item__audio-box"
                        ]
                        [ button
                            [ class "wlv-item__audio-button js-wlv-audio"
                            , title "Play"
                            , attribute "aria-label" "Play"
                            , tabindex -1
                            , style "display" "none"
                            ]
                            []
                        , span
                            [ class "mejsa__offscreen"
                            ]
                            [ text "Audio Player" ]
                        , div
                            [ id "mep_1"
                            , class "mejsa__container mejsa__container-keyboard-inactive mejsa__audio"
                            , tabindex 0
                            , attribute "role" "application"
                            , attribute "aria-label" "Audio Player"
                            , style "width" "25px"
                            , style "height" "25px"
                            ]
                            [ div
                                [ class "mejsa__inner"
                                ]
                                [ div
                                    [ class "mejsa__mediaelement"
                                    ]
                                    [ node "mediaelementwrapper"
                                        [ id "mejs_4756575781972192"
                                        ]
                                        [ audio
                                            [ src "https://d1pra95f92lrn3.cloudfront.net/audio/507563.mp3"
                                            , preload "none"
                                            , id "mejs_4756575781972192_html5"
                                            ]
                                            []
                                        ]
                                    ]
                                , div
                                    [ class "mejsa__layers"
                                    ]
                                    [ div
                                        [ class "mejsa__poster mejsa__layer"
                                        , style "display" "none"
                                        , style "width" "25px"
                                        , style "height" "25px"
                                        ]
                                        []
                                    ]
                                , div
                                    [ class "mejsa__controls"
                                    ]
                                    [ div
                                        [ class "mejsa__button mejsa__playpause-button mejsa__play"
                                        ]
                                        [ button
                                            [ type_ "button"
                                            , attribute "aria-controls" "mep_1"
                                            , title "Play"
                                            , attribute "aria-label" "Play"
                                            ]
                                            []
                                        ]
                                    ]
                                , div
                                    [ class "mejsa__clear"
                                    ]
                                    []
                                ]
                            ]
                        ]
                    , div
                        [ class "wlv-item__word-line"
                        ]
                        [ span
                            [ class "wlv-item__word js-wlv-word"
                            , dir "rtl"
                            , lang "he"
                            ]
                            [ text "שבוע" ]
                        , span
                            [ class "wlv-item__word-zoom js-wlv-word-zoom"
                            , dir "rtl"
                            , lang "he"
                            ]
                            [ text "שבוע" ]
                        , span
                            [ class "wlv-item__word-class"
                            ]
                            [ text "(n)" ]
                        , span
                            [ class "wlv-item__word-gender"
                            ]
                            [ text "masc" ]
                        , div
                            [ class "wlv-item__word-field-container"
                            ]
                            [ span
                                [ class "wlv-item__word-field js-wlv-word-field js-wlv-word-field-romanization romanization"
                                ]
                                [ text "shavu'a" ]
                            ]
                        , div
                            [ class "wlv-item__word-field-container"
                            ]
                            [ span
                                [ class "wlv-item__word-field js-wlv-word-field js-wlv-word-field-gender gender"
                                ]
                                [ text "masc" ]
                            ]
                        , div
                            [ class "wlv-item__word-field-container"
                            ]
                            [ span
                                [ class "wlv-item__word-field js-wlv-word-field js-wlv-word-field-vowelled vowelled"
                                ]
                                [ span
                                    [ class "wlv-item__word"
                                    , dir "rtl"
                                    , lang "he"
                                    ]
                                    [ text "שָׁבוּעַ" ]
                                ]
                            ]
                        ]
                    ]
                , div
                    [ class "wlv-item__english-container"
                    ]
                    [ div
                        [ class "wlv-item__audio-box"
                        ]
                        [ button
                            [ class "wlv-item__audio-button js-wlv-audio"
                            , title "Play"
                            , attribute "aria-label" "Play"
                            , tabindex -1
                            , style "display" "none"
                            ]
                            []
                        , span
                            [ class "mejsa__offscreen"
                            ]
                            [ text "Audio Player" ]
                        , div
                            [ id "mep_0"
                            , class "mejsa__container mejsa__container-keyboard-inactive mejsa__audio"
                            , tabindex 0
                            , attribute "role" "application"
                            , attribute "aria-label" "Audio Player"
                            , style "width" "25px"
                            , style "height" "25px"
                            ]
                            [ div
                                [ class "mejsa__inner"
                                ]
                                [ div
                                    [ class "mejsa__mediaelement"
                                    ]
                                    [ node "mediaelementwrapper"
                                        [ id "mejs_325759688356988"
                                        ]
                                        [ audio
                                            [ src "https://d1pra95f92lrn3.cloudfront.net/audio/4258.mp3"
                                            , preload "none"
                                            , id "mejs_325759688356988_html5"
                                            ]
                                            []
                                        ]
                                    ]
                                , div
                                    [ class "mejsa__layers"
                                    ]
                                    [ div
                                        [ class "mejsa__poster mejsa__layer"
                                        , style "display" "none"
                                        , style "width" "25px"
                                        , style "height" "25px"
                                        ]
                                        []
                                    ]
                                , div
                                    [ class "mejsa__controls"
                                    ]
                                    [ div
                                        [ class "mejsa__button mejsa__playpause-button mejsa__play"
                                        ]
                                        [ button
                                            [ type_ "button"
                                            , attribute "aria-controls" "mep_0"
                                            , title "Play"
                                            , attribute "aria-label" "Play"
                                            ]
                                            []
                                        ]
                                    ]
                                , div
                                    [ class "mejsa__clear"
                                    ]
                                    []
                                ]
                            ]
                        ]
                    , span
                        [ class "wlv-item__english js-wlv-english"
                        ]
                        [ text "week" ]
                    ]
                ]
            , div
                [ class "wlv-item__samples-box"
                ]
                [ div
                    [ class "wlv-item__samples"
                    ]
                    [ div
                        [ class "wlv-item__sample wlv-item__sample--first"
                        ]
                        [ div
                            [ class "wlv-item__word-container"
                            ]
                            [ div
                                [ class "wlv-item__audio-box"
                                ]
                                [ button
                                    [ class "wlv-item__audio-button js-wlv-audio"
                                    , title "Play"
                                    , attribute "aria-label" "Play"
                                    ]
                                    []
                                , audio
                                    [ src "https://d1pra95f92lrn3.cloudfront.net/audio/548150.mp3"
                                    , preload "none"
                                    ]
                                    []
                                ]
                            , div
                                [ class "wlv-item__word-line"
                                ]
                                [ span
                                    [ class "wlv-item__word"
                                    , dir "rtl"
                                    , lang "he"
                                    ]
                                    [ text "יש שבעה ימים בשבוע." ]
                                , span
                                    [ class "wlv-item__word-zoom js-wlv-word-zoom"
                                    , dir "rtl"
                                    , lang "he"
                                    ]
                                    [ text "יש שבעה ימים בשבוע." ]
                                , div
                                    [ class "wlv-item__word-field-container"
                                    ]
                                    [ span
                                        [ class "wlv-item__word-field js-wlv-word-field romanization"
                                        ]
                                        [ text "Yesh shiv - a yamim ba'sha'vu-a." ]
                                    ]
                                , div
                                    [ class "wlv-item__word-field-container"
                                    ]
                                    [ span
                                        [ class "wlv-item__word-field js-wlv-word-field vowelled"
                                        ]
                                        [ span
                                            [ dir "rtl"
                                            , lang "he"
                                            ]
                                            [ text "יֵשׁ שִׁבְעָה יָמִים בְּשָׁבוּעַ." ]
                                        ]
                                    ]
                                ]
                            ]
                        , div
                            [ class "wlv-item__english-container"
                            ]
                            [ div
                                [ class "wlv-item__audio-box"
                                ]
                                [ button
                                    [ class "wlv-item__audio-button js-wlv-audio"
                                    , title "Play"
                                    , attribute "aria-label" "Play"
                                    ]
                                    []
                                , audio
                                    [ src "https://d1pra95f92lrn3.cloudfront.net/audio/253708.mp3"
                                    , preload "none"
                                    ]
                                    []
                                ]
                            , span
                                [ class "wlv-item__english"
                                ]
                                [ text "There are seven days in a week." ]
                            ]
                        ]
                    , a
                        [ href "/member/member_upnewapi.php"
                        , class "wlv-item__samples-button js-show-tooltip only-one"
                        ]
                        [ span
                            [ class "wlv-item__samples-button-label-a"
                            ]
                            [ span
                                [ class "wlv-item__samples-button-label--hide"
                                ]
                                [ text "Hide" ]
                            , text "0"
                            , span
                                [ class "wlv-item__samples-button-label--more"
                                ]
                                [ text "More" ]
                            , text "Examples"
                            ]
                        , span
                            [ class "wlv-item__samples-button-label-b"
                            ]
                            [ span
                                [ class "wlv-item__samples-button-label--hide"
                                ]
                                [ text "Hide" ]
                            , text "1"
                            , span
                                [ class "wlv-item__samples-button-label--more"
                                ]
                                [ text "More" ]
                            , text "Example"
                            ]
                        ]
                    ]
                , div
                    [ class "wlv-item__more-samples js-wlv-samples"
                    ]
                    []
                ]
            , div
                [ class "wlv-item__add-box"
                ]
                [ div
                    [ class "wlv-item__add"
                    ]
                    [ select
                        [ class "wlv-item__add-select js-wlv-add-select"
                        , attribute "aria-label" "Add this word to"
                        , title "Add this word to"
                        ]
                        [ option
                            [ value "Add to Flashcard Deck"
                            , selected True
                            , disabled True
                            ]
                            [ text "Add this word to" ]
                        , option
                            [ value "word-bank"
                            ]
                            [ text "Word Bank" ]
                        , optgroup
                            [ attribute "label" "Flashcard Deck"
                            , class "js-wlv-flashcard-decks"
                            ]
                            [ option
                                [ value "new-deck"
                                , class "highlighted"
                                ]
                                [ text "+ New deck" ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
