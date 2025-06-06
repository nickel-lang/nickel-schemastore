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
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        type = js2n.Const "specs.openrewrite.org/v1beta/recipe",
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
                causesAnotherCycle | Bool | optional,
                description | String | optional,
                displayName | String | optional,
                estimatedEffortPerOccurrence | String | optional,
                name | String,
                preconditions
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                recipeList
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                tags
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                type
                  | std.contract.Equal "specs.openrewrite.org/v1beta/recipe"
                  | optional,
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
                    {
                        type =
                          js2n.Const "specs.openrewrite.org/v1beta/category",
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
                description | String | optional,
                name | String | optional,
                packageName | String,
                "priority" | std.number.Integer | optional,
                root | Bool | optional,
                tags
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                type
                  | std.contract.Equal "specs.openrewrite.org/v1beta/category"
                  | optional,
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
                    { type = js2n.Const "specs.openrewrite.org/v1beta/style", },
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
                description | String | optional,
                displayName | String | optional,
                name | String,
                styleConfigs
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
                tags
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                type
                  | std.contract.Equal "specs.openrewrite.org/v1beta/style"
                  | optional,
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
                    {
                        type =
                          js2n.Const "specs.openrewrite.org/v1beta/example",
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
                after | String | optional,
                before | String | optional,
                recipe | String | optional,
                type
                  | std.contract.Equal "specs.openrewrite.org/v1beta/example"
                  | optional,
              },
              Array Dyn
            ]) js2n.Always,
        {
          type
            | std.enum.TagOrString
            | [|
              '"specs.openrewrite.org/v1beta/example",
              '"specs.openrewrite.org/v1beta/category",
              '"specs.openrewrite.org/v1beta/style",
              '"specs.openrewrite.org/v1beta/recipe"
            |]
            | doc "Identifies the resource type",
          ..
        }
      ]