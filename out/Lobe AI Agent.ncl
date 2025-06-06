# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.config.properties.fewShots" =
        Array
            {
              content | String,
              role
                | std.enum.TagOrString
                | [| 'function, 'assistant, 'system, 'user |],
            },
    }
    in
  {
      author | String,
      config
        | {
          compressThreshold | Number | optional,
          displayMode | std.enum.TagOrString | [| 'docs, 'chat |] | optional,
          enableCompressThreshold | Bool | optional,
          enableHistoryCount | Bool | optional,
          enableMaxTokens | Bool | optional,
          fewShots
            | Array
              {
                content | String,
                role
                  | std.enum.TagOrString
                  | [| 'function, 'assistant, 'system, 'user |],
              }
            | optional,
          historyCount | Number | optional,
          inputTemplate | String | optional,
          model | String | optional,
          params
            | {
              frequency_penalty | Number | optional,
              max_tokens | Number | optional,
              presence_penalty | Number | optional,
              temperature | Number | optional,
              top_p | Number | optional,
            }
            | optional,
          plugins | Array String | optional,
          systemRole | String,
        },
      createdAt | String,
      examples | refs."properties.config.properties.fewShots" | optional,
      homepage | String,
      identifier | String,
      meta
        | {
          avatar | String,
          backgroundColor | String | optional,
          category | String | optional,
          description | String,
          tags | Array String,
          title | String,
        },
      schemaVersion | Number,
    }