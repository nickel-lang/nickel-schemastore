# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.createOptions" = std.contract.any_of [ String, { _ | Dyn } ],
      "definitions.moduleSettings" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^(createoptions|createOptions)[0-9]*$" =
                      std.contract.Sequence
                          [
                            refs."definitions.createOptions",
                            std.contract.any_of [ { _ | Dyn }, String ]
                          ],
                  },
              properties = { image = String, },
              required = { image = true, },
            },
      "properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.env" =
        std.contract.Sequence
            [
              { _ | { value | std.contract.any_of [ Bool, Number, String ], } },
              js2n.record.FieldsMatch "^[^\\+#$\\s\\.]+$"
            ],
      "properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.imagePullPolicy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'on-create, 'never |] ],
      "properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.restartPolicy" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'always, 'on-unhealthy, 'on-failure, 'never |]
            ],
      "properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.startupOrder" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 4294967295,
              js2n.number.Minimum 0
            ],
      "properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.status" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'stopped, 'running |] ],
      "properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.type" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'docker |] ],
      "properties.modulesContent.properties.%24edgeHub.properties.properties.desired.properties.mqttBroker.properties.authorizations.items.properties.deny" =
        Array
            {
              operations
                | Array (
                  js2n.string.Matches
                    "^mqtt:connect$|^mqtt:subscribe$|^mqtt:publish$"
                )
                | optional,
              resources | Array (js2n.string.Matches "^.+$") | optional,
            },
    }
    in
  {
      modulesContent
        | {
          "$edgeAgent"
            | {
              "properties.desired"
                | {
                  modules
                    | js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns =
                          {
                              "^[a-zA-Z0-9_-]+$" =
                                {
                                    env
                                      | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.env"
                                      | optional,
                                    imagePullPolicy
                                      | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.imagePullPolicy"
                                      | optional,
                                    restartPolicy
                                      | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.restartPolicy",
                                    settings
                                      | refs."definitions.moduleSettings",
                                    startupOrder
                                      | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.startupOrder"
                                      | Number
                                      | optional,
                                    status
                                      | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.status",
                                    type
                                      | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.type",
                                    version | String | optional,
                                    ..
                                  },
                            },
                        properties = {},
                        required = {},
                      },
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
                      type
                        | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.type",
                    },
                  schemaVersion | js2n.string.Matches "1.1",
                  systemModules
                    | {
                      edgeAgent
                        | {
                          env
                            | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.env"
                            | optional,
                          imagePullPolicy
                            | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.imagePullPolicy"
                            | optional,
                          settings | refs."definitions.moduleSettings",
                          type
                            | refs."properties.modulesContent.properties.%24edgeAgent.properties.properties.desired.properties.systemModules.properties.edgeHub.properties.type",
                          ..
                        },
                      edgeHub
                        | {
                          env
                            | {
                              _ | {
                                value
                                  | std.contract.any_of
                                    [ Bool, Number, String ],
                              }
                            }
                            | js2n.record.FieldsMatch "^[^\\+#$\\s\\.]+$"
                            | optional,
                          imagePullPolicy
                            | std.enum.TagOrString
                            | [| 'on-create, 'never |]
                            | optional,
                          restartPolicy
                            | std.enum.TagOrString
                            | [| 'always, 'on-unhealthy, 'on-failure, 'never |],
                          settings | refs."definitions.moduleSettings",
                          startupOrder
                            | std.number.Integer
                            | js2n.number.Maximum 4294967295
                            | js2n.number.Minimum 0
                            | optional,
                          status
                            | std.enum.TagOrString
                            | [| 'stopped, 'running |],
                          type | std.enum.TagOrString | [| 'docker |],
                          ..
                        },
                      ..
                    },
                  ..
                },
              ..
            },
          "$edgeHub"
            | {
              "properties.desired"
                | {
                  mqttBroker
                    | {
                      authorizations
                        | Array
                          {
                            allow
                              | refs."properties.modulesContent.properties.%24edgeHub.properties.properties.desired.properties.mqttBroker.properties.authorizations.items.properties.deny"
                              | optional,
                            deny
                              | Array
                                {
                                  operations
                                    | Array (
                                      js2n.string.Matches
                                        "^mqtt:connect$|^mqtt:subscribe$|^mqtt:publish$"
                                    )
                                    | optional,
                                  resources
                                    | Array (js2n.string.Matches "^.+$")
                                    | optional,
                                }
                              | optional,
                            identities
                              | Array (js2n.string.Matches "^.+$")
                              | optional,
                          }
                        | optional,
                      bridges
                        | Array
                          {
                            endpoint
                              | js2n.string.Matches "\\$upstream"
                              | optional,
                            settings
                              | Array
                                {
                                  direction
                                    | js2n.string.Matches "^in$|^out$"
                                    | optional,
                                  inPrefix
                                    | js2n.string.Matches "^.*$"
                                    | optional,
                                  outPrefix
                                    | js2n.string.Matches "^.*$"
                                    | optional,
                                  topic | js2n.string.Matches "^.*$" | optional,
                                }
                              | optional,
                          }
                        | optional,
                    }
                    | optional,
                  routes
                    | {
                      _ | std.contract.any_of
                        [
                          {
                            "priority"
                              | std.number.Integer
                              | js2n.number.Maximum 9
                              | js2n.number.Minimum 0
                              | optional,
                            route | js2n.string.Matches "^.+$",
                            timeToLiveSecs
                              | std.number.Integer
                              | js2n.number.Maximum 4294967295
                              | js2n.number.Minimum 0
                              | optional,
                          },
                          js2n.string.Matches "^.+$"
                        ]
                    }
                    | js2n.record.FieldsMatch "^[^\\.\\$# ]+$",
                  schemaVersion | js2n.string.Matches "1.2",
                  storeAndForwardConfiguration
                    | { timeToLiveSecs | std.number.Integer, }
                    | optional,
                },
            }
            | optional,
          ..
        },
      ..
    }