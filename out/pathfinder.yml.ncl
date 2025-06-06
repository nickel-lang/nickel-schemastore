# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      enabledIntegrations
        | {
          openAI
            | {
              enabledRoutes
                | Array
                  {
                    enabledPolicies
                      | Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'applyTranscendPolicies,
                              'logToTranscend,
                              'log,
                              'redactEmail
                            |]
                          ]
                      ),
                    routeName
                      | std.enum.TagOrString
                      | [|
                        '"/v1/files/:fileId",
                        '"/v1/files",
                        '"/v1/threads/:threadId/runs/:runId",
                        '"/v1/threads/:threadId/runs",
                        '"/v1/threads/:threadId/messages/:messageId",
                        '"/v1/threads/:threadId/messages",
                        '"/v1/threads/:threadId",
                        '"/v1/threads",
                        '"/v1/assistants/:assistantId",
                        '"/v1/assistants",
                        '"/v1/completions",
                        '"/v1/embeddings",
                        '"/v1/chat/completions"
                      |],
                  },
            }
            | optional,
        }
        | optional,
    }