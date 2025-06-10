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
              js2n.record.Required [ "name" ],
              Array Dyn
            ])
          {
            appearance
              | {
                ambient_sound
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                block
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                color | std.number.Integer | optional,
                errored
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                hardness
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | optional,
                idle
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                interaction_sound
                  | std.contract.any_of
                    [
                      {
                        break
                          | js2n.string.Matches
                            "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                          | optional,
                        place
                          | js2n.string.Matches
                            "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                          | optional,
                        step
                          | js2n.string.Matches
                            "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                          | optional,
                        ..
                      },
                      js2n.string.Matches
                        "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                    ]
                  | optional,
                item
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                light
                  | std.number.Integer
                  | js2n.number.Maximum 15
                  | js2n.number.Minimum 0
                  | optional,
                mining_level
                  | js2n.string.Matches
                    "[minecraft:needs_[stone|iron|diamond]|forge:needs_netherite]_tool"
                  | optional,
                paused
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                requires_tool | Bool | optional,
                resistance
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | optional,
                running
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                shape | std.contract.any_of [ Array Dyn, String ] | optional,
                shape_collision
                  | std.contract.any_of [ Array Dyn, String ]
                  | optional,
                tool_type
                  | std.contract.any_of
                    [
                      js2n.string.Matches
                        "minecraft:mineable/[shovel|pickaxe|axe|hoe]",
                      Array (std.contract.any_of [ String, Array js2n.Always ])
                    ]
                  | optional,
                ..
              }
              | optional,
            catalysts
              | Array (
                js2n.string.Matches
                  "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
              )
              | optional,
            components
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              radius =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 32,
                                      js2n.number.Minimum 1
                                    ],
                              type = js2n.Const "custommachinery:chunkload",
                            },
                        required = { type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              type = js2n.Const "custommachinery:energy",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              retrieve = Bool,
                              slots = js2n.array.ArrayOf String,
                              type = js2n.Const "custommachinery:experience",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:fluid",
                              unique = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Minimum 1
                                    ],
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              locked = Bool,
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Minimum 1
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Minimum 1
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:item",
                              variant =
                                js2n.string.Matches
                                    "custommachinery:[energy|filter|fluid|fuel|result|upgrade|mana|source]",
                              whitelist = Bool,
                            },
                        required = { id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              comparatorinputid = String,
                              compratorinputtype =
                                js2n.string.Matches
                                    "custommachinery:[energy|fluid|item]",
                              craftingpoweroutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              erroredpoweroutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              idlepoweroutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              powertopause =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              type = js2n.Const "custommachinery:redstone",
                            },
                        required = { type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:mana",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:source",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:gas",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:infusion",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:pigment",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:slurry",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              base_temp = Number,
                              capacity = Number,
                              conduction = Number,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              insulation = Number,
                              type = js2n.Const "custommachinery:heat",
                            },
                        required = { type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              stress_impact = js2n.number.Minimum 0,
                              type = js2n.Const "custommachinery:contraption",
                            },
                        required = { type = true, },
                      }
                  ]
              )
              | optional,
            gui
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
            name
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  String
                ],
            processor
              | {
                amount | std.number.Integer | optional,
                cooldown
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | optional,
                type | js2n.string.Matches "custommachinery:[machine|craft]",
                ..
              }
              | optional,
            tooltips
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ])
                ]
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
              js2n.record.Required [ "parent" ],
              Array Dyn
            ])
          {
            appearance
              | {
                ambient_sound
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                block
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                color | std.number.Integer | optional,
                errored
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                hardness
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | optional,
                idle
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                interaction_sound
                  | std.contract.any_of
                    [
                      {
                        break
                          | js2n.string.Matches
                            "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                          | optional,
                        place
                          | js2n.string.Matches
                            "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                          | optional,
                        step
                          | js2n.string.Matches
                            "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                          | optional,
                        ..
                      },
                      js2n.string.Matches
                        "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                    ]
                  | optional,
                item
                  | js2n.string.Matches
                    "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
                  | optional,
                light
                  | std.number.Integer
                  | js2n.number.Maximum 15
                  | js2n.number.Minimum 0
                  | optional,
                mining_level
                  | js2n.string.Matches
                    "[minecraft:needs_[stone|iron|diamond]|forge:needs_netherite]_tool"
                  | optional,
                paused
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                requires_tool | Bool | optional,
                resistance
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | optional,
                running
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                shape | std.contract.any_of [ Array Dyn, String ] | optional,
                shape_collision
                  | std.contract.any_of [ Array Dyn, String ]
                  | optional,
                tool_type
                  | std.contract.any_of
                    [
                      js2n.string.Matches
                        "minecraft:mineable/[shovel|pickaxe|axe|hoe]",
                      Array (std.contract.any_of [ String, Array js2n.Always ])
                    ]
                  | optional,
                ..
              }
              | optional,
            catalysts
              | Array (
                js2n.string.Matches
                  "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"
              )
              | optional,
            components
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              radius =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 32,
                                      js2n.number.Minimum 1
                                    ],
                              type = js2n.Const "custommachinery:chunkload",
                            },
                        required = { type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              type = js2n.Const "custommachinery:energy",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              retrieve = Bool,
                              slots = js2n.array.ArrayOf String,
                              type = js2n.Const "custommachinery:experience",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:fluid",
                              unique = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Minimum 1
                                    ],
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              locked = Bool,
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Minimum 1
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Minimum 1
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:item",
                              variant =
                                js2n.string.Matches
                                    "custommachinery:[energy|filter|fluid|fuel|result|upgrade|mana|source]",
                              whitelist = Bool,
                            },
                        required = { id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              comparatorinputid = String,
                              compratorinputtype =
                                js2n.string.Matches
                                    "custommachinery:[energy|fluid|item]",
                              craftingpoweroutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              erroredpoweroutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              idlepoweroutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              powertopause =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.Maximum 16,
                                      js2n.number.Minimum 0
                                    ],
                              type = js2n.Const "custommachinery:redstone",
                            },
                        required = { type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:mana",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxInput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              maxOutput =
                                std.contract.Sequence
                                    [
                                      std.number.Integer,
                                      js2n.number.ExclusiveMinimum 0
                                    ],
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:source",
                            },
                        required = { capacity = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:gas",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:infusion",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:pigment",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              capacity = std.number.Integer,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              filter =
                                js2n.array.ArrayOf
                                    (js2n.string.Matches
                                      "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$"),
                              id = String,
                              max_input = std.number.Integer,
                              max_output = std.number.Integer,
                              mode =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              type = js2n.Const "custommachinery:slurry",
                              whitelist = Bool,
                            },
                        required = { capacity = true, id = true, type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              base_temp = Number,
                              capacity = Number,
                              conduction = Number,
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              insulation = Number,
                              type = js2n.Const "custommachinery:heat",
                            },
                        required = { type = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              config =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                              stress_impact = js2n.number.Minimum 0,
                              type = js2n.Const "custommachinery:contraption",
                            },
                        required = { type = true, },
                      }
                  ]
              )
              | optional,
            gui
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
            name
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  String
                ]
              | optional,
            parent
              | js2n.string.Matches
                "[a-z]+[a-z|_]*[a-z]:[a-z]+[a-z|_|/|#|,|=|\\.]*[a-z]$",
            processor
              | {
                amount | std.number.Integer | optional,
                cooldown
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | optional,
                type | js2n.string.Matches "custommachinery:[machine|craft]",
                ..
              }
              | optional,
            tooltips
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ])
                ]
              | optional,
            ..
          } js2n.Always
      ]