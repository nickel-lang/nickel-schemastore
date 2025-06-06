# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      analyses
        | Array
          {
            columns
              | Array
                {
                  data_type | String | optional,
                  description | String | optional,
                  name | String,
                }
              | optional,
            config
              | {
                tags
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
              }
              | optional,
            description | String | optional,
            docs
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            group
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            name | String,
            ..
          }
        | optional,
      data_tests
        | Array
          {
            description
              | String
              | doc "A description of the test's purpose, how it is implemented, and perhaps what you should do if it starts failing."
              | optional,
            name | String | doc "The name of the singular test",
          }
        | doc "Add descriptions to custom singular tests"
        | optional,
      exposures
        | Array
          {
            depends_on | Array String,
            description | String | optional,
            label | String | optional,
            maturity
              | std.enum.TagOrString
              | [| 'medium, 'low, 'high |]
              | optional,
            meta | { _ | Dyn } | optional,
            name | String,
            owner
              | std.contract.any_of
                [
                  js2n.record.Required [ "email" ],
                  js2n.record.Required [ "name" ]
                ]
              | { email | String | optional, name | String | optional, },
            tags
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            type
              | std.enum.TagOrString
              | [| 'notebook, 'ml, 'dashboard, 'application, 'analysis |],
            url | String | optional,
            ..
          }
        | optional,
      groups
        | Array
          {
            name | String,
            owner
              | js2n.record.MinProperties 1
              | { email | String | optional, name | String | optional, .. },
          }
        | optional,
      macros
        | Array
          {
            arguments
              | Array
                {
                  description | String | optional,
                  name | String,
                  type | String | optional,
                }
              | optional,
            description | String | optional,
            docs
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            name | String,
          }
        | optional,
      metrics
        | Array (
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
                                    [
                                      std.enum.TagOrString,
                                      [| 'simple, 'SIMPLE |]
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
                      type_params
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ])
                (js2n.IfThenElse
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
                                        [| 'DERIVED, 'derived |]
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
                        type_params
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        ..
                      },
                      Array Dyn
                    ])
                  (js2n.IfThenElse
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
                                          [| 'CUMULATIVE, 'cumulative |]
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
                          type_params
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                { _ | Dyn },
                                Array Dyn,
                                Number,
                                String
                              ]
                            | optional,
                          ..
                        },
                        Array Dyn
                      ])
                    (js2n.IfThenElse
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
                                            [| 'CONVERSION, 'conversion |]
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
                            type_params
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            ..
                          },
                          Array Dyn
                        ])
                      (js2n.IfThenElse
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
                                              [| 'RATIO, 'ratio |]
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
                              type_params
                                | std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ]
                                | optional,
                              ..
                            },
                            Array Dyn
                          ]) js2n.Always)))),
              {
                description | String | optional,
                filter | String | optional,
                group
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                label | String,
                name
                  | js2n.string.Matches "(?!.*__).*^[a-z][a-z0-9_]*[a-z0-9]$",
                time_granularity | String | optional,
                type
                  | std.enum.TagOrString
                  | [|
                    'simple,
                    'SIMPLE,
                    'ratio,
                    'RATIO,
                    'derived,
                    'DERIVED,
                    'cumulative,
                    'CUMULATIVE,
                    'conversion,
                    'CONVERSION
                  |],
                type_params | { _ | Dyn },
              }
            ]
        )
        | optional,
      models
        | Array
          {
            access
              | std.enum.TagOrString
              | [| 'public, 'protected, 'private |]
              | optional,
            columns
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            config
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            constraints
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            data_tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            deprecation_date | String | optional,
            description | String | optional,
            docs
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            group
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            latest_version | Number | optional,
            meta | { _ | Dyn } | optional,
            name | String,
            tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            time_spine | { standard_granularity_column | String, } | optional,
            versions
              | Array
                {
                  columns
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String,
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    )
                    | optional,
                  config
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  v | Number,
                  ..
                }
              | optional,
          }
        | optional,
      saved_queries
        | Array
          {
            config
              | {
                cache | { enabled | Bool | optional, } | optional,
                enabled | Bool | optional,
                export_as
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ std.enum.TagOrString, [| 'view, 'table |] ])
                  | optional,
                group | js2n.Nullable String | optional,
                meta | js2n.record.PropertyNames String | optional,
                schema | js2n.Nullable String | optional,
                ..
              }
              | optional,
            description | String,
            exports
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            label | String,
            name | String,
            query_params
              | {
                additionalProperties | js2n.Never | optional,
                dimensions
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                metrics
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                where
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                ..
              },
            tags | std.contract.any_of [ Array String, String ] | optional,
          }
        | optional,
      seeds
        | Array
          {
            columns
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            config
              | {
                column_types | { _ | Dyn } | optional,
                copy_grants
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                data_tests
                  | Array (
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                  )
                  | optional,
                database | String | optional,
                enabled
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                grants
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                quote_columns
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                schema | String | optional,
                ..
              }
              | optional,
            description | String | optional,
            docs
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            group
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            name | String,
            tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
          }
        | optional,
      semantic_models
        | Array
          {
            defaults | { agg_time_dimension | String | optional, } | optional,
            description | String | optional,
            dimensions
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            entities
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            measures
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            model | String,
            name | js2n.string.Matches "(?!.*__).*^[a-z][a-z0-9_]*[a-z0-9]$",
            primary_entity | String | optional,
          }
        | optional,
      snapshots
        | Array
          {
            columns
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            config
              | {
                alias | String | optional,
                check_cols
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                enabled
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                grants
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                persist_docs
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                post-hook
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                pre-hook
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                quote_columns
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                strategy | String | optional,
                tags
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                target_database | String | optional,
                target_schema | String | optional,
                unique_key
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                updated_at | String | optional,
                ..
              }
              | optional,
            data_tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            description | String | optional,
            docs
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            group
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            meta | { _ | Dyn } | optional,
            name | String,
            relation
              | String
              | doc "Required when defining your snapshot in YAML instead of using a legacy snapshot block."
              | optional,
            tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
          }
        | optional,
      sources
        | Array
          {
            config | { _ | Dyn } | optional,
            data_tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            database | String | optional,
            description | String | optional,
            freshness
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            loaded_at_field | String | optional,
            loader | String | optional,
            meta | { _ | Dyn } | optional,
            name
              | String
              | doc "How you will identify the schema in {{ source() }} calls. Unless `schema` is also set, this will be the name of the schema in the database.",
            overrides
              | String
              | doc "The name of another package installed in your project. If that package has a source with the same name as this one, its properties will be applied on top of the base properties of the overridden source. https://docs.getdbt.com/reference/resource-properties/overrides"
              | optional,
            quoting
              | {
                database
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                identifier
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                schema
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
              }
              | optional,
            schema
              | String
              | doc "The schema name as stored in the database. Only needed if you want to use a different `name` than what exists in the database (otherwise `name` is used by default)"
              | optional,
            tables
              | Array
                {
                  columns
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    )
                    | optional,
                  config
                    | {
                      additionalProperties | js2n.Always | optional,
                      event_time
                        | String
                        | doc "The column that represents the actual moment the row's event happened. Contrast with, for example, when it was loaded to the warehouse."
                        | optional,
                      ..
                    }
                    | optional,
                  data_tests
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    )
                    | optional,
                  description | String | optional,
                  external | { _ | Dyn } | optional,
                  freshness
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  identifier
                    | String
                    | doc "The table name as stored in the database. Only needed if you want to give the source a different name than what exists in the database (otherwise `name` is used by default)"
                    | optional,
                  loaded_at_field
                    | String
                    | doc "Which column to check during data freshness tests. Only needed if the table has a different loaded_at_field to the one defined on the source overall."
                    | optional,
                  loader | String | optional,
                  meta | { _ | Dyn } | optional,
                  name
                    | String
                    | doc "How you will identify the table in {{ source() }} calls. Unless `identifier` is also set, this will be the name of the table in the database.",
                  quoting
                    | {
                      database
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                        | optional,
                      identifier
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                        | optional,
                      schema
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                        | optional,
                    }
                    | optional,
                  tags
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  tests
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    )
                    | optional,
                }
              | optional,
            tags
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            tests
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | optional,
            ..
          }
        | optional,
      unit_tests
        | Array
          {
            additionalProperties | js2n.Never | optional,
            config
              | {
                enabled
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                meta | { _ | Dyn } | optional,
                tags
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
              }
              | optional,
            description | String | optional,
            expect
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
                        properties = { format = js2n.Const "dict", },
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
                      rows
                        | Array ({ _ | Dyn })
                        | doc "When `format` is `dict`, each item should be a dictionary containing a key-value pair for each column and its value, e.g. `{id: 1, code: 'ABC'}`"
                        | optional,
                      ..
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
                      rows
                        | String
                        | doc "When `format` is csv or sql, a string containing comma-separated headers and values. Alternatively provide a fixture. Use the pipe character | to create a multi-line string in YAML."
                        | optional,
                      ..
                    },
                    Array Dyn
                  ])
              | {
                additionalProperties | js2n.Never | optional,
                fixture
                  | String
                  | doc "Only relevant when format is csv. Specify the name of a fixture instead of providing `rows`."
                  | optional,
                format
                  | std.enum.TagOrString
                  | [| 'sql, 'dict, 'csv |]
                  | doc "Defaults to `dict` when not specified"
                  | optional,
                ..
              },
            given
              | Array (
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
                              properties = { format = js2n.Const "dict", },
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
                            rows
                              | Array ({ _ | Dyn })
                              | doc "When `format` is `dict`, each item should be a dictionary containing a key-value pair for each column and its value, e.g. `{id: 1, code: 'ABC'}`"
                              | optional,
                            ..
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
                            rows
                              | String
                              | doc "When `format` is csv or sql, a string containing comma-separated headers and values. Alternatively provide a fixture. Use the pipe character | to create a multi-line string in YAML."
                              | optional,
                            ..
                          },
                          Array Dyn
                        ]),
                    {
                      additionalProperties | js2n.Never | optional,
                      fixture
                        | String
                        | doc "Only relevant when format is csv. Specify the name of a fixture instead of providing `rows`."
                        | optional,
                      format
                        | std.enum.TagOrString
                        | [| 'sql, 'dict, 'csv |]
                        | doc "Defaults to `dict` when not specified"
                        | optional,
                      input
                        | String
                        | doc "The relation whose inputs you need to mock. Enclose in ref or source without curly braces"
                        | optional,
                      ..
                    }
                  ]
              )
              | optional,
            model
              | String
              | doc "The name of the model whose behaviour you are testing. Does not need to be wrapped in a ref.",
            name | String,
            overrides
              | {
                env_vars | { _ | Dyn } | optional,
                macros | { _ | Dyn } | optional,
                vars | { _ | Dyn } | optional,
              }
              | optional,
          }
        | optional,
      version | std.contract.Equal 2 | optional,
    }