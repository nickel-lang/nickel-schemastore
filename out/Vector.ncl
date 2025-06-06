# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.codecs::MetricTagValues" =
        js2n.OneOf [ js2n.Const "single", js2n.Const "full" ],
      "definitions.codecs::common::length_delimited::LengthDelimitedCoderOptions" =
        {
            length_field_is_big_endian
              | Bool
              | doc "Length field byte order (little or big endian)"
              | optional,
            length_field_length
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "Number of bytes representing the field length"
              | optional,
            length_field_offset
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "Number of bytes in the header before the length field"
              | optional,
            max_frame_length
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "Maximum frame length"
              | optional,
            ..
          },
      "definitions.codecs::decoding::DeserializerConfig" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { codec = js2n.Const "bytes", },
                  required = { codec = true, },
                },
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            json =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { lossy = Bool, },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "json", },
                      required = { codec = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            protobuf =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          desc_file =
                                            std.contract.Sequence
                                                [
                                                  refs."definitions.stdlib::PathBuf",
                                                  String
                                                ],
                                          message_type = String,
                                        },
                                    required =
                                      {
                                          desc_file = true,
                                          message_type = true,
                                        },
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "protobuf", },
                      required = { codec = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            syslog =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { lossy = Bool, },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "syslog", },
                      required = { codec = true, },
                    }
                ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { codec = js2n.Const "native", },
                  required = { codec = true, },
                },
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            native_json =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { lossy = Bool, },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "native_json", },
                      required = { codec = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            gelf =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { lossy = Bool, },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "gelf", },
                      required = { codec = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            influxdb =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { lossy = Bool, },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "influxdb", },
                      required = { codec = true, },
                    }
                ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        avro =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      schema = String,
                                      strip_schema_id_prefix = Bool,
                                    },
                                required =
                                  {
                                      schema = true,
                                      strip_schema_id_prefix = true,
                                    },
                              },
                        codec = js2n.Const "avro",
                      },
                  required = { avro = true, codec = true, },
                },
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            vrl =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          source = String,
                                          timezone =
                                            refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E",
                                        },
                                    required = { source = true, },
                                  },
                          },
                      required = { vrl = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "vrl", },
                      required = { codec = true, },
                    }
                ]
            ],
      "definitions.codecs::decoding::FramingConfig" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { method = js2n.Const "bytes", },
                  required = { method = true, },
                },
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            character_delimited =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          delimiter =
                                            std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum 255,
                                                  js2n.number.Minimum 0
                                                ],
                                          max_length =
                                            js2n.Nullable
                                                (std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      9007199254740991,
                                                    js2n.number.Minimum 0
                                                  ]),
                                        },
                                    required = { delimiter = true, },
                                  },
                          },
                      required = { character_delimited = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { method = js2n.Const "character_delimited", },
                      required = { method = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            length_delimited =
                              std.contract.Sequence
                                  [
                                    refs."definitions.codecs::common::length_delimited::LengthDelimitedCoderOptions",
                                    { _ | Dyn }
                                  ],
                          },
                      required = { length_delimited = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { method = js2n.Const "length_delimited", },
                      required = { method = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            newline_delimited =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          max_length =
                                            js2n.Nullable
                                                (std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      9007199254740991,
                                                    js2n.number.Minimum 0
                                                  ]),
                                        },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { method = js2n.Const "newline_delimited", },
                      required = { method = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            octet_counting =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          max_length =
                                            js2n.Nullable
                                                (std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      9007199254740991,
                                                    js2n.number.Minimum 0
                                                  ]),
                                        },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { method = js2n.Const "octet_counting", },
                      required = { method = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            chunked_gelf =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          decompression =
                                            js2n.OneOf
                                                [
                                                  js2n.Const "Auto",
                                                  js2n.Const "Gzip",
                                                  js2n.Const "Zlib",
                                                  js2n.Const "None"
                                                ],
                                          max_length =
                                            js2n.Nullable
                                                (std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      9007199254740991,
                                                    js2n.number.Minimum 0
                                                  ]),
                                          pending_messages_limit =
                                            js2n.Nullable
                                                (std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      9007199254740991,
                                                    js2n.number.Minimum 0
                                                  ]),
                                          timeout_secs =
                                            std.contract.Sequence
                                                [
                                                  js2n.number.Maximum
                                                    9007199254740991,
                                                  js2n.number.Minimum
                                                    (-9007199254740991)
                                                ],
                                        },
                                    required = {},
                                  },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { method = js2n.Const "chunked_gelf", },
                      required = { method = true, },
                    }
                ]
            ],
      "definitions.codecs::encoding::format::csv::CsvSerializerConfig" =
        {
            csv
              | {
                capacity
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc m%"
                    Set the capacity (in bytes) of the internal buffer used in the CSV writer.
                    This defaults to a reasonable setting.
                  "%
                  | optional,
                delimiter
                  | std.number.Integer
                  | js2n.number.Maximum 255
                  | js2n.number.Minimum 0
                  | doc "The field delimiter to use when writing CSV."
                  | optional,
                double_quote
                  | Bool
                  | doc m%"
                    This is enabled by default, but it may be disabled. When disabled, quotes in
                    field data are escaped instead of doubled.
                  "%
                  | optional,
                escape
                  | std.number.Integer
                  | js2n.number.Maximum 255
                  | js2n.number.Minimum 0
                  | doc m%"
                    In some variants of CSV, quotes are escaped using a special escape character
                    like \ (instead of escaping quotes by doubling them).
                    
                    To use this, `double_quotes` needs to be disabled as well otherwise it is ignored.
                  "%
                  | optional,
                fields
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.vector_lookup::lookup_v2::ConfigTargetPath",
                        String
                      ]
                  )
                  | doc m%"
                    If a field is not present in the event, the output will be an empty string.
                    
                    Values of type `Array`, `Object`, and `Regex` are not supported and the
                    output will be an empty string.
                  "%,
                quote
                  | std.number.Integer
                  | js2n.number.Maximum 255
                  | js2n.number.Minimum 0
                  | doc "The quote character to use when writing CSV."
                  | optional,
                quote_style
                  | js2n.OneOf
                    [
                      js2n.Const "always",
                      js2n.Const "necessary",
                      js2n.Const "non_numeric",
                      js2n.Const "never"
                    ]
                  | doc "The quoting style to use when writing CSV data."
                  | optional,
                ..
              }
              | doc "The CSV Serializer Options.",
            ..
          },
      "definitions.codecs::encoding::format::json::JsonSerializerConfig" =
        {
            json
              | {
                pretty
                  | Bool
                  | doc "Whether to use pretty JSON formatting."
                  | optional,
                ..
              }
              | doc "Options for the JsonSerializer."
              | optional,
            metric_tag_values
              | refs."definitions.codecs::MetricTagValues"
              | doc m%"
                When set to `single`, only the last non-bare value of tags are displayed with the
                metric.  When set to `full`, all metric tags are exposed as separate assignments.
              "%
              | optional,
            ..
          },
      "definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E" =
        js2n.OneOf
            [
              js2n.Null,
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { method = js2n.Const "bytes", },
                      required = { method = true, },
                    },
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                character_delimited =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              delimiter =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum 255,
                                                      js2n.number.Minimum 0
                                                    ],
                                              max_length =
                                                js2n.Nullable
                                                    (std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          9007199254740991,
                                                        js2n.number.Minimum 0
                                                      ]),
                                            },
                                        required = { delimiter = true, },
                                      },
                              },
                          required = { character_delimited = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { method = js2n.Const "character_delimited", },
                          required = { method = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                length_delimited =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.codecs::common::length_delimited::LengthDelimitedCoderOptions",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { length_delimited = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { method = js2n.Const "length_delimited", },
                          required = { method = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                newline_delimited =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              max_length =
                                                js2n.Nullable
                                                    (std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          9007199254740991,
                                                        js2n.number.Minimum 0
                                                      ]),
                                            },
                                        required = {},
                                      },
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { method = js2n.Const "newline_delimited", },
                          required = { method = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                octet_counting =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              max_length =
                                                js2n.Nullable
                                                    (std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          9007199254740991,
                                                        js2n.number.Minimum 0
                                                      ]),
                                            },
                                        required = {},
                                      },
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { method = js2n.Const "octet_counting", },
                          required = { method = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                chunked_gelf =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              decompression =
                                                js2n.OneOf
                                                    [
                                                      js2n.Const "Auto",
                                                      js2n.Const "Gzip",
                                                      js2n.Const "Zlib",
                                                      js2n.Const "None"
                                                    ],
                                              max_length =
                                                js2n.Nullable
                                                    (std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          9007199254740991,
                                                        js2n.number.Minimum 0
                                                      ]),
                                              pending_messages_limit =
                                                js2n.Nullable
                                                    (std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          9007199254740991,
                                                        js2n.number.Minimum 0
                                                      ]),
                                              timeout_secs =
                                                std.contract.Sequence
                                                    [
                                                      js2n.number.Maximum
                                                        9007199254740991,
                                                      js2n.number.Minimum
                                                        (-9007199254740991)
                                                    ],
                                            },
                                        required = {},
                                      },
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { method = js2n.Const "chunked_gelf", },
                          required = { method = true, },
                        }
                    ]
                ]
            ],
      "definitions.core::option::Option%3Cstd::path::PathBuf%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [ refs."definitions.stdlib::PathBuf", String ]),
      "definitions.core::option::Option%3Cvector::aws::region::RegionOrEndpoint%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector::aws::region::RegionOrEndpoint",
                { _ | Dyn }
              ]),
      "definitions.core::option::Option%3Cvector::conditions::AnyCondition%3E" =
        js2n.OneOf
            [
              js2n.Null,
              js2n.OneOf
                [
                  String,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "is_log", },
                          required = { type = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "is_metric", },
                          required = { type = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "is_trace", },
                          required = { type = true, },
                        },
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                { runtime = String, source = String, },
                              required = { source = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { type = js2n.Const "vrl", },
                              required = { type = true, },
                            }
                        ],
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { source = String, },
                              required = { source = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                { type = js2n.Const "datadog_search", },
                              required = { type = true, },
                            }
                        ]
                    ]
                ]
            ],
      "definitions.core::option::Option%3Cvector::http::Auth%3E" =
        js2n.OneOf
            [
              js2n.Null,
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            password =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector_common::sensitive_string::SensitiveString",
                                    String
                                  ],
                            strategy = js2n.Const "basic",
                            user = String,
                          },
                      required =
                        { password = true, strategy = true, user = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            strategy = js2n.Const "bearer",
                            token =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector_common::sensitive_string::SensitiveString",
                                    String
                                  ],
                          },
                      required = { strategy = true, token = true, },
                    }
                ]
            ],
      "definitions.core::option::Option%3Cvector::nats::NatsAuthConfig%3E" =
        js2n.OneOf
            [
              js2n.Null,
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            strategy = js2n.Const "user_password",
                            user_password =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          password =
                                            std.contract.Sequence
                                                [
                                                  refs."definitions.vector_common::sensitive_string::SensitiveString",
                                                  String
                                                ],
                                          user = String,
                                        },
                                    required =
                                      { password = true, user = true, },
                                  },
                          },
                      required = { strategy = true, user_password = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            strategy = js2n.Const "token",
                            token =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          value =
                                            std.contract.Sequence
                                                [
                                                  refs."definitions.vector_common::sensitive_string::SensitiveString",
                                                  String
                                                ],
                                        },
                                    required = { value = true, },
                                  },
                          },
                      required = { strategy = true, token = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            credentials_file =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { path = String, },
                                    required = { path = true, },
                                  },
                            strategy = js2n.Const "credentials_file",
                          },
                      required = { credentials_file = true, strategy = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            nkey =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      { nkey = String, seed = String, },
                                    required = { nkey = true, seed = true, },
                                  },
                            strategy = js2n.Const "nkey",
                          },
                      required = { nkey = true, strategy = true, },
                    }
                ]
            ],
      "definitions.core::option::Option%3Cvector::sinks::influxdb::InfluxDb1Settings%3E" =
        js2n.Nullable
            {
              consistency
                | js2n.Nullable String
                | doc "Only relevant when using InfluxDB v0.x/v1.x."
                | optional,
              database
                | String
                | doc "Only relevant when using InfluxDB v0.x/v1.x.",
              password
                | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
                | doc "Only relevant when using InfluxDB v0.x/v1.x."
                | optional,
              retention_policy_name
                | js2n.Nullable String
                | doc "Only relevant when using InfluxDB v0.x/v1.x."
                | optional,
              username
                | js2n.Nullable String
                | doc "Only relevant when using InfluxDB v0.x/v1.x."
                | optional,
              ..
            },
      "definitions.core::option::Option%3Cvector::sinks::influxdb::InfluxDb2Settings%3E" =
        js2n.Nullable
            {
              bucket
                | String
                | doc "Only relevant when using InfluxDB v2.x and above.",
              org
                | String
                | doc "Only relevant when using InfluxDB v2.x and above.",
              token
                | refs."definitions.vector_common::sensitive_string::SensitiveString"
                | String
                | doc m%"
                  Only relevant when using InfluxDB v2.x and above.
                  
                  [token_docs]: https://v2.docs.influxdata.com/v2.0/security/tokens/
                "%,
              ..
            },
      "definitions.core::option::Option%3Cvector::sinks::util::buffer::compression::Compression%3E" =
        js2n.OneOf
            [
              js2n.Null,
              js2n.OneOf
                [
                  js2n.OneOf
                    [
                      js2n.Const "none",
                      js2n.Const "gzip",
                      js2n.Const "zlib",
                      js2n.Const "zstd",
                      js2n.Const "snappy"
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            algorithm =
                              js2n.OneOf
                                  [
                                    js2n.Const "none",
                                    js2n.Const "gzip",
                                    js2n.Const "zlib",
                                    js2n.Const "zstd",
                                    js2n.Const "snappy"
                                  ],
                            level =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sinks::util::buffer::compression::CompressionLevel",
                                    std.contract.any_of [ Number, String ]
                                  ],
                          },
                      required = { algorithm = true, },
                    }
                ]
            ],
      "definitions.core::option::Option%3Cvector::sinks::util::uri::UriSerde%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector::sinks::util::uri::UriSerde",
                String
              ]),
      "definitions.core::option::Option%3Cvector::sources::util::http::auth::HttpSourceAuthConfig%3E" =
        js2n.Nullable
            {
              password
                | refs."definitions.vector_common::sensitive_string::SensitiveString"
                | String
                | doc "The password for basic authentication.",
              username | String | doc "The username for basic authentication.",
              ..
            },
      "definitions.core::option::Option%3Cvector::sources::util::multiline_config::MultilineConfig%3E" =
        js2n.Nullable
            {
              condition_pattern
                | String
                | doc "This setting must be configured in conjunction with `mode`.",
              mode
                | js2n.OneOf
                  [
                    js2n.Const "continue_through",
                    js2n.Const "continue_past",
                    js2n.Const "halt_before",
                    js2n.Const "halt_with"
                  ]
                | doc "This setting must be configured in conjunction with `condition_pattern`.",
              start_pattern
                | String
                | doc "Regular expression pattern that is used to match the start of a new message.",
              timeout_ms
                | refs."definitions.serde_with::DurationMilliSeconds"
                | Number
                | doc "Once this timeout is reached, the buffered message is guaranteed to be flushed, even if incomplete.",
              ..
            },
      "definitions.core::option::Option%3Cvector::template::Template%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [ refs."definitions.vector::template::Template", String ]),
      "definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_common::sensitive_string::SensitiveString",
                String
              ]),
      "definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E" =
        js2n.Nullable (Array String),
      "definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E" =
        js2n.Nullable
            {
              time_secs
                | js2n.Nullable
                  (std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 9007199254740991,
                      js2n.number.Minimum 0
                    ])
                | doc "The time to wait before starting to send TCP keepalive probes on an idle connection."
                | optional,
              ..
            },
      "definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_core::tls::settings::TlsConfig",
                { _ | Dyn }
              ]),
      "definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_core::tls::settings::TlsEnableableConfig",
                { _ | Dyn }
              ]),
      "definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_core::tls::settings::TlsEnableableConfig",
                {
                  client_metadata_key
                    | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                    | doc "Event field for client certificate metadata."
                    | optional,
                  ..
                }
              ]),
      "definitions.core::option::Option%3Cvector_lookup::lookup_v2::ConfigValuePath%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                String
              ]),
      "definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath",
                String
              ]),
      "definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E" =
        js2n.Nullable
            (std.contract.Sequence
              [
                refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath",
                String
              ]),
      "definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E" =
        js2n.OneOf [ js2n.Null, js2n.OneOf [ js2n.Const "local", String ] ],
      "definitions.file_source::ReadFromConfig" =
        js2n.OneOf [ js2n.Const "beginning", js2n.Const "end" ],
      "definitions.serde_with::DurationFractionalSeconds" =
        std.contract.Sequence
            [
              js2n.number.Maximum 9007199254740991,
              js2n.number.Minimum (-9007199254740991)
            ],
      "definitions.serde_with::DurationMilliSeconds" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 9007199254740991,
              js2n.number.Minimum 0
            ],
      "definitions.serde_with::DurationSeconds" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 9007199254740991,
              js2n.number.Minimum 0
            ],
      "definitions.stdlib::PathBuf" =
        js2n.string.Matches
            "(\\/.*|[a-zA-Z]:\\\\(?:([^<>:\"\\/\\\\|?*]*[^<>:\"\\/\\\\|?*.]\\\\|..\\\\)*([^<>:\"\\/\\\\|?*]*[^<>:\"\\/\\\\|?*.]\\\\?|..\\\\))?)",
      "definitions.stdlib::SocketAddr" = String,
      "definitions.vector::amqp::AmqpConfig" =
        {
            connection_string
              | String
              | doc m%"
                The URI has the format of
                `amqp://<user>:<password>@<host>:<port>/<vhost>?timeout=<seconds>`.
                
                The default vhost can be specified by using a value of `%2f`.
                
                To connect over TLS, a scheme of `amqps` can be specified instead. For example,
                `amqps://...`. Additional TLS settings, such as client certificate verification, can be
                configured under the `tls` section.
              "%,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::aws::auth::AwsAuthentication" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        access_key_id =
                          std.contract.Sequence
                              [
                                refs."definitions.vector_common::sensitive_string::SensitiveString",
                                String
                              ],
                        assume_role = js2n.Nullable String,
                        external_id = js2n.Nullable String,
                        region = js2n.Nullable String,
                        secret_access_key =
                          std.contract.Sequence
                              [
                                refs."definitions.vector_common::sensitive_string::SensitiveString",
                                String
                              ],
                      },
                  required =
                    { access_key_id = true, secret_access_key = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { credentials_file = String, profile = String, },
                  required = { credentials_file = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        assume_role = String,
                        external_id = js2n.Nullable String,
                        imds =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      connect_timeout_seconds =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.serde_with::DurationSeconds",
                                              Number
                                            ],
                                      max_attempts =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 4294967295,
                                              js2n.number.Minimum 0
                                            ],
                                      read_timeout_seconds =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.serde_with::DurationSeconds",
                                              Number
                                            ],
                                    },
                                required = {},
                              },
                        load_timeout_secs =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 9007199254740991,
                                  js2n.number.Minimum 0
                                ]),
                        region = js2n.Nullable String,
                      },
                  required = { assume_role = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        imds =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      connect_timeout_seconds =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.serde_with::DurationSeconds",
                                              Number
                                            ],
                                      max_attempts =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 4294967295,
                                              js2n.number.Minimum 0
                                            ],
                                      read_timeout_seconds =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.serde_with::DurationSeconds",
                                              Number
                                            ],
                                    },
                                required = {},
                              },
                        load_timeout_secs =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 9007199254740991,
                                  js2n.number.Minimum 0
                                ]),
                        region = js2n.Nullable String,
                      },
                  required = {},
                }
            ],
      "definitions.vector::aws::region::RegionOrEndpoint" =
        {
            endpoint
              | js2n.Nullable String
              | doc "Custom endpoint for use with AWS-compatible services."
              | optional,
            region
              | js2n.Nullable String
              | doc "[aws_region]: https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints"
              | optional,
            ..
          },
      "definitions.vector::codecs::encoding::config::EncodingConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            avro =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties = { schema = String, },
                                    required = { schema = true, },
                                  },
                            codec = js2n.Const "avro",
                          },
                      required = { avro = true, codec = true, },
                    },
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                cef =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              device_event_class_id = String,
                                              device_product = String,
                                              device_vendor = String,
                                              device_version = String,
                                              extensions =
                                                js2n.record.Record
                                                    {
                                                      additional =
                                                        'Some
                                                            (std.contract.Sequence
                                                              [
                                                                refs."definitions.vector_lookup::lookup_v2::ConfigTargetPath",
                                                                String
                                                              ]),
                                                      patterns = {},
                                                      properties = {},
                                                      required = {},
                                                    },
                                              name =
                                                std.contract.Sequence
                                                    [
                                                      refs."definitions.vector_lookup::lookup_v2::ConfigTargetPath",
                                                      String
                                                    ],
                                              severity =
                                                std.contract.Sequence
                                                    [
                                                      refs."definitions.vector_lookup::lookup_v2::ConfigTargetPath",
                                                      String
                                                    ],
                                              version =
                                                js2n.OneOf
                                                    [
                                                      js2n.Const "V0",
                                                      js2n.Const "V1"
                                                    ],
                                            },
                                        required =
                                          {
                                              device_event_class_id = true,
                                              device_product = true,
                                              device_vendor = true,
                                              device_version = true,
                                              name = true,
                                              severity = true,
                                              version = true,
                                            },
                                      },
                              },
                          required = { cef = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "cef", },
                          required = { codec = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.codecs::encoding::format::csv::CsvSerializerConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "csv", },
                          required = { codec = true, },
                        }
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "gelf", },
                      required = { codec = true, },
                    },
                  std.contract.Sequence
                    [
                      refs."definitions.codecs::encoding::format::json::JsonSerializerConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "json", },
                          required = { codec = true, },
                        }
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "logfmt", },
                      required = { codec = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "native", },
                      required = { codec = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "native_json", },
                      required = { codec = true, },
                    },
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                protobuf =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              desc_file =
                                                std.contract.Sequence
                                                    [
                                                      refs."definitions.stdlib::PathBuf",
                                                      String
                                                    ],
                                              message_type = String,
                                            },
                                        required =
                                          {
                                              desc_file = true,
                                              message_type = true,
                                            },
                                      },
                              },
                          required = { protobuf = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "protobuf", },
                          required = { codec = true, },
                        }
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { codec = js2n.Const "raw_message", },
                      required = { codec = true, },
                    },
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                metric_tag_values =
                                  refs."definitions.codecs::MetricTagValues",
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "text", },
                          required = { codec = true, },
                        }
                    ]
                ],
              {
                except_fields
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [
                          refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                          String
                        ]
                    ))
                  | doc "List of fields that are excluded from the encoded event."
                  | optional,
                only_fields
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [
                          refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                          String
                        ]
                    ))
                  | doc "List of fields that are included in the encoded event."
                  | optional,
                timestamp_format
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf
                        [
                          js2n.Const "unix",
                          js2n.Const "rfc3339",
                          js2n.Const "unix_ms",
                          js2n.Const "unix_us",
                          js2n.Const "unix_ns",
                          js2n.Const "unix_float"
                        ]
                    ]
                  | doc "Format used for timestamp fields."
                  | optional,
                ..
              }
            ],
      "definitions.vector::codecs::encoding::config::EncodingConfigWithFraming" =
        {
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            framing
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { method = js2n.Const "bytes", },
                          required = { method = true, },
                        },
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    character_delimited =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  delimiter =
                                                    std.contract.Sequence
                                                        [
                                                          std.number.Integer,
                                                          js2n.number.Maximum
                                                            255,
                                                          js2n.number.Minimum 0
                                                        ],
                                                },
                                            required = { delimiter = true, },
                                          },
                                  },
                              required = { character_delimited = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                { method = js2n.Const "character_delimited", },
                              required = { method = true, },
                            }
                        ],
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    length_delimited =
                                      std.contract.Sequence
                                          [
                                            refs."definitions.codecs::common::length_delimited::LengthDelimitedCoderOptions",
                                            { _ | Dyn }
                                          ],
                                  },
                              required = { length_delimited = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                { method = js2n.Const "length_delimited", },
                              required = { method = true, },
                            }
                        ],
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { method = js2n.Const "newline_delimited", },
                          required = { method = true, },
                        }
                    ]
                ]
              | doc "Framing configuration."
              | optional,
            ..
          },
      "definitions.vector::codecs::encoding::transformer::Transformer" =
        {
            except_fields
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                      String
                    ]
                ))
              | doc "List of fields that are excluded from the encoded event."
              | optional,
            only_fields
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                      String
                    ]
                ))
              | doc "List of fields that are included in the encoded event."
              | optional,
            timestamp_format
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.Const "unix",
                      js2n.Const "rfc3339",
                      js2n.Const "unix_ms",
                      js2n.Const "unix_us",
                      js2n.Const "unix_ns",
                      js2n.Const "unix_float"
                    ]
                ]
              | doc "Format used for timestamp fields."
              | optional,
            ..
          },
      "definitions.vector::conditions::AnyCondition" =
        js2n.OneOf
            [
              String,
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "is_log", },
                      required = { type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "is_metric", },
                      required = { type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "is_trace", },
                      required = { type = true, },
                    },
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { runtime = String, source = String, },
                          required = { source = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "vrl", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { source = String, },
                          required = { source = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "datadog_search", },
                          required = { type = true, },
                        }
                    ]
                ]
            ],
      "definitions.vector::config::TestInput" =
        {
            insert_at
              | String
              | doc "The name of the transform to insert the input event to.",
            log_fields
              | js2n.Nullable
                ({
                  _ | js2n.OneOf
                    [
                      String,
                      std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 9007199254740991,
                          js2n.number.Minimum (-9007199254740991)
                        ],
                      std.contract.Sequence
                        [
                          js2n.number.Maximum 9007199254740991,
                          js2n.number.Minimum (-9007199254740991)
                        ],
                      Bool
                    ]
                })
              | doc "Only relevant when `type` is `log`."
              | optional,
            metric
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.vector_core::event::metric::value::MetricValue",
                    {
                      tags
                        | js2n.Nullable
                          ({
                            _ | js2n.OneOf
                              [
                                js2n.Const "Empty",
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      { Single = js2n.Nullable String, },
                                    required = { Single = true, },
                                  },
                                js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          Set =
                                            std.contract.Sequence
                                                [
                                                  js2n.array.UniqueItems,
                                                  js2n.array.ArrayOf
                                                    (js2n.Nullable String)
                                                ],
                                        },
                                    required = { Set = true, },
                                  }
                              ]
                          })
                        | doc "Tags for a metric series."
                        | optional,
                      ..
                    },
                    {
                      name
                        | String
                        | doc m%"
                          This would typically be a name for the metric itself, unrelated to where the metric
                          originates from. For example, if the metric represented the amount of used system memory, it
                          may be called `memory.used`.
                        "%,
                      namespace
                        | js2n.Nullable String
                        | doc m%"
                          Namespace represents a grouping for a metric where the name itself may otherwise be too
                          generic. For example, while the name of a metric may be `memory.used` for the amount of used
                          system memory, the namespace could differentiate that by being `system` for the total amount
                          of used memory across the system, or `vector` for the amount of used system memory specific
                          to Vector, and so on.
                        "%
                        | optional,
                      ..
                    },
                    {
                      kind
                        | refs."definitions.vector_core::event::metric::MetricKind"
                        | doc m%"
                          Metrics can be either absolute or incremental. Absolute metrics represent a sort of "last write wins" scenario,
                          where the latest absolute value seen is meant to be the actual metric value.  In contrast, and perhaps intuitively,
                          incremental metrics are meant to be additive, such that we don't know what total value of the metric is, but we know
                          that we'll be adding or subtracting the given value from it.
                          
                          Generally speaking, most metrics storage systems deal with incremental updates. A notable exception is Prometheus,
                          which deals with, and expects, absolute values from clients.
                        "%,
                      ..
                    },
                    {
                      interval_ms
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.number.Maximum 4294967295,
                              js2n.number.Minimum 1
                            ])
                        | doc m%"
                          Intervals represent the time window over which this metric applies, and is generally only
                          used for tracking rates (change over time) on counters.
                        "%
                        | optional,
                      timestamp
                        | js2n.Nullable String
                        | doc m%"
                          Metrics may sometimes have no timestamp, or have no meaningful value if the metric is an
                          aggregation or transformed heavily enough from its original form such that the original
                          timestamp would not represent a meaningful value.
                        "%
                        | optional,
                      ..
                    }
                  ])
              | doc "Only relevant when `type` is `metric`."
              | optional,
            source
              | js2n.Nullable String
              | doc "Only relevant when `type` is `vrl`."
              | optional,
            type
              | String
              | doc "Can be either `raw`, `vrl`, `log`, or `metric."
              | optional,
            value
              | js2n.Nullable String
              | doc m%"
                Use this only when the input event should be a raw event (i.e. unprocessed/undecoded log
                event) and when the input type is set to `raw`.
              "%
              | optional,
            ..
          },
      "definitions.vector::config::dot_graph::GraphConfig" =
        {
            node_attributes
              | { _ | String }
              | doc "They are added to the node as provided"
              | optional,
            ..
          },
      "definitions.vector::config::sink::SinkOuter%3Calloc::string::String%3E" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::Sinks",
              {
                buffer
                  | js2n.OneOf
                    [
                      js2n.OneOf
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    max_events =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum
                                              9007199254740991,
                                            js2n.number.Minimum 1
                                          ],
                                    type = js2n.Const "memory",
                                    when_full =
                                      js2n.OneOf
                                          [
                                            js2n.Const "block",
                                            js2n.Const "drop_newest",
                                            js2n.Const "overflow"
                                          ],
                                  },
                              required = { type = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    max_size =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum
                                              9007199254740991,
                                            js2n.number.Minimum 268435488
                                          ],
                                    type = js2n.Const "disk",
                                    when_full =
                                      js2n.OneOf
                                          [
                                            js2n.Const "block",
                                            js2n.Const "drop_newest",
                                            js2n.Const "overflow"
                                          ],
                                  },
                              required = { max_size = true, type = true, },
                            }
                        ],
                      js2n.array.ArrayOf
                        (js2n.OneOf
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      max_events =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum 1
                                            ],
                                      type = js2n.Const "memory",
                                      when_full =
                                        js2n.OneOf
                                            [
                                              js2n.Const "block",
                                              js2n.Const "drop_newest",
                                              js2n.Const "overflow"
                                            ],
                                    },
                                required = { type = true, },
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      max_size =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum 268435488
                                            ],
                                      type = js2n.Const "disk",
                                      when_full =
                                        js2n.OneOf
                                            [
                                              js2n.Const "block",
                                              js2n.Const "drop_newest",
                                              js2n.Const "overflow"
                                            ],
                                    },
                                required = { max_size = true, type = true, },
                              }
                          ])
                    ]
                  | doc m%"
                    More information about the individual buffer types, and buffer behavior, can be found in the
                    [Buffering Model][buffering_model] section.
                    
                    [buffering_model]: /docs/about/under-the-hood/architecture/buffering-model/
                  "%
                  | optional,
                graph
                  | refs."definitions.vector::config::dot_graph::GraphConfig"
                  | { _ | Dyn }
                  | doc "Configure output for component when generated with graph command"
                  | optional,
                healthcheck
                  | {
                    enabled
                      | Bool
                      | doc "Whether or not to check the health of the sink when Vector starts up."
                      | optional,
                    uri
                      | refs."definitions.core::option::Option%3Cvector::sinks::util::uri::UriSerde%3E"
                      | js2n.Nullable String
                      | doc m%"
                        This must be a valid URI, which requires at least the scheme and host. All other
                        components -- port, path, etc -- are allowed as well.
                      "%
                      | optional,
                    ..
                  }
                  | doc "Healthcheck configuration."
                  | optional,
                healthcheck_uri
                  | refs."definitions.core::option::Option%3Cvector::sinks::util::uri::UriSerde%3E"
                  | js2n.Nullable String
                  | doc m%"
                    This must be a valid URI, which requires at least the scheme and host. All other
                    components -- port, path, etc -- are allowed as well.
                  "%
                  | optional,
                inputs
                  | refs."definitions.vector_common::id::Inputs%3Calloc::string::String%3E"
                  | Array Dyn
                  | doc m%"
                    Wildcards (`*`) are supported.
                    
                    See [configuration][configuration] for more info.
                    
                    [sources]: https://vector.dev/docs/reference/configuration/sources/
                    [transforms]: https://vector.dev/docs/reference/configuration/transforms/
                    [configuration]: https://vector.dev/docs/reference/configuration/
                  "%,
                proxy
                  | refs."definitions.vector_core::config::proxy::ProxyConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Configure to proxy traffic through an HTTP(S) proxy when making external requests.
                    
                    Similar to common proxy configuration convention, you can set different proxies
                    to use based on the type of traffic being proxied. You can also set specific hosts that
                    should not be proxied.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::config::source::SourceOuter" =
        std.contract.Sequence
            [
              refs."definitions.vector::sources::Sources",
              {
                graph
                  | refs."definitions.vector::config::dot_graph::GraphConfig"
                  | { _ | Dyn }
                  | doc "Configure output for component when generated with graph command"
                  | optional,
                proxy
                  | refs."definitions.vector_core::config::proxy::ProxyConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Configure to proxy traffic through an HTTP(S) proxy when making external requests.
                    
                    Similar to common proxy configuration convention, you can set different proxies
                    to use based on the type of traffic being proxied. You can also set specific hosts that
                    should not be proxied.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::config::transform::TransformOuter%3Calloc::string::String%3E" =
        std.contract.Sequence
            [
              refs."definitions.vector::transforms::Transforms",
              {
                graph
                  | refs."definitions.vector::config::dot_graph::GraphConfig"
                  | { _ | Dyn }
                  | doc "Configure output for component when generated with graph command"
                  | optional,
                inputs
                  | refs."definitions.vector_common::id::Inputs%3Calloc::string::String%3E"
                  | Array Dyn
                  | doc m%"
                    Wildcards (`*`) are supported.
                    
                    See [configuration][configuration] for more info.
                    
                    [sources]: https://vector.dev/docs/reference/configuration/sources/
                    [transforms]: https://vector.dev/docs/reference/configuration/transforms/
                    [configuration]: https://vector.dev/docs/reference/configuration/
                  "%,
                ..
              }
            ],
      "definitions.vector::config::unit_test::unit_test_components::UnitTestSinkConfig" =
        {
            test_name
              | String
              | doc "Name of the test that this sink is being used for.",
            transform_ids
              | Array String
              | doc "List of names of the transform/branch associated with this sink.",
            ..
          },
      "definitions.vector::config::unit_test::unit_test_components::UnitTestSourceConfig" =
        { _ | Dyn },
      "definitions.vector::config::unit_test::unit_test_components::UnitTestStreamSinkConfig" =
        { _ | Dyn },
      "definitions.vector::config::unit_test::unit_test_components::UnitTestStreamSourceConfig" =
        { _ | Dyn },
      "definitions.vector::enrichment_tables::file::FileConfig" =
        {
            file
              | {
                encoding
                  | {
                    delimiter
                      | js2n.string.MaxLength 1
                      | js2n.string.MinLength 1
                      | doc "The delimiter used to separate fields in each row of the CSV file."
                      | optional,
                    include_headers
                      | Bool
                      | doc m%"
                        When set to `true`, the first row of the CSV file will be read as the header row, and
                        the values will be used for the names of each column. This is the default behavior.
                        
                        When set to `false`, columns are referred to by their numerical index.
                      "%
                      | optional,
                    type
                      | std.contract.Equal "csv"
                      | doc "[csv]: https://wikipedia.org/wiki/Comma-separated_values",
                    ..
                  }
                  | doc "File encoding configuration.",
                path
                  | refs."definitions.stdlib::PathBuf"
                  | String
                  | doc m%"
                    Currently, only [CSV][csv] files are supported.
                    
                    [csv]: https://en.wikipedia.org/wiki/Comma-separated_values
                  "%,
                ..
              }
              | doc "File-specific settings.",
            schema
              | { _ | String }
              | doc m%"
                This is used to coerce log fields from strings into their proper types. The available types are listed in the `Types` list below.
                
                Timestamp coercions need to be prefaced with `timestamp|`, for example `"timestamp|%F"`. Timestamp specifiers can use either of the following:
                
                1. One of the built-in-formats listed in the `Timestamp Formats` table below.
                2. The [time format specifiers][chrono_fmt] from Rust’s `chrono` library.
                
                ### Types
                
                - **`bool`**
                - **`string`**
                - **`float`**
                - **`integer`**
                - **`date`**
                - **`timestamp`** (see the table below for formats)
                
                ### Timestamp Formats
                
                | Format               | Description                                                                      | Example                          |
                |----------------------|----------------------------------------------------------------------------------|----------------------------------|
                | `%F %T`              | `YYYY-MM-DD HH:MM:SS`                                                            | `2020-12-01 02:37:54`            |
                | `%v %T`              | `DD-Mmm-YYYY HH:MM:SS`                                                           | `01-Dec-2020 02:37:54`           |
                | `%FT%T`              | [ISO 8601][iso8601]/[RFC 3339][rfc3339], without time zone                       | `2020-12-01T02:37:54`            |
                | `%FT%TZ`             | [ISO 8601][iso8601]/[RFC 3339][rfc3339], UTC                                     | `2020-12-01T09:37:54Z`           |
                | `%+`                 | [ISO 8601][iso8601]/[RFC 3339][rfc3339], UTC, with time zone                     | `2020-12-01T02:37:54-07:00`      |
                | `%a, %d %b %Y %T`    | [RFC 822][rfc822]/[RFC 2822][rfc2822], without time zone                         | `Tue, 01 Dec 2020 02:37:54`      |
                | `%a %b %e %T %Y`     | [ctime][ctime] format                                                            | `Tue Dec 1 02:37:54 2020`        |
                | `%s`                 | [UNIX timestamp][unix_ts]                                                        | `1606790274`                     |
                | `%a %d %b %T %Y`     | [date][date] command, without time zone                                          | `Tue 01 Dec 02:37:54 2020`       |
                | `%a %d %b %T %Z %Y`  | [date][date] command, with time zone                                             | `Tue 01 Dec 02:37:54 PST 2020`   |
                | `%a %d %b %T %z %Y`  | [date][date] command, with numeric time zone                                     | `Tue 01 Dec 02:37:54 -0700 2020` |
                | `%a %d %b %T %#z %Y` | [date][date] command, with numeric time zone (minutes can be missing or present) | `Tue 01 Dec 02:37:54 -07 2020`   |
                
                [date]: https://man7.org/linux/man-pages/man1/date.1.html
                [ctime]: https://www.cplusplus.com/reference/ctime
                [unix_ts]: https://en.wikipedia.org/wiki/Unix_time
                [rfc822]: https://tools.ietf.org/html/rfc822#section-5
                [rfc2822]: https://tools.ietf.org/html/rfc2822#section-3.3
                [iso8601]: https://en.wikipedia.org/wiki/ISO_8601
                [rfc3339]: https://tools.ietf.org/html/rfc3339
                [chrono_fmt]: https://docs.rs/chrono/latest/chrono/format/strftime/index.html#specifiers
              "%
              | optional,
            ..
          },
      "definitions.vector::enrichment_tables::geoip::GeoipConfig" =
        {
            locale
              | String
              | doc m%"
                MaxMind includes localized versions of some of the fields within their database, such as
                country name. This setting can control which of those localized versions are returned by the
                transform.
                
                More information on which portions of the geolocation data are localized, and what languages
                are available, can be found [here][locale_docs].
                
                [locale_docs]: https://support.maxmind.com/hc/en-us/articles/4414877149467-IP-Geolocation-Data#h_01FRRGRYTGZB29ERDBZCX3MR8Q
              "%
              | optional,
            path
              | String
              | doc m%"
                Other databases, such as the country database, are not supported.
                `mmdb` enrichment table can be used for other databases.
                
                [geoip2]: https://dev.maxmind.com/geoip/geoip2/downloadable
                [geolite2]: https://dev.maxmind.com/geoip/geoip2/geolite2/#Download_Access
              "%,
            ..
          },
      "definitions.vector::enrichment_tables::mmdb::MmdbConfig" =
        { path | String | doc "[maxmind]: https://maxmind.com", .. },
      "definitions.vector::gcp::GcpAuthConfig" =
        {
            api_key
              | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
              | doc m%"
                Either an API key or a path to a service account credentials JSON file can be specified.
                
                If both are unset, the `GOOGLE_APPLICATION_CREDENTIALS` environment variable is checked for a filename. If no
                filename is named, an attempt is made to fetch an instance service account for the compute instance the program is
                running on. If this is not on a GCE instance, then you must define it with an API key or service account
                credentials JSON file.
                
                [gcp_api_key]: https://cloud.google.com/docs/authentication/api-keys
              "%
              | optional,
            credentials_path
              | js2n.Nullable String
              | doc m%"
                Either an API key or a path to a service account credentials JSON file can be specified.
                
                If both are unset, the `GOOGLE_APPLICATION_CREDENTIALS` environment variable is checked for a filename. If no
                filename is named, an attempt is made to fetch an instance service account for the compute instance the program is
                running on. If this is not on a GCE instance, then you must define it with an API key or service account
                credentials JSON file.
                
                [gcp_service_account_credentials]: https://cloud.google.com/docs/authentication/production#manually
              "%
              | optional,
            skip_authentication
              | Bool
              | doc "Skip all authentication handling. For use with integration tests only."
              | optional,
            ..
          },
      "definitions.vector::http::KeepaliveConfig" =
        {
            max_connection_age_jitter_factor
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                A value of 0.1 means that the actual duration will be between 90% and 110% of the
                specified maximum duration.
              "%
              | optional,
            max_connection_age_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc m%"
                Only applies to HTTP/0.9, HTTP/1.0, and HTTP/1.1 requests.
                
                A random jitter configured by `max_connection_age_jitter_factor` is added
                to the specified duration to spread out connection storms.
              "%
              | optional,
            ..
          },
      "definitions.vector::internal_events::file::FileInternalMetricsConfig" =
        {
            include_file_tag
              | Bool
              | doc m%"
                This is useful for distinguishing between different files while monitoring. However, the tag's
                cardinality is unbounded.
              "%
              | optional,
            ..
          },
      "definitions.vector::kafka::KafkaAuthConfig" =
        {
            sasl
              | js2n.Nullable
                {
                  enabled
                    | js2n.Nullable Bool
                    | doc m%"
                      Only `PLAIN`- and `SCRAM`-based mechanisms are supported when configuring SASL authentication using `sasl.*`. For
                      other mechanisms, `librdkafka_options.*` must be used directly to configure other `librdkafka`-specific values.
                      If using `sasl.kerberos.*` as an example, where `*` is `service.name`, `principal`, `kinit.md`, etc., then
                      `librdkafka_options.*` as a result becomes `librdkafka_options.sasl.kerberos.service.name`,
                      `librdkafka_options.sasl.kerberos.principal`, etc.
                      
                      See the [librdkafka documentation](https://github.com/edenhill/librdkafka/blob/master/CONFIGURATION.md) for details.
                      
                      SASL authentication is not supported on Windows.
                    "%
                    | optional,
                  mechanism
                    | js2n.Nullable String
                    | doc "The SASL mechanism to use."
                    | optional,
                  password
                    | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
                    | doc "The SASL password."
                    | optional,
                  username
                    | js2n.Nullable String
                    | doc "The SASL username."
                    | optional,
                  ..
                }
              | doc "Configuration for SASL authentication when interacting with Kafka."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::providers::http::HttpConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector_core::tls::settings::TlsConfig",
              {
                poll_interval_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "How often to poll the provider, in seconds."
                  | optional,
                proxy
                  | refs."definitions.vector_core::config::proxy::ProxyConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Configure to proxy traffic through an HTTP(S) proxy when making external requests.
                    
                    Similar to common proxy configuration convention, you can set different proxies
                    to use based on the type of traffic being proxied. You can also set specific hosts that
                    should not be proxied.
                  "%
                  | optional,
                request
                  | {
                    headers
                      | { _ | String }
                      | doc "HTTP headers to add to the request."
                      | optional,
                    ..
                  }
                  | doc "Request settings."
                  | optional,
                url
                  | js2n.Nullable String
                  | doc "URL for the HTTP provider."
                  | optional,
                ..
              }
            ],
      "definitions.vector::secrets::aws_secrets_manager::AwsSecretsManagerBackend" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              {
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                secret_id | String | doc "ID of the secret to resolve.",
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::secrets::directory::DirectoryBackend" =
        {
            path
              | refs."definitions.stdlib::PathBuf"
              | String
              | doc "Directory path to read secrets from.",
            remove_trailing_whitespace
              | Bool
              | doc "Remove trailing whitespace from file contents."
              | optional,
            ..
          },
      "definitions.vector::secrets::exec::ExecBackend" =
        {
            command
              | Array String
              | doc "The path to the script or binary must be the first argument.",
            timeout
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "The timeout, in seconds, to wait for the command to complete."
              | optional,
            ..
          },
      "definitions.vector::secrets::file::FileBackend" =
        {
            path
              | refs."definitions.stdlib::PathBuf"
              | String
              | doc "File path to read secrets from.",
            ..
          },
      "definitions.vector::secrets::test::TestBackend" =
        {
            replacement
              | String
              | doc "Fixed value to replace all secrets with.",
            ..
          },
      "definitions.vector::sinks::Sinks" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::amqp::config::AmqpSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "amqp", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::appsignal::config::AppsignalConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "appsignal", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_cloudwatch_logs::config::CloudwatchLogsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_cloudwatch_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_cloudwatch_metrics::CloudWatchMetricsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "aws_cloudwatch_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_kinesis::firehose::config::KinesisFirehoseSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "aws_kinesis_firehose", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_kinesis::streams::config::KinesisStreamsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_kinesis_streams", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_s3::config::S3SinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_s3", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_s_s::sns::config::SnsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_sns", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::aws_s_s::sqs::config::SqsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_sqs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::axiom::AxiomConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "axiom", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::azure_blob::config::AzureBlobSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "azure_blob", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::azure_monitor_logs::config::AzureMonitorLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "azure_monitor_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::blackhole::config::BlackholeConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "blackhole", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::clickhouse::config::ClickhouseConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "clickhouse", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::console::config::ConsoleSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "console", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::databend::config::DatabendConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "databend", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::datadog::events::config::DatadogEventsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "datadog_events", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::datadog::logs::config::DatadogLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "datadog_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::datadog::metrics::config::DatadogMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "datadog_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::datadog::traces::config::DatadogTracesConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "datadog_traces", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::elasticsearch::config::ElasticsearchConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "elasticsearch", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::file::FileSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "file", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::gcp_chronicle::chronicle_unstructured::ChronicleUnstructuredConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "gcp_chronicle_unstructured", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::gcp::cloud_storage::GcsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "gcp_cloud_storage", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::gcp::pubsub::PubsubConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "gcp_pubsub", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::gcp::stackdriver::logs::config::StackdriverConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "gcp_stackdriver_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::gcp::stackdriver::metrics::config::StackdriverConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "gcp_stackdriver_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::greptimedb::metrics::config::GreptimeDBConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "greptimedb", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::greptimedb::logs::config::GreptimeDBLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "greptimedb_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::greptimedb::metrics::config::GreptimeDBMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "greptimedb_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::honeycomb::config::HoneycombConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "honeycomb", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::http::config::HttpSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "http", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::humio::logs::HumioLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "humio_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::humio::metrics::HumioMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "humio_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::influxdb::logs::InfluxDbLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "influxdb_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::influxdb::metrics::InfluxDbConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "influxdb_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::kafka::config::KafkaSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "kafka", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::mezmo::LogdnaConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "logdna", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::loki::config::LokiConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "loki", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::mezmo::MezmoConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "mezmo", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::mqtt::config::MqttSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "mqtt", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::nats::config::NatsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "nats", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::new_relic::config::NewRelicConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "new_relic", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::opentelemetry::OpenTelemetryConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "opentelemetry", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::papertrail::PapertrailConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "papertrail", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::prometheus::exporter::PrometheusExporterConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "prometheus_exporter", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::prometheus::remote_write::config::RemoteWriteConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "prometheus_remote_write", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::pulsar::config::PulsarSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "pulsar", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::redis::config::RedisSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "redis", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::sematext::logs::SematextLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "sematext_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::sematext::metrics::SematextMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "sematext_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::socket::SocketSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "socket", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::splunk_hec::logs::config::HecLogsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "splunk_hec_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::splunk_hec::metrics::config::HecMetricsSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "splunk_hec_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::statsd::config::StatsdSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "statsd", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::config::unit_test::unit_test_components::UnitTestSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "unit_test", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::config::unit_test::unit_test_components::UnitTestStreamSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "unit_test_stream", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::vector::config::VectorConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "vector", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::webhdfs::config::WebHdfsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "webhdfs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sinks::websocket::config::WebSocketSinkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "websocket", },
                      required = { type = true, },
                    }
                ]
            ],
      "definitions.vector::sinks::amqp::config::AmqpSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::amqp::AmqpConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
                  | { _ | Dyn }
                  | doc "Configures how events are encoded into raw bytes.",
                exchange
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc "The exchange to publish messages to.",
                properties
                  | js2n.Nullable
                    {
                      content_encoding
                        | js2n.Nullable String
                        | doc "Content-Encoding for the AMQP messages."
                        | optional,
                      content_type
                        | js2n.Nullable String
                        | doc "Content-Type for the AMQP messages."
                        | optional,
                      expiration_ms
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.number.Maximum 9007199254740991,
                              js2n.number.Minimum 0
                            ])
                        | doc "Expiration for AMQP messages (in milliseconds)"
                        | optional,
                      ..
                    }
                  | doc "AMQP message properties."
                  | optional,
                routing_key
                  | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                  | doc "Template used to generate a routing key which corresponds to a queue binding."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::appsignal::config::AppsignalConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint
              | String
              | doc "The URI for the AppSignal API to send data to."
              | optional,
            push_api_key
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "A valid app-level AppSignal Push API key.",
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::aws_cloudwatch_logs::config::CloudwatchLogsSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                assume_role
                  | js2n.Nullable String
                  | doc "[iam_role]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html"
                  | optional,
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                create_missing_group
                  | Bool
                  | doc m%"
                    This ignores `create_missing_stream` directly after creating the group and creates
                    the first stream.
                    
                    [log_group]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
                  "%
                  | optional,
                create_missing_stream
                  | Bool
                  | doc "[log_stream]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html"
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
                  | { _ | Dyn }
                  | doc "Configures how events are encoded into raw bytes.",
                group_name
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc "[group_name]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html",
                request
                  | refs."definitions.vector::sinks::util::http::RequestConfig"
                  | { _ | Dyn }
                  | doc "Outbound HTTP request settings."
                  | optional,
                retention
                  | {
                    days
                      | std.number.Integer
                      | js2n.number.Maximum 4294967295
                      | js2n.number.Minimum 0
                      | doc "If retention is enabled, the number of days to retain logs for."
                      | optional,
                    enabled
                      | Bool
                      | doc "Whether or not to set a retention policy when creating a new Log Group."
                      | optional,
                    ..
                  }
                  | doc "Retention policy configuration for AWS CloudWatch Log Group"
                  | optional,
                stream_name
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc m%"
                    There can only be one writer to a log stream at a time. If multiple instances are writing to
                    the same log group, the stream name must include an identifier that is guaranteed to be
                    unique per instance.
                    
                    [stream_name]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
                  "%,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::aws_cloudwatch_metrics::CloudWatchMetricsSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                assume_role
                  | js2n.Nullable String
                  | doc "[iam_role]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html"
                  | optional,
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                default_namespace
                  | String
                  | doc m%"
                    Metrics with the same name can only be differentiated by their namespace, and not all
                    metrics have their own namespace.
                    
                    [namespace]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace
                  "%,
                request
                  | {
                    adaptive_concurrency
                      | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                      | { _ | Dyn }
                      | doc m%"
                        These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                        unstable performance and sink behavior. Proceed with caution.
                      "%
                      | optional,
                    concurrency
                      | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                      | doc m%"
                        Configuration for outbound request concurrency.
                        
                        This can be set either to one of the below enum values or to a positive integer, which denotes
                        a fixed concurrency limit.
                      "%
                      | optional,
                    rate_limit_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The time window used for the `rate_limit_num` option."
                      | optional,
                    rate_limit_num
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                      | optional,
                    retry_attempts
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of retries to make for failed requests."
                      | optional,
                    retry_initial_backoff_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                      | optional,
                    retry_jitter_mode
                      | refs."definitions.vector::sinks::util::retries::JitterMode"
                      | doc "The jitter mode to use for retry backoff behavior."
                      | optional,
                    retry_max_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "The maximum amount of time to wait between retries."
                      | optional,
                    timeout_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc m%"
                        Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                        create orphaned requests, pile on retries, and result in duplicate data downstream.
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::aws_kinesis::config::KinesisSinkBaseConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
                  | { _ | Dyn }
                  | doc "Configures how events are encoded into raw bytes.",
                partition_key_field
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::ConfigValuePath%3E"
                  | doc "If not specified, a unique partition key is generated for each Kinesis record."
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                request_retry_partial
                  | Bool
                  | doc "Whether or not to retry successful requests containing partial failures."
                  | optional,
                stream_name
                  | String
                  | doc "[stream_name]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html",
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::aws_kinesis::firehose::config::KinesisFirehoseSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::aws_kinesis::config::KinesisSinkBaseConfig",
              {
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::aws_kinesis::streams::config::KinesisStreamsSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::aws_kinesis::config::KinesisSinkBaseConfig",
              {
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::aws_s3::config::S3SinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::BulkSizeBasedDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                bucket
                  | String
                  | doc "This must not include a leading `s3://` or a trailing `/`.",
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc m%"
                    All compression algorithms use the default compression level unless otherwise specified.
                    
                    Some cloud storage API clients and browsers handle decompression transparently, so
                    depending on how they are accessed, files may not always appear to be compressed.
                  "%
                  | optional,
                filename_append_uuid
                  | Bool
                  | doc m%"
                    The UUID is appended to the timestamp portion of the object key, such that if the object key
                    generated is `date=2022-07-18/1658176486`, setting this field to `true` results
                    in an object key that looks like `date=2022-07-18/1658176486-30f6652c-71da-4f9f-800d-a1189c47c547`.
                    
                    This ensures there are no name collisions, and can be useful in high-volume workloads where
                    object keys must be unique.
                  "%
                  | optional,
                filename_extension
                  | js2n.Nullable String
                  | doc "This overrides setting the extension based on the configured `compression`."
                  | optional,
                filename_time_format
                  | String
                  | doc m%"
                    By default, object keys are appended with a timestamp that reflects when the objects are
                    sent to S3, such that the resulting object key is functionally equivalent to joining the key
                    prefix with the formatted timestamp, such as `date=2022-07-18/1658176486`.
                    
                    This would represent a `key_prefix` set to `date=%F/` and the timestamp of Mon Jul 18 2022
                    20:34:44 GMT+0000, with the `filename_time_format` being set to `%s`, which renders
                    timestamps in seconds since the Unix epoch.
                    
                    Supports the common [`strftime`][chrono_strftime_specifiers] specifiers found in most
                    languages.
                    
                    When set to an empty string, no timestamp is appended to the key prefix.
                    
                    [chrono_strftime_specifiers]: https://docs.rs/chrono/latest/chrono/format/strftime/index.html#specifiers
                  "%
                  | optional,
                force_path_style
                  | Bool
                  | doc "This controls if the bucket name is in the hostname or part of the URL."
                  | optional,
                key_prefix
                  | String
                  | doc m%"
                    Prefixes are useful for partitioning objects, such as by creating an object key that
                    stores objects under a particular directory. If using a prefix for this purpose, it must end
                    in `/` to act as a directory path. A trailing `/` is **not** automatically added.
                  "%
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                timezone
                  | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              },
              {
                acl
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf
                        [
                          js2n.Const "private",
                          js2n.Const "public-read",
                          js2n.Const "public-read-write",
                          js2n.Const "aws-exec-read",
                          js2n.Const "authenticated-read",
                          js2n.Const "bucket-owner-read",
                          js2n.Const "bucket-owner-full-control",
                          js2n.Const "log-delivery-write"
                        ]
                    ]
                  | doc m%"
                    For more information, see [Canned ACL][canned_acl].
                    
                    [canned_acl]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
                  "%
                  | optional,
                content_encoding
                  | js2n.Nullable String
                  | doc m%"
                    Directly comparable to the `Content-Encoding` HTTP header.
                    
                    If not specified, the compression scheme used dictates this value.
                  "%
                  | optional,
                content_type
                  | js2n.Nullable String
                  | doc m%"
                    Directly comparable to the `Content-Type` HTTP header.
                    
                    If not specified, the compression scheme used dictates this value.
                    When `compression` is set to `none`, the value `text/x-log` is used.
                  "%
                  | optional,
                grant_full_control
                  | js2n.Nullable String
                  | doc m%"
                    This allows the grantee to read the created objects and their metadata, as well as read and
                    modify the ACL on the created objects.
                    
                    [grantee]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#specifying-grantee
                  "%
                  | optional,
                grant_read
                  | js2n.Nullable String
                  | doc m%"
                    This allows the grantee to read the created objects and their metadata.
                    
                    [grantee]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#specifying-grantee
                  "%
                  | optional,
                grant_read_acp
                  | js2n.Nullable String
                  | doc m%"
                    This allows the grantee to read the ACL on the created objects.
                    
                    [grantee]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#specifying-grantee
                  "%
                  | optional,
                grant_write_acp
                  | js2n.Nullable String
                  | doc m%"
                    This allows the grantee to modify the ACL on the created objects.
                    
                    [grantee]: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#specifying-grantee
                  "%
                  | optional,
                server_side_encryption
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf [ js2n.Const "AES256", js2n.Const "aws:kms" ]
                    ]
                  | doc "The Server-side Encryption algorithm used when storing these objects."
                  | optional,
                ssekms_key_id
                  | js2n.Nullable String
                  | doc m%"
                    Only applies when `server_side_encryption` is configured to use KMS.
                    
                    If not specified, Amazon S3 uses the AWS managed CMK in AWS to protect the data.
                  "%
                  | optional,
                storage_class
                  | js2n.OneOf
                    [
                      js2n.Const "STANDARD",
                      js2n.Const "REDUCED_REDUNDANCY",
                      js2n.Const "INTELLIGENT_TIERING",
                      js2n.Const "STANDARD_IA",
                      js2n.Const "EXPRESS_ONEZONE",
                      js2n.Const "ONEZONE_IA",
                      js2n.Const "GLACIER",
                      js2n.Const "GLACIER_IR",
                      js2n.Const "DEEP_ARCHIVE"
                    ]
                  | doc m%"
                    See the [S3 Storage Classes][s3_storage_classes] for more details.
                    
                    [s3_storage_classes]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html
                  "%
                  | optional,
                tags
                  | js2n.Nullable ({ _ | String })
                  | doc "The tag-set for the object."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::aws_s_s::config::BaseSSSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            assume_role
              | js2n.Nullable String
              | doc "[iam_role]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html"
              | optional,
            auth
              | refs."definitions.vector::aws::auth::AwsAuthentication"
              | { _ | Dyn }
              | doc "Configuration of the authentication strategy for interacting with AWS services."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            message_deduplication_id
              | js2n.Nullable String
              | doc m%"
                This value is a template which should result in a unique string for each event. See the [AWS
                documentation][deduplication_id_docs] for more about how AWS does message deduplication.
                
                [deduplication_id_docs]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html
              "%
              | optional,
            message_group_id
              | js2n.Nullable String
              | doc "Can be applied only to FIFO queues."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::aws_s_s::sns::config::SnsSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              refs."definitions.vector::sinks::aws_s_s::config::BaseSSSinkConfig",
              {
                topic_arn
                  | String
                  | doc "The ARN of the Amazon SNS topic to which messages are sent.",
                ..
              }
            ],
      "definitions.vector::sinks::aws_s_s::sqs::config::SqsSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              refs."definitions.vector::sinks::aws_s_s::config::BaseSSSinkConfig",
              {
                queue_url
                  | String
                  | doc "The URL of the Amazon SQS queue to which messages are sent.",
                ..
              }
            ],
      "definitions.vector::sinks::axiom::AxiomConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc "Controls how acknowledgements are handled for this sink."
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "The batch settings for the sink."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "The compression algorithm to use."
              | optional,
            dataset | String | doc "The Axiom dataset to write to.",
            org_id
              | js2n.Nullable String
              | doc "Only required when using personal tokens."
              | optional,
            request
              | refs."definitions.vector::sinks::util::http::RequestConfig"
              | { _ | Dyn }
              | doc "Outbound HTTP request settings."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | doc "Optional, constrains TLS settings for this sink."
              | optional,
            token
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The Axiom API token.",
            url
              | js2n.Nullable String
              | doc "Only required if not using Axiom Cloud."
              | optional,
            ..
          },
      "definitions.vector::sinks::azure_blob::config::AzureBlobSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::BulkSizeBasedDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                blob_append_uuid
                  | js2n.Nullable Bool
                  | doc m%"
                    The UUID is appended to the timestamp portion of the object key, such that if the blob key
                    generated is `date=2022-07-18/1658176486`, setting this field to `true` results
                    in an blob key that looks like
                    `date=2022-07-18/1658176486-30f6652c-71da-4f9f-800d-a1189c47c547`.
                    
                    This ensures there are no name collisions, and can be useful in high-volume workloads where
                    blob keys must be unique.
                  "%
                  | optional,
                blob_prefix
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc m%"
                    Prefixes are useful for partitioning objects, such as by creating a blob key that
                    stores blobs under a particular directory. If using a prefix for this purpose, it must end
                    in `/` to act as a directory path. A trailing `/` is **not** automatically added.
                  "%
                  | optional,
                blob_time_format
                  | js2n.Nullable String
                  | doc m%"
                    By default, blob keys are appended with a timestamp that reflects when the blob are sent to
                    Azure Blob Storage, such that the resulting blob key is functionally equivalent to joining
                    the blob prefix with the formatted timestamp, such as `date=2022-07-18/1658176486`.
                    
                    This would represent a `blob_prefix` set to `date=%F/` and the timestamp of Mon Jul 18 2022
                    20:34:44 GMT+0000, with the `filename_time_format` being set to `%s`, which renders
                    timestamps in seconds since the Unix epoch.
                    
                    Supports the common [`strftime`][chrono_strftime_specifiers] specifiers found in most
                    languages.
                    
                    When set to an empty string, no timestamp is appended to the blob prefix.
                    
                    [chrono_strftime_specifiers]: https://docs.rs/chrono/latest/chrono/format/strftime/index.html#specifiers
                  "%
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc m%"
                    All compression algorithms use the default compression level unless otherwise specified.
                    
                    Some cloud storage API clients and browsers handle decompression transparently, so
                    depending on how they are accessed, files may not always appear to be compressed.
                  "%
                  | optional,
                connection_string
                  | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
                  | doc m%"
                    Authentication with an access key or shared access signature (SAS)
                    are supported authentication methods. If using a non-account SAS,
                    healthchecks will fail and will need to be disabled by setting
                    `healthcheck.enabled` to `false` for this sink
                    
                    When generating an account SAS, the following are the minimum required option
                    settings for Vector to access blob storage and pass a health check.
                    | Option                 | Value              |
                    | ---------------------- | ------------------ |
                    | Allowed services       | Blob               |
                    | Allowed resource types | Container & Object |
                    | Allowed permissions    | Read & Create      |
                    
                    Either `storage_account`, or this field, must be specified.
                  "%
                  | optional,
                container_name
                  | String
                  | doc "The Azure Blob Storage Account container name.",
                endpoint
                  | js2n.Nullable String
                  | doc m%"
                    This is used to override the default blob storage endpoint URL in cases where you are using
                    credentials read from the environment/managed identities or access tokens without using an
                    explicit connection_string (which already explicitly supports overriding the blob endpoint
                    URL).
                    
                    This may only be used with `storage_account` and is ignored when used with
                    `connection_string`.
                  "%
                  | optional,
                request
                  | {
                    adaptive_concurrency
                      | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                      | { _ | Dyn }
                      | doc m%"
                        These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                        unstable performance and sink behavior. Proceed with caution.
                      "%
                      | optional,
                    concurrency
                      | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                      | doc m%"
                        Configuration for outbound request concurrency.
                        
                        This can be set either to one of the below enum values or to a positive integer, which denotes
                        a fixed concurrency limit.
                      "%
                      | optional,
                    rate_limit_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The time window used for the `rate_limit_num` option."
                      | optional,
                    rate_limit_num
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                      | optional,
                    retry_attempts
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of retries to make for failed requests."
                      | optional,
                    retry_initial_backoff_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                      | optional,
                    retry_jitter_mode
                      | refs."definitions.vector::sinks::util::retries::JitterMode"
                      | doc "The jitter mode to use for retry backoff behavior."
                      | optional,
                    retry_max_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "The maximum amount of time to wait between retries."
                      | optional,
                    timeout_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc m%"
                        Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                        create orphaned requests, pile on retries, and result in duplicate data downstream.
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                storage_account
                  | js2n.Nullable String
                  | doc m%"
                    Attempts to load credentials for the account in the following ways, in order:
                    
                    - read from environment variables ([more information][env_cred_docs])
                    - looks for a [Managed Identity][managed_ident_docs]
                    - uses the `az` CLI tool to get an access token ([more information][az_cli_docs])
                    
                    Either `connection_string`, or this field, must be specified.
                    
                    [env_cred_docs]: https://docs.rs/azure_identity/latest/azure_identity/struct.EnvironmentCredential.html
                    [managed_ident_docs]: https://docs.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/overview
                    [az_cli_docs]: https://docs.microsoft.com/en-us/cli/azure/account?view=azure-cli-latest#az-account-get-access-token
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::azure_monitor_logs::config::AzureMonitorLogsConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            azure_resource_id
              | js2n.Nullable String
              | doc "[resource_id]: https://docs.microsoft.com/en-us/azure/azure-monitor/platform/data-collector-api#request-headers"
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            customer_id
              | String
              | doc "[uniq_id]: https://docs.microsoft.com/en-us/azure/azure-monitor/platform/data-collector-api#request-uri-parameters",
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            host
              | String
              | doc "[alt_host]: https://docs.azure.cn/en-us/articles/guidance/developerdifferences#check-endpoints-in-azure"
              | optional,
            log_type
              | js2n.string.Matches "[a-zA-Z0-9_]{1,100}"
              | doc m%"
                Can only contain letters, numbers, and underscores (_), and may not exceed 100 characters.
                
                [record_type]: https://docs.microsoft.com/en-us/azure/azure-monitor/platform/data-collector-api#request-headers
              "%,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            shared_key
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "[shared_key]: https://docs.microsoft.com/en-us/azure/azure-monitor/platform/data-collector-api#authorization",
            time_generated_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                The setting of `log_schema.timestamp_key`, usually `timestamp`, is used here by default.
                This field should be used in rare cases where `TimeGenerated` should point to a specific log
                field. For example, use this field to set the log field `source_timestamp` as holding the
                value that should be used as `TimeGenerated` on the Azure side.
                
                [1]: https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-standard-columns#timegenerated
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::blackhole::config::BlackholeConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            print_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "Set to `0` (default) to disable reporting."
              | optional,
            rate
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "By default, there is no limit."
              | optional,
            ..
          },
      "definitions.vector::sinks::clickhouse::config::ClickhouseConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            database
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "The database that contains the table that data is inserted into."
              | optional,
            date_time_best_effort
              | Bool
              | doc "Sets `date_time_input_format` to `best_effort`, allowing ClickHouse to properly parse RFC3339/ISO 8601."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint
              | refs."definitions.vector::sinks::util::uri::UriSerde"
              | String
              | doc "The endpoint of the ClickHouse server.",
            format
              | js2n.OneOf
                [
                  js2n.Const "json_each_row",
                  js2n.Const "json_as_object",
                  js2n.Const "json_as_string"
                ]
              | doc "The format to parse input data."
              | optional,
            insert_random_shard
              | Bool
              | doc "Sets `insert_distributed_one_random_shard`, allowing ClickHouse to insert data into a random shard when using Distributed Table Engine."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            skip_unknown_fields
              | js2n.Nullable Bool
              | doc "If left unspecified, use the default provided by the `ClickHouse` server."
              | optional,
            table
              | refs."definitions.vector::template::Template"
              | String
              | doc "The table that data is inserted into.",
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::console::config::ConsoleSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                target
                  | js2n.OneOf [ js2n.Const "stdout", js2n.Const "stderr" ]
                  | doc "[standard_streams]: https://en.wikipedia.org/wiki/Standard_streams"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::databend::config::DatabendConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | doc "The username and password to authenticate with. Overrides the username and password in DSN."
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            compression
              | js2n.OneOf [ js2n.Const "none", js2n.Const "gzip" ]
              | doc "Compression configuration."
              | optional,
            database
              | js2n.Nullable String
              | doc "The database that contains the table that data is inserted into. Overrides the database in DSN."
              | optional,
            encoding
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.codecs::encoding::format::csv::CsvSerializerConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "csv", },
                          required = { codec = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.codecs::encoding::format::json::JsonSerializerConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "json", },
                          required = { codec = true, },
                        }
                    ]
                ]
              | {
                except_fields
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [
                          refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                          String
                        ]
                    ))
                  | doc "List of fields that are excluded from the encoded event."
                  | optional,
                only_fields
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [
                          refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                          String
                        ]
                    ))
                  | doc "List of fields that are included in the encoded event."
                  | optional,
                timestamp_format
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf
                        [
                          js2n.Const "unix",
                          js2n.Const "rfc3339",
                          js2n.Const "unix_ms",
                          js2n.Const "unix_us",
                          js2n.Const "unix_ns",
                          js2n.Const "unix_float"
                        ]
                    ]
                  | doc "Format used for timestamp fields."
                  | optional,
                ..
              }
              | doc "Configures how events are encoded into raw bytes."
              | optional,
            endpoint
              | refs."definitions.vector::sinks::util::uri::UriSerde"
              | String
              | doc "The DSN of the Databend server.",
            missing_field_as
              | js2n.OneOf
                [
                  js2n.Const "ERROR",
                  js2n.Const "NULL",
                  js2n.Const "FIELD_DEFAULT",
                  js2n.Const "TYPE_DEFAULT"
                ]
              | doc m%"
                Defines how missing fields are handled for NDJson.
                Refer to https://docs.databend.com/sql/sql-reference/file-format-options#null_field_as
              "%
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            table | String | doc "The table that data is inserted into.",
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | doc "The TLS configuration to use when connecting to the Databend server."
              | optional,
            ..
          },
      "definitions.vector::sinks::datadog::LocalDatadogCommonConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            default_api_key
              | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
              | doc m%"
                If an event has a Datadog [API key][api_key] set explicitly in its metadata, it takes
                precedence over this setting.
                
                This value can also be set by specifying the `DD_API_KEY` environment variable.
                The value specified here takes precedence over the environment variable.
                
                [api_key]: https://docs.datadoghq.com/api/?lang=bash#authentication
                [global_options]: /docs/reference/configuration/global-options/#datadog
              "%
              | optional,
            endpoint
              | js2n.Nullable String
              | doc m%"
                The endpoint must contain an HTTP scheme, and may specify a hostname or IP
                address and port. The API path should NOT be specified as this is handled by
                the sink.
                
                If set, overrides the `site` option.
              "%
              | optional,
            site
              | js2n.Nullable String
              | doc m%"
                This value can also be set by specifying the `DD_SITE` environment variable.
                The value specified here takes precedence over the environment variable.
                
                If not specified by the environment variable, a default value of
                `datadoghq.com` is taken.
                
                [dd_site]: https://docs.datadoghq.com/getting_started/site
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::datadog::events::config::DatadogEventsConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::datadog::LocalDatadogCommonConfig",
              {
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::datadog::logs::config::DatadogLogsConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::datadog::LocalDatadogCommonConfig",
              {
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.core::option::Option%3Cvector::sinks::util::buffer::compression::Compression%3E"
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::transformer::Transformer"
                  | { _ | Dyn }
                  | doc "Transformations to prepare an event for serialization."
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::http::RequestConfig"
                  | { _ | Dyn }
                  | doc "Outbound HTTP request settings."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::datadog::metrics::config::DatadogMetricsConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::datadog::LocalDatadogCommonConfig",
              {
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                default_namespace
                  | js2n.Nullable String
                  | doc m%"
                    This namespace is only used if a metric has no existing namespace. When a namespace is
                    present, it is used as a prefix to the metric name, and separated with a period (`.`).
                  "%
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::datadog::traces::config::DatadogTracesConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::datadog::LocalDatadogCommonConfig",
              {
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.core::option::Option%3Cvector::sinks::util::buffer::compression::Compression%3E"
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::elasticsearch::config::ElasticsearchConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            api_version
              | js2n.OneOf
                [
                  js2n.Const "auto",
                  js2n.Const "v6",
                  js2n.Const "v7",
                  js2n.Const "v8"
                ]
              | doc "Amazon OpenSearch Serverless requires this option to be set to `auto` (the default)."
              | optional,
            auth
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                password =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector_common::sensitive_string::SensitiveString",
                                        String
                                      ],
                                strategy = js2n.Const "basic",
                                user = String,
                              },
                          required =
                            { password = true, strategy = true, user = true, },
                        },
                      std.contract.Sequence
                        [
                          std.contract.any_of
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        access_key_id =
                                          std.contract.Sequence
                                              [
                                                refs."definitions.vector_common::sensitive_string::SensitiveString",
                                                String
                                              ],
                                        assume_role = js2n.Nullable String,
                                        external_id = js2n.Nullable String,
                                        region = js2n.Nullable String,
                                        secret_access_key =
                                          std.contract.Sequence
                                              [
                                                refs."definitions.vector_common::sensitive_string::SensitiveString",
                                                String
                                              ],
                                      },
                                  required =
                                    {
                                        access_key_id = true,
                                        secret_access_key = true,
                                      },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        credentials_file = String,
                                        profile = String,
                                      },
                                  required = { credentials_file = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        assume_role = String,
                                        external_id = js2n.Nullable String,
                                        imds =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      connect_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                      max_attempts =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                4294967295,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      read_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        load_timeout_secs =
                                          js2n.Nullable
                                              (std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum
                                                    9007199254740991,
                                                  js2n.number.Minimum 0
                                                ]),
                                        region = js2n.Nullable String,
                                      },
                                  required = { assume_role = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        imds =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      connect_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                      max_attempts =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                4294967295,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      read_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        load_timeout_secs =
                                          js2n.Nullable
                                              (std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum
                                                    9007199254740991,
                                                  js2n.number.Minimum 0
                                                ]),
                                        region = js2n.Nullable String,
                                      },
                                  required = {},
                                }
                            ],
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { strategy = js2n.Const "aws", },
                              required = { strategy = true, },
                            }
                        ]
                    ]
                ]
              | doc "Elasticsearch Authentication strategies."
              | optional,
            aws
              | refs."definitions.core::option::Option%3Cvector::aws::region::RegionOrEndpoint%3E"
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            bulk
              | {
                action
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc m%"
                    Only `index`, `create` and `update` actions are supported.
                    
                    [es_bulk]: https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-bulk.html
                  "%
                  | optional,
                index
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc "The name of the index to write events to."
                  | optional,
                template_fallback_index
                  | js2n.Nullable String
                  | doc "The default index to write events to if the template in `bulk.index` cannot be resolved"
                  | optional,
                version
                  | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                  | doc "Version field value."
                  | optional,
                version_type
                  | js2n.OneOf
                    [
                      js2n.Const "internal",
                      js2n.Const "external",
                      js2n.Const "external_gte"
                    ]
                  | doc m%"
                    Possible values are `internal`, `external` or `external_gt` and `external_gte`.
                    
                    [es_index_versioning]: https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-index_.html#index-versioning
                  "%
                  | optional,
                ..
              }
              | doc "Elasticsearch bulk mode configuration."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            data_stream
              | js2n.Nullable
                {
                  auto_routing
                    | Bool
                    | doc m%"
                      The format of the data stream name is `<type>-<dataset>-<namespace>`, where each value comes
                      from the `data_stream` configuration field of the same name.
                      
                      If enabled, the value of the `data_stream.type`, `data_stream.dataset`, and
                      `data_stream.namespace` event fields are used if they are present. Otherwise, the values
                      set in this configuration are used.
                    "%
                    | optional,
                  dataset
                    | refs."definitions.vector::template::Template"
                    | String
                    | doc "The data stream dataset used to construct the data stream at index time."
                    | optional,
                  namespace
                    | refs."definitions.vector::template::Template"
                    | String
                    | doc "The data stream namespace used to construct the data stream at index time."
                    | optional,
                  sync_fields
                    | Bool
                    | doc "This ensures that fields match the name of the data stream that is receiving events."
                    | optional,
                  type
                    | refs."definitions.vector::template::Template"
                    | String
                    | doc "The data stream type used to construct the data stream at index time."
                    | optional,
                  ..
                }
              | doc "Elasticsearch data stream mode configuration."
              | optional,
            distribution
              | js2n.Nullable
                {
                  retry_initial_backoff_secs
                    | std.number.Integer
                    | js2n.number.Maximum 9007199254740991
                    | js2n.number.Minimum 0
                    | doc "Initial delay between attempts to reactivate endpoints once they become unhealthy."
                    | optional,
                  retry_max_duration_secs
                    | refs."definitions.serde_with::DurationSeconds"
                    | Number
                    | doc "Maximum delay between attempts to reactivate endpoints once they become unhealthy."
                    | optional,
                  ..
                }
              | doc "Options for determining the health of an endpoint."
              | optional,
            doc_type
              | String
              | doc m%"
                This is only relevant for Elasticsearch <= 6.X. If you are using >= 7.0 you do not need to
                set this option since Elasticsearch has removed it.
                
                [doc_type]: https://www.elastic.co/guide/en/elasticsearch/reference/6.8/actions-index.html
              "%
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint
              | js2n.Nullable String
              | doc m%"
                The endpoint must contain an HTTP scheme, and may specify a
                hostname or IP address and port.
              "%
              | optional,
            endpoints
              | Array String
              | doc m%"
                The endpoint must contain an HTTP scheme, and may specify a
                hostname or IP address and port.
              "%
              | optional,
            id_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::ConfigValuePath%3E"
              | doc m%"
                By default, the `_id` field is not set, which allows Elasticsearch to set this
                automatically. Setting your own Elasticsearch IDs can [hinder performance][perf_doc].
                
                [es_id]: https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-id-field.html
                [perf_doc]: https://www.elastic.co/guide/en/elasticsearch/reference/master/tune-for-indexing-speed.html#_use_auto_generated_ids
              "%
              | optional,
            metrics
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.vector::transforms::metric_to_log::MetricToLogConfig",
                    { _ | Dyn }
                  ])
              | doc "Configuration for the `metric_to_log` transform."
              | optional,
            mode
              | js2n.OneOf [ js2n.Const "bulk", js2n.Const "data_stream" ]
              | doc "Elasticsearch Indexing mode."
              | optional,
            opensearch_service_type
              | js2n.OneOf [ js2n.Const "managed", js2n.Const "serverless" ]
              | doc "Amazon OpenSearch service type"
              | optional,
            pipeline
              | js2n.Nullable String
              | doc "The name of the pipeline to apply."
              | optional,
            query
              | js2n.Nullable ({ _ | String })
              | doc "Custom parameters to add to the query string for each HTTP request sent to Elasticsearch."
              | optional,
            request
              | refs."definitions.vector::sinks::util::http::RequestConfig"
              | { _ | Dyn }
              | doc "Outbound HTTP request settings."
              | optional,
            request_retry_partial
              | Bool
              | doc "To avoid duplicates in Elasticsearch, please use option `id_key`."
              | optional,
            suppress_type_name
              | Bool
              | doc m%"
                The `type` field was deprecated in Elasticsearch 7.x and removed in Elasticsearch 8.x.
                
                If enabled, the `doc_type` option is ignored.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::file::FileSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                compression
                  | js2n.OneOf
                    [ js2n.Const "gzip", js2n.Const "zstd", js2n.Const "none" ]
                  | doc "Compression configuration."
                  | optional,
                idle_timeout_secs
                  | refs."definitions.serde_with::DurationSeconds"
                  | Number
                  | doc "After not receiving any events in this amount of time, the file is flushed and closed."
                  | optional,
                internal_metrics
                  | refs."definitions.vector::internal_events::file::FileInternalMetricsConfig"
                  | { _ | Dyn }
                  | doc "Configuration of internal metrics for file-based components."
                  | optional,
                path
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc "Compression format extension must be explicit.",
                timezone
                  | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::gcp::cloud_storage::GcsSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              refs."definitions.vector::gcp::GcpAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                acl
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf
                        [
                          js2n.Const "authenticated-read",
                          js2n.Const "bucket-owner-full-control",
                          js2n.Const "bucket-owner-read",
                          js2n.Const "private",
                          js2n.Const "project-private",
                          js2n.Const "public-read"
                        ]
                    ]
                  | doc m%"
                    For more information, see [Predefined ACLs][predefined_acls].
                    
                    [predefined_acls]: https://cloud.google.com/storage/docs/access-control/lists#predefined-acl
                  "%
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::BulkSizeBasedDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                bucket | String | doc "The GCS bucket name.",
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc m%"
                    All compression algorithms use the default compression level unless otherwise specified.
                    
                    Some cloud storage API clients and browsers handle decompression transparently, so
                    depending on how they are accessed, files may not always appear to be compressed.
                  "%
                  | optional,
                endpoint
                  | String
                  | doc "API endpoint for Google Cloud Storage"
                  | optional,
                filename_append_uuid
                  | Bool
                  | doc m%"
                    The UUID is appended to the timestamp portion of the object key, such that if the object key
                    generated is `date=2022-07-18/1658176486`, setting this field to `true` results
                    in an object key that looks like `date=2022-07-18/1658176486-30f6652c-71da-4f9f-800d-a1189c47c547`.
                    
                    This ensures there are no name collisions, and can be useful in high-volume workloads where
                    object keys must be unique.
                  "%
                  | optional,
                filename_extension
                  | js2n.Nullable String
                  | doc "If not specified, the extension is determined by the compression scheme used."
                  | optional,
                filename_time_format
                  | String
                  | doc m%"
                    By default, object keys are appended with a timestamp that reflects when the objects are
                    sent to S3, such that the resulting object key is functionally equivalent to joining the key
                    prefix with the formatted timestamp, such as `date=2022-07-18/1658176486`.
                    
                    This would represent a `key_prefix` set to `date=%F/` and the timestamp of Mon Jul 18 2022
                    20:34:44 GMT+0000, with the `filename_time_format` being set to `%s`, which renders
                    timestamps in seconds since the Unix epoch.
                    
                    Supports the common [`strftime`][chrono_strftime_specifiers] specifiers found in most
                    languages.
                    
                    When set to an empty string, no timestamp is appended to the key prefix.
                    
                    [chrono_strftime_specifiers]: https://docs.rs/chrono/latest/chrono/format/strftime/index.html#specifiers
                  "%
                  | optional,
                key_prefix
                  | js2n.Nullable String
                  | doc m%"
                    Prefixes are useful for partitioning objects, such as by creating an object key that
                    stores objects under a particular directory. If using a prefix for this purpose, it must end
                    in `/` in order to act as a directory path. A trailing `/` is **not** automatically added.
                  "%
                  | optional,
                metadata
                  | js2n.Nullable ({ _ | String })
                  | doc m%"
                    For more information, see the [custom metadata][custom_metadata] documentation.
                    
                    [custom_metadata]: https://cloud.google.com/storage/docs/metadata#custom-metadata
                  "%
                  | optional,
                request
                  | {
                    adaptive_concurrency
                      | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                      | { _ | Dyn }
                      | doc m%"
                        These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                        unstable performance and sink behavior. Proceed with caution.
                      "%
                      | optional,
                    concurrency
                      | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                      | doc m%"
                        Configuration for outbound request concurrency.
                        
                        This can be set either to one of the below enum values or to a positive integer, which denotes
                        a fixed concurrency limit.
                      "%
                      | optional,
                    rate_limit_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The time window used for the `rate_limit_num` option."
                      | optional,
                    rate_limit_num
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                      | optional,
                    retry_attempts
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of retries to make for failed requests."
                      | optional,
                    retry_initial_backoff_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                      | optional,
                    retry_jitter_mode
                      | refs."definitions.vector::sinks::util::retries::JitterMode"
                      | doc "The jitter mode to use for retry backoff behavior."
                      | optional,
                    retry_max_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "The maximum amount of time to wait between retries."
                      | optional,
                    timeout_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc m%"
                        Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                        create orphaned requests, pile on retries, and result in duplicate data downstream.
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                storage_class
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf
                        [
                          js2n.Const "STANDARD",
                          js2n.Const "NEARLINE",
                          js2n.Const "COLDLINE",
                          js2n.Const "ARCHIVE"
                        ]
                    ]
                  | doc m%"
                    For more information, see the [storage classes][storage_classes] documentation.
                    
                    [storage_classes]: https://cloud.google.com/storage/docs/storage-classes
                  "%
                  | optional,
                timezone
                  | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::gcp::pubsub::PubsubConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::gcp::GcpAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
                  | { _ | Dyn }
                  | doc "Configures how events are encoded into raw bytes.",
                endpoint
                  | String
                  | doc m%"
                    The scheme (`http` or `https`) must be specified. No path should be included since the paths defined
                    by the [`GCP Pub/Sub`][pubsub_api] API are used.
                    
                    The trailing slash `/` must not be included.
                    
                    [pubsub_api]: https://cloud.google.com/pubsub/docs/reference/rest
                  "%
                  | optional,
                project
                  | String
                  | doc "The project name to which to publish events.",
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                topic
                  | String
                  | doc "The topic within the project to which to publish events.",
                ..
              }
            ],
      "definitions.vector::sinks::gcp::stackdriver::logs::config::StackdriverConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { billing_account_id = String, },
                      required = { billing_account_id = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { folder_id = String, },
                      required = { folder_id = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { organization_id = String, },
                      required = { organization_id = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { project_id = String, },
                      required = { project_id = true, },
                    }
                ],
              refs."definitions.vector::gcp::GcpAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::transformer::Transformer"
                  | { _ | Dyn }
                  | doc "Transformations to prepare an event for serialization."
                  | optional,
                log_id
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc "This is a name you create to identify this log stream.",
                request
                  | {
                    adaptive_concurrency
                      | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                      | { _ | Dyn }
                      | doc m%"
                        These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                        unstable performance and sink behavior. Proceed with caution.
                      "%
                      | optional,
                    concurrency
                      | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                      | doc m%"
                        Configuration for outbound request concurrency.
                        
                        This can be set either to one of the below enum values or to a positive integer, which denotes
                        a fixed concurrency limit.
                      "%
                      | optional,
                    rate_limit_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The time window used for the `rate_limit_num` option."
                      | optional,
                    rate_limit_num
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                      | optional,
                    retry_attempts
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of retries to make for failed requests."
                      | optional,
                    retry_initial_backoff_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                      | optional,
                    retry_jitter_mode
                      | refs."definitions.vector::sinks::util::retries::JitterMode"
                      | doc "The jitter mode to use for retry backoff behavior."
                      | optional,
                    retry_max_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "The maximum amount of time to wait between retries."
                      | optional,
                    timeout_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc m%"
                        Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                        create orphaned requests, pile on retries, and result in duplicate data downstream.
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                resource
                  | {
                    type
                      | String
                      | doc m%"
                        For example, the type of a Compute Engine VM instance is `gce_instance`.
                        See the [Google Cloud Platform monitored resource documentation][gcp_resources] for
                        more details.
                        
                        [gcp_resources]: https://cloud.google.com/monitoring/api/resources
                      "%,
                    ..
                  }
                  | {
                    _ | std.contract.Sequence
                      [ refs."definitions.vector::template::Template", String ]
                  }
                  | doc "The monitored resource to associate the logs with.",
                severity_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::ConfigValuePath%3E"
                  | doc m%"
                    The named field is removed from the log event if present, and must be either an integer
                    between 0 and 800 or a string containing one of the [severity level names][sev_names] (case
                    is ignored) or a common prefix such as `err`.
                    
                    If no severity key is specified, the severity of outgoing records is set to 0 (`DEFAULT`).
                    
                    See the [GCP Stackdriver Logging LogSeverity description][logsev_docs] for more details on
                    the value of the `severity` field.
                    
                    [sev_names]: https://cloud.google.com/logging/docs/reference/v2/rest/v2/LogEntry#logseverity
                    [logsev_docs]: https://cloud.google.com/logging/docs/reference/v2/rest/v2/LogEntry#logseverity
                  "%
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::gcp::stackdriver::metrics::config::StackdriverConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::gcp::GcpAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                default_namespace
                  | String
                  | doc m%"
                    Metrics with the same name can only be differentiated by their namespace, and not all
                    metrics have their own namespace.
                  "%
                  | optional,
                project_id
                  | String
                  | doc m%"
                    See the [Google Cloud Platform project management documentation][project_docs] for more details.
                    
                    [project_docs]: https://cloud.google.com/resource-manager/docs/creating-managing-projects
                  "%,
                request
                  | {
                    adaptive_concurrency
                      | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                      | { _ | Dyn }
                      | doc m%"
                        These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                        unstable performance and sink behavior. Proceed with caution.
                      "%
                      | optional,
                    concurrency
                      | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                      | doc m%"
                        Configuration for outbound request concurrency.
                        
                        This can be set either to one of the below enum values or to a positive integer, which denotes
                        a fixed concurrency limit.
                      "%
                      | optional,
                    rate_limit_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The time window used for the `rate_limit_num` option."
                      | optional,
                    rate_limit_num
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                      | optional,
                    retry_attempts
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of retries to make for failed requests."
                      | optional,
                    retry_initial_backoff_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                      | optional,
                    retry_jitter_mode
                      | refs."definitions.vector::sinks::util::retries::JitterMode"
                      | doc "The jitter mode to use for retry backoff behavior."
                      | optional,
                    retry_max_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "The maximum amount of time to wait between retries."
                      | optional,
                    timeout_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc m%"
                        Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                        create orphaned requests, pile on retries, and result in duplicate data downstream.
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                resource
                  | {
                    type
                      | String
                      | doc "For example, the type of a Compute Engine VM instance is `gce_instance`.",
                    ..
                  }
                  | { _ | String }
                  | doc "The monitored resource to associate the metrics with.",
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::gcp_chronicle::chronicle_unstructured::ChronicleUnstructuredConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::gcp::GcpAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | js2n.OneOf
                    [
                      js2n.OneOf [ js2n.Const "none", js2n.Const "gzip" ],
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                algorithm =
                                  js2n.OneOf
                                      [ js2n.Const "none", js2n.Const "gzip" ],
                                level =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector::sinks::util::buffer::compression::CompressionLevel",
                                        std.contract.any_of [ Number, String ]
                                      ],
                              },
                          required = { algorithm = true, },
                        }
                    ]
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                customer_id
                  | String
                  | doc "The Unique identifier (UUID) corresponding to the Chronicle instance.",
                encoding
                  | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
                  | { _ | Dyn }
                  | doc "Configures how events are encoded into raw bytes.",
                endpoint
                  | js2n.Nullable String
                  | doc "The endpoint to send data to."
                  | optional,
                labels
                  | js2n.Nullable ({ _ | String })
                  | doc "A set of labels that are attached to each batch of events."
                  | optional,
                log_type
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc m%"
                    This must be one of the [supported log types][unstructured_log_types_doc], otherwise
                    Chronicle rejects the entry with an error.
                    
                    [unstructured_log_types_doc]: https://cloud.google.com/chronicle/docs/ingestion/parser-list/supported-default-parsers
                  "%,
                namespace
                  | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                  | doc "User-configured environment namespace to identify the data domain the logs originated from."
                  | optional,
                region
                  | js2n.OneOf
                    [
                      js2n.Null,
                      js2n.OneOf
                        [ js2n.Const "eu", js2n.Const "us", js2n.Const "asia" ]
                    ]
                  | doc "The GCP region to use."
                  | optional,
                request
                  | {
                    adaptive_concurrency
                      | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                      | { _ | Dyn }
                      | doc m%"
                        These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                        unstable performance and sink behavior. Proceed with caution.
                      "%
                      | optional,
                    concurrency
                      | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                      | doc m%"
                        Configuration for outbound request concurrency.
                        
                        This can be set either to one of the below enum values or to a positive integer, which denotes
                        a fixed concurrency limit.
                      "%
                      | optional,
                    rate_limit_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The time window used for the `rate_limit_num` option."
                      | optional,
                    rate_limit_num
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                      | optional,
                    retry_attempts
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc "The maximum number of retries to make for failed requests."
                      | optional,
                    retry_initial_backoff_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                      | optional,
                    retry_jitter_mode
                      | refs."definitions.vector::sinks::util::retries::JitterMode"
                      | doc "The jitter mode to use for retry backoff behavior."
                      | optional,
                    retry_max_duration_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 1
                      | doc "The maximum amount of time to wait between retries."
                      | optional,
                    timeout_secs
                      | std.number.Integer
                      | js2n.number.Maximum 9007199254740991
                      | js2n.number.Minimum 0
                      | doc m%"
                        Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                        create orphaned requests, pile on retries, and result in duplicate data downstream.
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::greptimedb::logs::config::GreptimeDBLogsConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::greptimedb::GreptimeDBDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc m%"
                Set http compression encoding for the request
                Default to none, `gzip` or `zstd` is supported.
              "%
              | optional,
            dbname
              | refs."definitions.vector::template::Template"
              | String
              | doc m%"
                Default to `public`, the default database of GreptimeDB.
                
                Database can be created via `create database` statement on
                GreptimeDB. If you are using GreptimeCloud, use `dbname` from the
                connection information of your instance.
                
                [database]: https://docs.greptime.com/user-guide/concepts/key-concepts#database
              "%
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint | String | doc "The endpoint of the GreptimeDB server.",
            extra_params
              | js2n.Nullable ({ _ | String })
              | doc "Custom parameters to add to the query string for each HTTP request sent to GreptimeDB."
              | optional,
            password
              | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
              | doc "This is required if your instance has authentication enabled."
              | optional,
            pipeline_name
              | refs."definitions.vector::template::Template"
              | String
              | doc "Default to `greptime_identity`, use the original log structure"
              | optional,
            pipeline_version
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "Pipeline version to be used for the logs."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            table
              | refs."definitions.vector::template::Template"
              | String
              | doc "The table that data is inserted into.",
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            username
              | js2n.Nullable String
              | doc "This is required if your instance has authentication enabled."
              | optional,
            ..
          },
      "definitions.vector::sinks::greptimedb::metrics::config::GreptimeDBConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::greptimedb::metrics::config::GreptimeDBMetricsConfig",
              { _ | Dyn }
            ],
      "definitions.vector::sinks::greptimedb::metrics::config::GreptimeDBMetricsConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::greptimedb::GreptimeDBDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            dbname
              | String
              | doc m%"
                Default to `public`, the default database of GreptimeDB.
                
                Database can be created via `create database` statement on
                GreptimeDB. If you are using GreptimeCloud, use `dbname` from the
                connection information of your instance.
                
                [database]: https://docs.greptime.com/user-guide/concepts/key-concepts#database
              "%
              | optional,
            endpoint
              | String
              | doc m%"
                This sink uses GreptimeDB's gRPC interface for data ingestion. By
                default, GreptimeDB listens to port 4001 for gRPC protocol.
                
                The address _must_ include a port.
              "%,
            grpc_compression
              | js2n.Nullable String
              | doc m%"
                Set gRPC compression encoding for the request
                Default to none, `gzip` or `zstd` is supported.
              "%
              | optional,
            new_naming
              | js2n.Nullable Bool
              | doc m%"
                This is to keep consistency with GreptimeDB's naming pattern. By
                default, this sink will use `val` for value column name, and `ts` for
                time index name. When turned on, `greptime_value` and
                `greptime_timestamp` will be used for these names.
                
                If you are using this Vector sink together with other data ingestion
                sources of GreptimeDB, like Prometheus Remote Write and Influxdb Line
                Protocol, it is highly recommended to turn on this.
                
                Also if there is a tag name conflict from your data source, for
                example, you have a tag named as `val` or `ts`, you need to turn on
                this option to avoid the conflict.
                
                Default to `false` for compatibility.
              "%
              | optional,
            password
              | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
              | doc "This is required if your instance has authentication enabled."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            username
              | js2n.Nullable String
              | doc "This is required if your instance has authentication enabled."
              | optional,
            ..
          },
      "definitions.vector::sinks::honeycomb::config::HoneycombConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            api_key
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The API key that is used to authenticate against Honeycomb.",
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "The compression algorithm to use."
              | optional,
            dataset | String | doc "The dataset to which logs are sent.",
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint
              | String
              | doc "Honeycomb's endpoint to send logs to"
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            ..
          },
      "definitions.vector::sinks::http::config::HttpSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                auth
                  | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                headers
                  | js2n.Nullable ({ _ | String })
                  | doc "A list of custom headers to add to each request."
                  | optional,
                method
                  | js2n.OneOf
                    [
                      js2n.Const "get",
                      js2n.Const "head",
                      js2n.Const "post",
                      js2n.Const "put",
                      js2n.Const "delete",
                      js2n.Const "options",
                      js2n.Const "trace",
                      js2n.Const "patch"
                    ]
                  | doc "The HTTP method to use when making the request."
                  | optional,
                payload_prefix
                  | String
                  | doc m%"
                    This option is ignored if the encoding is not character delimited JSON.
                    
                    If specified, the `payload_suffix` must also be specified and together they must produce a valid JSON object.
                  "%
                  | optional,
                payload_suffix
                  | String
                  | doc m%"
                    This option is ignored if the encoding is not character delimited JSON.
                    
                    If specified, the `payload_prefix` must also be specified and together they must produce a valid JSON object.
                  "%
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::http::RequestConfig"
                  | { _ | Dyn }
                  | doc "Outbound HTTP request settings."
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                uri
                  | refs."definitions.vector::sinks::util::uri::UriSerde"
                  | String
                  | doc "This should include the protocol and host, but can also include the port, path, and any other valid part of a URI.",
                ..
              }
            ],
      "definitions.vector::sinks::humio::logs::HumioLogsConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::splunk_hec::common::util::SplunkHecDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            endpoint
              | String
              | doc m%"
                The scheme (`http` or `https`) must be specified. No path should be included since the paths defined
                by the [`Splunk`][splunk] API are used.
                
                [splunk]: https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/HECRESTendpoints
              "%
              | optional,
            event_type
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "If unset, Humio defaults it to none."
              | optional,
            host_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
              | String
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used if log
                events are Legacy namespaced, or the semantic meaning of "host" is used, if defined.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            index
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                In public-facing APIs, this must (if present) be equal to the repository used to create the ingest token used for authentication.
                
                In private cluster setups, Humio can be configured to allow these to be different.
                
                For more information, see [Humio’s Format of Data][humio_data_format].
                
                [humio_data_format]: https://docs.humio.com/integrations/data-shippers/hec/#format-of-data
              "%
              | optional,
            indexed_fields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                    String
                  ]
              )
              | doc m%"
                Can be used to tag events by specifying fields starting with `#`.
                
                For more information, see [Humio’s Format of Data][humio_data_format].
                
                [humio_data_format]: https://docs.humio.com/integrations/data-shippers/hec/#format-of-data
              "%
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            source
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "Typically the filename the logs originated from. Maps to `@source` in Humio."
              | optional,
            timestamp_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
              | String
              | doc m%"
                By default, either the [global `log_schema.timestamp_key` option][global_timestamp_key] is used
                if log events are Legacy namespaced, or the semantic meaning of "timestamp" is used, if defined.
                
                [global_timestamp_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.timestamp_key
              "%
              | optional,
            timestamp_nanos_key
              | js2n.Nullable String
              | doc "Overrides the name of the log field used to retrieve the nanosecond-enabled timestamp to send to Humio."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            token
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The Humio ingestion token.",
            ..
          },
      "definitions.vector::sinks::humio::metrics::HumioMetricsConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::transforms::metric_to_log::MetricToLogConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::splunk_hec::common::util::SplunkHecDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                endpoint
                  | String
                  | doc m%"
                    The scheme (`http` or `https`) must be specified. No path should be included since the paths defined
                    by the [`Splunk`][splunk] API are used.
                    
                    [splunk]: https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/HECRESTendpoints
                  "%
                  | optional,
                event_type
                  | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                  | doc "If unset, Humio defaults it to none."
                  | optional,
                host_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc m%"
                    By default, the [global `log_schema.host_key` option][global_host_key] is used if log
                    events are Legacy namespaced, or the semantic meaning of "host" is used, if defined.
                    
                    [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
                  "%
                  | optional,
                index
                  | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                  | doc m%"
                    In public-facing APIs, this must (if present) be equal to the repository used to create the ingest token used for authentication.
                    
                    In private cluster setups, Humio can be configured to allow these to be different.
                    
                    For more information, see [Humio’s Format of Data][humio_data_format].
                    
                    [humio_data_format]: https://docs.humio.com/integrations/data-shippers/hec/#format-of-data
                  "%
                  | optional,
                indexed_fields
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                        String
                      ]
                  )
                  | doc m%"
                    Can be used to tag events by specifying fields starting with `#`.
                    
                    For more information, see [Humio’s Format of Data][humio_data_format].
                    
                    [humio_data_format]: https://docs.humio.com/integrations/data-shippers/hec/#format-of-data
                  "%
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                source
                  | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                  | doc "Typically the filename the metrics originated from. Maps to `@source` in Humio."
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                token
                  | refs."definitions.vector_common::sensitive_string::SensitiveString"
                  | String
                  | doc "The Humio ingestion token.",
                ..
              }
            ],
      "definitions.vector::sinks::influxdb::logs::InfluxDbLogsConfig" =
        std.contract.Sequence
            [
              refs."definitions.core::option::Option%3Cvector::sinks::influxdb::InfluxDb1Settings%3E",
              refs."definitions.core::option::Option%3Cvector::sinks::influxdb::InfluxDb2Settings%3E",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::transformer::Transformer"
                  | { _ | Dyn }
                  | doc "Transformations to prepare an event for serialization."
                  | optional,
                endpoint
                  | String
                  | doc "This should be a full HTTP URI, including the scheme, host, and port.",
                host_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                  | doc "The setting of `log_schema.host_key`, usually `host`, is used here by default."
                  | optional,
                measurement
                  | js2n.Nullable String
                  | doc "The name of the InfluxDB measurement that is written to."
                  | optional,
                message_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                  | doc "The setting of `log_schema.message_key`, usually `message`, is used here by default."
                  | optional,
                namespace
                  | js2n.Nullable String
                  | doc "When specified, the measurement name is `<namespace>.vector`."
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                source_type_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                  | doc "The setting of `log_schema.source_type_key`, usually `source_type`, is used here by default."
                  | optional,
                tags
                  | Array String
                  | doc m%"
                    By default Vector adds `metric_type` as well as the configured `log_schema.host_key` and
                    `log_schema.source_type_key` options.
                  "%
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::influxdb::metrics::InfluxDbConfig" =
        std.contract.Sequence
            [
              refs."definitions.core::option::Option%3Cvector::sinks::influxdb::InfluxDb1Settings%3E",
              refs."definitions.core::option::Option%3Cvector::sinks::influxdb::InfluxDb2Settings%3E",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                default_namespace
                  | js2n.Nullable String
                  | doc m%"
                    This namespace is only used if a metric has no existing namespace. When a namespace is
                    present, it is used as a prefix to the metric name, and separated with a period (`.`).
                  "%
                  | optional,
                endpoint
                  | String
                  | doc "This should be a full HTTP URI, including the scheme, host, and port.",
                quantiles
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ]
                  )
                  | doc "The list of quantiles to calculate when sending distribution metrics."
                  | optional,
                request
                  | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
                  | { _ | Dyn }
                  | doc m%"
                    Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                    
                    Note that the retry backoff policy follows the Fibonacci sequence.
                  "%
                  | optional,
                tags
                  | js2n.Nullable ({ _ | String })
                  | doc "A map of additional tags, in the key/value pair format, to add to each measurement."
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::kafka::config::KafkaSinkConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::kafka::KafkaAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                bootstrap_servers
                  | String
                  | doc m%"
                    These are the servers in a Kafka cluster that a client should use to bootstrap its
                    connection to the cluster, allowing discovery of all the other hosts in the cluster.
                    
                    Must be in the form of `host:port`, and comma-separated.
                  "%,
                compression
                  | js2n.OneOf
                    [
                      js2n.Const "none",
                      js2n.Const "gzip",
                      js2n.Const "snappy",
                      js2n.Const "lz4",
                      js2n.Const "zstd"
                    ]
                  | doc "Supported compression types for Kafka."
                  | optional,
                encoding
                  | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
                  | { _ | Dyn }
                  | doc "Configures how events are encoded into raw bytes.",
                headers_key
                  | js2n.Nullable String
                  | doc "If omitted, no headers are written."
                  | optional,
                healthcheck_topic
                  | js2n.Nullable String
                  | doc "It is ignored when healthcheck is disabled."
                  | optional,
                key_field
                  | js2n.Nullable String
                  | doc m%"
                    If the field does not exist in the log or in the tags, a blank value is used. If
                    unspecified, the key is not sent.
                    
                    Kafka uses a hash of the key to choose the partition or uses round-robin if the record has
                    no key.
                  "%
                  | optional,
                librdkafka_options
                  | { _ | String }
                  | doc m%"
                    For more information on configuration options, see [Configuration properties][config_props_docs].
                    
                    [config_props_docs]: https://github.com/edenhill/librdkafka/blob/master/CONFIGURATION.md
                  "%
                  | optional,
                message_timeout_ms
                  | refs."definitions.serde_with::DurationMilliSeconds"
                  | Number
                  | doc "Local message timeout, in milliseconds."
                  | optional,
                socket_timeout_ms
                  | refs."definitions.serde_with::DurationMilliSeconds"
                  | Number
                  | doc "Default timeout, in milliseconds, for network requests."
                  | optional,
                topic
                  | refs."definitions.vector::template::Template"
                  | String
                  | doc "The Kafka topic name to write events to.",
                ..
              }
            ],
      "definitions.vector::sinks::loki::config::LokiConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | optional,
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc m%"
                Compression configuration.
                Snappy compression implies sending push requests as Protocol Buffers.
              "%
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            endpoint
              | refs."definitions.vector::sinks::util::uri::UriSerde"
              | String
              | doc "The `path` value is appended to this.",
            labels
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.vector::template::Template", String ]
              }
              | doc m%"
                Both keys and values are templateable, which enables you to attach dynamic labels to events.
                
                Valid label keys include `*`, and prefixes ending with `*`, to allow for the expansion of
                objects into multiple labels. See [Label expansion][label_expansion] for more information.
                
                Note: If the set of labels has high cardinality, this can cause drastic performance issues
                with Loki. To prevent this from happening, reduce the number of unique label keys and
                values.
                
                [label_expansion]: https://vector.dev/docs/reference/configuration/sinks/loki/#label-expansion
              "%
              | optional,
            out_of_order_action
              | js2n.OneOf
                [
                  js2n.Const "accept",
                  js2n.Const "rewrite_timestamp",
                  js2n.Const "drop"
                ]
              | doc m%"
                Some sources may generate events with timestamps that aren't in chronological order. Even though the
                sink sorts the events before sending them to Loki, there is a chance that another event could come in
                that is out of order with the latest events sent to Loki. Prior to Loki 2.4.0, this
                was not supported and would result in an error during the push request.
                
                If you're using Loki 2.4.0 or newer, `Accept` is the preferred action, which lets Loki handle
                any necessary sorting/reordering. If you're using an earlier version, then you must use `Drop`
                or `RewriteTimestamp` depending on which option makes the most sense for your use case.
              "%
              | optional,
            path
              | String
              | doc "The path to use in the URL of the Loki instance."
              | optional,
            remove_label_fields
              | Bool
              | doc "Whether or not to delete fields from the event when they are used as labels."
              | optional,
            remove_structured_metadata_fields
              | Bool
              | doc "Whether or not to delete fields from the event when they are used in structured metadata."
              | optional,
            remove_timestamp
              | Bool
              | doc "The timestamp is still sent as event metadata for Loki to use for indexing."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            structured_metadata
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.vector::template::Template", String ]
              }
              | doc m%"
                Both keys and values are templateable, which enables you to attach dynamic structured metadata to events.
                
                Valid metadata keys include `*`, and prefixes ending with `*`, to allow for the expansion of
                objects into multiple metadata entries. This follows the same logic as [Label expansion][label_expansion].
                
                [label_expansion]: https://vector.dev/docs/reference/configuration/sinks/loki/#label-expansion
              "%
              | optional,
            tenant_id
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                When running Loki locally, a tenant ID is not required.
                
                [tenant_id]: https://grafana.com/docs/loki/latest/operations/multi-tenancy/
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::mezmo::LogdnaConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sinks::mezmo::MezmoConfig",
              { _ | Dyn }
            ],
      "definitions.vector::sinks::mezmo::MezmoConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            api_key
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The Ingestion API key.",
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            default_app
              | String
              | doc "The default app that is set for events that do not contain a `file` or `app` field."
              | optional,
            default_env
              | String
              | doc "The default environment that is set for events that do not contain an `env` field."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint
              | refs."definitions.vector::sinks::util::uri::UriSerde"
              | String
              | doc "Both IP address and hostname are accepted formats."
              | optional,
            hostname
              | refs."definitions.vector::template::Template"
              | String
              | doc "The hostname that is attached to each batch of events.",
            ip
              | js2n.Nullable String
              | doc "The IP address that is attached to each batch of events."
              | optional,
            mac
              | js2n.Nullable String
              | doc "The MAC address that is attached to each batch of events."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            tags
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.vector::template::Template", String ]
                ))
              | doc "The tags that are attached to each batch of events."
              | optional,
            ..
          },
      "definitions.vector::sinks::mqtt::config::MqttSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            clean_session
              | Bool
              | doc "If set to true, the MQTT session is cleaned on login."
              | optional,
            client_id | js2n.Nullable String | doc "MQTT client ID." | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            host
              | String
              | doc "MQTT server address (The broker’s domain name or IP address).",
            keep_alive
              | std.number.Integer
              | js2n.number.Maximum 65535
              | js2n.number.Minimum 0
              | doc "Connection keep-alive interval."
              | optional,
            password | js2n.Nullable String | doc "MQTT password." | optional,
            port
              | std.number.Integer
              | js2n.number.Maximum 65535
              | js2n.number.Minimum 0
              | doc "TCP port of the MQTT server to connect to."
              | optional,
            quality_of_service
              | js2n.OneOf
                [
                  js2n.Const "atleastonce",
                  js2n.Const "atmostonce",
                  js2n.Const "exactlyonce"
                ]
              | doc "Supported Quality of Service types for MQTT."
              | optional,
            retain
              | Bool
              | doc "Whether the messages should be retained by the server"
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            topic
              | refs."definitions.vector::template::Template"
              | String
              | doc "MQTT publish topic (templates allowed)",
            user | js2n.Nullable String | doc "MQTT username." | optional,
            ..
          },
      "definitions.vector::sinks::nats::config::NatsSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::nats::NatsAuthConfig%3E"
              | optional,
            connection_name
              | String
              | doc "[nats_connection_name]: https://docs.nats.io/using-nats/developer/connecting/name"
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            jetstream
              | Bool
              | doc m%"
                If set, the `subject` must belong to an existing JetStream stream.
                
                [jetstream]: https://docs.nats.io/nats-concepts/jetstream
              "%
              | optional,
            request
              | {
                adaptive_concurrency
                  | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                  | { _ | Dyn }
                  | doc m%"
                    These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                    unstable performance and sink behavior. Proceed with caution.
                  "%
                  | optional,
                concurrency
                  | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                  | doc m%"
                    Configuration for outbound request concurrency.
                    
                    This can be set either to one of the below enum values or to a positive integer, which denotes
                    a fixed concurrency limit.
                  "%
                  | optional,
                rate_limit_duration_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The time window used for the `rate_limit_num` option."
                  | optional,
                rate_limit_num
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                  | optional,
                retry_attempts
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of retries to make for failed requests."
                  | optional,
                retry_initial_backoff_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                  | optional,
                retry_jitter_mode
                  | refs."definitions.vector::sinks::util::retries::JitterMode"
                  | doc "The jitter mode to use for retry backoff behavior."
                  | optional,
                retry_max_duration_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "The maximum amount of time to wait between retries."
                  | optional,
                timeout_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc m%"
                    Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                    create orphaned requests, pile on retries, and result in duplicate data downstream.
                  "%
                  | optional,
                ..
              }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            subject
              | refs."definitions.vector::template::Template"
              | String
              | doc "[nats_subject]: https://docs.nats.io/nats-concepts/subjects",
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            url
              | String
              | doc m%"
                The URL must take the form of `nats://server:port`.
                If the port is not specified it defaults to 4222.
                
                [nats_url]: https://docs.nats.io/using-nats/developer/connecting#nats-url
              "%,
            ..
          },
      "definitions.vector::sinks::new_relic::config::NewRelicConfig" =
        {
            account_id
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The New Relic account ID.",
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            api
              | js2n.OneOf
                [ js2n.Const "events", js2n.Const "metrics", js2n.Const "logs" ]
              | doc "New Relic API endpoint.",
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            license_key
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "A valid New Relic license key.",
            region
              | js2n.OneOf
                [ js2n.Null, js2n.OneOf [ js2n.Const "us", js2n.Const "eu" ] ]
              | doc "New Relic region."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            ..
          },
      "definitions.vector::sinks::opentelemetry::OpenTelemetryConfig" =
        {
            protocol
              | refs."definitions.vector::sinks::http::config::HttpSinkConfig"
              | {
                type | std.contract.Equal "http" | doc "Send data over HTTP.",
                ..
              }
              | doc "Protocol configuration",
            ..
          },
      "definitions.vector::sinks::papertrail::PapertrailConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            endpoint
              | refs."definitions.vector::sinks::util::uri::UriSerde"
              | String
              | doc "The TCP endpoint to send logs to.",
            keepalive
              | refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E"
              | optional,
            process
              | refs."definitions.vector::template::Template"
              | String
              | doc "The value to use as the `process` in Papertrail."
              | optional,
            send_buffer_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "Configures the send buffer size using the `SO_SNDBUF` option on the socket."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::prometheus::exporter::PrometheusExporterConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "The metrics are exposed at the typical Prometheus exporter path, `/metrics`."
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | optional,
            buckets
              | Array (
                std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ]
              )
              | doc "[dist_metric_docs]: https://vector.dev/docs/about/under-the-hood/architecture/data-model/metric/#distribution"
              | optional,
            default_namespace
              | js2n.Nullable String
              | doc m%"
                This namespace is only used if a metric has no existing namespace. When a namespace is
                present, it is used as a prefix to the metric name, and separated with an underscore (`_`).
                
                It should follow the Prometheus [naming conventions][prom_naming_docs].
                
                [prom_naming_docs]: https://prometheus.io/docs/practices/naming/#metric-names
              "%
              | optional,
            distributions_as_summaries
              | Bool
              | doc m%"
                While distributions as a lossless way to represent a set of samples for a
                metric is supported, Prometheus clients (the application being scraped, which is this sink) must
                aggregate locally into either an aggregated histogram or aggregated summary.
                
                [dist_metric_docs]: https://vector.dev/docs/about/under-the-hood/architecture/data-model/metric/#distribution
                [prom_agg_hist_docs]: https://prometheus.io/docs/concepts/metric_types/#histogram
                [prom_agg_summ_docs]: https://prometheus.io/docs/concepts/metric_types/#summary
              "%
              | optional,
            flush_period_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc m%"
                On the flush interval, if a metric has not been seen since the last flush interval, it is
                considered expired and is removed.
                
                Be sure to configure this value higher than your client’s scrape interval.
              "%
              | optional,
            quantiles
              | Array (
                std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ]
              )
              | doc "[dist_metric_docs]: https://vector.dev/docs/about/under-the-hood/architecture/data-model/metric/#distribution"
              | optional,
            suppress_timestamp
              | Bool
              | doc m%"
                This can sometimes be useful when the source of metrics leads to their timestamps being too
                far in the past for Prometheus to allow them, such as when aggregating metrics over long
                time periods, or when replaying old metrics from a disk buffer.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::prometheus::remote_write::config::RemoteWriteConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                password = String,
                                strategy = js2n.Const "basic",
                                user = String,
                              },
                          required =
                            { password = true, strategy = true, user = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                strategy = js2n.Const "bearer",
                                token =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector_common::sensitive_string::SensitiveString",
                                        String
                                      ],
                              },
                          required = { strategy = true, token = true, },
                        },
                      std.contract.Sequence
                        [
                          std.contract.any_of
                            [
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        access_key_id =
                                          std.contract.Sequence
                                              [
                                                refs."definitions.vector_common::sensitive_string::SensitiveString",
                                                String
                                              ],
                                        assume_role = js2n.Nullable String,
                                        external_id = js2n.Nullable String,
                                        region = js2n.Nullable String,
                                        secret_access_key =
                                          std.contract.Sequence
                                              [
                                                refs."definitions.vector_common::sensitive_string::SensitiveString",
                                                String
                                              ],
                                      },
                                  required =
                                    {
                                        access_key_id = true,
                                        secret_access_key = true,
                                      },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        credentials_file = String,
                                        profile = String,
                                      },
                                  required = { credentials_file = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        assume_role = String,
                                        external_id = js2n.Nullable String,
                                        imds =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      connect_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                      max_attempts =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                4294967295,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      read_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        load_timeout_secs =
                                          js2n.Nullable
                                              (std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum
                                                    9007199254740991,
                                                  js2n.number.Minimum 0
                                                ]),
                                        region = js2n.Nullable String,
                                      },
                                  required = { assume_role = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        imds =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      connect_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                      max_attempts =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                4294967295,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      read_timeout_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              refs."definitions.serde_with::DurationSeconds",
                                                              Number
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        load_timeout_secs =
                                          js2n.Nullable
                                              (std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum
                                                    9007199254740991,
                                                  js2n.number.Minimum 0
                                                ]),
                                        region = js2n.Nullable String,
                                      },
                                  required = {},
                                }
                            ],
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { strategy = js2n.Const "aws", },
                              required = { strategy = true, },
                            }
                        ]
                    ]
                ]
              | doc "Authentication strategies."
              | optional,
            aws
              | refs."definitions.core::option::Option%3Cvector::aws::region::RegionOrEndpoint%3E"
              | optional,
            batch
              | {
                aggregate
                  | Bool
                  | doc "Whether or not to aggregate metrics within a batch."
                  | optional,
                ..
              }
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "The batch config for remote write."
              | optional,
            buckets
              | Array (
                std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ]
              )
              | doc "[dist_metric_docs]: https://vector.dev/docs/about/under-the-hood/architecture/data-model/metric/#distribution"
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            default_namespace
              | js2n.Nullable String
              | doc m%"
                This namespace is only used if a metric has no existing namespace. When a namespace is
                present, it is used as a prefix to the metric name, and separated with an underscore (`_`).
                
                It should follow the Prometheus [naming conventions][prom_naming_docs].
                
                [prom_naming_docs]: https://prometheus.io/docs/practices/naming/#metric-names
              "%
              | optional,
            endpoint
              | String
              | doc "The endpoint should include the scheme and the path to write to.",
            quantiles
              | Array (
                std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ]
              )
              | doc "[dist_metric_docs]: https://vector.dev/docs/about/under-the-hood/architecture/data-model/metric/#distribution"
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            tenant_id
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                If set, a header named `X-Scope-OrgID` is added to outgoing requests with the value of this setting.
                
                This may be used by Cortex or other remote services to identify the tenant making the request.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::pulsar::config::PulsarSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | js2n.Nullable
                {
                  name
                    | js2n.Nullable String
                    | doc m%"
                      This can be used either for basic authentication (username/password) or JWT authentication.
                      When used for JWT, the value should be `token`.
                    "%
                    | optional,
                  oauth2
                    | js2n.Nullable
                      {
                        audience
                          | js2n.Nullable String
                          | doc "The OAuth2 audience."
                          | optional,
                        credentials_url
                          | String
                          | doc "A data URL is also supported.",
                        issuer_url | String | doc "The issuer URL.",
                        scope
                          | js2n.Nullable String
                          | doc "The OAuth2 scope."
                          | optional,
                        ..
                      }
                    | doc "OAuth2-specific authentication configuration."
                    | optional,
                  token
                    | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
                    | doc m%"
                      This can be used either for basic authentication (username/password) or JWT authentication.
                      When used for JWT, the value should be the signed JWT, in the compact representation.
                    "%
                    | optional,
                  ..
                }
              | doc "Authentication configuration."
              | optional,
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 4294967295,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    Note this is an unsigned 32 bit integer which is a smaller capacity than
                    many of the other sink batch settings.
                  "%
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            compression
              | js2n.OneOf
                [
                  js2n.Const "none",
                  js2n.Const "lz4",
                  js2n.Const "zlib",
                  js2n.Const "zstd",
                  js2n.Const "snappy"
                ]
              | doc "Supported compression types for Pulsar."
              | optional,
            connection_retry_options
              | js2n.Nullable
                {
                  connection_timeout_secs
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 9007199254740991,
                          js2n.number.Minimum 0
                        ])
                    | doc "Time limit to establish a connection."
                    | optional,
                  keep_alive_secs
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 9007199254740991,
                          js2n.number.Minimum 0
                        ])
                    | doc "Keep-alive interval for each broker connection."
                    | optional,
                  max_backoff_secs
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 9007199254740991,
                          js2n.number.Minimum 0
                        ])
                    | doc "Maximum delay between reconnection retries."
                    | optional,
                  max_retries
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 4294967295,
                          js2n.number.Minimum 0
                        ])
                    | doc "Maximum number of connection retries."
                    | optional,
                  min_backoff_ms
                    | js2n.Nullable
                      (std.contract.Sequence
                        [
                          std.number.Integer,
                          js2n.number.Maximum 9007199254740991,
                          js2n.number.Minimum 0
                        ])
                    | doc "Minimum delay between connection retries."
                    | optional,
                  ..
                }
              | doc "Custom connection retry options configuration for the Pulsar client."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            endpoint
              | String
              | doc "The endpoint should specify the pulsar protocol and port.",
            partition_key_field
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E"
              | doc m%"
                If the field does not exist in the log event or metric tags, a blank value will be used.
                
                If omitted, the key is not sent.
                
                Pulsar uses a hash of the key to choose the topic-partition or uses round-robin if the record has no key.
              "%
              | optional,
            producer_name
              | js2n.Nullable String
              | doc "The name of the producer. If not specified, the default name assigned by Pulsar is used."
              | optional,
            properties_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E"
              | doc "If omitted, no properties will be written."
              | optional,
            topic
              | refs."definitions.vector::template::Template"
              | String
              | doc "The Pulsar topic name to write events to.",
            ..
          },
      "definitions.vector::sinks::redis::config::RedisSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            data_type
              | js2n.OneOf [ js2n.Const "list", js2n.Const "channel" ]
              | doc "Redis data type to store messages in."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            endpoint
              | String
              | doc m%"
                The URL _must_ take the form of `protocol://server:port/db` where the protocol can either be
                `redis` or `rediss` for connections secured via TLS.
              "%,
            key
              | refs."definitions.vector::template::Template"
              | String
              | doc "The Redis key to publish messages to.",
            list_option
              | js2n.Nullable
                {
                  method
                    | js2n.OneOf [ js2n.Const "rpush", js2n.Const "lpush" ]
                    | doc "The method to use for pushing messages into a `list`.",
                  ..
                }
              | doc "List-specific options."
              | optional,
            request
              | {
                adaptive_concurrency
                  | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                  | { _ | Dyn }
                  | doc m%"
                    These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                    unstable performance and sink behavior. Proceed with caution.
                  "%
                  | optional,
                concurrency
                  | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                  | doc m%"
                    Configuration for outbound request concurrency.
                    
                    This can be set either to one of the below enum values or to a positive integer, which denotes
                    a fixed concurrency limit.
                  "%
                  | optional,
                rate_limit_duration_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The time window used for the `rate_limit_num` option."
                  | optional,
                rate_limit_num
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                  | optional,
                retry_attempts
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of retries to make for failed requests."
                  | optional,
                retry_initial_backoff_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                  | optional,
                retry_jitter_mode
                  | refs."definitions.vector::sinks::util::retries::JitterMode"
                  | doc "The jitter mode to use for retry backoff behavior."
                  | optional,
                retry_max_duration_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "The maximum amount of time to wait between retries."
                  | optional,
                timeout_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc m%"
                    Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                    create orphaned requests, pile on retries, and result in duplicate data downstream.
                  "%
                  | optional,
                ..
              }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            ..
          },
      "definitions.vector::sinks::sematext::Region" =
        js2n.OneOf [ js2n.Const "us", js2n.Const "eu" ],
      "definitions.vector::sinks::sematext::logs::SematextLogsConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::transformer::Transformer"
              | { _ | Dyn }
              | doc "Transformations to prepare an event for serialization."
              | optional,
            endpoint
              | js2n.Nullable String
              | doc "Setting this option overrides the `region` option."
              | optional,
            region
              | refs."definitions.vector::sinks::sematext::Region"
              | doc "The Sematext region to send data to."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            token
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The token that is used to write to Sematext.",
            ..
          },
      "definitions.vector::sinks::sematext::metrics::SematextMetricsConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            default_namespace
              | String
              | doc m%"
                This namespace is only used if a metric has no existing namespace. When a namespace is
                present, it is used as a prefix to the metric name, and separated with a period (`.`).
              "%,
            endpoint
              | js2n.Nullable String
              | doc "Setting this option overrides the `region` option."
              | optional,
            region
              | refs."definitions.vector::sinks::sematext::Region"
              | doc "The Sematext region to send data to."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            token
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "The token that is used to write to Sematext.",
            ..
          },
      "definitions.vector::sinks::socket::SocketSinkConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                address = String,
                                keepalive =
                                  refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E",
                                send_buffer_bytes =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                                tls =
                                  refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E",
                              },
                          required = { address = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "tcp", },
                          required = { mode = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                encoding =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector::codecs::encoding::config::EncodingConfig",
                                        { _ | Dyn }
                                      ],
                              },
                          required = { encoding = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                address = String,
                                send_buffer_bytes =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                              },
                          required = { address = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "udp", },
                          required = { mode = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                path =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.stdlib::PathBuf",
                                        String
                                      ],
                              },
                          required = { path = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "unix_stream", },
                          required = { mode = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                path =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.stdlib::PathBuf",
                                        String
                                      ],
                              },
                          required = { path = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "unix_datagram", },
                          required = { mode = true, },
                        }
                    ]
                ],
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::splunk_hec::common::acknowledgements::HecClientAcknowledgementsConfig" =
        std.contract.Sequence
            [
              {
                indexer_acknowledgements_enabled
                  | Bool
                  | doc "[splunk_indexer_ack_docs]: https://docs.splunk.com/Documentation/Splunk/8.2.3/Data/AboutHECIDXAck"
                  | optional,
                max_pending_acks
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "Once reached, the sink begins applying backpressure."
                  | optional,
                query_interval
                  | std.number.Integer
                  | js2n.number.Maximum 255
                  | js2n.number.Minimum 1
                  | doc "The amount of time to wait between queries to the Splunk HEC indexer acknowledgement endpoint."
                  | optional,
                retry_limit
                  | std.number.Integer
                  | js2n.number.Maximum 255
                  | js2n.number.Minimum 1
                  | doc "The maximum number of times an acknowledgement ID is queried for its status."
                  | optional,
                ..
              },
              {
                enabled
                  | js2n.Nullable Bool
                  | doc m%"
                    When enabled for a sink, any source connected to that sink, where the source supports
                    end-to-end acknowledgements as well, waits for events to be acknowledged by **all
                    connected** sinks before acknowledging them at the source.
                    
                    Enabling or disabling acknowledgements at the sink level takes precedence over any global
                    [`acknowledgements`][global_acks] configuration.
                    
                    [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::splunk_hec::logs::config::HecLogsSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector::sinks::splunk_hec::common::acknowledgements::HecClientAcknowledgementsConfig"
              | { _ | Dyn }
              | doc "Splunk HEC acknowledgement configuration."
              | optional,
            auto_extract_timestamp
              | js2n.Nullable Bool
              | doc m%"
                This option is only relevant to Splunk v8.x and above, and is only applied when
                `endpoint_target` is set to `event`.
                
                Setting this to `true` causes Splunk to extract the timestamp from the message text
                rather than use the timestamp embedded in the event. The timestamp must be in the format
                `yyyy-mm-dd hh:mm:ss`.
              "%
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::splunk_hec::common::util::SplunkHecDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            default_token
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "If an event has a token set in its secrets (`splunk_hec_token`), it prevails over the one set here.",
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            endpoint
              | String
              | doc m%"
                The scheme (`http` or `https`) must be specified. No path should be included since the paths defined
                by the [`Splunk`][splunk] API are used.
                
                [splunk]: https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/HECRESTendpoints
              "%,
            endpoint_target
              | js2n.OneOf [ js2n.Const "raw", js2n.Const "event" ]
              | doc "Splunk HEC endpoint configuration."
              | optional,
            host_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E"
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used if log
                events are Legacy namespaced, or the semantic meaning of "host" is used, if defined.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            index
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "If not specified, the default index defined within Splunk is used."
              | optional,
            indexed_fields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.vector_lookup::lookup_v2::ConfigValuePath",
                    String
                  ]
              )
              | doc "[splunk_field_index_docs]: https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/IFXandHEC"
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            source
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                This is typically the filename the logs originated from.
                
                If unset, the Splunk collector sets it.
              "%
              | optional,
            sourcetype
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "If unset, Splunk defaults to `httpevent`."
              | optional,
            timestamp_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E"
              | doc m%"
                By default, either the [global `log_schema.timestamp_key` option][global_timestamp_key] is used
                if log events are Legacy namespaced, or the semantic meaning of "timestamp" is used, if defined.
                
                [global_timestamp_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.timestamp_key
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::splunk_hec::metrics::config::HecMetricsSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector::sinks::splunk_hec::common::acknowledgements::HecClientAcknowledgementsConfig"
              | { _ | Dyn }
              | doc "Splunk HEC acknowledgement configuration."
              | optional,
            batch
              | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::splunk_hec::common::util::SplunkHecDefaultBatchSettings%3E"
              | { _ | Dyn }
              | doc "Event batching behavior."
              | optional,
            compression
              | refs."definitions.vector::sinks::util::buffer::compression::Compression"
              | doc "All compression algorithms use the default compression level unless otherwise specified."
              | optional,
            default_namespace
              | js2n.Nullable String
              | doc m%"
                This namespace is only used if a metric has no existing namespace. When a namespace is
                present, it is used as a prefix to the metric name, and separated with a period (`.`).
              "%
              | optional,
            default_token
              | refs."definitions.vector_common::sensitive_string::SensitiveString"
              | String
              | doc "If an event has a token set in its metadata, it prevails over the one set here.",
            endpoint
              | String
              | doc m%"
                The scheme (`http` or `https`) must be specified. No path should be included since the paths defined
                by the [`Splunk`][splunk] API are used.
                
                [splunk]: https://docs.splunk.com/Documentation/Splunk/8.0.0/Data/HECRESTendpoints
              "%,
            host_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            index
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "If not specified, the default index defined within Splunk is used."
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            source
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                This is typically the filename the logs originated from.
                
                If unset, the Splunk collector sets it.
              "%
              | optional,
            sourcetype
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc "If unset, Splunk defaults to `httpevent`."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sinks::statsd::config::StatsdSinkConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector::sinks::util::service::net::HostAndPort",
                                        String
                                      ],
                                keepalive =
                                  refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E",
                                send_buffer_size =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                                tls =
                                  refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E",
                              },
                          required = { address = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "tcp", },
                          required = { mode = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector::sinks::util::service::net::HostAndPort",
                                        String
                                      ],
                                send_buffer_size =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                              },
                          required = { address = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "udp", },
                          required = { mode = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                path =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.stdlib::PathBuf",
                                        String
                                      ],
                                send_buffer_size =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                                unix_mode =
                                  js2n.OneOf
                                      [
                                        js2n.Const "Datagram",
                                        js2n.Const "Stream"
                                      ],
                              },
                          required = { path = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "unix", },
                          required = { mode = true, },
                        }
                    ]
                ],
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | {
                    max_bytes
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc m%"
                        This is based on the uncompressed size of the batched events, before they are
                        serialized/compressed.
                      "%
                      | optional,
                    max_events
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            std.number.Integer,
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum 0
                          ])
                      | doc "The maximum size of a batch before it is flushed."
                      | optional,
                    timeout_secs
                      | js2n.Nullable
                        (std.contract.Sequence
                          [
                            js2n.number.Maximum 9007199254740991,
                            js2n.number.Minimum (-9007199254740991)
                          ])
                      | doc "The maximum age of a batch before it is flushed."
                      | optional,
                    ..
                  }
                  | doc "Event batching behavior."
                  | optional,
                default_namespace
                  | js2n.Nullable String
                  | doc m%"
                    This namespace is only used if a metric has no existing namespace. When a namespace is
                    present, it is used as a prefix to the metric name, and separated with a period (`.`).
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings" =
        {
            decrease_ratio
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Valid values are greater than `0` and less than `1`. Smaller values cause the algorithm to scale back rapidly
                when latency increases.
                
                Note that the new limit is rounded down after applying this ratio.
              "%
              | optional,
            ewma_alpha
              | js2n.number.Maximum 1
              | js2n.number.Minimum 0
              | doc m%"
                Valid values are greater than `0` and less than `1`.
                
                ARC uses an exponentially weighted moving average (EWMA) of past RTT measurements as a reference to compare with
                the current RTT. Smaller values cause this reference to adjust more slowly, which may be useful if a service has
                unusually high response variability.
              "%
              | optional,
            initial_concurrency
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 1
              | doc m%"
                It is recommended to set this value to your service's average limit if you're seeing that it takes a
                long time to ramp up adaptive concurrency after a restart. You can find this value by looking at the
                `adaptive_concurrency_limit` metric.
              "%
              | optional,
            max_concurrency_limit
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 1
              | doc "The adaptive request concurrency limit will not go above this bound. This is put in place as a safeguard."
              | optional,
            rtt_deviation_scale
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                Valid values are greater than or equal to `0`, and we expect reasonable values to range from `1.0` to `3.0`.
                
                When calculating the past RTT average, we also compute a secondary “deviation” value that indicates how variable
                those values are. We use that deviation when comparing the past RTT average to the current measurements, so we
                can ignore increases in RTT that are within an expected range. This factor is used to scale up the deviation to
                an appropriate range.  Larger values cause the algorithm to ignore larger increases in the RTT.
              "%
              | optional,
            ..
          },
      "definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::greptimedb::GreptimeDBDefaultBatchSettings%3E" =
        {
            max_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc m%"
                This is based on the uncompressed size of the batched events, before they are
                serialized/compressed.
              "%
              | optional,
            max_events
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "The maximum size of a batch before it is flushed."
              | optional,
            timeout_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ])
              | doc "The maximum age of a batch before it is flushed."
              | optional,
            ..
          },
      "definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::splunk_hec::common::util::SplunkHecDefaultBatchSettings%3E" =
        {
            max_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc m%"
                This is based on the uncompressed size of the batched events, before they are
                serialized/compressed.
              "%
              | optional,
            max_events
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "The maximum size of a batch before it is flushed."
              | optional,
            timeout_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ])
              | doc "The maximum age of a batch before it is flushed."
              | optional,
            ..
          },
      "definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::BulkSizeBasedDefaultBatchSettings%3E" =
        {
            max_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc m%"
                This is based on the uncompressed size of the batched events, before they are
                serialized/compressed.
              "%
              | optional,
            max_events
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "The maximum size of a batch before it is flushed."
              | optional,
            timeout_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ])
              | doc "The maximum age of a batch before it is flushed."
              | optional,
            ..
          },
      "definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::RealtimeSizeBasedDefaultBatchSettings%3E" =
        {
            max_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc m%"
                This is based on the uncompressed size of the batched events, before they are
                serialized/compressed.
              "%
              | optional,
            max_events
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "The maximum size of a batch before it is flushed."
              | optional,
            timeout_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum (-9007199254740991)
                  ])
              | doc "The maximum age of a batch before it is flushed."
              | optional,
            ..
          },
      "definitions.vector::sinks::util::buffer::compression::Compression" =
        js2n.OneOf
            [
              js2n.OneOf
                [
                  js2n.Const "none",
                  js2n.Const "gzip",
                  js2n.Const "zlib",
                  js2n.Const "zstd",
                  js2n.Const "snappy"
                ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        algorithm =
                          js2n.OneOf
                              [
                                js2n.Const "none",
                                js2n.Const "gzip",
                                js2n.Const "zlib",
                                js2n.Const "zstd",
                                js2n.Const "snappy"
                              ],
                        level =
                          std.contract.Sequence
                              [
                                refs."definitions.vector::sinks::util::buffer::compression::CompressionLevel",
                                std.contract.any_of [ Number, String ]
                              ],
                      },
                  required = { algorithm = true, },
                }
            ],
      "definitions.vector::sinks::util::buffer::compression::CompressionLevel" =
        js2n.Enum
            [
              "none",
              "fast",
              "best",
              "default",
              0,
              1,
              2,
              3,
              4,
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21
            ],
      "definitions.vector::sinks::util::http::RequestConfig" =
        std.contract.Sequence
            [
              {
                headers
                  | { _ | String }
                  | doc "Additional HTTP headers to add to every HTTP request."
                  | optional,
                ..
              },
              {
                adaptive_concurrency
                  | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
                  | { _ | Dyn }
                  | doc m%"
                    These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                    unstable performance and sink behavior. Proceed with caution.
                  "%
                  | optional,
                concurrency
                  | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
                  | doc m%"
                    Configuration for outbound request concurrency.
                    
                    This can be set either to one of the below enum values or to a positive integer, which denotes
                    a fixed concurrency limit.
                  "%
                  | optional,
                rate_limit_duration_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The time window used for the `rate_limit_num` option."
                  | optional,
                rate_limit_num
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
                  | optional,
                retry_attempts
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of retries to make for failed requests."
                  | optional,
                retry_initial_backoff_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
                  | optional,
                retry_jitter_mode
                  | refs."definitions.vector::sinks::util::retries::JitterMode"
                  | doc "The jitter mode to use for retry backoff behavior."
                  | optional,
                retry_max_duration_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "The maximum amount of time to wait between retries."
                  | optional,
                timeout_secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc m%"
                    Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                    create orphaned requests, pile on retries, and result in duplicate data downstream.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::util::retries::JitterMode" =
        js2n.OneOf [ js2n.Const "None", js2n.Const "Full" ],
      "definitions.vector::sinks::util::service::TowerRequestConfig" =
        {
            adaptive_concurrency
              | refs."definitions.vector::sinks::util::adaptive_concurrency::AdaptiveConcurrencySettings"
              | { _ | Dyn }
              | doc m%"
                These parameters typically do not require changes from the default, and incorrect values can lead to meta-stable or
                unstable performance and sink behavior. Proceed with caution.
              "%
              | optional,
            concurrency
              | refs."definitions.vector::sinks::util::service::concurrency::Concurrency"
              | doc m%"
                Configuration for outbound request concurrency.
                
                This can be set either to one of the below enum values or to a positive integer, which denotes
                a fixed concurrency limit.
              "%
              | optional,
            rate_limit_duration_secs
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "The time window used for the `rate_limit_num` option."
              | optional,
            rate_limit_num
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "The maximum number of requests allowed within the `rate_limit_duration_secs` time window."
              | optional,
            retry_attempts
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "The maximum number of retries to make for failed requests."
              | optional,
            retry_initial_backoff_secs
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 1
              | doc "After the first retry has failed, the fibonacci sequence is used to select future backoffs."
              | optional,
            retry_jitter_mode
              | refs."definitions.vector::sinks::util::retries::JitterMode"
              | doc "The jitter mode to use for retry backoff behavior."
              | optional,
            retry_max_duration_secs
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 1
              | doc "The maximum amount of time to wait between retries."
              | optional,
            timeout_secs
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                Datadog highly recommends that you do not lower this value below the service's internal timeout, as this could
                create orphaned requests, pile on retries, and result in duplicate data downstream.
              "%
              | optional,
            ..
          },
      "definitions.vector::sinks::util::service::concurrency::Concurrency" =
        js2n.OneOf
            [
              js2n.Const "none",
              js2n.Const "adaptive",
              std.contract.Sequence
                [
                  std.number.Integer,
                  js2n.number.Maximum 9007199254740991,
                  js2n.number.Minimum 0
                ]
            ],
      "definitions.vector::sinks::util::service::net::HostAndPort" = String,
      "definitions.vector::sinks::util::uri::UriSerde" = String,
      "definitions.vector::sinks::vector::config::VectorConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | String
              | doc m%"
                Both IP address and hostname are accepted formats.
                
                The address _must_ include a port.
              "%,
            batch
              | {
                max_bytes
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    This is based on the uncompressed size of the batched events, before they are
                    serialized/compressed.
                  "%
                  | optional,
                max_events
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc "The maximum size of a batch before it is flushed."
                  | optional,
                timeout_secs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The maximum age of a batch before it is flushed."
                  | optional,
                ..
              }
              | doc "Event batching behavior."
              | optional,
            compression
              | Bool
              | doc m%"
                If set to `true`, requests are compressed with [`gzip`][gzip_docs].
                
                [gzip_docs]: https://www.gzip.org/
              "%
              | optional,
            request
              | refs."definitions.vector::sinks::util::service::TowerRequestConfig"
              | { _ | Dyn }
              | doc m%"
                Various settings can be configured, such as concurrency and rate limits, timeouts, retry behavior, etc.
                
                Note that the retry backoff policy follows the Fibonacci sequence.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            version
              | js2n.Nullable (std.contract.Equal "2")
              | doc "Version of the configuration."
              | optional,
            ..
          },
      "definitions.vector::sinks::webhdfs::config::WebHdfsConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::codecs::encoding::config::EncodingConfigWithFraming",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::AcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                batch
                  | refs."definitions.vector::sinks::util::batch::BatchConfig%3Cvector::sinks::util::batch::BulkSizeBasedDefaultBatchSettings%3E"
                  | { _ | Dyn }
                  | doc "Event batching behavior."
                  | optional,
                compression
                  | refs."definitions.vector::sinks::util::buffer::compression::Compression"
                  | doc "All compression algorithms use the default compression level unless otherwise specified."
                  | optional,
                endpoint
                  | String
                  | doc m%"
                    The endpoint is the HDFS's web restful HTTP API endpoint.
                    
                    For more information, see the [HDFS Architecture][hdfs_arch] documentation.
                    
                    [hdfs_arch]: https://hadoop.apache.org/docs/r3.3.4/hadoop-project-dist/hadoop-hdfs/HdfsDesign.html#NameNode_and_DataNodes
                  "%
                  | optional,
                prefix
                  | String
                  | doc m%"
                    Prefixes are useful for partitioning objects, such as by creating a blob key that
                    stores blobs under a particular directory. If using a prefix for this purpose, it must end
                    in `/` to act as a directory path. A trailing `/` is **not** automatically added.
                    
                    The final file path is in the format of `{root}/{prefix}{suffix}`.
                  "%
                  | optional,
                root
                  | String
                  | doc m%"
                    Must be a valid directory.
                    
                    The final file path is in the format of `{root}/{prefix}{suffix}`.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sinks::websocket::config::WebSocketSinkConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::AcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | optional,
            encoding
              | refs."definitions.vector::codecs::encoding::config::EncodingConfig"
              | { _ | Dyn }
              | doc "Configures how events are encoded into raw bytes.",
            ping_interval
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 1
                  ])
              | doc m%"
                If this option is not configured, pings are not sent on an interval.
                
                If the `ping_timeout` is not set, pings are still sent but there is no expectation of pong
                response times.
                
                [ping]: https://www.rfc-editor.org/rfc/rfc6455#section-5.5.2
              "%
              | optional,
            ping_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 1
                  ])
              | doc m%"
                If a response is not received within this time, the connection is re-established.
                
                [pong]: https://www.rfc-editor.org/rfc/rfc6455#section-5.5.3
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            uri
              | String
              | doc "This should include the protocol and host, but can also include the port, path, and any other valid part of a URI.",
            ..
          },
      "definitions.vector::sources::Sources" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::amqp::AmqpSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "amqp", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::apache_metrics::ApacheMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "apache_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::aws_ecs_metrics::AwsEcsMetricsSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_ecs_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::aws_kinesis_firehose::AwsKinesisFirehoseConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "aws_kinesis_firehose", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::aws_s3::AwsS3Config",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_s3", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::aws_sqs::config::AwsSqsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_sqs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::datadog_agent::DatadogAgentConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "datadog_agent", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::demo_logs::DemoLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "demo_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::dnstap::DnstapConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "dnstap", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::docker_logs::DockerLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "docker_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::eventstoredb_metrics::EventStoreDbConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "eventstoredb_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::exec::ExecConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "exec", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::file::FileConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "file", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::file_descriptors::file_descriptor::FileDescriptorSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "file_descriptor", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::fluent::FluentConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "fluent", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::gcp_pubsub::PubsubConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "gcp_pubsub", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::heroku_logs::LogplexConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "heroku_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::host_metrics::HostMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "host_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::http_server::HttpConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "http", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::http_client::client::HttpClientConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "http_client", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::http_server::SimpleHttpConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "http_server", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::internal_logs::InternalLogsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "internal_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::internal_metrics::InternalMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "internal_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::journald::JournaldConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "journald", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::kafka::KafkaSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "kafka", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::kubernetes_logs::Config",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "kubernetes_logs", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::logstash::LogstashConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "logstash", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::mongodb_metrics::MongoDbMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "mongodb_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::nats::NatsSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "nats", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::nginx_metrics::NginxMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "nginx_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::opentelemetry::OpentelemetryConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "opentelemetry", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::postgresql_metrics::PostgresqlMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "postgresql_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::prometheus::pushgateway::PrometheusPushgatewayConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "prometheus_pushgateway", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::prometheus::remote_write::PrometheusRemoteWriteConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "prometheus_remote_write", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::prometheus::scrape::PrometheusScrapeConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "prometheus_scrape", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::pulsar::PulsarSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "pulsar", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::redis::RedisSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "redis", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::socket::SocketConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "socket", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::splunk_hec::SplunkConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "splunk_hec", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::static_metrics::StaticMetricsConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "static_metrics", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::statsd::StatsdConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "statsd", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::file_descriptors::stdin::StdinConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "stdin", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::syslog::SyslogConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "syslog", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::config::unit_test::unit_test_components::UnitTestSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "unit_test", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::config::unit_test::unit_test_components::UnitTestStreamSourceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "unit_test_stream", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::sources::vector::VectorConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "vector", },
                      required = { type = true, },
                    }
                ]
            ],
      "definitions.vector::sources::amqp::AmqpSourceConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::amqp::AmqpConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                    
                    Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                    
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                consumer
                  | String
                  | doc "The identifier for the consumer."
                  | optional,
                decoding
                  | refs."definitions.codecs::decoding::DeserializerConfig"
                  | doc "Configures how events are decoded from raw bytes."
                  | optional,
                exchange_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc "The `AMQP` exchange key."
                  | optional,
                framing
                  | refs."definitions.codecs::decoding::FramingConfig"
                  | doc m%"
                    Framing handles how events are separated when encoded in a raw byte form, where each event is
                    a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                    ends within the byte stream.
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                offset_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc "The `AMQP` offset key."
                  | optional,
                queue
                  | String
                  | doc "The name of the queue to consume."
                  | optional,
                routing_key_field
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc "The `AMQP` routing key."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::apache_metrics::ApacheMetricsConfig" =
        {
            endpoints
              | Array String
              | doc "The list of `mod_status` endpoints to scrape metrics from.",
            namespace | String | doc "Disabled if empty." | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between scrapes."
              | optional,
            ..
          },
      "definitions.vector::sources::aws_ecs_metrics::AwsEcsMetricsSourceConfig" =
        {
            endpoint
              | String
              | doc m%"
                If empty, the URI is automatically discovered based on the latest version detected.
                
                By default:
                - The version 4 endpoint base URI is stored in the environment variable `ECS_CONTAINER_METADATA_URI_V4`.
                - The version 3 endpoint base URI is stored in the environment variable `ECS_CONTAINER_METADATA_URI`.
                - The version 2 endpoint base URI is `169.254.170.2/v2/`.
              "%
              | optional,
            namespace | String | doc "Disabled if empty." | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between scrapes, in seconds."
              | optional,
            version
              | js2n.OneOf [ js2n.Const "v2", js2n.Const "v3", js2n.Const "v4" ]
              | doc m%"
                If empty, the version is automatically discovered based on environment variables.
                
                By default:
                - Version 4 is used if the environment variable `ECS_CONTAINER_METADATA_URI_V4` is defined.
                - Version 3 is used if the environment variable `ECS_CONTAINER_METADATA_URI_V4` is not defined, but the
                  environment variable `ECS_CONTAINER_METADATA_URI` _is_ defined.
                - Version 2 is used if neither of the environment variables `ECS_CONTAINER_METADATA_URI_V4` or
                  `ECS_CONTAINER_METADATA_URI` are defined.
              "%
              | optional,
            ..
          },
      "definitions.vector::sources::aws_kinesis_firehose::AwsKinesisFirehoseConfig" =
        {
            access_key
              | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
              | doc m%"
                AWS Kinesis Firehose can be configured to pass along a user-configurable access key with each request. If
                configured, `access_key` should be set to the same value. Otherwise, all requests are allowed.
              "%
              | optional,
            access_keys
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."definitions.vector_common::sensitive_string::SensitiveString",
                      String
                    ]
                ))
              | doc m%"
                AWS Kinesis Firehose can be configured to pass along a user-configurable access key with each request. If
                configured, `access_keys` should be set to the same value. Otherwise, all requests are allowed.
              "%
              | optional,
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "The socket address to listen for connections on.",
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc m%"
                Framing handles how events are separated when encoded in a raw byte form, where each event is
                a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                ends within the byte stream.
              "%
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            record_compression
              | js2n.OneOf
                [ js2n.Const "auto", js2n.Const "none", js2n.Const "gzip" ]
              | doc m%"
                Some services, like AWS CloudWatch Logs, [compresses the events with gzip][events_with_gzip],
                before sending them AWS Kinesis Firehose. This option can be used to automatically decompress
                them before forwarding them to the next component.
                
                Note that this is different from [Content encoding option][encoding_option] of the
                Firehose HTTP endpoint destination. That option controls the content encoding of the entire HTTP request.
                
                [events_with_gzip]: https://docs.aws.amazon.com/firehose/latest/dev/writing-with-cloudwatch-logs.html
                [encoding_option]: https://docs.aws.amazon.com/firehose/latest/dev/create-destination.html#create-destination-http
              "%
              | optional,
            store_access_key
              | Bool
              | doc m%"
                If set to `true`, when incoming requests contains an access key sent by AWS Firehose, it is kept in the
                event secrets as "aws_kinesis_firehose_access_key".
              "%,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::aws_s3::AwsS3Config" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                    
                    Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                    
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                assume_role
                  | js2n.Nullable String
                  | doc "[iam_role]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html"
                  | optional,
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                compression
                  | js2n.OneOf
                    [
                      js2n.Const "auto",
                      js2n.Const "none",
                      js2n.Const "gzip",
                      js2n.Const "zstd"
                    ]
                  | doc "The compression scheme used for decompressing objects retrieved from S3."
                  | optional,
                decoding
                  | refs."definitions.codecs::decoding::DeserializerConfig"
                  | doc "Configures how events are decoded from raw bytes."
                  | optional,
                framing
                  | refs."definitions.codecs::decoding::FramingConfig"
                  | doc m%"
                    Framing handles how events are separated when encoded in a raw byte form, where each event is
                    a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                    ends within the byte stream.
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                multiline
                  | refs."definitions.core::option::Option%3Cvector::sources::util::multiline_config::MultilineConfig%3E"
                  | doc "If not specified, multiline aggregation is disabled."
                  | optional,
                sqs
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        {
                          connect_timeout_seconds
                            | js2n.Nullable
                              (std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 9007199254740991,
                                  js2n.number.Minimum 0
                                ])
                            | doc "Limits the amount of time allowed to initiate a socket connection."
                            | optional,
                          operation_timeout_seconds
                            | js2n.Nullable
                              (std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 9007199254740991,
                                  js2n.number.Minimum 0
                                ])
                            | doc m%"
                              Limits the amount of time allowed for an operation to be fully serviced; an
                              operation represents the full request/response lifecycle of a call to a service.
                              Take care when configuring this settings to allow enough time for the polling
                              interval configured in `poll_secs`
                            "%
                            | optional,
                          read_timeout_seconds
                            | js2n.Nullable
                              (std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 9007199254740991,
                                  js2n.number.Minimum 0
                                ])
                            | doc m%"
                              Limits the amount of time allowed to read the first byte of a response from the
                              time the request is initiated. Take care when configuring this settings to allow
                              enough time for the polling interval configured in `poll_secs`
                            "%
                            | optional,
                          ..
                        },
                        {
                          client_concurrency
                            | js2n.Nullable
                              (std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 9007199254740991,
                                  js2n.number.Minimum 1
                                ])
                            | doc m%"
                              Defaults to the number of available CPUs on the system.
                              
                              Should not typically need to be changed, but it can sometimes be beneficial to raise this
                              value when there is a high rate of messages being pushed into the queue and the objects
                              being fetched are small. In these cases, system resources may not be fully utilized without
                              fetching more messages per second, as the SQS message consumption rate affects the S3 object
                              retrieval rate.
                            "%
                            | optional,
                          delete_failed_message
                            | Bool
                            | doc "If a message is rejected by the sink and not retryable, it is deleted from the queue."
                            | optional,
                          delete_message
                            | Bool
                            | doc "It can be useful to set this to `false` for debugging or during the initial setup."
                            | optional,
                          max_number_of_messages
                            | std.number.Integer
                            | js2n.number.Maximum 4294967295
                            | js2n.number.Minimum 0
                            | doc m%"
                              Defaults to 10
                              
                              Should be set to a smaller value when the files are large to help prevent the ingestion of
                              one file from causing the other files to exceed the visibility_timeout. Valid values are 1 - 10
                            "%
                            | optional,
                          poll_secs
                            | std.number.Integer
                            | js2n.number.Maximum 4294967295
                            | js2n.number.Minimum 0
                            | doc m%"
                              Generally, this should not be changed unless instructed to do so, as if messages are available,
                              they are always consumed, regardless of the value of `poll_secs`.
                            "%
                            | optional,
                          queue_url
                            | String
                            | doc "The URL of the SQS queue to poll for bucket notifications.",
                          tls_options
                            | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                            | optional,
                          visibility_timeout_secs
                            | std.number.Integer
                            | js2n.number.Maximum 4294967295
                            | js2n.number.Minimum 0
                            | doc m%"
                              This controls how long a message is left unavailable after it is received. If a message is received, and
                              takes longer than `visibility_timeout_secs` to process and delete the message from the queue, it is made available again for another consumer.
                              
                              This can happen if there is an issue between consuming a message and deleting it.
                            "%
                            | optional,
                          ..
                        }
                      ])
                  | doc "Configuration options for SQS."
                  | optional,
                strategy
                  | std.contract.Equal "sqs"
                  | doc "The strategy to use to consume objects from S3."
                  | optional,
                tls_options
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::aws_sqs::config::AwsSqsConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::aws::region::RegionOrEndpoint",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                    
                    Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                    
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                auth
                  | refs."definitions.vector::aws::auth::AwsAuthentication"
                  | { _ | Dyn }
                  | doc "Configuration of the authentication strategy for interacting with AWS services."
                  | optional,
                client_concurrency
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 1
                      ])
                  | doc m%"
                    Defaults to the number of available CPUs on the system.
                    
                    Should not typically need to be changed, but it can sometimes be beneficial to raise this
                    value when there is a high rate of messages being pushed into the queue and the messages
                    being fetched are small. In these cases, system resources may not be fully utilized without
                    fetching more messages per second, as it spends more time fetching the messages than
                    processing them.
                  "%
                  | optional,
                decoding
                  | refs."definitions.codecs::decoding::DeserializerConfig"
                  | doc "Configures how events are decoded from raw bytes."
                  | optional,
                delete_message
                  | Bool
                  | doc "It can be useful to set this to `false` for debugging or during the initial setup."
                  | optional,
                framing
                  | refs."definitions.codecs::decoding::FramingConfig"
                  | doc m%"
                    Framing handles how events are separated when encoded in a raw byte form, where each event is
                    a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                    ends within the byte stream.
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                poll_secs
                  | std.number.Integer
                  | js2n.number.Maximum 4294967295
                  | js2n.number.Minimum 0
                  | doc m%"
                    Generally, this should not be changed unless instructed to do so, as if messages are available,
                    they are always consumed, regardless of the value of `poll_secs`.
                  "%
                  | optional,
                queue_url
                  | String
                  | doc "The URL of the SQS queue to poll for messages.",
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                visibility_timeout_secs
                  | std.number.Integer
                  | js2n.number.Maximum 4294967295
                  | js2n.number.Minimum 0
                  | doc m%"
                    This controls how long a message is left unavailable after it is received. If a message is received, and
                    takes longer than `visibility_timeout_secs` to process and delete the message from the queue, it is made available again for another consumer.
                    
                    This can happen if there is an issue between consuming a message and deleting it.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::datadog_agent::DatadogAgentConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "It _must_ include a port.",
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            disable_logs
              | Bool
              | doc "If this is set to `true`, logs are not accepted by the component."
              | optional,
            disable_metrics
              | Bool
              | doc "If this is set to `true`, metrics (beta) are not accepted by the component."
              | optional,
            disable_traces
              | Bool
              | doc "If this is set to `true`, traces (alpha) are not accepted by the component."
              | optional,
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc m%"
                Framing handles how events are separated when encoded in a raw byte form, where each event is
                a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                ends within the byte stream.
              "%
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            multiple_outputs
              | Bool
              | doc m%"
                For a source component named `agent`, the received logs, metrics (beta), and traces (alpha) can then be
                configured as input to other components by specifying `agent.logs`, `agent.metrics`, and
                `agent.traces`, respectively.
              "%
              | optional,
            parse_ddtags
              | Bool
              | doc m%"
                If this is set to `true`, when log events contain the field `ddtags`, the string value that
                contains a list of key:value pairs set by the Agent is parsed and expanded into an array.
              "%
              | optional,
            store_api_key
              | Bool
              | doc m%"
                If this is set to `true`, when incoming events contain a Datadog API key, it is
                stored in the event metadata and used if the event is sent to a Datadog sink.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::demo_logs::DemoLogsConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            format = js2n.Const "shuffle",
                            lines = js2n.array.ArrayOf String,
                            sequence = Bool,
                          },
                      required = { format = true, lines = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { format = js2n.Const "apache_common", },
                      required = { format = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { format = js2n.Const "apache_error", },
                      required = { format = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { format = js2n.Const "syslog", },
                      required = { format = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { format = js2n.Const "bsd_syslog", },
                      required = { format = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { format = js2n.Const "json", },
                      required = { format = true, },
                    }
                ],
              {
                count
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "By default, the source continuously prints logs (infinitely)."
                  | optional,
                decoding
                  | refs."definitions.codecs::decoding::DeserializerConfig"
                  | doc "Configures how events are decoded from raw bytes."
                  | optional,
                framing
                  | refs."definitions.codecs::decoding::FramingConfig"
                  | doc m%"
                    Framing handles how events are separated when encoded in a raw byte form, where each event is
                    a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                    ends within the byte stream.
                  "%
                  | optional,
                interval
                  | refs."definitions.serde_with::DurationFractionalSeconds"
                  | Number
                  | doc m%"
                    The default is one batch per second. To remove the delay and output batches as quickly as possible, set
                    `interval` to `0.0`.
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::dnstap::DnstapConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector::sources::util::net::SocketListenAddr",
                                        String
                                      ],
                                connection_limit =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 4294967295,
                                          js2n.number.Minimum 0
                                        ]),
                                keepalive =
                                  refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E",
                                max_connection_duration_secs =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                                permit_origin =
                                  refs."definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E",
                                port_key =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath",
                                        String
                                      ],
                                receive_buffer_bytes =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                                shutdown_timeout_secs =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.serde_with::DurationSeconds",
                                        Number
                                      ],
                                tls =
                                  refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E",
                              },
                          required = { address = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "tcp", },
                          required = { mode = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                socket_file_mode =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 4294967295,
                                          js2n.number.Minimum 0
                                        ]),
                                socket_path =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.stdlib::PathBuf",
                                        String
                                      ],
                                socket_receive_buffer_size =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                                socket_send_buffer_size =
                                  js2n.Nullable
                                      (std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 9007199254740991,
                                          js2n.number.Minimum 0
                                        ]),
                              },
                          required = { socket_path = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "unix", },
                          required = { mode = true, },
                        }
                    ]
                ],
              {
                host_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                  | doc m%"
                    The value is the socket path itself.
                    
                    By default, the [global `log_schema.host_key` option][global_host_key] is used.
                    
                    [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global settings."
                  | optional,
                lowercase_hostnames
                  | Bool
                  | doc "Whether to downcase all DNSTAP hostnames received for consistency"
                  | optional,
                max_frame_handling_tasks
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 4294967295,
                        js2n.number.Minimum 0
                      ])
                  | doc "Maximum number of frames that can be processed concurrently."
                  | optional,
                max_frame_length
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "If any frame is longer than this, it is discarded."
                  | optional,
                multithreaded
                  | js2n.Nullable Bool
                  | doc "Whether or not to concurrently process DNSTAP frames."
                  | optional,
                raw_data_only
                  | js2n.Nullable Bool
                  | doc m%"
                    If set to `true`, frames are not parsed or decoded. The raw frame data is set as a field on the event
                    (called `rawData`) and encoded as a base64 string.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::docker_logs::DockerLogsConfig" =
        {
            auto_partial_merge
              | Bool
              | doc "Enables automatic merging of partial events."
              | optional,
            docker_host
              | js2n.Nullable String
              | doc m%"
                Use an HTTPS URL to enable TLS encryption.
                
                If absent, the `DOCKER_HOST` environment variable is used. If `DOCKER_HOST` is also absent,
                the default Docker local socket (`/var/run/docker.sock` on Unix platforms,
                `//./pipe/docker_engine` on Windows) is used.
              "%
              | optional,
            exclude_containers
              | js2n.Nullable (Array String)
              | doc m%"
                Matching is prefix first, so specifying a value of `foo` would match any container named `foo` as well as any
                container whose name started with `foo`. This applies equally whether matching container IDs or names.
                
                By default, the source collects logs for all containers. If `exclude_containers` is configured, any
                container that matches a configured exclusion is excluded even if it is also included with
                `include_containers`, so care should be taken when using prefix matches as they cannot be overridden by a
                corresponding entry in `include_containers`, for example, excluding `foo` by attempting to include `foo-specific-id`.
                
                This can be used in conjunction with `include_containers`.
              "%
              | optional,
            host_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            include_containers
              | js2n.Nullable (Array String)
              | doc m%"
                Matching is prefix first, so specifying a value of `foo` would match any container named `foo` as well as any
                container whose name started with `foo`. This applies equally whether matching container IDs or names.
                
                By default, the source collects logs for all containers. If `include_containers` is configured, only
                containers that match a configured inclusion and are also not excluded get matched.
                
                This can be used in conjunction with `exclude_containers`.
              "%
              | optional,
            include_images
              | js2n.Nullable (Array String)
              | doc "If not provided, all images are included."
              | optional,
            include_labels
              | js2n.Nullable (Array String)
              | doc "Labels should follow the syntax described in the [Docker object labels](https://docs.docker.com/config/labels-custom-metadata/) documentation."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            multiline
              | refs."definitions.core::option::Option%3Cvector::sources::util::multiline_config::MultilineConfig%3E"
              | doc "If not specified, multiline aggregation is disabled."
              | optional,
            partial_event_marker_field
              | js2n.Nullable String
              | doc m%"
                If `auto_partial_merge` is disabled, partial events are emitted with a log field, set by this
                configuration value, indicating that the event is not complete.
              "%
              | optional,
            retry_backoff_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The amount of time to wait before retrying after an error."
              | optional,
            tls
              | js2n.Nullable
                {
                  ca_file
                    | refs."definitions.stdlib::PathBuf"
                    | String
                    | doc "Path to the CA certificate file.",
                  crt_file
                    | refs."definitions.stdlib::PathBuf"
                    | String
                    | doc "Path to the TLS certificate file.",
                  key_file
                    | refs."definitions.stdlib::PathBuf"
                    | String
                    | doc "Path to the TLS key file.",
                  ..
                }
              | doc m%"
                Only relevant when connecting to Docker with an HTTPS URL.
                
                If not configured, the environment variable `DOCKER_CERT_PATH` is used. If `DOCKER_CERT_PATH` is absent, then` DOCKER_CONFIG` is used. If both environment variables are absent, the certificates in `~/.docker/` are read.
              "%
              | optional,
            ..
          },
      "definitions.vector::sources::eventstoredb_metrics::EventStoreDbConfig" =
        {
            default_namespace
              | js2n.Nullable String
              | doc "By default, `eventstoredb` is used."
              | optional,
            endpoint | String | doc "Endpoint to scrape stats from." | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between scrapes, in seconds."
              | optional,
            ..
          },
      "definitions.vector::sources::exec::ExecConfig" =
        {
            clear_environment
              | Bool
              | doc "Whether or not to clear the environment before setting custom environment variables."
              | optional,
            command
              | Array String
              | doc "The command to run, plus any arguments required.",
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            environment
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Custom environment variables to set or update when running the command.
                If a variable name already exists in the environment, its value is replaced.
              "%
              | optional,
            framing
              | refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E"
              | optional,
            include_stderr
              | Bool
              | doc "Whether or not the output from stderr should be included when generating events."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            maximum_buffer_size_bytes
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "The maximum buffer size allowed before a log event is generated."
              | optional,
            mode
              | js2n.OneOf [ js2n.Const "scheduled", js2n.Const "streaming" ]
              | doc "Mode of operation for running the command.",
            scheduled
              | js2n.Nullable
                {
                  exec_interval_secs
                    | std.number.Integer
                    | js2n.number.Maximum 9007199254740991
                    | js2n.number.Minimum 0
                    | doc "If the command takes longer than `exec_interval_secs` to run, it is killed."
                    | optional,
                  ..
                }
              | doc "Configuration options for scheduled commands."
              | optional,
            streaming
              | js2n.Nullable
                {
                  respawn_interval_secs
                    | std.number.Integer
                    | js2n.number.Maximum 9007199254740991
                    | js2n.number.Minimum 0
                    | doc "The amount of time, in seconds, before rerunning a streaming command that exited."
                    | optional,
                  respawn_on_exit
                    | Bool
                    | doc "Whether or not the command should be rerun if the command exits."
                    | optional,
                  ..
                }
              | doc "Configuration options for streaming commands."
              | optional,
            working_directory
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc "The directory in which to run the command."
              | optional,
            ..
          },
      "definitions.vector::sources::file::FileConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            data_dir
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc m%"
                By default, the [global `data_dir` option][global_data_dir] is used.
                Make sure the running user has write permissions to this directory.
                
                If this directory is specified, then Vector will attempt to create it.
                
                [global_data_dir]: https://vector.dev/docs/reference/configuration/global-options/#data_dir
              "%
              | optional,
            encoding
              | js2n.Nullable
                {
                  charset
                    | String
                    | doc m%"
                      Takes one of the encoding [label strings](https://encoding.spec.whatwg.org/#concept-encoding-get) defined as
                      part of the [Encoding Standard](https://encoding.spec.whatwg.org/).
                      
                      When set, the messages are transcoded from the specified encoding to UTF-8, which is the encoding that is
                      assumed internally for string-like data. Enable this transcoding operation if you need your data to
                      be in UTF-8 for further processing. At the time of transcoding, any malformed sequences (that can't be mapped to
                      UTF-8) is replaced with the Unicode [REPLACEMENT
                      CHARACTER](https://en.wikipedia.org/wiki/Specials_(Unicode_block)#Replacement_character) and warnings are
                      logged.
                    "%,
                  ..
                }
              | doc "Character set encoding."
              | optional,
            exclude
              | Array (
                std.contract.Sequence
                  [ refs."definitions.stdlib::PathBuf", String ]
              )
              | doc m%"
                Takes precedence over the `include` option. Note: The `exclude` patterns are applied _after_ the attempt to glob everything
                in `include`. This means that all files are first matched by `include` and then filtered by the `exclude`
                patterns. This can be impactful if `include` contains directories with contents that are not accessible.
              "%
              | optional,
            file_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc m%"
                The value is the full path to the file where the event was read message.
                
                Set to `""` to suppress this key.
              "%
              | optional,
            fingerprint
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                            ignored_header_bytes =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 9007199254740991,
                                    js2n.number.Minimum 0
                                  ],
                            lines =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 9007199254740991,
                                    js2n.number.Minimum 0
                                  ],
                            strategy = js2n.Const "checksum",
                          },
                      required = { strategy = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { strategy = js2n.Const "device_and_inode", },
                      required = { strategy = true, },
                    }
                ]
              | doc "This is important for `checkpointing` when file rotation is used."
              | optional,
            glob_minimum_cooldown_ms
              | refs."definitions.serde_with::DurationMilliSeconds"
              | Number
              | doc m%"
                This controls the interval at which files are searched. A higher value results in greater
                chances of some short-lived files being missed between searches, but a lower value increases
                the performance impact of file discovery.
              "%
              | optional,
            host_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used.
                
                Set to `""` to suppress this key.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            ignore_checkpoints
              | js2n.Nullable Bool
              | doc "Checkpoints are still written normally."
              | optional,
            ignore_not_found
              | Bool
              | doc "This may be useful when used with source directories containing dangling symlinks."
              | optional,
            ignore_older_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "Ignore files with a data modification date older than the specified number of seconds."
              | optional,
            include
              | Array (
                std.contract.Sequence
                  [ refs."definitions.stdlib::PathBuf", String ]
              )
              | doc "Array of file patterns to include. [Globbing](https://vector.dev/docs/reference/configuration/sources/file/#globbing) is supported.",
            internal_metrics
              | refs."definitions.vector::internal_events::file::FileInternalMetricsConfig"
              | { _ | Dyn }
              | doc "Configuration of internal metrics for file-based components."
              | optional,
            line_delimiter
              | String
              | doc "String sequence used to separate one file line from another."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            max_line_bytes
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "This protects against malformed lines or tailing incorrect files."
              | optional,
            max_read_bytes
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                This allows distributing the reads more or less evenly across
                the files.
              "%
              | optional,
            message_start_indicator
              | js2n.Nullable String
              | doc "String value used to identify the start of a multi-line message."
              | optional,
            multi_line_timeout
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "How long to wait for more data when aggregating a multi-line message, in milliseconds."
              | optional,
            multiline
              | refs."definitions.core::option::Option%3Cvector::sources::util::multiline_config::MultilineConfig%3E"
              | doc "If not specified, multiline aggregation is disabled."
              | optional,
            offset_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                The value is the byte offset of the start of the line within the file.
                
                Off by default, the offset is only added to the event if this is set.
              "%
              | optional,
            oldest_first
              | Bool
              | doc "Instead of balancing read capacity fairly across all watched files, prioritize draining the oldest files before moving on to read data from more recent files."
              | optional,
            read_from
              | refs."definitions.file_source::ReadFromConfig"
              | doc "File position to use when reading a new file."
              | optional,
            remove_after_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "If not specified, files are not removed."
              | optional,
            rotate_wait_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc m%"
                How long to keep an open handle to a rotated log file.
                The default value represents "no limit"
              "%
              | optional,
            start_at_beginning
              | js2n.Nullable Bool
              | doc "Whether or not to start reading from the beginning of a new file."
              | optional,
            ..
          },
      "definitions.vector::sources::file_descriptors::file_descriptor::FileDescriptorSourceConfig" =
        {
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            fd
              | std.number.Integer
              | js2n.number.Maximum 4294967295
              | js2n.number.Minimum 0
              | doc "The file descriptor number to read from.",
            framing
              | refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E"
              | optional,
            host_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc "By default, the [global `host_key` option](https://vector.dev/docs/reference/configuration//global-options#log_schema.host_key) is used."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            max_length
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "Messages larger than this are truncated."
              | optional,
            ..
          },
      "definitions.vector::sources::file_descriptors::stdin::StdinConfig" =
        {
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            framing
              | refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E"
              | optional,
            host_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            max_length
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "Messages larger than this are truncated."
              | optional,
            ..
          },
      "definitions.vector::sources::fluent::FluentConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.vector::sources::util::net::SocketListenAddr"
              | String
              | doc "If a socket address is used, it _must_ include a port.",
            connection_limit
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 4294967295,
                    js2n.number.Minimum 0
                  ])
              | doc "The maximum number of TCP connections that are allowed at any given time."
              | optional,
            keepalive
              | refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E"
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            permit_origin
              | refs."definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E"
              | optional,
            receive_buffer_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "This generally should not need to be changed."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::gcp_pubsub::PubsubConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::gcp::GcpAuthConfig",
              {
                ack_deadline_seconds
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 65535,
                        js2n.number.Minimum 0
                      ])
                  | doc "Messages that are not acknowledged when this deadline expires may be retransmitted."
                  | optional,
                ack_deadline_secs
                  | refs."definitions.serde_with::DurationSeconds"
                  | Number
                  | doc "Messages that are not acknowledged when this deadline expires may be retransmitted."
                  | optional,
                acknowledgements
                  | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                    
                    Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                    
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                decoding
                  | refs."definitions.codecs::decoding::DeserializerConfig"
                  | doc "Configures how events are decoded from raw bytes."
                  | optional,
                endpoint
                  | String
                  | doc "The endpoint from which to pull data."
                  | optional,
                framing
                  | refs."definitions.codecs::decoding::FramingConfig"
                  | doc m%"
                    Framing handles how events are separated when encoded in a raw byte form, where each event is
                    a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                    ends within the byte stream.
                  "%
                  | optional,
                full_response_size
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc m%"
                    The GCP Pub/Sub servers send responses with 100 or more messages when
                    the subscription is busy.
                  "%
                  | optional,
                keepalive_secs
                  | refs."definitions.serde_with::DurationFractionalSeconds"
                  | Number
                  | doc m%"
                    The amount of time, in seconds, with no received activity
                    before sending a keepalive request. If this is set larger than
                    `60`, you may see periodic errors sent from the server.
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                max_concurrency
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "The maximum number of concurrent stream connections to open at once."
                  | optional,
                poll_time_seconds
                  | refs."definitions.serde_with::DurationFractionalSeconds"
                  | Number
                  | doc m%"
                    How often to poll the currently active streams to see if they
                    are all busy and so open a new stream.
                  "%
                  | optional,
                project
                  | String
                  | doc "The project name from which to pull logs.",
                retry_delay_seconds
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum (-9007199254740991)
                      ])
                  | doc "The amount of time, in seconds, to wait between retry attempts after an error."
                  | optional,
                retry_delay_secs
                  | refs."definitions.serde_with::DurationFractionalSeconds"
                  | Number
                  | doc "The amount of time, in seconds, to wait between retry attempts after an error."
                  | optional,
                subscription
                  | String
                  | doc "The subscription within the project which is configured to receive logs.",
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::heroku_logs::LogplexConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "The socket address to listen for connections on.",
            auth
              | refs."definitions.core::option::Option%3Cvector::sources::util::http::auth::HttpSourceAuthConfig%3E"
              | optional,
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc m%"
                Framing handles how events are separated when encoded in a raw byte form, where each event is
                a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                ends within the byte stream.
              "%
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            query_parameters
              | Array String
              | doc m%"
                Accepts the wildcard (`*`) character for query parameters matching a specified pattern.
                
                Specifying "*" results in all query parameters included in the log event.
                
                These override any values included in the body with conflicting names.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::host_metrics::FilterList" =
        {
            excludes
              | js2n.Nullable (Array String)
              | doc "The patterns are matched using globbing."
              | optional,
            includes
              | js2n.Nullable (Array String)
              | doc "The patterns are matched using globbing."
              | optional,
            ..
          },
      "definitions.vector::sources::host_metrics::HostMetricsConfig" =
        {
            cgroups
              | js2n.Nullable
                {
                  base
                    | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
                    | doc "The base cgroup name to provide metrics for."
                    | optional,
                  base_dir
                    | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
                    | doc "Base cgroup directory, for testing use only"
                    | optional,
                  groups
                    | refs."definitions.vector::sources::host_metrics::FilterList"
                    | { _ | Dyn }
                    | doc m%"
                      Lists of cgroup name patterns to include or exclude in gathering
                      usage metrics.
                    "%
                    | optional,
                  levels
                    | std.number.Integer
                    | js2n.number.Maximum 9007199254740991
                    | js2n.number.Minimum 0
                    | doc "A value of `1` means the root or named cgroup."
                    | optional,
                  ..
                }
              | doc "This collector is only available on Linux systems, and only supports either version 2 or hybrid cgroups."
              | optional,
            collectors
              | js2n.Nullable
                (Array (
                  js2n.OneOf
                    [
                      js2n.Const "cgroups",
                      js2n.Const "cpu",
                      js2n.Const "process",
                      js2n.Const "disk",
                      js2n.Const "filesystem",
                      js2n.Const "load",
                      js2n.Const "host",
                      js2n.Const "memory",
                      js2n.Const "network"
                    ]
                ))
              | doc "Defaults to all collectors."
              | optional,
            disk
              | {
                devices
                  | refs."definitions.vector::sources::host_metrics::FilterList"
                  | { _ | Dyn }
                  | doc m%"
                    Lists of device name patterns to include or exclude in gathering
                    I/O utilization metrics.
                  "%
                  | optional,
                ..
              }
              | doc "Options for the disk metrics collector."
              | optional,
            filesystem
              | {
                devices
                  | refs."definitions.vector::sources::host_metrics::FilterList"
                  | { _ | Dyn }
                  | doc m%"
                    Lists of device name patterns to include or exclude in gathering
                    usage metrics.
                  "%
                  | optional,
                filesystems
                  | refs."definitions.vector::sources::host_metrics::FilterList"
                  | { _ | Dyn }
                  | doc m%"
                    Lists of filesystem name patterns to include or exclude in gathering
                    usage metrics.
                  "%
                  | optional,
                mountpoints
                  | refs."definitions.vector::sources::host_metrics::FilterList"
                  | { _ | Dyn }
                  | doc m%"
                    Lists of mount point path patterns to include or exclude in gathering
                    usage metrics.
                  "%
                  | optional,
                ..
              }
              | doc "Options for the filesystem metrics collector."
              | optional,
            namespace
              | js2n.Nullable String
              | doc "Overrides the default namespace for the metrics emitted by the source."
              | optional,
            network
              | {
                devices
                  | refs."definitions.vector::sources::host_metrics::FilterList"
                  | { _ | Dyn }
                  | doc m%"
                    Lists of device name patterns to include or exclude in gathering
                    network utilization metrics.
                  "%
                  | optional,
                ..
              }
              | doc "Options for the network metrics collector."
              | optional,
            process
              | {
                processes
                  | refs."definitions.vector::sources::host_metrics::FilterList"
                  | { _ | Dyn }
                  | doc "Lists of process name patterns to include or exclude."
                  | optional,
                ..
              }
              | doc "Options for the process metrics collector."
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between metric gathering, in seconds."
              | optional,
            ..
          },
      "definitions.vector::sources::http_client::client::HttpClientConfig" =
        {
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | doc "HTTP Authentication."
              | optional,
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Decoder to use on the HTTP responses."
              | optional,
            endpoint | String | doc "The full path must be specified.",
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc "Framing to use in the decoding."
              | optional,
            headers
              | { _ | Array String }
              | doc "One or more values for the same header can be provided."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            method
              | refs."definitions.vector::sources::util::http::method::HttpMethod"
              | doc "Specifies the method of the HTTP request."
              | optional,
            query
              | { _ | Array String }
              | doc m%"
                One or more values for the same parameter key can be provided.
                
                The parameters provided in this option are appended to any parameters
                manually provided in the `endpoint` option.
              "%
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc m%"
                The interval between scrapes. Requests are run concurrently so if a scrape takes longer
                than the interval a new scrape will be started. This can take extra resources, set the timeout
                to a value lower than the scrape interval to prevent this from happening.
              "%
              | optional,
            scrape_timeout_secs
              | refs."definitions.serde_with::DurationFractionalSeconds"
              | Number
              | doc "The timeout for each scrape request."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | doc "TLS configuration."
              | optional,
            ..
          },
      "definitions.vector::sources::http_server::HttpConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::sources::http_server::SimpleHttpConfig",
              { _ | Dyn }
            ],
      "definitions.vector::sources::http_server::SimpleHttpConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "It _must_ include a port.",
            auth
              | refs."definitions.core::option::Option%3Cvector::sources::util::http::auth::HttpSourceAuthConfig%3E"
              | optional,
            decoding
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "bytes", },
                          required = { codec = true, },
                        },
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    json =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties = { lossy = Bool, },
                                            required = {},
                                          },
                                  },
                              required = {},
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { codec = js2n.Const "json", },
                              required = { codec = true, },
                            }
                        ],
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    protobuf =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  desc_file =
                                                    std.contract.Sequence
                                                        [
                                                          refs."definitions.stdlib::PathBuf",
                                                          String
                                                        ],
                                                  message_type = String,
                                                },
                                            required =
                                              {
                                                  desc_file = true,
                                                  message_type = true,
                                                },
                                          },
                                  },
                              required = {},
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { codec = js2n.Const "protobuf", },
                              required = { codec = true, },
                            }
                        ],
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    syslog =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties = { lossy = Bool, },
                                            required = {},
                                          },
                                  },
                              required = {},
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { codec = js2n.Const "syslog", },
                              required = { codec = true, },
                            }
                        ],
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { codec = js2n.Const "native", },
                          required = { codec = true, },
                        },
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    native_json =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties = { lossy = Bool, },
                                            required = {},
                                          },
                                  },
                              required = {},
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                { codec = js2n.Const "native_json", },
                              required = { codec = true, },
                            }
                        ],
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    gelf =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties = { lossy = Bool, },
                                            required = {},
                                          },
                                  },
                              required = {},
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { codec = js2n.Const "gelf", },
                              required = { codec = true, },
                            }
                        ],
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    influxdb =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties = { lossy = Bool, },
                                            required = {},
                                          },
                                  },
                              required = {},
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { codec = js2n.Const "influxdb", },
                              required = { codec = true, },
                            }
                        ],
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                avro =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              schema = String,
                                              strip_schema_id_prefix = Bool,
                                            },
                                        required =
                                          {
                                              schema = true,
                                              strip_schema_id_prefix = true,
                                            },
                                      },
                                codec = js2n.Const "avro",
                              },
                          required = { avro = true, codec = true, },
                        },
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    vrl =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  source = String,
                                                  timezone =
                                                    refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E",
                                                },
                                            required = { source = true, },
                                          },
                                  },
                              required = { vrl = true, },
                            },
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { codec = js2n.Const "vrl", },
                              required = { codec = true, },
                            }
                        ]
                    ]
                ]
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            encoding
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.Const "text",
                      js2n.Const "ndjson",
                      js2n.Const "json",
                      js2n.Const "binary"
                    ]
                ]
              | doc "For `json` and `ndjson` encodings, the fields of the JSON objects are output as separate fields."
              | optional,
            framing
              | refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E"
              | optional,
            headers
              | Array String
              | doc m%"
                Accepts the wildcard (`*`) character for headers matching a specified pattern.
                
                Specifying "*" results in all headers included in the log event.
                
                These headers are not included in the JSON payload if a field with a conflicting name exists.
              "%
              | optional,
            host_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc "If set, the name of the log field used to add the remote IP to each event"
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            method
              | refs."definitions.vector::sources::util::http::method::HttpMethod"
              | doc "Specifies the action of the HTTP request."
              | optional,
            path
              | String
              | doc "The URL path on which log event POST requests are sent."
              | optional,
            path_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc "The event key in which the requested URL path used to send the request is stored."
              | optional,
            query_parameters
              | Array String
              | doc m%"
                Accepts the wildcard (`*`) character for query parameters matching a specified pattern.
                
                Specifying "*" results in all query parameters included in the log event.
                
                These override any values included in the body with conflicting names.
              "%
              | optional,
            response_code
              | std.number.Integer
              | js2n.number.Maximum 65535
              | js2n.number.Minimum 0
              | doc "Specifies the HTTP response status code that will be returned on successful requests."
              | optional,
            strict_path
              | Bool
              | doc m%"
                If set to `true`, only requests using the exact URL path specified in `path` are accepted. Otherwise,
                requests sent to a URL path that starts with the value of `path` are accepted.
                
                With `strict_path` set to `false` and `path` set to `""`, the configured HTTP source accepts requests from
                any URL path.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::internal_logs::InternalLogsConfig" =
        {
            host_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                By default, the [global `log_schema.host_key` option][global_host_key] is used.
                
                Set to `""` to suppress this key.
                
                [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
              "%
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            pid_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc m%"
                By default, `"pid"` is used.
                
                Set to `""` to suppress this key.
              "%
              | optional,
            ..
          },
      "definitions.vector::sources::internal_metrics::InternalMetricsConfig" =
        {
            namespace
              | String
              | doc "Overrides the default namespace for the metrics emitted by the source."
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationFractionalSeconds"
              | Number
              | doc "The interval between metric gathering, in seconds."
              | optional,
            tags
              | {
                host_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                  | doc m%"
                    The value is the peer host's address, including the port. For example, `1.2.3.4:9000`.
                    
                    By default, the [global `log_schema.host_key` option][global_host_key] is used.
                    
                    Set to `""` to suppress this key.
                    
                    [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
                  "%
                  | optional,
                pid_key
                  | js2n.Nullable String
                  | doc "By default, this is not set and the tag is not automatically added."
                  | optional,
                ..
              }
              | doc "Tag configuration for the `internal_metrics` source."
              | optional,
            ..
          },
      "definitions.vector::sources::journald::JournaldConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            batch_size
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "This option limits the size of the batch."
              | optional,
            current_boot_only
              | Bool
              | doc "Only include entries that occurred after the current boot of the system."
              | optional,
            data_dir
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc m%"
                By default, the [global `data_dir` option][global_data_dir] is used.
                Make sure the running user has write permissions to this directory.
                
                If this directory is specified, then Vector will attempt to create it.
                
                [global_data_dir]: https://vector.dev/docs/reference/configuration/global-options/#data_dir
              "%
              | optional,
            emit_cursor
              | Bool
              | doc m%"
                [cursor]: https://www.freedesktop.org/software/systemd/man/latest/systemd.journal-fields.html#Address%20Fields
                [get_cursor]: https://www.freedesktop.org/software/systemd/man/latest/sd_journal_get_cursor.html
              "%
              | optional,
            exclude_matches
              | {
                _ | std.contract.Sequence
                  [ js2n.array.UniqueItems, Array String ]
              }
              | doc "If `exclude_units` is specified, it is merged into this list."
              | optional,
            exclude_units
              | Array String
              | doc m%"
                Unit names lacking a `.` have `.service` appended to make them a valid service unit
                name.
              "%
              | optional,
            extra_args
              | Array String
              | doc "If specified, it is merged to the command line arguments as-is."
              | optional,
            include_matches
              | {
                _ | std.contract.Sequence
                  [ js2n.array.UniqueItems, Array String ]
              }
              | doc m%"
                If empty or not present, all journal fields are accepted.
                
                If `include_units` is specified, it is merged into this list.
              "%
              | optional,
            include_units
              | Array String
              | doc m%"
                If empty or not present, all units are accepted.
                
                Unit names lacking a `.` have `.service` appended to make them a valid service unit name.
              "%
              | optional,
            journal_directory
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc "If not set, `journalctl` uses the default system journal path."
              | optional,
            journal_namespace
              | js2n.Nullable String
              | doc m%"
                This value is passed to `journalctl` through the [`--namespace` option][journalctl-namespace-option].
                If not set, `journalctl` uses the default namespace.
                
                [journal-namespace]: https://www.freedesktop.org/software/systemd/man/systemd-journald.service.html#Journal%20Namespaces
                [journalctl-namespace-option]: https://www.freedesktop.org/software/systemd/man/journalctl.html#--namespace=NAMESPACE
              "%
              | optional,
            journalctl_path
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc "If not set, a search is done for the `journalctl` path."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            remap_priority
              | Bool
              | doc "Has no effect unless the value of the field is already an integer."
              | optional,
            since_now
              | Bool
              | doc "Only include entries that appended to the journal after the entries have been read."
              | optional,
            ..
          },
      "definitions.vector::sources::kafka::KafkaSourceConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector::kafka::KafkaAuthConfig",
              {
                acknowledgements
                  | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
                  | { _ | Dyn }
                  | doc m%"
                    This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                    
                    Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                    
                    See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                    
                    [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                    [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
                  "%
                  | optional,
                auto_offset_reset
                  | String
                  | doc "See the [librdkafka documentation](https://github.com/edenhill/librdkafka/blob/master/CONFIGURATION.md) for the `auto.offset.reset` option for further clarification."
                  | optional,
                bootstrap_servers
                  | String
                  | doc m%"
                    These are the servers in a Kafka cluster that a client should use to bootstrap its connection to the cluster,
                    allowing discovery of all the other hosts in the cluster.
                    
                    Must be in the form of `host:port`, and comma-separated.
                  "%,
                commit_interval_ms
                  | refs."definitions.serde_with::DurationMilliSeconds"
                  | Number
                  | doc "The frequency that the consumer offsets are committed (written) to offset storage."
                  | optional,
                decoding
                  | refs."definitions.codecs::decoding::DeserializerConfig"
                  | doc "Configures how events are decoded from raw bytes."
                  | optional,
                drain_timeout_ms
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 9007199254740991,
                        js2n.number.Minimum 0
                      ])
                  | doc m%"
                    When Vector shuts down or the Kafka consumer group revokes partitions from this
                    consumer, wait a maximum of `drain_timeout_ms` for the source to
                    process pending acknowledgements. Must be less than `session_timeout_ms`
                    to ensure the consumer is not excluded from the group during a rebalance.
                    
                    Default value is half of `session_timeout_ms`.
                  "%
                  | optional,
                fetch_wait_max_ms
                  | refs."definitions.serde_with::DurationMilliSeconds"
                  | Number
                  | doc "Maximum time the broker may wait to fill the response."
                  | optional,
                framing
                  | refs."definitions.codecs::decoding::FramingConfig"
                  | doc m%"
                    Framing handles how events are separated when encoded in a raw byte form, where each event is
                    a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                    ends within the byte stream.
                  "%
                  | optional,
                group_id
                  | String
                  | doc "The consumer group name to be used to consume events from Kafka.",
                headers_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc m%"
                    The value is the headers of the Kafka message itself.
                    
                    By default, `"headers"` is used.
                  "%
                  | optional,
                key_field
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc m%"
                    The value is the message key of the Kafka message itself.
                    
                    By default, `"message_key"` is used.
                  "%
                  | optional,
                librdkafka_options
                  | js2n.Nullable ({ _ | String })
                  | doc "See the [librdkafka documentation](https://github.com/edenhill/librdkafka/blob/master/CONFIGURATION.md) for details."
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                metrics
                  | {
                    topic_lag_metric
                      | Bool
                      | doc "Expose topic lag metrics for all topics and partitions. Metric names are `kafka_consumer_lag`.",
                    ..
                  }
                  | doc "Metrics (beta) configuration."
                  | optional,
                offset_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc m%"
                    The value is the offset of the Kafka message itself.
                    
                    By default, `"offset"` is used.
                  "%
                  | optional,
                partition_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc m%"
                    The value is the partition from which the Kafka message was consumed from.
                    
                    By default, `"partition"` is used.
                  "%
                  | optional,
                session_timeout_ms
                  | refs."definitions.serde_with::DurationMilliSeconds"
                  | Number
                  | doc "The Kafka session timeout."
                  | optional,
                socket_timeout_ms
                  | refs."definitions.serde_with::DurationMilliSeconds"
                  | Number
                  | doc "Timeout for network requests."
                  | optional,
                topic_key
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
                  | String
                  | doc m%"
                    The value is the topic from which the Kafka message was consumed from.
                    
                    By default, `"topic"` is used.
                  "%
                  | optional,
                topics
                  | Array String
                  | doc "Regular expression syntax is supported if the topic begins with `^`.",
                ..
              }
            ],
      "definitions.vector::sources::kubernetes_logs::Config" =
        {
            auto_partial_merge
              | Bool
              | doc m%"
                Partial events are messages that were split by the Kubernetes Container Runtime
                log driver.
              "%
              | optional,
            data_dir
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc m%"
                By default, the [global `data_dir` option][global_data_dir] is used.
                Make sure the running user has write permissions to this directory.
                
                If this directory is specified, then Vector will attempt to create it.
                
                [global_data_dir]: https://vector.dev/docs/reference/configuration/global-options/#data_dir
              "%
              | optional,
            delay_deletion_ms
              | refs."definitions.serde_with::DurationMilliSeconds"
              | Number
              | doc m%"
                A longer delay allows for continued enrichment of logs after the originating Pod is
                removed. If relevant metadata has been removed, the log is forwarded un-enriched and a
                warning is emitted.
              "%
              | optional,
            exclude_paths_glob_patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.stdlib::PathBuf", String ]
              )
              | doc "A list of glob patterns to exclude from reading the files."
              | optional,
            extra_field_selector
              | String
              | doc m%"
                The built-in Node filter uses `self_node_name` to only watch Pods located on the same Node.
                
                [field_selector]: https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors/
                [node]: https://kubernetes.io/docs/concepts/architecture/nodes/
              "%
              | optional,
            extra_label_selector
              | String
              | doc m%"
                [label_selector]: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
                [pods]: https://kubernetes.io/docs/concepts/workloads/pods/
                [exclude]: https://vector.dev/docs/reference/configuration/sources/kubernetes_logs/#pod-exclusion
              "%
              | optional,
            extra_namespace_label_selector
              | String
              | doc m%"
                [label_selector]: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
                [namespaces]: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
                [exclude]: https://vector.dev/docs/reference/configuration/sources/kubernetes_logs/#namespace-exclusion
              "%
              | optional,
            fingerprint_lines
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                If your files share a common header that is not always a fixed size,
                
                If the file has less than this amount of lines, it won’t be read at all.
              "%
              | optional,
            glob_minimum_cooldown_ms
              | refs."definitions.serde_with::DurationMilliSeconds"
              | Number
              | doc m%"
                This is quite efficient, yet might still create some load on the
                file system; in addition, it is currently coupled with checksum dumping
                in the underlying file server, so setting it too low may introduce
                a significant overhead.
              "%
              | optional,
            ignore_older_secs
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "Ignore files with a data modification date older than the specified number of seconds."
              | optional,
            include_paths_glob_patterns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.stdlib::PathBuf", String ]
              )
              | doc "A list of glob patterns to include while reading the files."
              | optional,
            ingestion_timestamp_field
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E"
              | doc m%"
                This is useful to compute the latency between important event processing
                stages. For example, the time delta between when a log line was written and when it was
                processed by the `kubernetes_logs` source.
              "%
              | optional,
            internal_metrics
              | refs."definitions.vector::internal_events::file::FileInternalMetricsConfig"
              | { _ | Dyn }
              | doc "Configuration of internal metrics for file-based components."
              | optional,
            kube_config_file
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc m%"
                If not set, a connection to Kubernetes is made using the in-cluster configuration.
                
                [kubeconfig]: https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/
              "%
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            max_line_bytes
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "This protects against malformed lines or tailing incorrect files."
              | optional,
            max_read_bytes
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                This allows distributing the reads more or less evenly across
                the files.
              "%
              | optional,
            namespace_annotation_fields
              | {
                namespace_labels
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                ..
              }
              | doc "Configuration for how the events are enriched with Namespace metadata."
              | optional,
            node_annotation_fields
              | {
                node_labels
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                ..
              }
              | doc "Configuration for how the events are enriched with Node metadata."
              | optional,
            oldest_first
              | Bool
              | doc "Instead of balancing read capacity fairly across all watched files, prioritize draining the oldest files before moving on to read data from more recent files."
              | optional,
            pod_annotation_fields
              | {
                container_id
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                container_image
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                container_image_id
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                container_name
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_annotations
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_ip
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_ips
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_labels
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_name
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_namespace
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_node_name
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_owner
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                pod_uid
                  | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                  | String
                  | doc "Set to `\"\"` to suppress this key."
                  | optional,
                ..
              }
              | doc "Configuration for how the events are enriched with Pod metadata."
              | optional,
            read_from
              | refs."definitions.file_source::ReadFromConfig"
              | doc "File position to use when reading a new file."
              | optional,
            rotate_wait_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc m%"
                How long to keep an open handle to a rotated log file.
                The default value represents "no limit"
              "%
              | optional,
            self_node_name
              | String
              | doc m%"
                Configured to use an environment variable by default, to be evaluated to a value provided by
                Kubernetes at Pod creation.
                
                [node]: https://kubernetes.io/docs/concepts/architecture/nodes/
              "%
              | optional,
            timezone
              | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
              | doc "The default time zone for timestamps without an explicit zone."
              | optional,
            use_apiserver_cache
              | Bool
              | doc "Determines if requests to the kube-apiserver can be served by a cache."
              | optional,
            ..
          },
      "definitions.vector::sources::logstash::LogstashConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.vector::sources::util::net::SocketListenAddr"
              | String
              | doc "If a socket address is used, it _must_ include a port.",
            connection_limit
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 4294967295,
                    js2n.number.Minimum 0
                  ])
              | doc "The maximum number of TCP connections that are allowed at any given time."
              | optional,
            keepalive
              | refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E"
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            permit_origin
              | refs."definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E"
              | optional,
            receive_buffer_bytes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc "The size of the receive buffer used for each connection."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::mongodb_metrics::MongoDbMetricsConfig" =
        {
            endpoints
              | Array String
              | doc "Each endpoint must be in the [Connection String URI Format](https://www.mongodb.com/docs/manual/reference/connection-string/).",
            namespace
              | String
              | doc m%"
                If set to an empty string, no namespace is added to the metrics.
                
                By default, `mongodb` is used.
              "%
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between scrapes, in seconds."
              | optional,
            ..
          },
      "definitions.vector::sources::nats::NatsSourceConfig" =
        {
            auth
              | refs."definitions.core::option::Option%3Cvector::nats::NatsAuthConfig%3E"
              | optional,
            connection_name
              | String
              | doc "[nats_connection_name]: https://docs.nats.io/using-nats/developer/connecting/name",
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc m%"
                Framing handles how events are separated when encoded in a raw byte form, where each event is
                a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                ends within the byte stream.
              "%
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            queue
              | js2n.Nullable String
              | doc "The NATS queue group to join."
              | optional,
            subject
              | String
              | doc "[nats_subject]: https://docs.nats.io/nats-concepts/subjects",
            subject_key_field
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc "The `NATS` subject key."
              | optional,
            subscriber_capacity
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                This value determines how many messages the NATS subscriber buffers
                before incoming messages are dropped.
                
                See the [async_nats documentation][async_nats_subscription_capacity] for more information.
                
                [async_nats_subscription_capacity]: https://docs.rs/async-nats/latest/async_nats/struct.ConnectOptions.html#method.subscription_capacity
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            url
              | String
              | doc m%"
                The URL takes the form of `nats://server:port`.
                If the port is not specified it defaults to 4222.
              "%,
            ..
          },
      "definitions.vector::sources::nginx_metrics::NginxMetricsConfig" =
        {
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | optional,
            endpoints
              | Array String
              | doc m%"
                Each endpoint must be a valid HTTP/HTTPS URI pointing to an NGINX instance that has the
                `ngx_http_stub_status_module` module enabled.
              "%,
            namespace
              | String
              | doc m%"
                If set to an empty string, no namespace is added to the metrics.
                
                By default, `nginx` is used.
              "%
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between scrapes."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::opentelemetry::OpentelemetryConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            grpc
              | {
                address
                  | refs."definitions.stdlib::SocketAddr"
                  | String
                  | doc "It _must_ include a port.",
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
                  | optional,
                ..
              }
              | doc "Configuration for the `opentelemetry` gRPC server.",
            http
              | {
                address
                  | refs."definitions.stdlib::SocketAddr"
                  | String
                  | doc "It _must_ include a port.",
                headers
                  | Array String
                  | doc m%"
                    Accepts the wildcard (`*`) character for headers matching a specified pattern.
                    
                    Specifying "*" results in all headers included in the log event.
                    
                    These headers are not included in the JSON payload if a field with a conflicting name exists.
                  "%
                  | optional,
                keepalive
                  | refs."definitions.vector::http::KeepaliveConfig"
                  | { _ | Dyn }
                  | doc "Configuration of HTTP server keepalive parameters."
                  | optional,
                tls
                  | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
                  | optional,
                ..
              }
              | doc "Configuration for the `opentelemetry` HTTP server.",
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            ..
          },
      "definitions.vector::sources::postgresql_metrics::PostgresqlMetricsConfig" =
        {
            endpoints
              | Array String
              | doc m%"
                Each endpoint must be in the [Connection URI
                format](https://www.postgresql.org/docs/current/libpq-connect.html#id-1.7.3.8.3.6).
              "%,
            exclude_databases
              | js2n.Nullable (Array String)
              | doc m%"
                Specifying `""` includes metrics where `datname` is `NULL`.
                
                This can be used in conjunction with `include_databases`.
              "%
              | optional,
            include_databases
              | js2n.Nullable (Array String)
              | doc m%"
                If not set, metrics are collected from all databases. Specifying `""` includes metrics where `datname` is
                `NULL`.
                
                This can be used in conjunction with `exclude_databases`.
              "%
              | optional,
            namespace
              | String
              | doc "Overrides the default namespace for the metrics emitted by the source."
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between scrapes."
              | optional,
            tls
              | js2n.Nullable
                {
                  ca_file
                    | refs."definitions.stdlib::PathBuf"
                    | String
                    | doc "The certificate must be in the DER or PEM (X.509) format.",
                  ..
                }
              | doc "Configuration of TLS when connecting to PostgreSQL."
              | optional,
            ..
          },
      "definitions.vector::sources::prometheus::pushgateway::PrometheusPushgatewayConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "The address _must_ include a port.",
            aggregate_metrics
              | Bool
              | doc m%"
                Only applies to counters and histograms as gauges and summaries can't be
                meaningfully aggregated.
              "%
              | optional,
            auth
              | refs."definitions.core::option::Option%3Cvector::sources::util::http::auth::HttpSourceAuthConfig%3E"
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::prometheus::remote_write::PrometheusRemoteWriteConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "The address _must_ include a port.",
            auth
              | refs."definitions.core::option::Option%3Cvector::sources::util::http::auth::HttpSourceAuthConfig%3E"
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::prometheus::scrape::PrometheusScrapeConfig" =
        {
            auth
              | refs."definitions.core::option::Option%3Cvector::http::Auth%3E"
              | optional,
            endpoint_tag
              | js2n.Nullable String
              | doc "The tag value is the endpoint of the scraped instance."
              | optional,
            endpoints | Array String | doc "Endpoints to scrape metrics from.",
            honor_labels
              | Bool
              | doc m%"
                If `true`, the new tag is not added if the scraped metric has the tag already. If `false`, the conflicting tag
                is renamed by prepending `exported_` to the original name.
                
                This matches Prometheus’ `honor_labels` configuration.
              "%
              | optional,
            instance_tag
              | js2n.Nullable String
              | doc "The tag value is the host and port of the scraped instance."
              | optional,
            query
              | { _ | Array String }
              | doc m%"
                One or more values for the same parameter key can be provided. The parameters provided in this option are
                appended to any parameters manually provided in the `endpoints` option. This option is especially useful when
                scraping the `/federate` endpoint.
              "%
              | optional,
            scrape_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc m%"
                The interval between scrapes. Requests are run concurrently so if a scrape takes longer
                than the interval a new scrape will be started. This can take extra resources, set the timeout
                to a value lower than the scrape interval to prevent this from happening.
              "%
              | optional,
            scrape_timeout_secs
              | refs."definitions.serde_with::DurationFractionalSeconds"
              | Number
              | doc "The timeout for each scrape request."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsConfig%3E"
              | optional,
            ..
          },
      "definitions.vector::sources::pulsar::PulsarSourceConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            auth
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                name = String,
                                token =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.vector_common::sensitive_string::SensitiveString",
                                        String
                                      ],
                              },
                          required = { name = true, token = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                oauth2 =
                                  js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              audience = js2n.Nullable String,
                                              credentials_url = String,
                                              issuer_url = String,
                                              scope = js2n.Nullable String,
                                            },
                                        required =
                                          {
                                              credentials_url = true,
                                              issuer_url = true,
                                            },
                                      },
                              },
                          required = { oauth2 = true, },
                        }
                    ]
                ]
              | doc "Authentication configuration."
              | optional,
            batch_size
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 4294967295,
                    js2n.number.Minimum 0
                  ])
              | doc "Max count of messages in a batch."
              | optional,
            consumer_name
              | js2n.Nullable String
              | doc "The Pulsar consumer name."
              | optional,
            dead_letter_queue_policy
              | js2n.Nullable
                {
                  dead_letter_topic
                    | String
                    | doc "Name of the dead letter topic where the failing messages will be sent.",
                  max_redeliver_count
                    | std.number.Integer
                    | js2n.number.Maximum 9007199254740991
                    | js2n.number.Minimum 0
                    | doc "Maximum number of times that a message will be redelivered before being sent to the dead letter queue.",
                  ..
                }
              | doc "Dead Letter Queue policy configuration."
              | optional,
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            endpoint
              | String
              | doc "The endpoint to which the Pulsar client should connect to.",
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc m%"
                Framing handles how events are separated when encoded in a raw byte form, where each event is
                a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                ends within the byte stream.
              "%
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            priority_level
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 2147483647,
                    js2n.number.Minimum (-2147483648)
                  ])
              | doc m%"
                The broker follows descending priorities. For example, 0=max-priority, 1, 2,...
                
                In Shared subscription type, the broker first dispatches messages to the max priority level consumers if they have permits. Otherwise, the broker considers next priority level consumers.
              "%
              | optional,
            subscription_name
              | js2n.Nullable String
              | doc "The Pulsar subscription name."
              | optional,
            topics
              | Array String
              | doc "The Pulsar topic names to read events from.",
            ..
          },
      "definitions.vector::sources::redis::RedisSourceConfig" =
        {
            data_type
              | js2n.OneOf [ js2n.Const "list", js2n.Const "channel" ]
              | doc "The Redis data type (`list` or `channel`) to use."
              | optional,
            decoding
              | refs."definitions.codecs::decoding::DeserializerConfig"
              | doc "Configures how events are decoded from raw bytes."
              | optional,
            framing
              | refs."definitions.codecs::decoding::FramingConfig"
              | doc m%"
                Framing handles how events are separated when encoded in a raw byte form, where each event is
                a frame that must be prefixed, or delimited, in a way that marks where an event begins and
                ends within the byte stream.
              "%
              | optional,
            key | String | doc "The Redis key to read messages from.",
            list
              | js2n.Nullable
                {
                  method
                    | js2n.OneOf [ js2n.Const "lpop", js2n.Const "rpop" ]
                    | doc "Method for getting events from the `list` data type.",
                  ..
                }
              | doc "Options for the Redis `list` data type."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            redis_key
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
              | doc m%"
                The value is the Redis key that the event was read from.
                
                By default, this is not set and the field is not automatically added.
              "%
              | optional,
            url
              | String
              | doc "The URL must take the form of `protocol://server:port/db` where the `protocol` can either be `redis` or `rediss` for connections secured using TLS.",
            ..
          },
      "definitions.vector::sources::socket::SocketConfig" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            address =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sources::util::net::SocketListenAddr",
                                    String
                                  ],
                            connection_limit =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 4294967295,
                                      js2n.number.Minimum 0
                                    ]),
                            decoding =
                              refs."definitions.codecs::decoding::DeserializerConfig",
                            framing =
                              refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E",
                            host_key =
                              refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E",
                            keepalive =
                              refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E",
                            log_namespace = js2n.Nullable Bool,
                            max_connection_duration_secs =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                            permit_origin =
                              refs."definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E",
                            port_key =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath",
                                    String
                                  ],
                            receive_buffer_bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                            shutdown_timeout_secs =
                              std.contract.Sequence
                                  [
                                    refs."definitions.serde_with::DurationSeconds",
                                    Number
                                  ],
                            tls =
                              refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E",
                          },
                      required = { address = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "tcp", },
                      required = { mode = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            address =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sources::util::net::SocketListenAddr",
                                    String
                                  ],
                            decoding =
                              refs."definitions.codecs::decoding::DeserializerConfig",
                            framing =
                              refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E",
                            host_key =
                              refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E",
                            log_namespace = js2n.Nullable Bool,
                            max_length =
                              std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 9007199254740991,
                                    js2n.number.Minimum 0
                                  ],
                            port_key =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath",
                                    String
                                  ],
                            receive_buffer_bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                          },
                      required = { address = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "udp", },
                      required = { mode = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            decoding =
                              refs."definitions.codecs::decoding::DeserializerConfig",
                            framing =
                              refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E",
                            host_key =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath",
                                    String
                                  ],
                            log_namespace = js2n.Nullable Bool,
                            path =
                              std.contract.Sequence
                                  [
                                    refs."definitions.stdlib::PathBuf",
                                    String
                                  ],
                            socket_file_mode =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 4294967295,
                                      js2n.number.Minimum 0
                                    ]),
                          },
                      required = { path = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "unix_datagram", },
                      required = { mode = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            decoding =
                              refs."definitions.codecs::decoding::DeserializerConfig",
                            framing =
                              refs."definitions.core::option::Option%3Ccodecs::decoding::FramingConfig%3E",
                            host_key =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath",
                                    String
                                  ],
                            log_namespace = js2n.Nullable Bool,
                            path =
                              std.contract.Sequence
                                  [
                                    refs."definitions.stdlib::PathBuf",
                                    String
                                  ],
                            socket_file_mode =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 4294967295,
                                      js2n.number.Minimum 0
                                    ]),
                          },
                      required = { path = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "unix_stream", },
                      required = { mode = true, },
                    }
                ]
            ],
      "definitions.vector::sources::splunk_hec::SplunkConfig" =
        {
            acknowledgements
              | {
                ack_idle_cleanup
                  | Bool
                  | doc "A channel is idling if it is not used for sending data or querying acknowledgement statuses."
                  | optional,
                enabled
                  | js2n.Nullable Bool
                  | doc "Enables end-to-end acknowledgements."
                  | optional,
                max_idle_time
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc m%"
                    Channels can potentially idle for longer than this setting but clients should not rely on such behavior.
                    
                    Minimum of `1`.
                  "%
                  | optional,
                max_number_of_ack_channels
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "Minimum of `1`."
                  | optional,
                max_pending_acks
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc m%"
                    Equivalent to the `max_number_of_acked_requests_pending_query` Splunk HEC setting.
                    
                    Minimum of `1`.
                  "%
                  | optional,
                max_pending_acks_per_channel
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc m%"
                    Equivalent to the `max_number_of_acked_requests_pending_query_per_ack_channel` Splunk HEC setting.
                    
                    Minimum of `1`.
                  "%
                  | optional,
                ..
              }
              | doc "Acknowledgement configuration for the `splunk_hec` source."
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "The address _must_ include a port."
              | optional,
            keepalive
              | refs."definitions.vector::http::KeepaliveConfig"
              | { _ | Dyn }
              | doc "Configuration of HTTP server keepalive parameters."
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global settings."
              | optional,
            store_hec_token
              | Bool
              | doc m%"
                If set to `true`, when incoming requests contain a Splunk HEC token, the token used is kept in the
                event metadata and preferentially used if the event is sent to a Splunk HEC sink.
              "%
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            token
              | refs."definitions.core::option::Option%3Cvector_common::sensitive_string::SensitiveString%3E"
              | doc m%"
                If supplied, incoming requests must supply this token in the `Authorization` header, just as a client would if
                it was communicating with the Splunk HEC endpoint directly.
                
                If _not_ supplied, the `Authorization` header is ignored and requests are not authenticated.
              "%
              | optional,
            valid_tokens
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."definitions.vector_common::sensitive_string::SensitiveString",
                      String
                    ]
                ))
              | doc m%"
                If supplied, incoming requests must supply one of these tokens in the `Authorization` header, just as a client
                would if it was communicating with the Splunk HEC endpoint directly.
                
                If _not_ supplied, the `Authorization` header is ignored and requests are not authenticated.
              "%
              | optional,
            ..
          },
      "definitions.vector::sources::static_metrics::StaticMetricsConfig" =
        {
            interval_secs
              | refs."definitions.serde_with::DurationFractionalSeconds"
              | Number
              | doc "The interval between metric emitting, in seconds."
              | optional,
            metrics
              | Array
                {
                  kind
                    | refs."definitions.vector_core::event::metric::MetricKind"
                    | doc "Kind of the static metric - either absolute or incremental",
                  name | String | doc "Name of the static metric",
                  tags
                    | { _ | String }
                    | doc "Key-value pairs representing tags and their values to add to the metric."
                    | optional,
                  value
                    | refs."definitions.vector_core::event::metric::value::MetricValue"
                    | doc "\"Observed\" value of the static metric",
                  ..
                }
              | doc "Tag configuration for the `internal_metrics` source."
              | optional,
            namespace
              | String
              | doc "Overrides the default namespace for the metrics emitted by the source."
              | optional,
            ..
          },
      "definitions.vector::sources::statsd::StatsdConfig" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            address =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sources::util::net::SocketListenAddr",
                                    String
                                  ],
                            connection_limit =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 4294967295,
                                      js2n.number.Minimum 0
                                    ]),
                            keepalive =
                              refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E",
                            permit_origin =
                              refs."definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E",
                            receive_buffer_bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                            sanitize = Bool,
                            shutdown_timeout_secs =
                              std.contract.Sequence
                                  [
                                    refs."definitions.serde_with::DurationSeconds",
                                    Number
                                  ],
                            tls =
                              refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E",
                          },
                      required = { address = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "tcp", },
                      required = { mode = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            address =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sources::util::net::SocketListenAddr",
                                    String
                                  ],
                            receive_buffer_bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                            sanitize = Bool,
                          },
                      required = { address = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "udp", },
                      required = { mode = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            path =
                              std.contract.Sequence
                                  [
                                    refs."definitions.stdlib::PathBuf",
                                    String
                                  ],
                            sanitize = Bool,
                          },
                      required = { path = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "unix", },
                      required = { mode = true, },
                    }
                ]
            ],
      "definitions.vector::sources::syslog::SyslogConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            address =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sources::util::net::SocketListenAddr",
                                    String
                                  ],
                            connection_limit =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 4294967295,
                                      js2n.number.Minimum 0
                                    ]),
                            keepalive =
                              refs."definitions.core::option::Option%3Cvector_core::tcp::TcpKeepaliveConfig%3E",
                            mode = js2n.Const "tcp",
                            permit_origin =
                              refs."definitions.core::option::Option%3Cvector_core::ipallowlist::IpAllowlistConfig%3E",
                            receive_buffer_bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                            tls =
                              refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsSourceConfig%3E",
                          },
                      required = { address = true, mode = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            address =
                              std.contract.Sequence
                                  [
                                    refs."definitions.vector::sources::util::net::SocketListenAddr",
                                    String
                                  ],
                            mode = js2n.Const "udp",
                            receive_buffer_bytes =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 9007199254740991,
                                      js2n.number.Minimum 0
                                    ]),
                          },
                      required = { address = true, mode = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            mode = js2n.Const "unix",
                            path =
                              std.contract.Sequence
                                  [
                                    refs."definitions.stdlib::PathBuf",
                                    String
                                  ],
                            socket_file_mode =
                              js2n.Nullable
                                  (std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 4294967295,
                                      js2n.number.Minimum 0
                                    ]),
                          },
                      required = { mode = true, path = true, },
                    }
                ],
              {
                host_key
                  | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalValuePath%3E"
                  | doc m%"
                    If using TCP or UDP, the value is the peer host's address, including the port. For example, `1.2.3.4:9000`. If using
                    UDS, the value is the socket path itself.
                    
                    By default, the [global `log_schema.host_key` option][global_host_key] is used.
                    
                    [global_host_key]: https://vector.dev/docs/reference/configuration/global-options/#log_schema.host_key
                  "%
                  | optional,
                log_namespace
                  | js2n.Nullable Bool
                  | doc "The namespace to use for logs. This overrides the global setting."
                  | optional,
                max_length
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "Messages larger than this are truncated."
                  | optional,
                ..
              }
            ],
      "definitions.vector::sources::util::http::method::HttpMethod" =
        js2n.OneOf
            [
              js2n.Const "HEAD",
              js2n.Const "GET",
              js2n.Const "POST",
              js2n.Const "PUT",
              js2n.Const "PATCH",
              js2n.Const "DELETE",
              js2n.Const "OPTIONS"
            ],
      "definitions.vector::sources::util::net::SocketListenAddr" = String,
      "definitions.vector::sources::vector::VectorConfig" =
        {
            acknowledgements
              | refs."definitions.vector_core::config::SourceAcknowledgementsConfig"
              | { _ | Dyn }
              | doc m%"
                This setting is **deprecated** in favor of enabling `acknowledgements` at the [global][global_acks] or sink level.
                
                Enabling or disabling acknowledgements at the source level has **no effect** on acknowledgement behavior.
                
                See [End-to-end Acknowledgements][e2e_acks] for more information on how event acknowledgement is handled.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
                [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
              "%
              | optional,
            address
              | refs."definitions.stdlib::SocketAddr"
              | String
              | doc "It _must_ include a port.",
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            tls
              | refs."definitions.core::option::Option%3Cvector_core::tls::settings::TlsEnableableConfig%3E"
              | optional,
            version
              | js2n.Nullable (std.contract.Equal "2")
              | doc "Version of the configuration."
              | optional,
            ..
          },
      "definitions.vector::template::Template" = String,
      "definitions.vector::transforms::Transforms" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::aggregate::AggregateConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aggregate", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::aws_ec2_metadata::Ec2Metadata",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "aws_ec2_metadata", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::dedupe::config::DedupeConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "dedupe", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::exclusive_route::config::ExclusiveRouteConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "exclusive_route", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::filter::FilterConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "filter", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::log_to_metric::LogToMetricConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "log_to_metric", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::lua::LuaConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "lua", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::metric_to_log::MetricToLogConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "metric_to_log", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::reduce::config::ReduceConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "reduce", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::remap::RemapConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "remap", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::route::RouteConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "route", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::sample::config::SampleConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "sample", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::tag_cardinality_limit::config::TagCardinalityLimitConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { type = js2n.Const "tag_cardinality_limit", },
                      required = { type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.vector::transforms::throttle::ThrottleConfig",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "throttle", },
                      required = { type = true, },
                    }
                ]
            ],
      "definitions.vector::transforms::aggregate::AggregateConfig" =
        {
            interval_ms
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc "During this time frame, metrics (beta) with the same series data (name, namespace, tags, and so on) are aggregated."
              | optional,
            mode
              | js2n.OneOf
                [
                  js2n.Const "Auto",
                  js2n.Const "Sum",
                  js2n.Const "Latest",
                  js2n.Const "Count",
                  js2n.Const "Diff",
                  js2n.Const "Max",
                  js2n.Const "Min",
                  js2n.Const "Mean",
                  js2n.Const "Stdev"
                ]
              | doc "Some of the functions may only function on incremental and some only on absolute metrics."
              | optional,
            ..
          },
      "definitions.vector::transforms::aws_ec2_metadata::Ec2Metadata" =
        {
            endpoint
              | String
              | doc "Overrides the default EC2 metadata endpoint."
              | optional,
            fields
              | Array String
              | doc "A list of metadata fields to include in each transformed event."
              | optional,
            namespace
              | refs."definitions.core::option::Option%3Cvector_lookup::lookup_v2::optional_path::OptionalTargetPath%3E"
              | doc "Sets a prefix for all event fields added by the transform."
              | optional,
            proxy
              | refs."definitions.vector_core::config::proxy::ProxyConfig"
              | { _ | Dyn }
              | doc m%"
                Configure to proxy traffic through an HTTP(S) proxy when making external requests.
                
                Similar to common proxy configuration convention, you can set different proxies
                to use based on the type of traffic being proxied. You can also set specific hosts that
                should not be proxied.
              "%
              | optional,
            refresh_interval_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The interval between querying for updated metadata, in seconds."
              | optional,
            refresh_timeout_secs
              | refs."definitions.serde_with::DurationSeconds"
              | Number
              | doc "The timeout for querying the EC2 metadata endpoint, in seconds."
              | optional,
            required
              | Bool
              | doc "Requires the transform to be able to successfully query the EC2 metadata before starting to process the data."
              | optional,
            tags
              | Array String
              | doc "A list of instance tags to include in each transformed event."
              | optional,
            ..
          },
      "definitions.vector::transforms::dedupe::config::DedupeConfig" =
        {
            cache
              | {
                num_events
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 1
                  | doc "Number of events to cache and use for comparing incoming events to previously seen events.",
                ..
              }
              | doc "Caching configuration for deduplication."
              | optional,
            fields
              | js2n.OneOf
                [
                  js2n.Null,
                  js2n.OneOf
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                "match" =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.vector_lookup::lookup_v2::ConfigTargetPath",
                                          String
                                        ]),
                              },
                          required = { "match" = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                ignore =
                                  js2n.array.ArrayOf
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.vector_lookup::lookup_v2::ConfigTargetPath",
                                          String
                                        ]),
                              },
                          required = { ignore = true, },
                        }
                    ]
                ]
              | doc m%"
                When no field matching configuration is specified, events are matched using the `timestamp`,
                `host`, and `message` fields from an event. The specific field names used are those set in
                the global [`log schema`][global_log_schema] configuration.
                
                [global_log_schema]: https://vector.dev/docs/reference/configuration/global-options/#log_schema
              "%
              | optional,
            ..
          },
      "definitions.vector::transforms::exclusive_route::config::ExclusiveRouteConfig" =
        {
            routes
              | Array
                {
                  condition
                    | refs."definitions.vector::conditions::AnyCondition"
                    | doc "Each condition represents a filter which is applied to each event.",
                  name
                    | String
                    | doc m%"
                      The `_unmatched` name is reserved and thus cannot be used as route ID.
                      
                      Each route can then be referenced as an input by other components with the name
                       `<transform_name>.<name>`. If an event doesn’t match any route,
                      it is sent to the `<transform_name>._unmatched` output.
                    "%,
                  ..
                }
              | doc "An array of named routes. The route names are expected to be unique.",
            ..
          },
      "definitions.vector::transforms::filter::FilterConfig" =
        {
            condition
              | refs."definitions.vector::conditions::AnyCondition"
              | doc "If an event is matched by the condition, it is forwarded. Otherwise, the event is dropped.",
            ..
          },
      "definitions.vector::transforms::log_to_metric::LogToMetricConfig" =
        {
            all_metrics
              | js2n.Nullable Bool
              | doc m%"
                This is an example JSON representation of a counter with the following properties:
                
                - `counter`: An object with a single property `value` representing the counter value, in this case, `10.0`).
                - `kind`: A string indicating the kind of counter, in this case, "incremental".
                - `name`: A string representing the name of the counter, here set to "test.transform.counter".
                - `tags`: An object containing additional tags such as "env" and "host".
                
                Objects that can be processed include counter, histogram, gauge, set and summary.
              "%
              | optional,
            metrics
              | Array (
                std.contract.Sequence
                  [
                    js2n.OneOf
                      [
                        std.contract.Sequence
                          [
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      increment_by_value = Bool,
                                      kind =
                                        refs."definitions.vector_core::event::metric::MetricKind",
                                    },
                                required = {},
                              },
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties = { type = js2n.Const "counter", },
                                required = { type = true, },
                              }
                          ],
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { type = js2n.Const "histogram", },
                            required = { type = true, },
                          },
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { type = js2n.Const "gauge", },
                            required = { type = true, },
                          },
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { type = js2n.Const "set", },
                            required = { type = true, },
                          },
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { type = js2n.Const "summary", },
                            required = { type = true, },
                          }
                      ],
                    {
                      field
                        | refs."definitions.vector::template::Template"
                        | String
                        | doc "Name of the field in the event to generate the metric.",
                      name
                        | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                        | doc "If not specified, `field` is used as the name of the metric."
                        | optional,
                      namespace
                        | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                        | doc "Sets the namespace for the metric."
                        | optional,
                      tags
                        | js2n.Nullable
                          ({
                            _ | js2n.OneOf
                              [
                                refs."definitions.core::option::Option%3Cvector::template::Template%3E",
                                js2n.array.ArrayOf
                                  refs."definitions.core::option::Option%3Cvector::template::Template%3E"
                              ]
                          })
                        | doc "Both keys and values can be templated, allowing you to attach dynamic tags to events."
                        | optional,
                      ..
                    }
                  ]
              )
              | doc "A list of metrics to generate.",
            ..
          },
      "definitions.vector::transforms::lua::LuaConfig" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        { version = js2n.Nullable (js2n.Const "1"), },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            search_dirs = js2n.array.ArrayOf String,
                            source = String,
                          },
                      required = { source = true, },
                    }
                ],
              std.contract.Sequence
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { version = js2n.Const "2", },
                      required = { version = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            hooks =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          init = js2n.Nullable String,
                                          process = String,
                                          shutdown = js2n.Nullable String,
                                        },
                                    required = { process = true, },
                                  },
                            metric_tag_values =
                              refs."definitions.codecs::MetricTagValues",
                            search_dirs =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.stdlib::PathBuf",
                                      String
                                    ]),
                            source = js2n.Nullable String,
                            timers =
                              js2n.array.ArrayOf
                                  (js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            handler = String,
                                            interval_seconds =
                                              std.contract.Sequence
                                                  [
                                                    refs."definitions.serde_with::DurationSeconds",
                                                    Number
                                                  ],
                                          },
                                      required =
                                        {
                                            handler = true,
                                            interval_seconds = true,
                                          },
                                    }),
                          },
                      required = { hooks = true, },
                    }
                ]
            ],
      "definitions.vector::transforms::metric_to_log::MetricToLogConfig" =
        {
            host_tag
              | js2n.Nullable String
              | doc m%"
                If present, the value of the tag is set on the generated log event in the `host` field,
                where the field key uses the [global `host_key` option][global_log_schema_host_key].
                
                [global_log_schema_host_key]: https://vector.dev/docs/reference/configuration//global-options#log_schema.host_key
              "%
              | optional,
            log_namespace
              | js2n.Nullable Bool
              | doc "The namespace to use for logs. This overrides the global setting."
              | optional,
            metric_tag_values
              | refs."definitions.codecs::MetricTagValues"
              | doc m%"
                When set to `single`, only the last non-bare value of tags are displayed with the
                metric.  When set to `full`, all metric tags are exposed as separate assignments as
                described by [the `native_json` codec][vector_native_json].
                
                [vector_native_json]: https://github.com/vectordotdev/vector/blob/master/lib/codecs/tests/data/native_encoding/schema.cue
              "%
              | optional,
            timezone
              | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
              | doc m%"
                This overrides the [global `timezone`][global_timezone] option. The time zone name may be
                any name in the [TZ database][tz_database] or `local` to indicate system local time.
                
                [global_timezone]: https://vector.dev/docs/reference/configuration//global-options#timezone
                [tz_database]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
              "%
              | optional,
            ..
          },
      "definitions.vector::transforms::reduce::config::ReduceConfig" =
        {
            end_every_period_ms
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 0
                  ])
              | doc m%"
                If supplied, every time this interval elapses for a given grouping, the reduced value
                for that grouping is flushed. Checked every flush_period_ms.
              "%
              | optional,
            ends_when
              | refs."definitions.core::option::Option%3Cvector::conditions::AnyCondition%3E"
              | doc m%"
                If this condition resolves to `true` for an event, the current transaction is immediately
                flushed with this event.
              "%
              | optional,
            expire_after_ms
              | refs."definitions.serde_with::DurationMilliSeconds"
              | Number
              | doc m%"
                The maximum period of time to wait after the last event is received, in milliseconds, before
                a combined event should be considered complete.
              "%
              | optional,
            flush_period_ms
              | refs."definitions.serde_with::DurationMilliSeconds"
              | Number
              | doc "The interval to check for and flush any expired events, in milliseconds."
              | optional,
            group_by
              | Array String
              | doc m%"
                Each group with matching values for the specified keys is reduced independently, allowing
                you to keep independent event streams separate. When no fields are specified, all events
                are combined in a single group.
                
                For example, if `group_by = ["host", "region"]`, then all incoming events that have the same
                host and region are grouped together before being reduced.
              "%
              | optional,
            max_events
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    std.number.Integer,
                    js2n.number.Maximum 9007199254740991,
                    js2n.number.Minimum 1
                  ])
              | doc "The maximum number of events to group together."
              | optional,
            merge_strategies
              | {
                _ | js2n.OneOf
                  [
                    js2n.Const "discard",
                    js2n.Const "retain",
                    js2n.Const "sum",
                    js2n.Const "max",
                    js2n.Const "min",
                    js2n.Const "array",
                    js2n.Const "concat",
                    js2n.Const "concat_newline",
                    js2n.Const "concat_raw",
                    js2n.Const "shortest_array",
                    js2n.Const "longest_array",
                    js2n.Const "flat_unique"
                  ]
              }
              | doc m%"
                For each field specified, the given strategy is used for combining events rather than
                the default behavior.
                
                The default behavior is as follows:
                
                - The first value of a string field is kept and subsequent values are discarded.
                - For timestamp fields the first is kept and a new field `[field-name]_end` is added with
                  the last received timestamp value.
                - Numeric values are summed.
                - For nested paths, the field value is retrieved and then reduced using the default strategies mentioned above (unless explicitly specified otherwise).
              "%
              | optional,
            starts_when
              | refs."definitions.core::option::Option%3Cvector::conditions::AnyCondition%3E"
              | doc m%"
                If this condition resolves to `true` for an event, the previous transaction is flushed
                (without this event) and a new transaction is started.
              "%
              | optional,
            ..
          },
      "definitions.vector::transforms::remap::RemapConfig" =
        {
            drop_on_abort
              | Bool
              | doc m%"
                If a VRL program is manually aborted (using [`abort`][vrl_docs_abort]) when
                processing an event, this option controls whether the original, unmodified event is sent
                downstream without any modifications or if it is dropped.
                
                Additionally, dropped events can potentially be diverted to a specially-named output for
                further logging and analysis by setting `reroute_dropped`.
                
                [vrl_docs_abort]: https://vector.dev/docs/reference/vrl/expressions/#abort
              "%
              | optional,
            drop_on_error
              | Bool
              | doc m%"
                Normally, if a VRL program encounters an error when processing an event, the original,
                unmodified event is sent downstream. In some cases, you may not want to send the event
                any further, such as if certain transformation or enrichment is strictly required. Setting
                `drop_on_error` to `true` allows you to ensure these events do not get processed any
                further.
                
                Additionally, dropped events can potentially be diverted to a specially named output for
                further logging and analysis by setting `reroute_dropped`.
              "%
              | optional,
            file
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc m%"
                If a relative path is provided, its root is the current working directory.
                
                Required if `source` is missing.
                
                [vrl]: https://vector.dev/docs/reference/vrl
              "%
              | optional,
            files
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.stdlib::PathBuf", String ]
                ))
              | doc m%"
                If a relative path is provided, its root is the current working directory.
                
                Required if `source` or `file` are missing.
                
                [vrl]: https://vector.dev/docs/reference/vrl
              "%
              | optional,
            metric_tag_values
              | refs."definitions.codecs::MetricTagValues"
              | doc m%"
                When set to `full`, all metric tags are exposed as arrays of either string or null
                values.
              "%
              | optional,
            reroute_dropped
              | Bool
              | doc m%"
                When using `drop_on_error` or `drop_on_abort`, events that are "dropped" are processed no
                further. In some cases, it may be desirable to keep the events around for further analysis,
                debugging, or retrying.
                
                In these cases, `reroute_dropped` can be set to `true` which forwards the original event
                to a specially-named output, `dropped`. The original event is annotated with additional
                fields describing why the event was dropped.
              "%
              | optional,
            runtime
              | String
              | doc "The runtime to use for executing VRL code."
              | optional,
            source
              | js2n.Nullable String
              | doc m%"
                Required if `file` is missing.
                
                [vrl]: https://vector.dev/docs/reference/vrl
              "%
              | optional,
            timezone
              | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
              | doc m%"
                This overrides the [global `timezone`][global_timezone] option. The time zone name may be
                any name in the [TZ database][tz_database], or `local` to indicate system local time.
                
                [global_timezone]: https://vector.dev/docs/reference/configuration//global-options#timezone
                [tz_database]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
              "%
              | optional,
            ..
          },
      "definitions.vector::transforms::route::RouteConfig" =
        {
            reroute_unmatched
              | Bool
              | doc m%"
                Normally, if an event doesn't match any defined route, it is sent to the `<transform_name>._unmatched`
                output for further processing. In some cases, you may want to simply discard unmatched events and not
                process them any further.
                
                In these cases, `reroute_unmatched` can be set to `false` to disable the `<transform_name>._unmatched`
                output and instead silently discard any unmatched events.
              "%
              | optional,
            route
              | { _ | refs."definitions.vector::conditions::AnyCondition" }
              | doc m%"
                The following identifiers are reserved output names and thus cannot be used as route IDs:
                - `_unmatched`
                - `_default`
                
                Each route can then be referenced as an input by other components with the name
                `<transform_name>.<route_id>`. If an event doesn’t match any route, and if `reroute_unmatched`
                is set to `true` (the default), it is sent to the `<transform_name>._unmatched` output.
                Otherwise, the unmatched event is instead silently discarded.
              "%
              | optional,
            ..
          },
      "definitions.vector::transforms::sample::config::SampleConfig" =
        {
            exclude
              | refs."definitions.core::option::Option%3Cvector::conditions::AnyCondition%3E"
              | doc "A logical condition used to exclude events from sampling."
              | optional,
            group_by
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                If left unspecified, or if the event doesn't have `group_by`, then the event is not
                sampled separately.
              "%
              | optional,
            key_field
              | js2n.Nullable String
              | doc m%"
                Each unique value for the key creates a bucket of related events to be sampled together
                and the rate is applied to the buckets themselves to sample `1/N` buckets.  The overall rate
                of sampling may differ from the configured one if values in the field are not uniformly
                distributed. If left unspecified, or if the event doesn’t have `key_field`, then the
                event is sampled independently.
                
                This can be useful to, for example, ensure that all logs for a given transaction are
                sampled together, but that overall `1/N` transactions are sampled.
              "%
              | optional,
            rate
              | std.number.Integer
              | js2n.number.Maximum 9007199254740991
              | js2n.number.Minimum 0
              | doc m%"
                For example, `rate = 1500` means 1 out of every 1500 events are forwarded and the rest are
                dropped.
              "%,
            sample_rate_key
              | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath"
              | String
              | doc "The event key in which the sample rate is stored. If set to an empty string, the sample rate will not be added to the event."
              | optional,
            ..
          },
      "definitions.vector::transforms::tag_cardinality_limit::config::TagCardinalityLimitConfig" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { mode = js2n.Const "exact", },
                      required = { mode = true, },
                    },
                  std.contract.Sequence
                    [
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                cache_size_per_key =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 9007199254740991,
                                        js2n.number.Minimum 0
                                      ],
                              },
                          required = {},
                        },
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { mode = js2n.Const "probabilistic", },
                          required = { mode = true, },
                        }
                    ]
                ],
              {
                limit_exceeded_action
                  | js2n.OneOf
                    [ js2n.Const "drop_tag", js2n.Const "drop_event" ]
                  | doc m%"
                    Possible actions to take when an event arrives that would exceed the cardinality limit for one
                    or more of its tags.
                  "%
                  | optional,
                value_limit
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0
                  | doc "How many distinct values to accept for any given key."
                  | optional,
                ..
              }
            ],
      "definitions.vector::transforms::throttle::ThrottleConfig" =
        {
            exclude
              | refs."definitions.core::option::Option%3Cvector::conditions::AnyCondition%3E"
              | doc "A logical condition used to exclude events from sampling."
              | optional,
            internal_metrics
              | {
                emit_events_discarded_per_key
                  | Bool
                  | doc m%"
                    If true, the counter will be incremented for each discarded event, including the key value
                    associated with the discarded event. If false, the counter will not be emitted. Instead, the
                    number of discarded events can be seen through the `component_discarded_events_total` internal
                    metric.
                    
                    Note that this defaults to false because the `key` tag has potentially unbounded cardinality.
                    Only set this to true if you know that the number of unique keys is bounded.
                  "%
                  | optional,
                ..
              }
              | doc "Configuration of internal metrics for the Throttle transform."
              | optional,
            key_field
              | refs."definitions.core::option::Option%3Cvector::template::Template%3E"
              | doc m%"
                If left unspecified, or if the event doesn't have `key_field`, then the event is not rate
                limited separately.
              "%
              | optional,
            threshold
              | std.number.Integer
              | js2n.number.Maximum 4294967295
              | js2n.number.Minimum 0
              | doc "Each unique key has its own `threshold`.",
            window_secs
              | refs."definitions.serde_with::DurationFractionalSeconds"
              | Number
              | doc "The time window in which the configured `threshold` is applied, in seconds.",
            ..
          },
      "definitions.vector_common::id::Inputs%3Calloc::string::String%3E" =
        Array String,
      "definitions.vector_common::sensitive_string::SensitiveString" = String,
      "definitions.vector_core::config::AcknowledgementsConfig" =
        {
            enabled
              | js2n.Nullable Bool
              | doc m%"
                When enabled for a sink, any source connected to that sink, where the source supports
                end-to-end acknowledgements as well, waits for events to be acknowledged by **all
                connected** sinks before acknowledging them at the source.
                
                Enabling or disabling acknowledgements at the sink level takes precedence over any global
                [`acknowledgements`][global_acks] configuration.
                
                [global_acks]: https://vector.dev/docs/reference/configuration/global-options/#acknowledgements
              "%
              | optional,
            ..
          },
      "definitions.vector_core::config::SourceAcknowledgementsConfig" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Whether or not end-to-end acknowledgements are enabled for this source."
              | optional,
            ..
          },
      "definitions.vector_core::config::proxy::ProxyConfig" =
        {
            enabled | Bool | doc "Enables proxying support." | optional,
            http
              | js2n.Nullable String
              | doc "Must be a valid URI string."
              | optional,
            https
              | js2n.Nullable String
              | doc "Must be a valid URI string."
              | optional,
            no_proxy
              | Array String
              | doc m%"
                Multiple patterns are allowed:
                
                | Pattern             | Example match                                                               |
                | ------------------- | --------------------------------------------------------------------------- |
                | Domain names        | `example.com` matches requests to `example.com`                     |
                | Wildcard domains    | `.example.com` matches requests to `example.com` and its subdomains |
                | IP addresses        | `127.0.0.1` matches requests to `127.0.0.1`                         |
                | [CIDR][cidr] blocks | `192.168.0.0/16` matches requests to any IP addresses in this range     |
                | Splat               | `*` matches all hosts                                                   |
                
                [cidr]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
              "%
              | optional,
            ..
          },
      "definitions.vector_core::event::metric::MetricKind" =
        js2n.OneOf [ js2n.Const "incremental", js2n.Const "absolute" ],
      "definitions.vector_core::event::metric::value::MetricValue" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        counter =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      value =
                                        std.contract.Sequence
                                            [
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum
                                                (-9007199254740991)
                                            ],
                                    },
                                required = { value = true, },
                              },
                      },
                  required = { counter = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        gauge =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      value =
                                        std.contract.Sequence
                                            [
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum
                                                (-9007199254740991)
                                            ],
                                    },
                                required = { value = true, },
                              },
                      },
                  required = { gauge = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        set =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      values =
                                        std.contract.Sequence
                                            [
                                              js2n.array.UniqueItems,
                                              js2n.array.ArrayOf String
                                            ],
                                    },
                                required = { values = true, },
                              },
                      },
                  required = { set = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        distribution =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      samples =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      rate =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                4294967295,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      value =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.number.Maximum
                                                                9007199254740991,
                                                              js2n.number.Minimum
                                                                (-9007199254740991)
                                                            ],
                                                    },
                                                required =
                                                  {
                                                      rate = true,
                                                      value = true,
                                                    },
                                              }),
                                      statistic =
                                        js2n.OneOf
                                            [
                                              js2n.Const "histogram",
                                              js2n.Const "summary"
                                            ],
                                    },
                                required =
                                  { samples = true, statistic = true, },
                              },
                      },
                  required = { distribution = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        aggregated_histogram =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      buckets =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      count =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                9007199254740991,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      upper_limit =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.number.Maximum
                                                                9007199254740991,
                                                              js2n.number.Minimum
                                                                (-9007199254740991)
                                                            ],
                                                    },
                                                required =
                                                  {
                                                      count = true,
                                                      upper_limit = true,
                                                    },
                                              }),
                                      count =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum 0
                                            ],
                                      sum =
                                        std.contract.Sequence
                                            [
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum
                                                (-9007199254740991)
                                            ],
                                    },
                                required =
                                  { buckets = true, count = true, sum = true, },
                              },
                      },
                  required = { aggregated_histogram = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        aggregated_summary =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      count =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum 0
                                            ],
                                      quantiles =
                                        js2n.array.ArrayOf
                                            (js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      quantile =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.number.Maximum
                                                                9007199254740991,
                                                              js2n.number.Minimum
                                                                (-9007199254740991)
                                                            ],
                                                      value =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.number.Maximum
                                                                9007199254740991,
                                                              js2n.number.Minimum
                                                                (-9007199254740991)
                                                            ],
                                                    },
                                                required =
                                                  {
                                                      quantile = true,
                                                      value = true,
                                                    },
                                              }),
                                      sum =
                                        std.contract.Sequence
                                            [
                                              js2n.number.Maximum
                                                9007199254740991,
                                              js2n.number.Minimum
                                                (-9007199254740991)
                                            ],
                                    },
                                required =
                                  {
                                      count = true,
                                      quantiles = true,
                                      sum = true,
                                    },
                              },
                      },
                  required = { aggregated_summary = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        sketch =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      sketch =
                                        js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    AgentDDSketch =
                                                      js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  avg =
                                                                    std.contract.Sequence
                                                                        [
                                                                          js2n.number.Maximum
                                                                            9007199254740991,
                                                                          js2n.number.Minimum
                                                                            (-9007199254740991)
                                                                        ],
                                                                  bins =
                                                                    js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                k =
                                                                                  js2n.array.ArrayOf
                                                                                      (std.contract.Sequence
                                                                                        [
                                                                                          std.number.Integer,
                                                                                          js2n.number.Maximum
                                                                                            32767,
                                                                                          js2n.number.Minimum
                                                                                            (-32768)
                                                                                        ]),
                                                                                n =
                                                                                  js2n.array.ArrayOf
                                                                                      (std.contract.Sequence
                                                                                        [
                                                                                          std.number.Integer,
                                                                                          js2n.number.Maximum
                                                                                            65535,
                                                                                          js2n.number.Minimum
                                                                                            0
                                                                                        ]),
                                                                              },
                                                                          required =
                                                                            {
                                                                                k =
                                                                                  true,
                                                                                n =
                                                                                  true,
                                                                              },
                                                                        },
                                                                  count =
                                                                    std.contract.Sequence
                                                                        [
                                                                          std.number.Integer,
                                                                          js2n.number.Maximum
                                                                            4294967295,
                                                                          js2n.number.Minimum
                                                                            0
                                                                        ],
                                                                  max =
                                                                    std.contract.Sequence
                                                                        [
                                                                          js2n.number.Maximum
                                                                            9007199254740991,
                                                                          js2n.number.Minimum
                                                                            (-9007199254740991)
                                                                        ],
                                                                  min =
                                                                    std.contract.Sequence
                                                                        [
                                                                          js2n.number.Maximum
                                                                            9007199254740991,
                                                                          js2n.number.Minimum
                                                                            (-9007199254740991)
                                                                        ],
                                                                  sum =
                                                                    std.contract.Sequence
                                                                        [
                                                                          js2n.number.Maximum
                                                                            9007199254740991,
                                                                          js2n.number.Minimum
                                                                            (-9007199254740991)
                                                                        ],
                                                                },
                                                            required =
                                                              {
                                                                  avg = true,
                                                                  bins = true,
                                                                  count = true,
                                                                  max = true,
                                                                  min = true,
                                                                  sum = true,
                                                                },
                                                          },
                                                  },
                                              required =
                                                { AgentDDSketch = true, },
                                            },
                                    },
                                required = { sketch = true, },
                              },
                      },
                  required = { sketch = true, },
                }
            ],
      "definitions.vector_core::tls::settings::TlsConfig" =
        {
            alpn_protocols
              | js2n.Nullable (Array String)
              | doc m%"
                Declare the supported ALPN protocols, which are used during negotiation with peer. They are prioritized in the order
                that they are defined.
              "%
              | optional,
            ca_file
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc "The certificate must be in the DER or PEM (X.509) format. Additionally, the certificate can be provided as an inline string in PEM format."
              | optional,
            crt_file
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc m%"
                The certificate must be in DER, PEM (X.509), or PKCS#12 format. Additionally, the certificate can be provided as
                an inline string in PEM format.
                
                If this is set, and is not a PKCS#12 archive, `key_file` must also be set.
              "%
              | optional,
            key_file
              | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
              | doc "The key must be in DER or PEM (PKCS#8) format. Additionally, the key can be provided as an inline string in PEM format."
              | optional,
            key_pass
              | js2n.Nullable String
              | doc "This has no effect unless `key_file` is set."
              | optional,
            server_name
              | js2n.Nullable String
              | doc "Only relevant for outgoing connections."
              | optional,
            verify_certificate
              | js2n.Nullable Bool
              | doc m%"
                If enabled, certificates must not be expired and must be issued by a trusted
                issuer. This verification operates in a hierarchical manner, checking that the leaf certificate (the
                certificate presented by the client/server) is not only valid, but that the issuer of that certificate is also valid, and
                so on until the verification process reaches a root certificate.
                
                Do NOT set this to `false` unless you understand the risks of not verifying the validity of certificates.
              "%
              | optional,
            verify_hostname
              | js2n.Nullable Bool
              | doc m%"
                If enabled, the hostname used to connect to the remote host must be present in the TLS certificate presented by
                the remote host, either as the Common Name or as an entry in the Subject Alternative Name extension.
                
                Only relevant for outgoing connections.
                
                Do NOT set this to `false` unless you understand the risks of not verifying the remote hostname.
              "%
              | optional,
            ..
          },
      "definitions.vector_core::tls::settings::TlsEnableableConfig" =
        std.contract.Sequence
            [
              refs."definitions.vector_core::tls::settings::TlsConfig",
              {
                enabled
                  | js2n.Nullable Bool
                  | doc m%"
                    When enabled and used for incoming connections, an identity certificate is also required. See `tls.crt_file` for
                    more information.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.vector_lookup::lookup_v2::ConfigTargetPath" = String,
      "definitions.vector_lookup::lookup_v2::ConfigValuePath" = String,
      "definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath" =
        String,
      "definitions.vector_lookup::lookup_v2::optional_path::OptionalValuePath" =
        String,
    }
    in
  std.contract.Sequence
      [
        {
          api
            | {
              address
                | js2n.Nullable String
                | doc "The socket address to listen on for the API endpoint."
                | optional,
              enabled
                | Bool
                | doc "Whether or not the API endpoint is available."
                | optional,
              graphql
                | Bool
                | doc "Whether or not the GraphQL endpoint is enabled"
                | optional,
              playground
                | Bool
                | doc "Whether or not to expose the GraphQL playground on the API endpoint."
                | optional,
              ..
            }
            | doc "API options."
            | optional,
          enrichment_tables
            | {
              _ | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.vector::enrichment_tables::file::FileConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "file", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::enrichment_tables::geoip::GeoipConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "geoip", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::enrichment_tables::mmdb::MmdbConfig",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "mmdb", },
                          required = { type = true, },
                        }
                    ]
                ]
            }
            | doc "All configured enrichment tables."
            | optional,
          healthchecks
            | {
              enabled
                | Bool
                | doc "Can be overridden on a per-sink basis."
                | optional,
              require_healthy
                | Bool
                | doc m%"
                  When enabled and a sink reports not being healthy, Vector will exit during start-up.
                  
                  Can be alternatively set, and overridden by, the `--require-healthy` command-line flag.
                "%
                | optional,
              ..
            }
            | doc "Healthcheck options."
            | optional,
          provider
            | js2n.Nullable
              (std.contract.Sequence
                [
                  refs."definitions.vector::providers::http::HttpConfig",
                  { type | std.contract.Equal "http" | doc "HTTP.", .. }
                ])
            | doc m%"
              Configuration providers allow sourcing configuration information from a source other than
              the typical configuration files that must be passed to Vector.
            "%
            | optional,
          schema
            | {
              enabled
                | Bool
                | doc "Whether or not schema is enabled."
                | optional,
              log_namespace
                | js2n.Nullable Bool
                | doc "Whether or not to enable log namespacing."
                | optional,
              validation
                | Bool
                | doc "Whether or not schema validation is enabled."
                | optional,
              ..
            }
            | doc "Schema options."
            | optional,
          secret
            | {
              _ | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.vector::secrets::file::FileBackend",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "file", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::secrets::directory::DirectoryBackend",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "directory", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::secrets::exec::ExecBackend",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "exec", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::secrets::aws_secrets_manager::AwsSecretsManagerBackend",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { type = js2n.Const "aws_secrets_manager", },
                          required = { type = true, },
                        }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.vector::secrets::test::TestBackend",
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "test", },
                          required = { type = true, },
                        }
                    ]
                ]
            }
            | doc "All configured secrets backends."
            | optional,
          sinks
            | {
              _ | std.contract.Sequence
                [
                  refs."definitions.vector::config::sink::SinkOuter%3Calloc::string::String%3E",
                  { _ | Dyn }
                ]
            }
            | doc "All configured sinks."
            | optional,
          sources
            | {
              _ | std.contract.Sequence
                [
                  refs."definitions.vector::config::source::SourceOuter",
                  { _ | Dyn }
                ]
            }
            | doc "All configured sources."
            | optional,
          tests
            | Array
              {
                input
                  | js2n.Nullable refs."definitions.vector::config::TestInput"
                  | doc "An input event to test against."
                  | optional,
                inputs
                  | Array refs."definitions.vector::config::TestInput"
                  | doc "A set of input events to test against."
                  | optional,
                name | String | doc "The name of the unit test.",
                no_outputs_from
                  | Array String
                  | doc "A set of component outputs that should not have emitted any events."
                  | optional,
                outputs
                  | Array
                    {
                      conditions
                        | js2n.Nullable
                          (Array
                            refs."definitions.vector::conditions::AnyCondition")
                        | doc "The conditions to run against the output to validate that they were transformed as expected."
                        | optional,
                      extract_from
                        | std.contract.any_of [ String, Array String ]
                        | doc "The transform outputs to extract events from.",
                      ..
                    }
                  | doc "A set of expected output events after the test has run."
                  | optional,
                ..
              }
            | doc "All configured unit tests."
            | optional,
          transforms
            | {
              _ | std.contract.Sequence
                [
                  refs."definitions.vector::config::transform::TransformOuter%3Calloc::string::String%3E",
                  { _ | Dyn }
                ]
            }
            | doc "All configured transforms."
            | optional,
          ..
        },
        {
          acknowledgements
            | refs."definitions.vector_core::config::AcknowledgementsConfig"
            | doc m%"
              See [End-to-end Acknowledgements][e2e_acks] for more information on how Vector handles event
              acknowledgement.
              
              [e2e_acks]: https://vector.dev/docs/about/under-the-hood/architecture/end-to-end-acknowledgements/
            "%
            | optional,
          data_dir
            | refs."definitions.core::option::Option%3Cstd::path::PathBuf%3E"
            | doc m%"
              This is the directory where Vector will store any state data, such as disk buffers, file
              checkpoints, and more.
              
              Vector must have write permissions to this directory.
            "%
            | optional,
          expire_metrics
            | js2n.Nullable
              {
                nsecs
                  | std.number.Integer
                  | js2n.number.Maximum 4294967295
                  | js2n.number.Minimum 0,
                secs
                  | std.number.Integer
                  | js2n.number.Maximum 9007199254740991
                  | js2n.number.Minimum 0,
                ..
              }
            | doc "Deprecated: use expire_metrics_secs instead"
            | optional,
          expire_metrics_secs
            | js2n.Nullable
              (std.contract.Sequence
                [
                  js2n.number.Maximum 9007199254740991,
                  js2n.number.Minimum (-9007199254740991)
                ])
            | doc m%"
              Set this to a value larger than your `internal_metrics` scrape interval (default 5 minutes)
              that metrics live long enough to be emitted and captured,
            "%
            | optional,
          log_schema
            | {
              host_key
                | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                | doc m%"
                  This field will generally represent a real host, or container, that generated the message,
                  but is somewhat source-dependent.
                "%
                | optional,
              message_key
                | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                | doc "This would be the field that holds the raw message, such as a raw log line."
                | optional,
              metadata_key
                | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                | doc m%"
                  Generally, this field will be set by Vector to hold event-specific metadata, such as
                  annotations by the `remap` transform when an error or abort is encountered.
                "%
                | optional,
              source_type_key
                | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                | doc "This field will be set by the Vector source that the event was created in."
                | optional,
              timestamp_key
                | refs."definitions.vector_lookup::lookup_v2::optional_path::OptionalTargetPath"
                | doc "The name of the event field to treat as the event timestamp."
                | optional,
              ..
            }
            | doc m%"
              This is used if a component does not have its own specific log schema. All events use a log
              schema, whether or not the default is used, to assign event fields on incoming events.
            "%
            | optional,
          proxy
            | refs."definitions.vector_core::config::proxy::ProxyConfig"
            | doc m%"
              Configure to proxy traffic through an HTTP(S) proxy when making external requests.
              
              Similar to common proxy configuration convention, you can set different proxies
              to use based on the type of traffic being proxied. You can also set specific hosts that
              should not be proxied.
            "%
            | optional,
          telemetry
            | {
              tags
                | {
                  emit_service
                    | Bool
                    | doc m%"
                      True if the `service` tag should be emitted
                      in the `component_received_*` and `component_sent_*`
                      telemetry.
                    "%
                    | optional,
                  emit_source
                    | Bool
                    | doc m%"
                      True if the `source` tag should be emitted
                      in the `component_received_*` and `component_sent_*`
                      telemetry.
                    "%
                    | optional,
                  ..
                }
                | doc "Configures whether to emit certain tags"
                | optional,
              ..
            }
            | doc m%"
              Determines whether `source` and `service` tags should be emitted with the
              `component_sent_*` and `component_received_*` events.
            "%
            | optional,
          timezone
            | refs."definitions.core::option::Option%3Cvrl::compiler::datetime::TimeZone%3E"
            | doc m%"
              The time zone name may be any name in the [TZ database][tzdb] or `local` to indicate system
              local time.
              
              Note that in Vector/VRL all timestamps are represented in UTC.
              
              [tzdb]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
            "%
            | optional,
          ..
        }
      ]