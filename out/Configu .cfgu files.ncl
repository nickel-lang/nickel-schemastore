# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | js2n.string.MinLength 1 | doc "Url to JSON Schema" | optional,
      keys
        | js2n.record.MinProperties 1
        | {
          _ | std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "lazy" ],
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      const | js2n.Never | optional,
                      "default" | js2n.Never | optional,
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
                    js2n.record.Required [ "const" ],
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      "default" | js2n.Never | optional,
                      lazy | js2n.Never | optional,
                      required | js2n.Never | optional,
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
                    js2n.record.Required [ "default" ],
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      const | js2n.Never | optional,
                      lazy | js2n.Never | optional,
                      required | js2n.Never | optional,
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
                    js2n.record.Required [ "required" ],
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      const | js2n.Never | optional,
                      "default" | js2n.Never | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                const | js2n.string.MinLength 1 | optional,
                "default"
                  | std.contract.any_of
                    [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                description | js2n.string.MinLength 1 | optional,
                enum
                  | js2n.array.UniqueItems
                  | Array (
                    std.contract.any_of
                      [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  )
                  | optional,
                hidden | Bool | optional,
                label
                  | std.contract.any_of
                    [
                      js2n.string.MinLength 1,
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array (js2n.string.MinLength 1)
                        ]
                    ]
                  | optional,
                lazy | Bool | optional,
                pattern | js2n.string.MinLength 1 | optional,
                required | Bool | optional,
                schema | js2n.record.MinProperties 1 | optional,
                test
                  | std.contract.any_of
                    [
                      js2n.string.MinLength 1,
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array (js2n.string.MinLength 1)
                        ]
                    ]
                  | optional,
              }
            ]
        }
        | optional,
    }