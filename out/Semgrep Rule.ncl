# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          rules
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
                            properties = { mode = js2n.Const "extract", },
                            required = { mode = true, },
                          },
                        Array Dyn
                      ])
                    (std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            std.contract.Sequence
                              [
                                {
                                  join | js2n.Never | optional,
                                  message | js2n.Never | optional,
                                  pattern-propagators | js2n.Never | optional,
                                  pattern-sanitizers | js2n.Never | optional,
                                  pattern-sinks | js2n.Never | optional,
                                  pattern-sources | js2n.Never | optional,
                                  severity | js2n.Never | optional,
                                  ..
                                },
                                js2n.record.Required
                                  [
                                    "dest-language",
                                    "extract",
                                    "id",
                                    "languages"
                                  ]
                              ],
                            Array Dyn
                          ],
                        js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "match" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "pattern" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "patterns" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "pattern-either" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "pattern-regex" ],
                                Array Dyn
                              ]
                          ]
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
                              {
                                  mode = js2n.Const "taint",
                                  taint = js2n.Never,
                                },
                            required = { mode = true, },
                          },
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        std.contract.Sequence
                          [
                            {
                              dest-language | js2n.Never | optional,
                              extract | js2n.Never | optional,
                              join | js2n.Never | optional,
                              "match" | js2n.Never | optional,
                              pattern | js2n.Never | optional,
                              pattern-either | js2n.Never | optional,
                              pattern-regex | js2n.Never | optional,
                              patterns | js2n.Never | optional,
                              reduce | js2n.Never | optional,
                              transform | js2n.Never | optional,
                              ..
                            },
                            js2n.record.Required
                              [
                                "id",
                                "languages",
                                "message",
                                "pattern-sinks",
                                "pattern-sources",
                                "severity"
                              ]
                          ],
                        Array Dyn
                      ]) js2n.Always,
                  js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "taint" ],
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        std.contract.Sequence
                          [
                            {
                              dest-language | js2n.Never | optional,
                              extract | js2n.Never | optional,
                              join | js2n.Never | optional,
                              "match" | js2n.Never | optional,
                              pattern | js2n.Never | optional,
                              pattern-either | js2n.Never | optional,
                              pattern-regex | js2n.Never | optional,
                              patterns | js2n.Never | optional,
                              reduce | js2n.Never | optional,
                              transform | js2n.Never | optional,
                              ..
                            },
                            js2n.record.Required
                              [
                                "id",
                                "languages",
                                "message",
                                "severity",
                                "taint"
                              ]
                          ],
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
                            properties = { mode = js2n.Const "join", },
                            required = { mode = true, },
                          },
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        std.contract.Sequence
                          [
                            {
                              dest-language | js2n.Never | optional,
                              extract | js2n.Never | optional,
                              "match" | js2n.Never | optional,
                              pattern | js2n.Never | optional,
                              pattern-either | js2n.Never | optional,
                              pattern-propagators | js2n.Never | optional,
                              pattern-sanitizers | js2n.Never | optional,
                              pattern-sinks | js2n.Never | optional,
                              pattern-sources | js2n.Never | optional,
                              patterns | js2n.Never | optional,
                              reduce | js2n.Never | optional,
                              transform | js2n.Never | optional,
                              ..
                            },
                            js2n.record.Required
                              [ "id", "join", "message", "severity" ]
                          ],
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
                              {
                                  mode = js2n.Const "search",
                                  taint = js2n.Never,
                                },
                            required = {},
                          },
                        Array Dyn
                      ])
                    (std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            std.contract.Sequence
                              [
                                {
                                  dest-language | js2n.Never | optional,
                                  extract | js2n.Never | optional,
                                  join | js2n.Never | optional,
                                  pattern-propagators | js2n.Never | optional,
                                  pattern-sanitizers | js2n.Never | optional,
                                  pattern-sinks | js2n.Never | optional,
                                  pattern-sources | js2n.Never | optional,
                                  reduce | js2n.Never | optional,
                                  transform | js2n.Never | optional,
                                  ..
                                },
                                js2n.record.Required
                                  [ "id", "languages", "message", "severity" ]
                              ],
                            Array Dyn
                          ],
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "pattern" ],
                              Array Dyn,
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "patterns" ],
                              Array Dyn,
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "pattern-either" ],
                              Array Dyn,
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "pattern-regex" ],
                              Array Dyn
                            ])
                          (js2n.OneOf
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "pattern" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "patterns" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "pattern-either" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "pattern-regex" ],
                                  Array Dyn
                                ]
                            ])
                          (js2n.OneOf
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "pattern" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "patterns" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "pattern-either" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "pattern-regex" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required
                                    [ "r2c-internal-project-depends-on" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "match" ],
                                  Array Dyn
                                ]
                            ])
                      ]) js2n.Always,
                  {
                    dest-language | String | optional,
                    dest-rules
                      | {
                        exclude
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
                        include
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
                      }
                      | optional,
                    extract | String | optional,
                    fix | String | optional,
                    fix-regex
                      | {
                        count | std.number.Integer | optional,
                        regex | String,
                        replacement | String,
                      }
                      | optional,
                    id
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
                    join
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
                    languages
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
                    "match"
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
                    max-version | String | optional,
                    message | String | optional,
                    metadata | { _ | Dyn } | optional,
                    min-version | String | optional,
                    mode
                      | std.enum.TagOrString
                      | [| 'extract, 'join, 'taint, 'search |]
                      | optional,
                    options | { _ | Dyn } | optional,
                    paths
                      | {
                        exclude
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
                        include
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
                    pattern | String | optional,
                    pattern-either
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
                    pattern-propagators
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
                    pattern-regex | String | optional,
                    pattern-sanitizers
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
                    pattern-sinks
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
                    pattern-sources
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
                    patterns
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
                    r2c-internal-project-depends-on
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
                    reduce
                      | std.enum.TagOrString
                      | [| 'separate, 'concat |]
                      | optional,
                    severity
                      | std.enum.TagOrString
                      | [|
                        'LOW,
                        'MEDIUM,
                        'HIGH,
                        'CRITICAL,
                        'EXPERIMENT,
                        'INVENTORY,
                        'INFO,
                        'WARNING,
                        'ERROR
                      |]
                      | optional,
                    taint
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
                    transform
                      | std.enum.TagOrString
                      | [|
                        'concat_json_string_array,
                        'unquote_string,
                        'no_transform
                      |]
                      | optional,
                    validators
                      | js2n.array.MinItems 1
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
                    version | String | optional,
                    ..
                  }
                ]
            ),
          ..
        },
        Array Dyn
      ]