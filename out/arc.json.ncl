# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.looseName" = js2n.string.Matches "^[a-z][a-zA-Z0-9\\-_]+$",
      "definitions.macros" = js2n.string.Matches "^[a-z][a-zA-Z0-9\\-_/.]+$",
      "definitions.strictName" = js2n.string.Matches "^[a-z][a-z0-9\\-]+$",
      "definitions.table" =
        std.contract.Sequence
            [
              js2n.record.MaxProperties 1,
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[a-z][a-z|0-9|\\-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ])
            ],
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              (std.contract.any_of
                [
                  { _ | Dyn },
                  Array (
                    std.contract.any_of
                      [ Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  )
                ]),
        patterns = {},
        properties =
          {
              app =
                std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          Array refs."definitions.looseName"
                        ]
                    ],
              aws =
                std.contract.any_of
                    [
                      {
                        apigateway | String | optional,
                        bucket | String | optional,
                        concurrency | Number | optional,
                        layer
                          | std.contract.any_of
                            [ String, { _ | Dyn }, Array Dyn ]
                          | optional,
                        layers
                          | std.contract.any_of
                            [ String, { _ | Dyn }, Array Dyn ]
                          | optional,
                        memory | Number | optional,
                        policies
                          | std.contract.any_of
                            [ String, { _ | Dyn }, Array Dyn ]
                          | optional,
                        policy
                          | std.contract.any_of
                            [ String, { _ | Dyn }, Array Dyn ]
                          | optional,
                        profile | String | optional,
                        region | String | optional,
                        runtime | String | optional,
                        timeout | Number | optional,
                        ..
                      },
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 12,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                { _ | Dyn },
                                std.contract.Sequence
                                  [
                                    js2n.array.MaxItems 2,
                                    js2n.array.Items
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              'timeout,
                                              'runtime,
                                              'region,
                                              'profile,
                                              'policies,
                                              'policy,
                                              'memory,
                                              'layers,
                                              'layer,
                                              'concurrency,
                                              'bucket,
                                              'apigateway
                                            |]
                                          ],
                                        std.contract.any_of [ Number, String ]
                                      ] js2n.Always
                                  ]
                              ]
                          )
                        ]
                    ],
              events =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array refs."definitions.strictName"
                    ],
              http =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                js2n.record.MaxProperties 1,
                                {
                                  any
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  delete
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  get
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  head
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  options
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  patch
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  post
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  put
                                    | js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                    | optional,
                                  ..
                                }
                              ],
                            std.contract.Sequence
                              [
                                js2n.array.MaxItems 2,
                                js2n.array.Items
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'options,
                                          'head,
                                          'delete,
                                          'patch,
                                          'put,
                                          'post,
                                          'get,
                                          'any
                                        |]
                                      ],
                                    js2n.string.Matches
                                      "^[a-zA-Z0-9\\/\\-:\\._\\*]+$"
                                  ] js2n.Always
                              ]
                          ]
                      )
                    ],
              indexes =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.table", { _ | Dyn } ]
                      )
                    ],
              macros =
                std.contract.Sequence
                    [ js2n.array.UniqueItems, Array refs."definitions.macros" ],
              proxy =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                js2n.record.MaxProperties 1,
                                {
                                  production
                                    | js2n.string.Matches "^https?:\\/\\/.+$"
                                    | optional,
                                  staging
                                    | js2n.string.Matches "^https?:\\/\\/.+$"
                                    | optional,
                                  testing
                                    | js2n.string.Matches "^https?:\\/\\/.+$"
                                    | optional,
                                  ..
                                }
                              ],
                            std.contract.Sequence
                              [
                                js2n.array.MaxItems 3,
                                js2n.array.Items
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'production, 'staging, 'testing |]
                                      ],
                                    js2n.string.Matches "^https?:\\/\\/.+$"
                                  ] js2n.Always
                              ]
                          ]
                      )
                    ],
              queues =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array refs."definitions.strictName"
                    ],
              scheduled =
                std.contract.any_of
                    [
                      { _ | Dyn },
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                { _ | Dyn },
                                js2n.array.Items
                                  [
                                    js2n.string.Matches "^[a-z][a-z|\\-|0-9]+$",
                                    js2n.string.Matches "^(rate|cron)"
                                  ] js2n.Always
                              ]
                          )
                        ]
                    ],
              static =
                std.contract.Sequence
                    [
                      js2n.array.MaxItems 6,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.any_of
                          [
                            {
                              fingerprint
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              folder | String | optional,
                              ignore
                                | std.contract.any_of
                                  [ String, { _ | Dyn }, Array Dyn ]
                                | optional,
                              prefix | String | optional,
                              production | String | optional,
                              prune | Bool | optional,
                              spa | Bool | optional,
                              staging | String | optional,
                              ..
                            },
                            js2n.array.Items
                              [
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'staging,
                                      'spa,
                                      'prune,
                                      'production,
                                      'prefix,
                                      'ignore,
                                      'folder,
                                      'fingerprint
                                    |]
                                  ],
                                std.contract.any_of
                                  [ Bool, String, { _ | Dyn }, Array Dyn ]
                              ] js2n.Always
                          ]
                      )
                    ],
              tables =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.table", { _ | Dyn } ]
                      )
                    ],
              ws =
                std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array refs."definitions.strictName"
                    ],
            },
        required = { app = true, },
      }