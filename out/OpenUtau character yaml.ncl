# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      author | String | doc "The author of the voicebank" | optional,
      default_phonemizer
        | String
        | doc "The default phonemizer of the voicebank"
        | optional,
      image
        | String
        | doc "relative path to the icon of the voicebank"
        | optional,
      localized_names
        | {
          de-DE | String | doc "German (Germany)" | optional,
          en-US | String | doc "English (United States)" | optional,
          es-ES | String | doc "Spanish (Spain)" | optional,
          es-MX | String | doc "Spanish (Mexico)" | optional,
          fi-FI | String | doc "Finnish (Finland)" | optional,
          fr-FR | String | doc "French (France)" | optional,
          id-ID | String | doc "Indonesian (Indonesia)" | optional,
          it-IT | String | doc "Italian (Italy)" | optional,
          ja-JP | String | doc "Japanese (Japan)" | optional,
          ko-KR | String | doc "Korean (Korea)" | optional,
          nl-NL | String | doc "Dutch (Netherlands)" | optional,
          pl-PL | String | doc "Polish (Poland)" | optional,
          pt-BR | String | doc "Portuguese (Brazil)" | optional,
          ru-RU | String | doc "Russian (Russia)" | optional,
          th-TH | String | doc "Thai (Thailand)" | optional,
          vi-VN | String | doc "Vietnamese (Vietnam)" | optional,
          zh-CN | String | doc "Chinese (Simplified, China)" | optional,
          zh-TW | String | doc "Chinese (Traditional, Taiwan)" | optional,
          ..
        }
        | doc "display localized names for the user's selected singer name display language"
        | optional,
      name | String | doc "The name of the voicebank" | optional,
      portrait
        | String
        | doc "Relative path to the portrait of the voicebank"
        | optional,
      portrait_opacity
        | Number
        | doc "Opacity of the portrait, from 0 to 1"
        | optional,
      singer_type
        | std.enum.TagOrString
        | [| 'diffsinger, 'enunu, 'utau |]
        | doc "The type of the voicebank"
        | optional,
      subbanks
        | Array
          {
            color
              | String
              | doc "Voice color that this subbank belongs to"
              | optional,
            prefix
              | String
              | doc "Prefix for this subbank in the oto.ini"
              | optional,
            suffix
              | String
              | doc "Suffix for this subbank in the oto.ini"
              | optional,
            tone_ranges
              | Array String
              | doc "The tone ranges that this subbank covers"
              | optional,
            ..
          }
        | doc "The subbanks of the voicebank for different pitch and voice color"
        | optional,
      text_file_encoding
        | String
        | doc "The encoding used to read character.txt, prefix.map and oto.ini"
        | optional,
      version | String | doc "The version number of the voicebank" | optional,
      voice | String | doc "The voice provider of the voicebank" | optional,
      web | String | doc "The website of the voicebank" | optional,
      ..
    }