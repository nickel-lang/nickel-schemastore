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
          knowledgeBases
            | Array
              {
                avatar | js2n.Nullable String,
                createdAt | String,
                description
                  | std.contract.any_of
                    [ std.contract.not js2n.Always, String, js2n.Null ]
                  | optional,
                enabled | Bool | optional,
                id | String,
                isPublic | js2n.Nullable Bool,
                name | String,
                settings | js2n.Always | optional,
                type | js2n.Nullable String,
                updatedAt | String,
              }
            | optional,
          model | String | optional,
          openingMessage | String | optional,
          openingQuestions | Array String | optional,
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
      knowledgeCount | Number,
      meta
        | {
          avatar | String,
          backgroundColor | String | optional,
          category | String | optional,
          description | String,
          tags | Array String,
          title | String,
        },
      pluginCount | Number,
      schemaVersion | Number,
      summary | String | optional,
      tokenUsage | Number,
    }