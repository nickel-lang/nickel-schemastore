# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.@jdt.path" = String, "definitions.@jdt.value" = String, }
    in
  js2n.record.Record
      {
        additional =
          'Some
              (std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]),
        patterns = {},
        properties =
          {
              "@jdt.merge" =
                std.contract.any_of
                    [
                      {
                        "@jdt.path" | refs."definitions.@jdt.path" | optional,
                        "@jdt.value" | refs."definitions.@jdt.value" | optional,
                        ..
                      },
                      Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "@jdt.path"
                                | refs."definitions.@jdt.path"
                                | optional,
                              "@jdt.value"
                                | refs."definitions.@jdt.value"
                                | optional,
                              ..
                            },
                            Array Dyn
                          ]
                      )
                    ],
              "@jdt.remove" =
                std.contract.any_of
                    [
                      Bool,
                      String,
                      {
                        "@jdt.path" | refs."definitions.@jdt.path" | optional,
                        ..
                      },
                      Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            std.number.Integer,
                            String,
                            { _ | Dyn }
                          ]
                      )
                    ],
              "@jdt.rename" =
                std.contract.any_of
                    [
                      {
                        "@jdt.path" | refs."definitions.@jdt.path" | optional,
                        "@jdt.value" | refs."definitions.@jdt.value" | optional,
                        ..
                      },
                      Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "@jdt.path"
                                | refs."definitions.@jdt.path"
                                | optional,
                              "@jdt.value"
                                | refs."definitions.@jdt.value"
                                | optional,
                              ..
                            },
                            Array Dyn
                          ]
                      )
                    ],
              "@jdt.replace" =
                std.contract.any_of
                    [
                      {
                        "@jdt.path" | refs."definitions.@jdt.path" | optional,
                        "@jdt.value" | refs."definitions.@jdt.value" | optional,
                        ..
                      },
                      Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "@jdt.path"
                                | refs."definitions.@jdt.path"
                                | optional,
                              "@jdt.value"
                                | refs."definitions.@jdt.value"
                                | optional,
                              ..
                            },
                            Array Dyn
                          ]
                      )
                    ],
            },
        required = {},
      }