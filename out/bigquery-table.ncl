# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.field" =
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
                                      [| 'RECORD, 'STRUCT |]
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
                      description
                        | refs."definitions.field_description"
                        | String
                        | optional,
                      fields
                        | Array (
                          std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                        ),
                      mode | refs."definitions.field_mode" | String | optional,
                      name | refs."definitions.field_name" | String,
                      type | refs."definitions.field_type" | String,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                description
                  | refs."definitions.field_description"
                  | String
                  | optional,
                mode | refs."definitions.field_mode" | String | optional,
                name | refs."definitions.field_name" | String,
                type | refs."definitions.field_type" | String,
                ..
              }
            ],
      "definitions.field_description" = String,
      "definitions.field_mode" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'REPEATED, 'REQUIRED, 'NULLABLE |] ],
      "definitions.field_name" = String,
      "definitions.field_type" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'GEOGRAPHY,
                'JSON,
                'RECORD,
                'STRUCT,
                'TIMESTAMP,
                'TIME,
                'DATETIME,
                'DATE,
                'BYTES,
                'STRING,
                'BOOLEAN,
                'BOOL,
                'BIGNUMERIC,
                'NUMERIC,
                'FLOAT,
                'FLOAT64,
                'INTEGER,
                'INT64
              |]
            ],
    }
    in
  Array (std.contract.Sequence [ refs."definitions.field", { _ | Dyn } ])