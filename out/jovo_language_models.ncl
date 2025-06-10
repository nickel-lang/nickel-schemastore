# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dialogflowEntity" =
        {
            automatedExpansion | Bool | optional,
            isEnum | Bool | optional,
            isList | Bool | optional,
            isOverridable | Bool | optional,
            name | String | optional,
            ..
          },
    }
    in
  {
      alexa
        | {
          interactionModel
            | {
              languageModel
                | {
                  intents
                    | Array { name | String, samples | Array String, .. }
                    | optional,
                  ..
                }
                | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      dialogflow
        | {
          entities
            | Array (
              std.contract.Sequence
                [
                  refs."definitions.dialogflowEntity",
                  js2n.record.Required [ "name" ]
                ]
            )
            | optional,
          intents
            | Array
              {
                auto | Bool | optional,
                events | Array { name | String, .. } | optional,
                fallbackIntent | Bool | optional,
                name | String,
                webhookUsed | Bool | optional,
                ..
              }
            | optional,
          ..
        }
        | optional,
      inputTypes
        | Array
          {
            dialogflow
              | { automatedExpansion | Bool | optional, .. }
              | optional,
            name | String,
            values
              | Array { synonyms | Array String | optional, value | String, .. }
              | optional,
            ..
          }
        | optional,
      intents
        | Array
          {
            dialogflow
              | {
                "priority" | Number | optional,
                webhookForSlotFilling | Bool | optional,
                ..
              }
              | optional,
            inputs
              | Array
                {
                  dialogflow | refs."definitions.dialogflowEntity" | optional,
                  name | String,
                  type
                    | std.contract.any_of
                      [
                        String,
                        {
                          alexa | String | optional,
                          dialogflow | String | optional,
                          ..
                        }
                      ],
                  ..
                }
              | optional,
            name | String,
            phrases | Array String,
            ..
          }
        | optional,
      invocation | String,
      ..
    }