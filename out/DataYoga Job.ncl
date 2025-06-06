# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.block" =
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
                        properties = { uses = js2n.Const "sequence", },
                        required = { uses = true, },
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
                      with
                        | {
                          field | String | optional,
                          increment | Number | optional,
                          start | Number | optional,
                        }
                        | doc "Add a sequence number field to data"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                          { uses = js2n.Const "azure.read_event_hub", },
                        required = { uses = true, },
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
                      with
                        | {
                          batch_size
                            | std.number.Integer
                            | doc "The maximum number of events to receive in each batch."
                            | optional,
                          checkpoint_store_connection_string
                            | String
                            | doc "The connection string for the Azure Storage account used as the checkpoint store.",
                          checkpoint_store_container_name
                            | String
                            | doc "The name of the container within the checkpoint store to store the checkpoints.",
                          event_hub_connection_string
                            | String
                            | doc "The connection string for the Azure Event Hub namespace.",
                          event_hub_consumer_group_name
                            | String
                            | doc "The name of the consumer group to read events from.",
                          event_hub_name
                            | String
                            | doc "The name of the Azure Event Hub.",
                          ..
                        }
                        | doc "Read from Azure Event Hub"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "std.write", },
                        required = { uses = true, },
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
                      with
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                        | doc "Write to the standard output"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "std.read", },
                        required = { uses = true, },
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
                      with
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                        | doc "Read from the standard input"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "filter", },
                        required = { uses = true, },
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
                      with
                        | {
                          expression | String | doc "Expression",
                          language
                            | std.enum.TagOrString
                            | [| 'sql, 'jmespath |]
                            | doc "Language",
                        }
                        | doc "Filter records"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "jinja_template", },
                        required = { uses = true, },
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
                      with
                        | {
                          field | String | doc "Field",
                          template | String | doc "Jinja Template",
                        }
                        | doc "Apply Jinja template to a field"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "map", },
                        required = { uses = true, },
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
                      with
                        | {
                          expression
                            | std.contract.any_of [ String, { _ | Dyn } ]
                            | doc "Expression",
                          language
                            | std.enum.TagOrString
                            | [| 'sql, 'jmespath |]
                            | doc "Language",
                        }
                        | doc "Maps a record into a new output based on expressions"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "redis.read_stream", },
                        required = { uses = true, },
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
                      with
                        | {
                          connection | String | doc "Connection name",
                          snapshot
                            | Bool
                            | doc "Snapshot current entries and quit"
                            | optional,
                          stream_name | String | doc "Source stream name",
                        }
                        | doc "Read from Redis stream"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "redis.write", },
                        required = { uses = true, },
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
                      with
                        | {
                          command
                            | std.enum.TagOrString
                            | [|
                              'ZADD,
                              'SET,
                              'LPUSH,
                              'RPUSH,
                              'XADD,
                              'SADD,
                              'HSET
                            |]
                            | doc "Redis command"
                            | optional,
                          connection | String,
                          key
                            | {
                              expression | String | doc "Expression",
                              language
                                | std.enum.TagOrString
                                | [| 'sql, 'jmespath |]
                                | doc "Language",
                              ..
                            }
                            | doc "Field to use as the Redis key",
                        }
                        | doc "Write to a Redis data structure"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "redis.lookup", },
                        required = { uses = true, },
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
                      with
                        | {
                          args
                            | Array String
                            | doc "The list of expressions produces arguments",
                          cmd | String | doc "The command to execute",
                          connection | String,
                          field
                            | String
                            | doc "The field to write the result to",
                          language
                            | std.enum.TagOrString
                            | [| 'sql, 'jmespath |]
                            | doc "Language",
                        }
                        | doc "Lookup data from Redis using the given command and key"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "http.write", },
                        required = { uses = true, },
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
                      with
                        | {
                          connection
                            | String
                            | doc "Logical connection name as defined in the connections.dy.yaml",
                          endpoint
                            | std.contract.any_of
                              [
                                String,
                                {
                                  expression | String | doc "Expression",
                                  language
                                    | std.enum.TagOrString
                                    | [| 'sql, 'jmespath |]
                                    | doc "Language",
                                  ..
                                }
                              ],
                          extra_headers
                            | {
                              _ | std.contract.any_of
                                [
                                  String,
                                  {
                                    expression | String | doc "Expression",
                                    language
                                      | std.enum.TagOrString
                                      | [| 'sql, 'jmespath |]
                                      | doc "Language",
                                    ..
                                  }
                                ]
                            }
                            | doc "Extra headers to be included in the HTTP request"
                            | optional,
                          extra_query_parameters
                            | {
                              _ | std.contract.any_of
                                [
                                  String,
                                  {
                                    expression | String | doc "Expression",
                                    language
                                      | std.enum.TagOrString
                                      | [| 'sql, 'jmespath |]
                                      | doc "Language",
                                    ..
                                  }
                                ]
                            }
                            | doc "Extra query parameters to be included in the HTTP request"
                            | optional,
                          method
                            | std.enum.TagOrString
                            | [| 'DELETE, 'POST, 'PUT, 'GET |]
                            | doc "HTTP method to be used for the request",
                          output
                            | {
                              body
                                | String
                                | doc "Name of the field where the HTTP response content will be stored after the request"
                                | optional,
                              headers
                                | String
                                | doc "Name of the field where the HTTP response headers will be stored after the request"
                                | optional,
                              status_code
                                | String
                                | doc "Name of the field where the HTTP response status code will be stored after the request"
                                | optional,
                              ..
                            }
                            | optional,
                          payload
                            | {
                              _ | std.contract.any_of
                                [
                                  String,
                                  {
                                    expression | String | doc "Expression",
                                    language
                                      | std.enum.TagOrString
                                      | [| 'sql, 'jmespath |]
                                      | doc "Language",
                                    ..
                                  }
                                ]
                            }
                            | doc "Data to be sent in the request body"
                            | optional,
                          timeout
                            | std.number.Integer
                            | doc "Timeout duration for this specific HTTP request in seconds"
                            | optional,
                          ..
                        }
                        | doc "Write data using an HTTP request"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "http.receiver", },
                        required = { uses = true, },
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
                      with
                        | {
                          host | String | doc "Host to listen" | optional,
                          port
                            | std.number.Integer
                            | doc "Port to listen"
                            | optional,
                        }
                        | doc "Receives HTTP requests and process the data."
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "remove_field", },
                        required = { uses = true, },
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
                      with
                        | js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          fields =
                                            js2n.array.ArrayOf
                                                (js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns = {},
                                                    properties =
                                                      { field = String, },
                                                    required =
                                                      { field = true, },
                                                  }),
                                        },
                                    required = { fields = true, },
                                  },
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { field = String, },
                                    required = { field = true, },
                                  },
                                Array Dyn
                              ]
                          ]
                        | { _ | Dyn }
                        | doc "Remove fields"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "parquet.write", },
                        required = { uses = true, },
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
                      with
                        | {
                          file
                            | String
                            | doc "Filename. Can contain a regexp or glob expression",
                        }
                        | doc "Write data to parquet"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "parquet.read", },
                        required = { uses = true, },
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
                      with
                        | {
                          file
                            | String
                            | doc "Filename. Can contain a regexp or glob expression",
                        }
                        | doc "Read data from parquet"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "relational.write", },
                        required = { uses = true, },
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
                      with
                        | std.contract.not
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required
                                [ "load_strategy", "opcode_field" ],
                              Array Dyn
                            ])
                        | {
                          active_record_indicator
                            | String
                            | doc "Used for `TYPE2` load_strategy. An SQL expression used to identify which rows are active"
                            | optional,
                          connection
                            | String
                            | doc "Logical connection name as defined in the connections.dy.yaml",
                          foreach
                            | js2n.string.Matches "^(?!:).*:.*(?<!:)$"
                            | doc "Use a JMESPath expression to split a column into multiple records. The expression should be in the format column: expression."
                            | optional,
                          inactive_record_mapping
                            | Array Dyn
                            | doc "A list of columns to use. Use any valid SQL expression for the source. If 'target' is omitted, will default to the name of the source column"
                            | optional,
                          keys
                            | Array (
                              std.contract.any_of [ String, { _ | Dyn } ]
                            )
                            | optional,
                          load_strategy
                            | std.enum.TagOrString
                            | [| 'TYPE2, 'UPSERT, 'REPLACE, 'APPEND |]
                            | doc "type of target"
                            | optional,
                          mapping
                            | Array (
                              std.contract.any_of [ String, { _ | Dyn } ]
                            )
                            | optional,
                          opcode_field
                            | String
                            | doc "Name of the field in the payload that holds the operation (c - create, d - delete, u - update) for this record in the DB"
                            | optional,
                          schema
                            | String
                            | doc "If not specified, no specific schema will be used when connecting to the database."
                            | optional,
                          table | String | doc "Target table name",
                        }
                        | doc "Write into a SQL-compatible data store"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "relational.lookup", },
                        required = { uses = true, },
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
                      with
                        | {
                          condition
                            | String
                            | doc "Use any valid SQL syntax. Use the alias `lookup` for the lookup table and `incoming` for the base table"
                            | optional,
                          fields
                            | Array (
                              std.contract.any_of [ String, { _ | Dyn } ]
                            )
                            | optional,
                          multiple_match_policy
                            | std.enum.TagOrString
                            | [| 'all, 'last, 'first |]
                            | doc "How to handle multiple matches in the lookup table"
                            | optional,
                          order_by | Array String | optional,
                          query
                            | String
                            | doc "Use any valid SQL syntax. Use the alias `lookup` for the lookup table and `incoming` for the base table"
                            | optional,
                          schema
                            | String
                            | doc "If not specified, no specific schema will be used when connecting to the database."
                            | optional,
                          table | String | doc "Lookup table name" | optional,
                        }
                        | doc "Lookup values in a relational table"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "relational.read", },
                        required = { uses = true, },
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
                      with
                        | {
                          columns
                            | Array (
                              std.contract.any_of [ String, { _ | Dyn } ]
                            )
                            | optional,
                          connection
                            | String
                            | doc "Logical connection name as defined in the connections.dy.yaml",
                          schema
                            | String
                            | doc "If left blank, the default schema of this connection will be used as defined in the connections.dy.yaml"
                            | optional,
                          table | String | doc "Table name",
                        }
                        | doc "Read a table from an SQL-compatible data store"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "cassandra.write", },
                        required = { uses = true, },
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
                      with
                        | {
                          connection
                            | String
                            | doc "Logical connection name as defined in the connections.dy.yaml",
                          keys
                            | Array (
                              std.contract.any_of [ String, { _ | Dyn } ]
                            ),
                          keyspace | String | doc "Keyspace",
                          mapping
                            | Array (
                              std.contract.any_of [ String, { _ | Dyn } ]
                            ),
                          opcode_field
                            | String
                            | doc "Name of the field in the payload that holds the operation (c - create, d - delete, u - update) for this record in the DB",
                          table | String | doc "Target table name",
                        }
                        | doc "Write into a Cassandra data store"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "rename_field", },
                        required = { uses = true, },
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
                      with
                        | js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          fields =
                                            js2n.array.ArrayOf
                                                (js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          from_field = String,
                                                          to_field = String,
                                                        },
                                                    required =
                                                      {
                                                          from_field = true,
                                                          to_field = true,
                                                        },
                                                  }),
                                        },
                                    required = { fields = true, },
                                  },
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          from_field = String,
                                          to_field = String,
                                        },
                                    required =
                                      { from_field = true, to_field = true, },
                                  },
                                Array Dyn
                              ]
                          ]
                        | { _ | Dyn }
                        | doc "Renames fields. All other fields remain unchanged"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "files.read_csv", },
                        required = { uses = true, },
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
                      with
                        | {
                          batch_size
                            | js2n.number.Minimum 1
                            | doc "Number of records to read per batch"
                            | optional,
                          delimiter
                            | js2n.string.MaxLength 1
                            | js2n.string.MinLength 1
                            | doc "Delimiter to use for splitting the csv records"
                            | optional,
                          encoding
                            | String
                            | doc "Encoding to use for reading the file"
                            | optional,
                          fields
                            | Array String
                            | doc "List of columns to use for extract"
                            | optional,
                          file
                            | String
                            | doc "Filename. Can contain a regexp or glob expression",
                          quotechar
                            | js2n.string.MaxLength 1
                            | js2n.string.MinLength 1
                            | doc "A one-character string used to quote fields containing special characters, such as the delimiter or quotechar, or which contain new-line characters. It defaults to '"
                            | optional,
                          skip
                            | js2n.number.Minimum 0
                            | doc "Number of lines to skip"
                            | optional,
                        }
                        | doc "Read data from CSV"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { uses = js2n.Const "add_field", },
                        required = { uses = true, },
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
                      with
                        | js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          fields =
                                            js2n.array.ArrayOf
                                                (js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          expression = String,
                                                          field = String,
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
                                                          field = true,
                                                          language = true,
                                                        },
                                                  }),
                                        },
                                    required = { fields = true, },
                                  },
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          expression = String,
                                          field = String,
                                          language =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'sql, 'jmespath |]
                                                ],
                                        },
                                    required =
                                      {
                                          expression = true,
                                          field = true,
                                          language = true,
                                        },
                                  },
                                Array Dyn
                              ]
                          ]
                        | { _ | Dyn }
                        | doc "Add fields to a record"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                uses
                  | std.enum.TagOrString
                  | [|
                    'add_field,
                    '"files.read_csv",
                    'rename_field,
                    '"cassandra.write",
                    '"relational.read",
                    '"relational.lookup",
                    '"relational.write",
                    '"parquet.read",
                    '"parquet.write",
                    'remove_field,
                    '"http.receiver",
                    '"http.write",
                    '"redis.lookup",
                    '"redis.write",
                    '"redis.read_stream",
                    'map,
                    'jinja_template,
                    'filter,
                    '"std.read",
                    '"std.write",
                    '"azure.read_event_hub",
                    'sequence
                  |]
                  | optional,
                ..
              }
            ],
    }
    in
  {
      error_handling
        | std.enum.TagOrString
        | [| 'ignore, 'abort |]
        | doc "Error handling strategy: abort - terminate job, ignore - skip"
        | optional,
      input | refs."definitions.block" | { _ | Dyn } | optional,
      steps
        | Array (
          std.contract.Sequence [ refs."definitions.block", { _ | Dyn } ]
        )
        | optional,
    }