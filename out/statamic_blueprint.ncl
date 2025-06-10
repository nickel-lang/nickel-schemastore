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
        js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "tabs" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "sections" ],
                Array Dyn
              ]
          ],
        {
          sections
            | {
              _ | {
                display | String | doc "The displayed text." | optional,
                fields
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                ..
              }
            }
            | js2n.record.FieldsMatch "^[A-Za-z]+?$"
            | doc "At its most basic, a blueprint has sections. A section has a handle, a display name, and an array of fields. Until Statamic 3"
            | optional,
          tabs
            | {
              _ | {
                display | String | doc "The displayed text." | optional,
                sections
                  | Array
                    {
                      display | String | doc "The displayed text." | optional,
                      fields
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
                      instructions
                        | String
                        | doc "Some instructions"
                        | optional,
                      ..
                    }
                  | doc "The Sections of the Tab"
                  | optional,
                ..
              }
            }
            | js2n.record.FieldsMatch "^[A-Za-z_]+?$"
            | doc "At its most basic, a blueprint has tabs. A tab has a handle, a display name, and an array of sections. Since Statamic 4"
            | optional,
          title | String | optional,
          ..
        }
      ]