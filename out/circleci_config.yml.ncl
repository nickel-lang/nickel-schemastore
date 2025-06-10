# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.environment" =
        js2n.OneOf
            [
              js2n.Nullable String,
              js2n.array.ArrayOf js2n.Always,
              js2n.record.Record
                {
                  additional =
                    'Some
                        (std.contract.any_of
                          [ js2n.Null, Bool, Number, String ]),
                  patterns = {},
                  properties = {},
                  required = {},
                }
            ],
      "definitions.logic" =
        js2n.OneOf
            [
              std.contract.any_of
                [
                  js2n.string.Matches " *<< *pipeline.parameters.([^ ]+) *>> *",
                  Bool,
                  Number,
                  String
                ],
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            and =
                              std.contract.Sequence
                                  [
                                    js2n.array.MinItems 1,
                                    js2n.array.ArrayOf js2n.Always
                                  ],
                            equal =
                              std.contract.Sequence
                                  [
                                    js2n.array.MinItems 1,
                                    js2n.array.ArrayOf js2n.Always
                                  ],
                            matches =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      { pattern = String, value = String, },
                                    required =
                                      { pattern = true, value = true, },
                                  },
                            not = js2n.Always,
                            or =
                              std.contract.Sequence
                                  [
                                    js2n.array.MinItems 1,
                                    js2n.array.ArrayOf js2n.Always
                                  ],
                          },
                      required = {},
                    }
                ],
              js2n.record.PropertyNames
                (std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^(and|or|not|equal|matches)$",
                      { _ | Dyn },
                      Array Dyn
                    ]))
            ],
      "definitions.step" =
        js2n.OneOf
            [
              String,
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  js2n.record.PropertyNames
                    (std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            js2n.string.Matches "^[a-z][a-z\\d-/_]*$",
                            { _ | Dyn },
                            Array Dyn
                          ],
                        std.contract.not
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              js2n.string.Matches "^(when|unless)$",
                              { _ | Dyn },
                              Array Dyn
                            ])
                      ]),
                  js2n.record.Record
                    {
                      additional =
                        'Some (std.contract.any_of [ String, { _ | Dyn } ]),
                      patterns = {},
                      properties =
                        {
                            run =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties = { command = String, },
                                        required = { command = true, },
                                      }
                                  ],
                          },
                      required = {},
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            unless =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          condition = refs."definitions.logic",
                                          steps =
                                            js2n.OneOf
                                                [
                                                  js2n.array.ArrayOf
                                                    js2n.Always,
                                                  js2n.Always
                                                ],
                                        },
                                    required =
                                      { condition = true, steps = true, },
                                  },
                            when =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          condition = refs."definitions.logic",
                                          steps =
                                            js2n.OneOf
                                                [
                                                  js2n.array.ArrayOf
                                                    js2n.Always,
                                                  js2n.Always
                                                ],
                                        },
                                    required =
                                      { condition = true, steps = true, },
                                  },
                          },
                      required = {},
                    }
                ]
            ],
      "properties.orbs" =
        js2n.Nullable
            ({
              _ | std.contract.any_of
                [
                  String,
                  {
                    commands
                      | js2n.record.PropertyNames
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            js2n.string.Matches "^[a-z][a-z\\d_-]*$",
                            { _ | Dyn },
                            Array Dyn
                          ])
                      | {
                        _ | std.contract.any_of
                          [
                            {
                              description | String | optional,
                              parameters
                                | js2n.record.MinProperties 1
                                | {
                                  _ | {
                                    "default"
                                      | std.contract.any_of
                                        [
                                          String,
                                          Bool,
                                          std.number.Integer,
                                          Array refs."definitions.step"
                                        ]
                                      | optional,
                                    description | String | optional,
                                    enum | Array String | optional,
                                    type
                                      | std.enum.TagOrString
                                      | [|
                                        'env_var_name,
                                        'integer,
                                        'executor,
                                        'enum,
                                        'steps,
                                        'string,
                                        'boolean
                                      |],
                                  }
                                }
                                | doc "Parameters given to a step."
                                | optional,
                              steps
                                | js2n.array.MinItems 1
                                | Array refs."definitions.step",
                            },
                            String
                          ]
                      }
                      | optional,
                    executors
                      | js2n.record.PropertyNames
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            js2n.string.Matches "^[a-z][a-z\\d_-]*$",
                            { _ | Dyn },
                            Array Dyn
                          ])
                      | {
                        _ | std.contract.any_of
                          [
                            {
                              description | String | optional,
                              docker
                                | js2n.array.MinItems 1
                                | Array
                                  {
                                    auth
                                      | {
                                        password | String,
                                        username | String,
                                      }
                                      | optional,
                                    aws_auth
                                      | js2n.OneOf
                                        [
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    aws_access_key_id = String,
                                                    aws_secret_access_key =
                                                      String,
                                                  },
                                              required =
                                                {
                                                    aws_access_key_id = true,
                                                    aws_secret_access_key =
                                                      true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                { oidc_role_arn = String, },
                                              required =
                                                { oidc_role_arn = true, },
                                            }
                                        ]
                                      | optional,
                                    command
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | optional,
                                    entrypoint
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | optional,
                                    environment
                                      | js2n.OneOf
                                        [
                                          js2n.Nullable String,
                                          js2n.array.ArrayOf
                                            refs."definitions.environment",
                                          js2n.record.Record
                                            {
                                              additional =
                                                'Some
                                                    (std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Bool,
                                                        Number,
                                                        String
                                                      ]),
                                              patterns = {},
                                              properties = {},
                                              required = {},
                                            }
                                        ]
                                      | optional,
                                    image | String,
                                    name | String | optional,
                                    user | String | optional,
                                  }
                                | optional,
                              environment
                                | js2n.OneOf
                                  [
                                    js2n.Nullable String,
                                    js2n.array.ArrayOf
                                      refs."definitions.environment",
                                    js2n.record.Record
                                      {
                                        additional =
                                          'Some
                                              (std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  Number,
                                                  String
                                                ]),
                                        patterns = {},
                                        properties = {},
                                        required = {},
                                      }
                                  ]
                                | optional,
                              machine
                                | js2n.OneOf
                                  [
                                    std.contract.any_of
                                      [
                                        js2n.string.Matches
                                          " *<< *parameters.([^ ]+) *>> *",
                                        Bool,
                                        Number,
                                        String
                                      ],
                                    js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              docker_layer_caching =
                                                std.contract.any_of
                                                    [
                                                      js2n.string.Matches
                                                        " *<< *parameters.([^ ]+) *>> *",
                                                      Bool,
                                                      Number,
                                                      String
                                                    ],
                                              enabled =
                                                std.contract.any_of
                                                    [
                                                      js2n.string.Matches
                                                        " *<< *parameters.([^ ]+) *>> *",
                                                      Bool,
                                                      Number,
                                                      String
                                                    ],
                                              image = String,
                                              resource_class = String,
                                              shell = String,
                                            },
                                        required = {},
                                      }
                                  ]
                                | doc "Machine must be a boolean or a map"
                                | optional,
                              macos
                                | {
                                  resource_class | String | optional,
                                  shell | String | optional,
                                  xcode
                                    | std.contract.any_of [ Number, String ],
                                }
                                | optional,
                              parameters
                                | js2n.record.MinProperties 1
                                | {
                                  _ | {
                                    "default"
                                      | std.contract.any_of
                                        [
                                          String,
                                          Bool,
                                          std.number.Integer,
                                          Array refs."definitions.step"
                                        ]
                                      | optional,
                                    description | String | optional,
                                    enum | Array String | optional,
                                    type
                                      | std.enum.TagOrString
                                      | [|
                                        'env_var_name,
                                        'integer,
                                        'executor,
                                        'enum,
                                        'steps,
                                        'string,
                                        'boolean
                                      |],
                                  }
                                }
                                | doc "Parameters given to a job."
                                | optional,
                              resource_class | String | optional,
                              shell
                                | std.contract.any_of [ String, Array String ]
                                | optional,
                              working_directory | String | optional,
                            },
                            String
                          ]
                      }
                      | optional,
                    jobs
                      | js2n.record.PropertyNames
                        (js2n.string.Matches "^[A-Za-z][A-Za-z\\s\\d_-]*$")
                      | {
                        _ | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.contract.any_of
                                  [
                                    js2n.record.Required [ "executor" ],
                                    js2n.OneOf
                                      [
                                        js2n.record.Required [ "machine" ],
                                        js2n.record.Required [ "docker" ],
                                        js2n.record.Required [ "macos" ]
                                      ]
                                  ],
                                {
                                  circleci_ip_ranges | Bool | optional,
                                  description | String | optional,
                                  docker
                                    | js2n.array.MinItems 1
                                    | Array
                                      {
                                        auth
                                          | {
                                            password | String,
                                            username | String,
                                          }
                                          | optional,
                                        aws_auth
                                          | js2n.OneOf
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        aws_access_key_id =
                                                          String,
                                                        aws_secret_access_key =
                                                          String,
                                                      },
                                                  required =
                                                    {
                                                        aws_access_key_id =
                                                          true,
                                                        aws_secret_access_key =
                                                          true,
                                                      },
                                                },
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    { oidc_role_arn = String, },
                                                  required =
                                                    { oidc_role_arn = true, },
                                                }
                                            ]
                                          | optional,
                                        command
                                          | std.contract.any_of
                                            [ String, Array String ]
                                          | optional,
                                        entrypoint
                                          | std.contract.any_of
                                            [ String, Array String ]
                                          | optional,
                                        environment
                                          | js2n.OneOf
                                            [
                                              js2n.Nullable String,
                                              js2n.array.ArrayOf
                                                refs."definitions.environment",
                                              js2n.record.Record
                                                {
                                                  additional =
                                                    'Some
                                                        (std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Number,
                                                            String
                                                          ]),
                                                  patterns = {},
                                                  properties = {},
                                                  required = {},
                                                }
                                            ]
                                          | optional,
                                        image | String,
                                        name | String | optional,
                                        user | String | optional,
                                      }
                                    | optional,
                                  environment
                                    | js2n.OneOf
                                      [
                                        js2n.Nullable String,
                                        js2n.array.ArrayOf
                                          refs."definitions.environment",
                                        js2n.record.Record
                                          {
                                            additional =
                                              'Some
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String
                                                    ]),
                                            patterns = {},
                                            properties = {},
                                            required = {},
                                          }
                                      ]
                                    | optional,
                                  executor
                                    | std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            js2n.record.MinProperties 1,
                                            { name | String, .. }
                                          ]
                                      ]
                                    | optional,
                                  machine
                                    | js2n.OneOf
                                      [
                                        std.contract.any_of
                                          [
                                            js2n.string.Matches
                                              " *<< *parameters.([^ ]+) *>> *",
                                            Bool,
                                            Number,
                                            String
                                          ],
                                        js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = {},
                                            properties =
                                              {
                                                  docker_layer_caching =
                                                    std.contract.any_of
                                                        [
                                                          js2n.string.Matches
                                                            " *<< *parameters.([^ ]+) *>> *",
                                                          Bool,
                                                          Number,
                                                          String
                                                        ],
                                                  enabled =
                                                    std.contract.any_of
                                                        [
                                                          js2n.string.Matches
                                                            " *<< *parameters.([^ ]+) *>> *",
                                                          Bool,
                                                          Number,
                                                          String
                                                        ],
                                                  image = String,
                                                  resource_class = String,
                                                  shell = String,
                                                },
                                            required = {},
                                          }
                                      ]
                                    | doc "Machine must be a boolean or a map"
                                    | optional,
                                  macos
                                    | {
                                      resource_class | String | optional,
                                      shell | String | optional,
                                      xcode
                                        | std.contract.any_of
                                          [ Number, String ],
                                    }
                                    | optional,
                                  parallelism
                                    | std.contract.any_of
                                      [
                                        js2n.OneOf
                                          [
                                            js2n.string.Matches
                                              " *<< *parameters.([^ ]+) *>> *",
                                            js2n.string.Matches
                                              " *<< *pipeline.parameters.([^ ]+) *>> *"
                                          ],
                                        std.number.Integer
                                      ]
                                    | doc "A integer or a parameter evaluating to a integer"
                                    | optional,
                                  parameters
                                    | js2n.record.MinProperties 1
                                    | {
                                      _ | {
                                        "default"
                                          | std.contract.any_of
                                            [
                                              String,
                                              Bool,
                                              std.number.Integer,
                                              Array refs."definitions.step"
                                            ]
                                          | optional,
                                        description | String | optional,
                                        enum | Array String | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [|
                                            'env_var_name,
                                            'integer,
                                            'executor,
                                            'enum,
                                            'steps,
                                            'string,
                                            'boolean
                                          |],
                                      }
                                    }
                                    | doc "Parameters given to a job."
                                    | optional,
                                  resource_class | String | optional,
                                  shell
                                    | std.contract.any_of
                                      [ String, Array String ]
                                    | optional,
                                  steps
                                    | js2n.array.MinItems 1
                                    | Array refs."definitions.step",
                                  working_directory | String | optional,
                                }
                              ],
                            String
                          ]
                      }
                      | doc "Any string key is allowed as job name."
                      | optional,
                    orbs | js2n.Always | js2n.Nullable ({ _ | Dyn }) | optional,
                    ..
                  }
                ]
            }),
    }
    in
  {
      commands
        | js2n.Nullable
          (std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[a-z][a-z\\d_-]*$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              {
                _ | std.contract.any_of
                  [
                    {
                      description | String | optional,
                      parameters
                        | js2n.record.MinProperties 1
                        | {
                          _ | {
                            "default"
                              | std.contract.any_of
                                [
                                  String,
                                  Bool,
                                  std.number.Integer,
                                  Array refs."definitions.step"
                                ]
                              | optional,
                            description | String | optional,
                            enum | Array String | optional,
                            type
                              | std.enum.TagOrString
                              | [|
                                'env_var_name,
                                'integer,
                                'executor,
                                'enum,
                                'steps,
                                'string,
                                'boolean
                              |],
                          }
                        }
                        | doc "Parameters given to a step."
                        | optional,
                      steps
                        | js2n.array.MinItems 1
                        | Array refs."definitions.step",
                    },
                    String
                  ]
              }
            ])
        | optional,
      display
        | { home_url | String | optional, source_url | String | optional, .. }
        | optional,
      examples
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-z][a-z\\d_-]*$",
              { _ | Dyn },
              Array Dyn
            ])
        | {
          _ | {
            description | String | optional,
            result | { _ | Dyn } | optional,
            usage | { _ | Dyn },
          }
        }
        | optional,
      executors
        | js2n.Nullable
          (std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[a-z][a-z\\d_-]*$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              {
                _ | std.contract.any_of
                  [
                    {
                      description | String | optional,
                      docker
                        | js2n.array.MinItems 1
                        | Array
                          {
                            auth
                              | { password | String, username | String, }
                              | optional,
                            aws_auth
                              | js2n.OneOf
                                [
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            aws_access_key_id = String,
                                            aws_secret_access_key = String,
                                          },
                                      required =
                                        {
                                            aws_access_key_id = true,
                                            aws_secret_access_key = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties = { oidc_role_arn = String, },
                                      required = { oidc_role_arn = true, },
                                    }
                                ]
                              | optional,
                            command
                              | std.contract.any_of [ String, Array String ]
                              | optional,
                            entrypoint
                              | std.contract.any_of [ String, Array String ]
                              | optional,
                            environment
                              | js2n.OneOf
                                [
                                  js2n.Nullable String,
                                  js2n.array.ArrayOf
                                    refs."definitions.environment",
                                  js2n.record.Record
                                    {
                                      additional =
                                        'Some
                                            (std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String
                                              ]),
                                      patterns = {},
                                      properties = {},
                                      required = {},
                                    }
                                ]
                              | optional,
                            image | String,
                            name | String | optional,
                            user | String | optional,
                          }
                        | optional,
                      environment
                        | js2n.OneOf
                          [
                            js2n.Nullable String,
                            js2n.array.ArrayOf refs."definitions.environment",
                            js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.any_of
                                        [ js2n.Null, Bool, Number, String ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              }
                          ]
                        | optional,
                      machine
                        | js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.string.Matches
                                  " *<< *parameters.([^ ]+) *>> *",
                                Bool,
                                Number,
                                String
                              ],
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      docker_layer_caching =
                                        std.contract.any_of
                                            [
                                              js2n.string.Matches
                                                " *<< *parameters.([^ ]+) *>> *",
                                              Bool,
                                              Number,
                                              String
                                            ],
                                      enabled =
                                        std.contract.any_of
                                            [
                                              js2n.string.Matches
                                                " *<< *parameters.([^ ]+) *>> *",
                                              Bool,
                                              Number,
                                              String
                                            ],
                                      image = String,
                                      resource_class = String,
                                      shell = String,
                                    },
                                required = {},
                              }
                          ]
                        | doc "Machine must be a boolean or a map"
                        | optional,
                      macos
                        | {
                          resource_class | String | optional,
                          shell | String | optional,
                          xcode | std.contract.any_of [ Number, String ],
                        }
                        | optional,
                      parameters
                        | js2n.record.MinProperties 1
                        | {
                          _ | {
                            "default"
                              | std.contract.any_of
                                [
                                  String,
                                  Bool,
                                  std.number.Integer,
                                  Array refs."definitions.step"
                                ]
                              | optional,
                            description | String | optional,
                            enum | Array String | optional,
                            type
                              | std.enum.TagOrString
                              | [|
                                'env_var_name,
                                'integer,
                                'executor,
                                'enum,
                                'steps,
                                'string,
                                'boolean
                              |],
                          }
                        }
                        | doc "Parameters given to a job."
                        | optional,
                      resource_class | String | optional,
                      shell
                        | std.contract.any_of [ String, Array String ]
                        | optional,
                      working_directory | String | optional,
                    },
                    String
                  ]
              }
            ])
        | optional,
      experimental
        | {
          notify
            | {
              branches
                | {
                  ignore
                    | std.contract.any_of [ String, Array String ]
                    | optional,
                  only
                    | std.contract.any_of [ String, Array String ]
                    | optional,
                },
            },
        }
        | optional,
      jobs
        | js2n.record.PropertyNames
          (js2n.string.Matches "^[A-Za-z][A-Za-z\\s\\d_-]*$")
        | {
          _ | std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.contract.any_of
                    [
                      js2n.record.Required [ "executor" ],
                      js2n.OneOf
                        [
                          js2n.record.Required [ "machine" ],
                          js2n.record.Required [ "docker" ],
                          js2n.record.Required [ "macos" ]
                        ]
                    ],
                  {
                    circleci_ip_ranges | Bool | optional,
                    description | String | optional,
                    docker
                      | js2n.array.MinItems 1
                      | Array
                        {
                          auth
                            | { password | String, username | String, }
                            | optional,
                          aws_auth
                            | js2n.OneOf
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          aws_access_key_id = String,
                                          aws_secret_access_key = String,
                                        },
                                    required =
                                      {
                                          aws_access_key_id = true,
                                          aws_secret_access_key = true,
                                        },
                                  },
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { oidc_role_arn = String, },
                                    required = { oidc_role_arn = true, },
                                  }
                              ]
                            | optional,
                          command
                            | std.contract.any_of [ String, Array String ]
                            | optional,
                          entrypoint
                            | std.contract.any_of [ String, Array String ]
                            | optional,
                          environment
                            | js2n.OneOf
                              [
                                js2n.Nullable String,
                                js2n.array.ArrayOf
                                  refs."definitions.environment",
                                js2n.record.Record
                                  {
                                    additional =
                                      'Some
                                          (std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String
                                            ]),
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  }
                              ]
                            | optional,
                          image | String,
                          name | String | optional,
                          user | String | optional,
                        }
                      | optional,
                    environment
                      | js2n.OneOf
                        [
                          js2n.Nullable String,
                          js2n.array.ArrayOf refs."definitions.environment",
                          js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [ js2n.Null, Bool, Number, String ]),
                              patterns = {},
                              properties = {},
                              required = {},
                            }
                        ]
                      | optional,
                    executor
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [
                              js2n.record.MinProperties 1,
                              { name | String, .. }
                            ]
                        ]
                      | optional,
                    machine
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.string.Matches
                                " *<< *parameters.([^ ]+) *>> *",
                              Bool,
                              Number,
                              String
                            ],
                          js2n.record.Record
                            {
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    docker_layer_caching =
                                      std.contract.any_of
                                          [
                                            js2n.string.Matches
                                              " *<< *parameters.([^ ]+) *>> *",
                                            Bool,
                                            Number,
                                            String
                                          ],
                                    enabled =
                                      std.contract.any_of
                                          [
                                            js2n.string.Matches
                                              " *<< *parameters.([^ ]+) *>> *",
                                            Bool,
                                            Number,
                                            String
                                          ],
                                    image = String,
                                    resource_class = String,
                                    shell = String,
                                  },
                              required = {},
                            }
                        ]
                      | doc "Machine must be a boolean or a map"
                      | optional,
                    macos
                      | {
                        resource_class | String | optional,
                        shell | String | optional,
                        xcode | std.contract.any_of [ Number, String ],
                      }
                      | optional,
                    parallelism
                      | std.contract.any_of
                        [
                          js2n.OneOf
                            [
                              js2n.string.Matches
                                " *<< *parameters.([^ ]+) *>> *",
                              js2n.string.Matches
                                " *<< *pipeline.parameters.([^ ]+) *>> *"
                            ],
                          std.number.Integer
                        ]
                      | doc "A integer or a parameter evaluating to a integer"
                      | optional,
                    parameters
                      | js2n.record.MinProperties 1
                      | {
                        _ | {
                          "default"
                            | std.contract.any_of
                              [
                                String,
                                Bool,
                                std.number.Integer,
                                Array refs."definitions.step"
                              ]
                            | optional,
                          description | String | optional,
                          enum | Array String | optional,
                          type
                            | std.enum.TagOrString
                            | [|
                              'env_var_name,
                              'integer,
                              'executor,
                              'enum,
                              'steps,
                              'string,
                              'boolean
                            |],
                        }
                      }
                      | doc "Parameters given to a job."
                      | optional,
                    resource_class | String | optional,
                    shell
                      | std.contract.any_of [ String, Array String ]
                      | optional,
                    steps
                      | js2n.array.MinItems 1
                      | Array refs."definitions.step",
                    working_directory | String | optional,
                  }
                ],
              String
            ]
        }
        | doc "Any string key is allowed as job name."
        | optional,
      orbs
        | js2n.Nullable
          ({
            _ | std.contract.any_of
              [
                String,
                {
                  commands
                    | js2n.record.PropertyNames
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          js2n.string.Matches "^[a-z][a-z\\d_-]*$",
                          { _ | Dyn },
                          Array Dyn
                        ])
                    | {
                      _ | std.contract.any_of
                        [
                          {
                            description | String | optional,
                            parameters
                              | js2n.record.MinProperties 1
                              | {
                                _ | {
                                  "default"
                                    | std.contract.any_of
                                      [
                                        String,
                                        Bool,
                                        std.number.Integer,
                                        Array refs."definitions.step"
                                      ]
                                    | optional,
                                  description | String | optional,
                                  enum | Array String | optional,
                                  type
                                    | std.enum.TagOrString
                                    | [|
                                      'env_var_name,
                                      'integer,
                                      'executor,
                                      'enum,
                                      'steps,
                                      'string,
                                      'boolean
                                    |],
                                }
                              }
                              | doc "Parameters given to a step."
                              | optional,
                            steps
                              | js2n.array.MinItems 1
                              | Array refs."definitions.step",
                          },
                          String
                        ]
                    }
                    | optional,
                  executors
                    | js2n.record.PropertyNames
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          js2n.string.Matches "^[a-z][a-z\\d_-]*$",
                          { _ | Dyn },
                          Array Dyn
                        ])
                    | {
                      _ | std.contract.any_of
                        [
                          {
                            description | String | optional,
                            docker
                              | js2n.array.MinItems 1
                              | Array
                                {
                                  auth
                                    | { password | String, username | String, }
                                    | optional,
                                  aws_auth
                                    | js2n.OneOf
                                      [
                                        js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = {},
                                            properties =
                                              {
                                                  aws_access_key_id = String,
                                                  aws_secret_access_key =
                                                    String,
                                                },
                                            required =
                                              {
                                                  aws_access_key_id = true,
                                                  aws_secret_access_key = true,
                                                },
                                          },
                                        js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = {},
                                            properties =
                                              { oidc_role_arn = String, },
                                            required =
                                              { oidc_role_arn = true, },
                                          }
                                      ]
                                    | optional,
                                  command
                                    | std.contract.any_of
                                      [ String, Array String ]
                                    | optional,
                                  entrypoint
                                    | std.contract.any_of
                                      [ String, Array String ]
                                    | optional,
                                  environment
                                    | js2n.OneOf
                                      [
                                        js2n.Nullable String,
                                        js2n.array.ArrayOf
                                          refs."definitions.environment",
                                        js2n.record.Record
                                          {
                                            additional =
                                              'Some
                                                  (std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Number,
                                                      String
                                                    ]),
                                            patterns = {},
                                            properties = {},
                                            required = {},
                                          }
                                      ]
                                    | optional,
                                  image | String,
                                  name | String | optional,
                                  user | String | optional,
                                }
                              | optional,
                            environment
                              | js2n.OneOf
                                [
                                  js2n.Nullable String,
                                  js2n.array.ArrayOf
                                    refs."definitions.environment",
                                  js2n.record.Record
                                    {
                                      additional =
                                        'Some
                                            (std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String
                                              ]),
                                      patterns = {},
                                      properties = {},
                                      required = {},
                                    }
                                ]
                              | optional,
                            machine
                              | js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.string.Matches
                                        " *<< *parameters.([^ ]+) *>> *",
                                      Bool,
                                      Number,
                                      String
                                    ],
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            docker_layer_caching =
                                              std.contract.any_of
                                                  [
                                                    js2n.string.Matches
                                                      " *<< *parameters.([^ ]+) *>> *",
                                                    Bool,
                                                    Number,
                                                    String
                                                  ],
                                            enabled =
                                              std.contract.any_of
                                                  [
                                                    js2n.string.Matches
                                                      " *<< *parameters.([^ ]+) *>> *",
                                                    Bool,
                                                    Number,
                                                    String
                                                  ],
                                            image = String,
                                            resource_class = String,
                                            shell = String,
                                          },
                                      required = {},
                                    }
                                ]
                              | doc "Machine must be a boolean or a map"
                              | optional,
                            macos
                              | {
                                resource_class | String | optional,
                                shell | String | optional,
                                xcode | std.contract.any_of [ Number, String ],
                              }
                              | optional,
                            parameters
                              | js2n.record.MinProperties 1
                              | {
                                _ | {
                                  "default"
                                    | std.contract.any_of
                                      [
                                        String,
                                        Bool,
                                        std.number.Integer,
                                        Array refs."definitions.step"
                                      ]
                                    | optional,
                                  description | String | optional,
                                  enum | Array String | optional,
                                  type
                                    | std.enum.TagOrString
                                    | [|
                                      'env_var_name,
                                      'integer,
                                      'executor,
                                      'enum,
                                      'steps,
                                      'string,
                                      'boolean
                                    |],
                                }
                              }
                              | doc "Parameters given to a job."
                              | optional,
                            resource_class | String | optional,
                            shell
                              | std.contract.any_of [ String, Array String ]
                              | optional,
                            working_directory | String | optional,
                          },
                          String
                        ]
                    }
                    | optional,
                  jobs
                    | js2n.record.PropertyNames
                      (js2n.string.Matches "^[A-Za-z][A-Za-z\\s\\d_-]*$")
                    | {
                      _ | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              std.contract.any_of
                                [
                                  js2n.record.Required [ "executor" ],
                                  js2n.OneOf
                                    [
                                      js2n.record.Required [ "machine" ],
                                      js2n.record.Required [ "docker" ],
                                      js2n.record.Required [ "macos" ]
                                    ]
                                ],
                              {
                                circleci_ip_ranges | Bool | optional,
                                description | String | optional,
                                docker
                                  | js2n.array.MinItems 1
                                  | Array
                                    {
                                      auth
                                        | {
                                          password | String,
                                          username | String,
                                        }
                                        | optional,
                                      aws_auth
                                        | js2n.OneOf
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      aws_access_key_id =
                                                        String,
                                                      aws_secret_access_key =
                                                        String,
                                                    },
                                                required =
                                                  {
                                                      aws_access_key_id = true,
                                                      aws_secret_access_key =
                                                        true,
                                                    },
                                              },
                                            js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  { oidc_role_arn = String, },
                                                required =
                                                  { oidc_role_arn = true, },
                                              }
                                          ]
                                        | optional,
                                      command
                                        | std.contract.any_of
                                          [ String, Array String ]
                                        | optional,
                                      entrypoint
                                        | std.contract.any_of
                                          [ String, Array String ]
                                        | optional,
                                      environment
                                        | js2n.OneOf
                                          [
                                            js2n.Nullable String,
                                            js2n.array.ArrayOf
                                              refs."definitions.environment",
                                            js2n.record.Record
                                              {
                                                additional =
                                                  'Some
                                                      (std.contract.any_of
                                                        [
                                                          js2n.Null,
                                                          Bool,
                                                          Number,
                                                          String
                                                        ]),
                                                patterns = {},
                                                properties = {},
                                                required = {},
                                              }
                                          ]
                                        | optional,
                                      image | String,
                                      name | String | optional,
                                      user | String | optional,
                                    }
                                  | optional,
                                environment
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable String,
                                      js2n.array.ArrayOf
                                        refs."definitions.environment",
                                      js2n.record.Record
                                        {
                                          additional =
                                            'Some
                                                (std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Number,
                                                    String
                                                  ]),
                                          patterns = {},
                                          properties = {},
                                          required = {},
                                        }
                                    ]
                                  | optional,
                                executor
                                  | std.contract.any_of
                                    [
                                      String,
                                      std.contract.Sequence
                                        [
                                          js2n.record.MinProperties 1,
                                          { name | String, .. }
                                        ]
                                    ]
                                  | optional,
                                machine
                                  | js2n.OneOf
                                    [
                                      std.contract.any_of
                                        [
                                          js2n.string.Matches
                                            " *<< *parameters.([^ ]+) *>> *",
                                          Bool,
                                          Number,
                                          String
                                        ],
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                docker_layer_caching =
                                                  std.contract.any_of
                                                      [
                                                        js2n.string.Matches
                                                          " *<< *parameters.([^ ]+) *>> *",
                                                        Bool,
                                                        Number,
                                                        String
                                                      ],
                                                enabled =
                                                  std.contract.any_of
                                                      [
                                                        js2n.string.Matches
                                                          " *<< *parameters.([^ ]+) *>> *",
                                                        Bool,
                                                        Number,
                                                        String
                                                      ],
                                                image = String,
                                                resource_class = String,
                                                shell = String,
                                              },
                                          required = {},
                                        }
                                    ]
                                  | doc "Machine must be a boolean or a map"
                                  | optional,
                                macos
                                  | {
                                    resource_class | String | optional,
                                    shell | String | optional,
                                    xcode
                                      | std.contract.any_of [ Number, String ],
                                  }
                                  | optional,
                                parallelism
                                  | std.contract.any_of
                                    [
                                      js2n.OneOf
                                        [
                                          js2n.string.Matches
                                            " *<< *parameters.([^ ]+) *>> *",
                                          js2n.string.Matches
                                            " *<< *pipeline.parameters.([^ ]+) *>> *"
                                        ],
                                      std.number.Integer
                                    ]
                                  | doc "A integer or a parameter evaluating to a integer"
                                  | optional,
                                parameters
                                  | js2n.record.MinProperties 1
                                  | {
                                    _ | {
                                      "default"
                                        | std.contract.any_of
                                          [
                                            String,
                                            Bool,
                                            std.number.Integer,
                                            Array refs."definitions.step"
                                          ]
                                        | optional,
                                      description | String | optional,
                                      enum | Array String | optional,
                                      type
                                        | std.enum.TagOrString
                                        | [|
                                          'env_var_name,
                                          'integer,
                                          'executor,
                                          'enum,
                                          'steps,
                                          'string,
                                          'boolean
                                        |],
                                    }
                                  }
                                  | doc "Parameters given to a job."
                                  | optional,
                                resource_class | String | optional,
                                shell
                                  | std.contract.any_of [ String, Array String ]
                                  | optional,
                                steps
                                  | js2n.array.MinItems 1
                                  | Array refs."definitions.step",
                                working_directory | String | optional,
                              }
                            ],
                          String
                        ]
                    }
                    | doc "Any string key is allowed as job name."
                    | optional,
                  orbs | refs."properties.orbs" | optional,
                  ..
                }
              ]
          })
        | optional,
      parameters
        | js2n.Nullable
          ({
            _ | {
              "default"
                | std.contract.any_of [ String, Bool, std.number.Integer ],
              description | String | optional,
              enum | Array String | optional,
              type
                | std.enum.TagOrString
                | [| 'integer, 'enum, 'string, 'boolean |],
            }
          })
        | optional,
      version | js2n.Enum [ "2.1", 2.1 ],
      workflows
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches ".+",
              { _ | Dyn },
              Array Dyn
            ])
        | js2n.record.Record
          {
            additional =
              'Some
                  (std.contract.Sequence
                    [
                      std.contract.not
                        (std.contract.Sequence
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "when" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "unless" ],
                                Array Dyn
                              ]
                          ]),
                      {
                        jobs
                          | js2n.array.MinItems 1
                          | Array (
                            std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [
                                    js2n.record.MaxProperties 1,
                                    js2n.record.MinProperties 0,
                                    {
                                      _ | {
                                        context
                                          | std.contract.any_of
                                            [ String, Array String ]
                                          | optional,
                                        filters
                                          | {
                                            branches
                                              | {
                                                ignore
                                                  | std.contract.any_of
                                                    [ String, Array String ]
                                                  | optional,
                                                only
                                                  | std.contract.any_of
                                                    [ String, Array String ]
                                                  | optional,
                                              }
                                              | optional,
                                            tags
                                              | {
                                                ignore
                                                  | std.contract.any_of
                                                    [ String, Array String ]
                                                  | optional,
                                                only
                                                  | std.contract.any_of
                                                    [ String, Array String ]
                                                  | optional,
                                              }
                                              | optional,
                                          }
                                          | doc "This is similar to to other `filters` in config, but has an additional key, `tags`"
                                          | optional,
                                        matrix
                                          | {
                                            alias | String | optional,
                                            exclude
                                              | Array ({ _ | Dyn })
                                              | optional,
                                            parameters | { _ | Dyn },
                                            ..
                                          }
                                          | optional,
                                        override-with | String | optional,
                                        post-steps
                                          | std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ]
                                          | optional,
                                        pre-steps
                                          | std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              { _ | Dyn },
                                              Array Dyn
                                            ]
                                          | optional,
                                        requires
                                          | Array (
                                            std.contract.any_of
                                              [
                                                String,
                                                std.contract.Sequence
                                                  [
                                                    js2n.record.MaxProperties 1,
                                                    js2n.record.MinProperties 1,
                                                    js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns =
                                                          {
                                                              "^[A-Za-z][A-Za-z\\s\\d_-]*$" =
                                                                std.contract.any_of
                                                                    [
                                                                      std.contract.Sequence
                                                                        [
                                                                          std.enum.TagOrString,
                                                                          [|
                                                                            'canceled,
                                                                            'failed,
                                                                            'success
                                                                          |]
                                                                        ],
                                                                      Array (
                                                                        std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'canceled,
                                                                              'failed,
                                                                              'success
                                                                            |]
                                                                          ]
                                                                      )
                                                                    ],
                                                            },
                                                        properties = {},
                                                        required = {},
                                                      }
                                                  ]
                                              ]
                                          )
                                          | optional,
                                        serial-group
                                          | js2n.string.MinLength 1
                                          | optional,
                                        type | String | optional,
                                        ..
                                      }
                                    }
                                  ]
                              ]
                          ),
                        triggers
                          | Array
                            {
                              schedule
                                | {
                                  cron | String | optional,
                                  filters
                                    | {
                                      branches
                                        | {
                                          ignore
                                            | std.contract.any_of
                                              [ String, Array String ]
                                            | optional,
                                          only
                                            | std.contract.any_of
                                              [ String, Array String ]
                                            | optional,
                                        }
                                        | optional,
                                    }
                                    | optional,
                                  ..
                                }
                                | optional,
                            }
                          | optional,
                        unless | refs."definitions.logic" | optional,
                        when | refs."definitions.logic" | optional,
                        ..
                      }
                    ]),
            patterns = {},
            properties = { version = std.contract.any_of [ Number, String ], },
            required = {},
          }
        | optional,
      ..
    }