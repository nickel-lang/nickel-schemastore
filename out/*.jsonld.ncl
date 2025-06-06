# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.common" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some js2n.Always,
                  patterns = {},
                  properties =
                    {
                        "@base" = js2n.Nullable String,
                        "@container" =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"@set", '"@index", '"@list", '"@language" |]
                              ],
                        "@id" = String,
                        "@language" = js2n.Nullable String,
                        "@list" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ],
                        "@reverse" =
                          std.contract.any_of
                              [ js2n.Null, String, { _ | js2n.Always } ],
                        "@set" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ],
                        "@type" =
                          std.contract.any_of [ js2n.Null, String, Array Dyn ],
                        "@value" =
                          std.contract.any_of
                              [ js2n.Null, Bool, Number, String ],
                        "@vocab" = js2n.Nullable String,
                      },
                  required = {},
                },
              Array Dyn
            ],
      "definitions.context" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "@context"
                  | std.contract.any_of
                    [ js2n.Null, String, { _ | Dyn }, Array Dyn ]
                  | doc "Used to define the short-hand names that are used throughout a JSON-LD document."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.graph" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                "@graph"
                  | std.contract.any_of
                    [
                      Array refs."definitions.common",
                      std.contract.Sequence
                        [ refs."definitions.common", { _ | Dyn } ]
                    ]
                  | doc "Used to express a graph."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of [ {  .. }, Array Dyn ],
        refs."definitions.context",
        refs."definitions.graph",
        refs."definitions.common"
      ]