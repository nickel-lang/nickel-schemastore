# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.JFrog-Pipelines" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "pipelines" ],
                  js2n.record.Required [ "resources" ],
                  js2n.record.Required [ "include" ]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^.*$" =
                          std.contract.any_of
                              [
                                String,
                                Number,
                                std.number.Integer,
                                Bool,
                                Array Dyn,
                                { _ | Dyn },
                                js2n.Null
                              ],
                      },
                  properties =
                    {
                        include = { template | String | optional, .. },
                        pipelines =
                          Array (
                              std.contract.Sequence
                                [ refs."definitions.Pipeline", { _ | Dyn } ]
                            ),
                        resources =
                          Array (
                              std.contract.Sequence
                                [ refs."definitions.Resource", { _ | Dyn } ]
                            ),
                        template = Bool,
                        valuesFilePath = String,
                      },
                  required = {},
                }
            ],
      "definitions.Pipeline" =
        {
            configuration
              | {
                affinityGroup | String | optional,
                chronological | Bool | optional,
                dependencyMode
                  | {
                    waitOnChildComplete | Bool | optional,
                    waitOnParentComplete | Bool | optional,
                    waitOnParentSuccess | Bool | optional,
                  }
                  | optional,
                environmentVariables
                  | {
                    readOnly
                      | {
                        _ | std.contract.Sequence
                          [
                            std.contract.any_of
                              [
                                Number,
                                String,
                                {
                                  allowCustom | Bool | optional,
                                  allowMultipleValues | Bool | optional,
                                  "default"
                                    | std.contract.any_of [ Number, String ]
                                    | optional,
                                  defaultMultipleValues
                                    | js2n.array.MinItems 1
                                    | Array (
                                      std.contract.any_of [ Number, String ]
                                    )
                                    | optional,
                                  description | String | optional,
                                  values
                                    | js2n.array.MinItems 1
                                    | Array (
                                      std.contract.any_of [ Number, String ]
                                    )
                                    | optional,
                                  ..
                                }
                              ],
                            std.contract.any_of
                              [
                                Number,
                                String,
                                js2n.record.Required [ "default" ],
                                Number,
                                String,
                                js2n.record.Required [ "defaultMultipleValues" ]
                              ]
                          ]
                      },
                    ..
                  }
                  | optional,
                inputResources
                  | js2n.array.MinItems 1
                  | Array
                    {
                      branch | String | optional,
                      name | String,
                      newVersionOnly | Bool | optional,
                      trigger | Bool | optional,
                    }
                  | optional,
                integrations
                  | js2n.array.MinItems 1
                  | Array { name | String, }
                  | optional,
                jfrogCliVersion
                  | std.contract.any_of [ std.number.Integer, String ]
                  | js2n.Enum [ "1", "2", 1, 2 ]
                  | optional,
                nodePool | String | optional,
                outputResources
                  | js2n.array.MinItems 1
                  | Array { branch | String | optional, name | String, }
                  | optional,
                reTriggerOnSyncFailure | Bool | optional,
                retentionPolicy
                  | {
                    maxAgeDays | Number | optional,
                    minRuns | Number | optional,
                  }
                  | optional,
                runtime
                  | js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  type =
                                    std.contract.Sequence
                                        [ std.enum.TagOrString, [| 'image |] ],
                                },
                            required = {},
                          },
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          image
                            | js2n.OneOf
                              [
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "auto" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "custom" ],
                                    Array Dyn
                                  ]
                              ]
                            | {
                              auto
                                | {
                                  language | String,
                                  versions
                                    | Array (
                                      std.contract.any_of [ Number, String ]
                                    ),
                                  ..
                                }
                                | optional,
                              custom
                                | {
                                  autoPull | Bool | optional,
                                  name | String,
                                  options | String | optional,
                                  region | String | optional,
                                  registry | String | optional,
                                  sourceRepository | String | optional,
                                  tag | String,
                                }
                                | optional,
                            }
                            | optional,
                          type | std.enum.TagOrString | [| 'image |] | optional,
                        },
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          type | std.enum.TagOrString | [| 'host |] | optional,
                        },
                        Array Dyn
                      ])
                  | { type | std.enum.TagOrString | [| 'host, 'image |], .. }
                  | optional,
              }
              | optional,
            name | String,
            postRun
              | {
                configuration
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        affinityGroup | String | optional,
                        chronological | Bool | optional,
                        environmentVariables
                          | {
                            readOnly
                              | {
                                _ | std.contract.Sequence
                                  [
                                    std.contract.any_of
                                      [
                                        Number,
                                        String,
                                        {
                                          allowCustom | Bool | optional,
                                          allowMultipleValues | Bool | optional,
                                          "default"
                                            | std.contract.any_of
                                              [ Number, String ]
                                            | optional,
                                          defaultMultipleValues
                                            | js2n.array.MinItems 1
                                            | Array (
                                              std.contract.any_of
                                                [ Number, String ]
                                            )
                                            | optional,
                                          description | String | optional,
                                          values
                                            | js2n.array.MinItems 1
                                            | Array (
                                              std.contract.any_of
                                                [ Number, String ]
                                            )
                                            | optional,
                                          ..
                                        }
                                      ],
                                    std.contract.any_of
                                      [
                                        Number,
                                        String,
                                        js2n.record.Required [ "default" ],
                                        Number,
                                        String,
                                        js2n.record.Required
                                          [ "defaultMultipleValues" ]
                                      ]
                                  ]
                              },
                            ..
                          }
                          | optional,
                        inputResources
                          | js2n.array.MinItems 1
                          | Array
                            {
                              branch | String | optional,
                              name | String,
                              newVersionOnly | Bool | optional,
                              trigger | Bool | optional,
                            }
                          | optional,
                        integrations
                          | js2n.array.MinItems 1
                          | Array { name | String, }
                          | optional,
                        jfrogCliVersion
                          | std.contract.any_of [ std.number.Integer, String ]
                          | js2n.Enum [ "1", "2", 1, 2 ]
                          | optional,
                        nodePool | String | optional,
                        outputResources
                          | js2n.array.MinItems 1
                          | Array { branch | String | optional, name | String, }
                          | optional,
                        runtime
                          | js2n.IfThenElse
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          type =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'image |]
                                                ],
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ])
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  image
                                    | js2n.OneOf
                                      [
                                        std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            js2n.record.Required [ "auto" ],
                                            Array Dyn
                                          ],
                                        std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            js2n.record.Required [ "custom" ],
                                            Array Dyn
                                          ]
                                      ]
                                    | {
                                      auto
                                        | {
                                          language | String,
                                          versions
                                            | Array (
                                              std.contract.any_of
                                                [ Number, String ]
                                            ),
                                          ..
                                        }
                                        | optional,
                                      custom
                                        | {
                                          autoPull | Bool | optional,
                                          name | String,
                                          options | String | optional,
                                          region | String | optional,
                                          registry | String | optional,
                                          sourceRepository | String | optional,
                                          tag | String,
                                        }
                                        | optional,
                                    }
                                    | optional,
                                  type
                                    | std.enum.TagOrString
                                    | [| 'image |]
                                    | optional,
                                },
                                Array Dyn
                              ])
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  type
                                    | std.enum.TagOrString
                                    | [| 'host |]
                                    | optional,
                                },
                                Array Dyn
                              ])
                          | {
                            type | std.enum.TagOrString | [| 'host, 'image |],
                            ..
                          }
                          | optional,
                      },
                      Array Dyn
                    ]
                  | optional,
                execution
                  | {
                    onCancel | js2n.OneOf [ String, js2n.Always ] | optional,
                    onComplete | js2n.Always | optional,
                    onExecute | js2n.Always | optional,
                    onFailure | js2n.Always | optional,
                    onStart | js2n.Always | optional,
                    onSuccess | js2n.Always | optional,
                  }
                  | optional,
              }
              | optional,
            preRun
              | {
                configuration
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        affinityGroup | String | optional,
                        chronological | Bool | optional,
                        environmentVariables
                          | {
                            readOnly
                              | {
                                _ | std.contract.Sequence
                                  [
                                    std.contract.any_of
                                      [
                                        Number,
                                        String,
                                        {
                                          allowCustom | Bool | optional,
                                          allowMultipleValues | Bool | optional,
                                          "default"
                                            | std.contract.any_of
                                              [ Number, String ]
                                            | optional,
                                          defaultMultipleValues
                                            | js2n.array.MinItems 1
                                            | Array (
                                              std.contract.any_of
                                                [ Number, String ]
                                            )
                                            | optional,
                                          description | String | optional,
                                          values
                                            | js2n.array.MinItems 1
                                            | Array (
                                              std.contract.any_of
                                                [ Number, String ]
                                            )
                                            | optional,
                                          ..
                                        }
                                      ],
                                    std.contract.any_of
                                      [
                                        Number,
                                        String,
                                        js2n.record.Required [ "default" ],
                                        Number,
                                        String,
                                        js2n.record.Required
                                          [ "defaultMultipleValues" ]
                                      ]
                                  ]
                              },
                            ..
                          }
                          | optional,
                        inputResources
                          | js2n.array.MinItems 1
                          | Array
                            {
                              branch | String | optional,
                              name | String,
                              newVersionOnly | Bool | optional,
                              trigger | Bool | optional,
                            }
                          | optional,
                        integrations
                          | js2n.array.MinItems 1
                          | Array { name | String, }
                          | optional,
                        jfrogCliVersion
                          | std.contract.any_of [ std.number.Integer, String ]
                          | js2n.Enum [ "1", "2", 1, 2 ]
                          | optional,
                        nodePool | String | optional,
                        outputResources
                          | js2n.array.MinItems 1
                          | Array { branch | String | optional, name | String, }
                          | optional,
                        runtime
                          | js2n.IfThenElse
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          type =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'image |]
                                                ],
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ])
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  image
                                    | js2n.OneOf
                                      [
                                        std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            js2n.record.Required [ "auto" ],
                                            Array Dyn
                                          ],
                                        std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            js2n.record.Required [ "custom" ],
                                            Array Dyn
                                          ]
                                      ]
                                    | {
                                      auto
                                        | {
                                          language | String,
                                          versions
                                            | Array (
                                              std.contract.any_of
                                                [ Number, String ]
                                            ),
                                          ..
                                        }
                                        | optional,
                                      custom
                                        | {
                                          autoPull | Bool | optional,
                                          name | String,
                                          options | String | optional,
                                          region | String | optional,
                                          registry | String | optional,
                                          sourceRepository | String | optional,
                                          tag | String,
                                        }
                                        | optional,
                                    }
                                    | optional,
                                  type
                                    | std.enum.TagOrString
                                    | [| 'image |]
                                    | optional,
                                },
                                Array Dyn
                              ])
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  type
                                    | std.enum.TagOrString
                                    | [| 'host |]
                                    | optional,
                                },
                                Array Dyn
                              ])
                          | {
                            type | std.enum.TagOrString | [| 'host, 'image |],
                            ..
                          }
                          | optional,
                      },
                      Array Dyn
                    ]
                  | optional,
                execution
                  | {
                    onCancel | js2n.Always | optional,
                    onComplete | js2n.Always | optional,
                    onExecute | js2n.Always | optional,
                    onFailure | js2n.Always | optional,
                    onStart | js2n.Always | optional,
                    onSuccess | js2n.Always | optional,
                  }
                  | optional,
              }
              | optional,
            steps
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              ),
          },
      "definitions.Resource" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'Aql |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'BuildInfo |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'CronTrigger |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'DistributionRule |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'FileSpec |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'GitRepo |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'HelmChart |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'Image |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'IncomingWebhook |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'OutgoingWebhook |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'PropertyBag |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'ReleaseBundle |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'RemoteFile |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'VmCluster |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              {
                name | String | optional,
                type
                  | std.enum.TagOrString
                  | [|
                    'VmCluster,
                    'RemoteFile,
                    'ReleaseBundle,
                    'PropertyBag,
                    'OutgoingWebhook,
                    'IncomingWebhook,
                    'Image,
                    'HelmChart,
                    'GitRepo,
                    'FileSpec,
                    'DistributionRule,
                    'CronTrigger,
                    'BuildInfo,
                    'Aql
                  |]
                  | optional,
                ..
              }
            ],
      "definitions.Step" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'Bash |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'CreateReleaseBundle |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'DistributeReleaseBundle |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'DockerBuild |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'DockerPush |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'GoBuild |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'GoPublishBinary |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'GoPublishModule |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'GradleBuild |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'HelmBlueGreenCleanup |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'HelmBlueGreenDeploy |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'HelmBlueGreenRoleSwitch |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'HelmDeploy |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'HelmPublish |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'Jenkins |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'Matrix |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'PreMatrix |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'PostMatrix |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'MvnBuild |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'NpmBuild |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'NpmPublish |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'PowerShell |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'PromoteBuild |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'PublishBuildInfo |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'PushArtifactoryPackage |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'SignReleaseBundle |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'TriggerPipeline |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'XrayScan |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always js2n.Always,
              {
                name | String | optional,
                type
                  | std.enum.TagOrString
                  | [|
                    'XrayScan,
                    'TriggerPipeline,
                    'SignReleaseBundle,
                    'PushArtifactoryPackage,
                    'PublishBuildInfo,
                    'PromoteBuild,
                    'PreMatrix,
                    'PowerShell,
                    'PostMatrix,
                    'NpmPublish,
                    'NpmBuild,
                    'MvnBuild,
                    'Matrix,
                    'Jenkins,
                    'HelmPublish,
                    'HelmDeploy,
                    'HelmBlueGreenRoleSwitch,
                    'HelmBlueGreenDeploy,
                    'HelmBlueGreenCleanup,
                    'GradleBuild,
                    'GoPublishModule,
                    'GoPublishBinary,
                    'GoBuild,
                    'DockerPush,
                    'DockerBuild,
                    'DistributeReleaseBundle,
                    'CreateReleaseBundle,
                    'Bash
                  |]
                  | optional,
                ..
              }
            ],
    }
    in
  std.contract.Sequence [ refs."definitions.JFrog-Pipelines", { _ | Dyn } ]