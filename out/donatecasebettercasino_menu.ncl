# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      menu
        | {
          size
            | std.number.Integer
            | js2n.number.Maximum 54
            | js2n.number.Minimum 9
            | js2n.Enum [ 9, 18, 27, 36, 45, 54 ],
          title | String,
          ..
        },
      prizes
        | js2n.record.Record
          {
            additional = 'Some js2n.Always,
            patterns =
              {
                  "^[a-zA-Z0-9_]+$" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| 'win, 'random |] ],
                },
            properties = {},
            required = {},
          },
      ticks
        | js2n.record.Record
          {
            additional = 'Some js2n.Always,
            patterns =
              {
                  "^[0-9]+(-[0-9]+)?$" =
                    {
                        actions
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
                                          properties =
                                            {
                                                type =
                                                  js2n.Const "replace_item",
                                              },
                                          required = { type = true, },
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
                                        display_name | String | optional,
                                        enchanted | Bool | optional,
                                        lore | Array String | optional,
                                        material | String | optional,
                                        model_data
                                          | std.number.Integer
                                          | optional,
                                        rgb | String | optional,
                                        slot | js2n.Always | optional,
                                        slots | Array Dyn | optional,
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
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            { type = js2n.Const "move_item", },
                                          required = { type = true, },
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
                                        from
                                          | std.number.Integer
                                          | js2n.number.Minimum 0
                                          | optional,
                                        to
                                          | std.number.Integer
                                          | js2n.number.Minimum 0
                                          | optional,
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
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                type = js2n.Const "donate_case",
                                              },
                                          required = { type = true, },
                                        },
                                      Array Dyn
                                    ])
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { actions | Array String, .. },
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
                                                type = js2n.Const "switch_item",
                                              },
                                          required = { type = true, },
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
                                        base_slot
                                          | std.number.Integer
                                          | js2n.number.Minimum 0
                                          | optional,
                                        count
                                          | std.number.Integer
                                          | js2n.number.Minimum 1
                                          | optional,
                                        slots | Array Dyn | optional,
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
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            { type = js2n.Const "set_title", },
                                          required = { type = true, },
                                        },
                                      Array Dyn
                                    ])
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { title | String | optional, .. },
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
                                                  js2n.Const "execute_group",
                                              },
                                          required = { type = true, },
                                        },
                                      Array Dyn
                                    ])
                                  (std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { group | String | optional, .. },
                                      Array Dyn
                                    ]) js2n.Always,
                                {
                                  type
                                    | std.enum.TagOrString
                                    | [|
                                      'end,
                                      'execute_group,
                                      'set_click,
                                      'set_title,
                                      'donate_case,
                                      'switch_item,
                                      'move_item,
                                      'replace_item
                                    |],
                                  ..
                                }
                              ]
                          ),
                        gradual_slowdown
                          | {
                            enabled | Bool,
                            scale_factor | js2n.number.Minimum 0 | optional,
                            ..
                          }
                          | optional,
                        interval
                          | std.number.Integer
                          | js2n.number.Minimum 1
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          },
      ..
    }