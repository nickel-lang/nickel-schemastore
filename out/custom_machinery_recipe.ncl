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
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "output" ],
              Array Dyn
            ])
          {
            hidden | Bool | optional,
            jei
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
            jeiPriority | std.number.Integer | optional,
            machine
              | js2n.string.Matches
                "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$",
            output
              | {
                Count | std.number.Integer | optional,
                id | String,
                tag | js2n.Always | optional,
                ..
              },
            "priority" | std.number.Integer | optional,
            requirements
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
            ..
          } js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Required [ "time" ],
              Array Dyn
            ])
          {
            appearance
              | {
                block
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                color | std.number.Integer | optional,
                item
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                light
                  | std.number.Integer
                  | js2n.number.Maximum 15
                  | js2n.number.Minimum 0
                  | optional,
                ..
              }
              | optional,
            error | Bool | optional,
            hidden | Bool | optional,
            jei
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
            jeiPriority | std.number.Integer | optional,
            machine
              | js2n.string.Matches
                "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$",
            "priority" | std.number.Integer | optional,
            requirements
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
                    String,
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
            time | std.number.Integer | js2n.number.Minimum 1,
            ..
          } js2n.Always
      ]