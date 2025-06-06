# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.cssFiles" =
        {
            _ | std.contract.Sequence
              [
                refs."definitions.file",
                {
                  group | std.number.Integer | optional,
                  media
                    | std.enum.TagOrString
                    | [| 'speech, 'print, 'screen, 'all |]
                    | optional,
                }
              ]
          },
      "definitions.file" =
        {
            attributes | { _ | Dyn } | optional,
            browsers | { _ | Dyn } | optional,
            external | Bool | optional,
            minified | Bool | optional,
            preprocess | Bool | optional,
            type | String | optional,
            weight | std.number.Integer | optional,
            ..
          },
    }
    in
  {
      _ | {
        css
          | {
            base | refs."definitions.cssFiles" | optional,
            component | refs."definitions.cssFiles" | optional,
            layout | refs."definitions.cssFiles" | optional,
            state | refs."definitions.cssFiles" | optional,
            theme | refs."definitions.cssFiles" | optional,
            ..
          }
          | optional,
        dependencies | Array (js2n.string.Matches "^.+/.+$") | optional,
        drupalSettings | { _ | Dyn } | optional,
        header | Bool | optional,
        js
          | {
            _ | std.contract.Sequence
              [ refs."definitions.file", { cache | Bool | optional, } ]
          }
          | optional,
        license
          | {
            gpl-compatible | Bool | optional,
            name | String | optional,
            url | String | optional,
          }
          | optional,
        remote | String | optional,
        version | std.contract.any_of [ Number, String ] | optional,
      }
    }