# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.array.UniqueItems,
        Array (
          std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { webpack = js2n.Enum [ false ], },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      config
                        | js2n.string.Matches "^/?([^/]+/)*[^/]+/?$"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                brotli | Bool | optional,
                entry
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ js2n.array.UniqueItems, Array String ]
                    ]
                  | optional,
                gzip | Bool | optional,
                ignore
                  | js2n.array.UniqueItems
                  | Array (js2n.string.Matches "^/?([^/]+/)*[^/]+/?$")
                  | optional,
                "import"
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [
                          { _ | String },
                          js2n.record.FieldsMatch "^/?([^/]+/)*[^/]+/?$"
                        ]
                    ]
                  | optional,
                limit
                  | js2n.string.Matches
                    "\\d+( ?(ms|s)|\\s*(B|kB|[MGTPEZY]i?B|KiB))"
                  | optional,
                name | String | optional,
                path
                  | std.contract.any_of
                    [
                      js2n.string.Matches "^/?([^/]+/)*[^/]+/?$",
                      std.contract.Sequence
                        [
                          js2n.array.UniqueItems,
                          Array (js2n.string.Matches "^/?([^/]+/)*[^/]+/?$")
                        ]
                    ],
                running | Bool | optional,
                webpack | Bool | optional,
                ..
              }
            ]
        )
      ]