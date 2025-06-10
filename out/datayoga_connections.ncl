# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.connection" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            database = String,
                            hosts = js2n.array.ArrayOf String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            type = js2n.Const "cassandra",
                            user = String,
                          },
                      required = { hosts = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            connect_args = { _ | js2n.Always },
                            database = String,
                            host = String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            query_args = { _ | js2n.Always },
                            type = js2n.Const "db2",
                            user = String,
                          },
                      required =
                        {
                            database = true,
                            host = true,
                            port = true,
                            type = true,
                            user = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            base_uri = String,
                            headers =
                              js2n.record.Record
                                  {
                                    additional =
                                      'Some
                                          (std.contract.any_of
                                            [
                                              String,
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        expression = String,
                                                        language =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'sql,
                                                                  'jmespath
                                                                |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        expression = true,
                                                        language = true,
                                                      },
                                                }
                                            ]),
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                            query_parameters =
                              js2n.record.Record
                                  {
                                    additional =
                                      'Some
                                          (std.contract.any_of
                                            [
                                              String,
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        expression = String,
                                                        language =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'sql,
                                                                  'jmespath
                                                                |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        expression = true,
                                                        language = true,
                                                      },
                                                }
                                            ]),
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                            timeout = std.number.Integer,
                            type = js2n.Const "http",
                          },
                      required = { base_uri = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            connect_args = { _ | js2n.Always },
                            database = String,
                            host = String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            query_args = { _ | js2n.Always },
                            type = js2n.Const "mysql",
                            user = String,
                          },
                      required =
                        {
                            database = true,
                            host = true,
                            port = true,
                            type = true,
                            user = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            connect_args = { _ | js2n.Always },
                            database = String,
                            driver = String,
                            host = String,
                            oracle_thick_mode = Bool,
                            oracle_thick_mode_lib_dir = String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            query_args = { _ | js2n.Always },
                            type = js2n.Const "oracle",
                            user = String,
                          },
                      required =
                        {
                            database = true,
                            host = true,
                            port = true,
                            type = true,
                            user = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            connect_args = { _ | js2n.Always },
                            database = String,
                            host = String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            query_args = { _ | js2n.Always },
                            type = js2n.Const "postgresql",
                            user = String,
                          },
                      required =
                        {
                            database = true,
                            host = true,
                            port = true,
                            type = true,
                            user = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            cacert = String,
                            cert = String,
                            health_check_interval = js2n.number.Minimum 0,
                            host = String,
                            key = String,
                            key_password = String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            socket_connect_timeout = js2n.number.Minimum 0,
                            socket_keepalive = Bool,
                            socket_timeout = js2n.number.Minimum 0,
                            type = js2n.Const "redis",
                            user = String,
                          },
                      required = { host = true, port = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            connect_args = { _ | js2n.Always },
                            database = String,
                            host = String,
                            password = String,
                            port =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                            query_args = { _ | js2n.Always },
                            type = js2n.Const "sqlserver",
                            user = String,
                          },
                      required =
                        {
                            database = true,
                            host = true,
                            port = true,
                            type = true,
                            user = true,
                          },
                    }
                ],
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
                                      [|
                                        'sqlserver,
                                        'postgresql,
                                        'mysql,
                                        'cassandra
                                      |]
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
                      connect_args
                        | { _ | Dyn }
                        | doc "Additional arguments to use when connecting to the DB"
                        | optional,
                      debug
                        | Bool
                        | doc "Echo all SQL commands to stdout"
                        | optional,
                      driver
                        | String
                        | doc "Explicit driver to use, if not using default"
                        | optional,
                      query_args
                        | { _ | Dyn }
                        | doc "Additional query string arguments to use when connecting to the DB"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.record.Required [ "type" ]
            ],
    }
    in
  js2n.Nullable
      (js2n.record.Record
        {
          additional = 'Some Dyn,
          patterns =
            {
                "." =
                  std.contract.Sequence
                      [ refs."definitions.connection", { _ | Dyn } ],
              },
          properties = {},
          required = {},
        })