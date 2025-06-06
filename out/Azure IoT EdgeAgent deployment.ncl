# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.createOptions" = String,
      "definitions.env" =
        std.contract.Sequence
            [
              { _ | { value | std.contract.any_of [ Bool, Number, String ], } },
              js2n.record.FieldsMatch "^[^\\+#$\\s\\.]+$"
            ],
      "definitions.imagePullPolicy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'on-create, 'never |] ],
      "definitions.moduleSettings" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^(createoptions|createOptions)[0-9]*$" =
                      std.contract.Sequence
                          [ refs."definitions.createOptions", String ],
                  },
              properties = { image = String, },
              required = { image = true, },
            },
      "definitions.moduleType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'docker |] ],
      "definitions.restartPolicy" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'always, 'on-unhealthy, 'on-failure, 'never |]
            ],
      "definitions.startupOrder" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 4294967295,
              js2n.number.Minimum 0
            ],
      "definitions.status" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'stopped, 'running |] ],
    }
    in
  {
      "$edgeAgent"
        | {
          "properties.desired"
            | {
              modules
                | {
                  _ | {
                    env | refs."definitions.env" | optional,
                    imagePullPolicy
                      | refs."definitions.imagePullPolicy"
                      | optional,
                    restartPolicy | refs."definitions.restartPolicy",
                    settings | refs."definitions.moduleSettings",
                    startupOrder
                      | refs."definitions.startupOrder"
                      | Number
                      | optional,
                    status | refs."definitions.status",
                    type | refs."definitions.moduleType",
                    version | String | optional,
                  }
                }
                | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$",
              runtime
                | {
                  settings
                    | {
                      loggingOptions | String | optional,
                      minDockerVersion | String | optional,
                      registryCredentials
                        | {
                          _ | {
                            address | js2n.string.Matches "^[^\\s]+$",
                            password | String,
                            username | String,
                          }
                        }
                        | js2n.record.FieldsMatch "^[^\\.\\$# ]+$"
                        | optional,
                    },
                  type | refs."definitions.moduleType",
                },
              schemaVersion | js2n.string.Matches "1.1",
              systemModules
                | {
                  edgeAgent
                    | {
                      env | refs."definitions.env" | optional,
                      imagePullPolicy
                        | refs."definitions.imagePullPolicy"
                        | optional,
                      settings | refs."definitions.moduleSettings",
                      type | refs."definitions.moduleType",
                    },
                  edgeHub
                    | {
                      env | refs."definitions.env" | optional,
                      imagePullPolicy
                        | refs."definitions.imagePullPolicy"
                        | optional,
                      restartPolicy | refs."definitions.restartPolicy",
                      settings | refs."definitions.moduleSettings",
                      startupOrder
                        | refs."definitions.startupOrder"
                        | Number
                        | optional,
                      status | refs."definitions.status",
                      type | refs."definitions.moduleType",
                    },
                },
            },
        },
    }