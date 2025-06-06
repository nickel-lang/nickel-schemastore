# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.numberProvider" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    type
                      | std.enum.TagOrString
                      | [|
                        '"minecraft:score",
                        '"minecraft:binomial",
                        '"minecraft:uniform",
                        '"minecraft:constant"
                      |]
                      | doc "The number provider type."
                      | optional,
                    ..
                  },
                  Array Dyn
                ],
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
                          { type = js2n.Const "minecraft:constant", },
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
                    { value | Number | doc "The exact value." | optional, .. },
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
                        properties = { type = js2n.Const "minecraft:uniform", },
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
                      max
                        | js2n.Always
                        | std.contract.any_of [ { _ | Dyn }, Number ]
                        | doc "The maximum value."
                        | optional,
                      min
                        | js2n.Always
                        | std.contract.any_of [ { _ | Dyn }, Number ]
                        | doc "The minimum value."
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
                          { type = js2n.Const "minecraft:binomial", },
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
                      n
                        | std.contract.any_of
                          [ std.number.Integer, { _ | Dyn } ]
                        | js2n.Always
                        | doc "The amount of trials."
                        | optional,
                      p
                        | js2n.Always
                        | doc "The probability of success on an individual trial."
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
                        properties = { type = js2n.Const "minecraft:score", },
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
                      scale
                        | Number
                        | doc "Scale to multiply the score before returning it."
                        | optional,
                      score
                        | String
                        | doc "The scoreboard objective."
                        | optional,
                      target
                        | js2n.IfThenElse
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
                                  properties = { type = js2n.Const "fixed", },
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
                                name
                                  | String
                                  | doc "A UUID or player name."
                                  | optional,
                                ..
                              },
                              Array Dyn
                            ]) js2n.Always
                        | js2n.IfThenElse
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
                                  properties = { type = js2n.Const "context", },
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
                                target
                                  | std.enum.TagOrString
                                  | [|
                                    'player_killer,
                                    'direct_killer,
                                    'killer,
                                    'this
                                  |]
                                  | optional,
                                ..
                              },
                              Array Dyn
                            ]) js2n.Always
                        | std.enum.TagOrString
                        | [| 'player_killer, 'direct_killer, 'killer, 'this |]
                        | doc "Scoreboard name provider."
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always
            ],
      "definitions.slotEnum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'head, 'chest, 'legs, 'feet, 'offhand, 'mainhand |]
            ],
    }
    in
  Array (
      std.contract.Sequence
        [
          std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                function
                  | std.enum.TagOrString
                  | [|
                    '"minecraft:set_stew_effect",
                    '"minecraft:set_nbt",
                    '"minecraft:set_name",
                    '"minecraft:set_lore",
                    '"minecraft:set_loot_table",
                    '"minecraft:set_enchantments",
                    '"minecraft:set_damage",
                    '"minecraft:set_count",
                    '"minecraft:set_contents",
                    '"minecraft:set_banner_pattern",
                    '"minecraft:set_attributes",
                    '"minecraft:looting_enchant",
                    '"minecraft:limit_count",
                    '"minecraft:fill_player_head",
                    '"minecraft:furnace_smelt",
                    '"minecraft:explosion_decay",
                    '"minecraft:exploration_map",
                    '"minecraft:enchant_with_levels",
                    '"minecraft:enchant_randomly",
                    '"minecraft:copy_state",
                    '"minecraft:copy_nbt",
                    '"minecraft:copy_name",
                    '"minecraft:apply_bonus"
                  |]
                  | doc "Namespaced ID of the function to apply."
                  | optional,
                ..
              },
              Array Dyn
            ],
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
                      { function = js2n.Const "minecraft:apply_bonus", },
                    required = {},
                  },
                Array Dyn
              ])
            {
              enchantment
                | String
                | doc "Enchantment ID used for level calculation."
                | optional,
              formula
                | std.enum.TagOrString
                | [|
                  'ore_drops,
                  'uniform_bonus_count,
                  'binomial_with_bonus_count
                |]
                | optional,
              parameters
                | {
                  bonusMultiplier
                    | Number
                    | doc "For formula 'uniform_bonus_count', the bonus multiplier."
                    | optional,
                  extra
                    | std.number.Integer
                    | doc "For formula 'binomial_with_bonus_count', the extra value."
                    | optional,
                  probability
                    | Number
                    | doc "For formula 'binomial_with_bonus_count', the probability."
                    | optional,
                  ..
                }
                | doc "Values required for the formula."
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
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      { function = js2n.Const "minecraft:copy_name", },
                    required = {},
                  },
                Array Dyn
              ])
            {
              source | std.enum.TagOrString | [| 'block_entity |] | optional,
              ..
            } js2n.Always,
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
                      { function = js2n.Const "minecraft:copy_nbt", },
                    required = {},
                  },
                Array Dyn
              ])
            {
              ops
                | Array
                  {
                    op
                      | String
                      | doc "Can be replace to replace any existing contents of the target, append to append to a list, or merge to merge into a compound tag."
                      | optional,
                    source
                      | String
                      | doc "The NBT path to copy from."
                      | optional,
                    target
                      | String
                      | doc "The NBT path to copy to, starting from the item's tag tag."
                      | optional,
                    ..
                  }
                | doc "A list of copy operations."
                | optional,
              source
                | std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'killer_player, 'killer, 'this, 'block_entity |]
                      ],
                    String,
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
                                    { type = js2n.Const "minecraft:context", },
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
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { target = String, },
                                  required = {},
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
                                    { type = js2n.Const "minecraft:storage", },
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
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { target = String, },
                                  required = {},
                                },
                              Array Dyn
                            ]) js2n.Always,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            '"minecraft:storage",
                                            '"minecraft:context"
                                          |]
                                        ],
                                },
                            required = {},
                          }
                      ]
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
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      { function = js2n.Const "minecraft:copy_state", },
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
                  block
                    | String
                    | doc "A block ID. Function fails if the block doesn't match."
                    | optional,
                  properties
                    | Array String
                    | doc "A list of property names to copy."
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
                      { function = js2n.Const "minecraft:enchant_randomly", },
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
                  enchantments
                    | Array Dyn
                    | doc "List of enchantment IDs to choose from."
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
                          function = js2n.Const "minecraft:enchant_with_levels",
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
                  levels
                    | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                    | refs."definitions.numberProvider"
                    | doc "Specifies the exact enchantment level to use."
                    | optional,
                  treasure
                    | Bool
                    | doc "Determines whether treasure enchantments are allowed on this item."
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
                      { function = js2n.Const "minecraft:exploration_map", },
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
                  decoration
                    | String
                    | doc "The icon used to mark the destination on the map. Accepts any of the map icon text IDs (case insensitive)."
                    | optional,
                  destination
                    | String
                    | doc "The type of generated structure to locate. Accepts any of the StructureTypes used by the /locate command (case insensitive)."
                    | optional,
                  search_radius
                    | std.number.Integer
                    | doc "The size, in chunks, of the area to search for structures. The area checked is square, not circular."
                    | optional,
                  skip_existing_chunks
                    | Bool
                    | doc "Don't search in chunks that have already been generated."
                    | optional,
                  zoom
                    | std.number.Integer
                    | doc "The zoom level of the resulting map."
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
                      { function = js2n.Const "minecraft:explosion_decay", },
                    required = {},
                  },
                Array Dyn
              ])
            (std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ])
            js2n.Always,
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
                      { function = js2n.Const "minecraft:furnace_smelt", },
                    required = {},
                  },
                Array Dyn
              ])
            (std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ])
            js2n.Always,
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
                      { function = js2n.Const "minecraft:fill_player_head", },
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
                  entity
                    | String
                    | doc "Specifies an entity to be used for the player head."
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
                      { function = js2n.Const "minecraft:limit_count", },
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
                  limit
                    | std.contract.any_of
                      [
                        std.number.Integer,
                        {
                          max
                            | std.contract.any_of
                              [ std.number.Integer, { _ | Dyn } ]
                            | refs."definitions.numberProvider"
                            | doc "Max limit to use."
                            | optional,
                          min
                            | std.contract.any_of
                              [ std.number.Integer, { _ | Dyn } ]
                            | refs."definitions.numberProvider"
                            | doc "Minimum limit to use."
                            | optional,
                          ..
                        }
                      ]
                    | refs."definitions.numberProvider"
                    | doc "Specifies the exact limit to use."
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
                      { function = js2n.Const "minecraft:looting_enchant", },
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
                  count
                    | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                    | refs."definitions.numberProvider"
                    | doc "Specifies the number of additional items per level of looting."
                    | optional,
                  limit
                    | std.number.Integer
                    | doc "Specifies the maximum amount of items in the stack after the looting calculation. If the value is 0, no limit is applied."
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
                      { function = js2n.Const "minecraft:set_attributes", },
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
                  modifiers
                    | Array (
                      {
                        _ | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              amount
                                | refs."definitions.numberProvider"
                                | std.contract.any_of [ { _ | Dyn }, Number ]
                                | doc "Specifies the amount of the modifier."
                                | optional,
                              attribute
                                | String
                                | doc "The name of the attribute this modifier is to act upon."
                                | optional,
                              id
                                | String
                                | doc "UUID of the modifier following."
                                | optional,
                              name
                                | String
                                | doc "Name of the modifier."
                                | optional,
                              operation
                                | std.enum.TagOrString
                                | [|
                                  'multiply_total,
                                  'multiply_base,
                                  'addition
                                |]
                                | optional,
                              slot
                                | refs."definitions.slotEnum"
                                | doc "Slots the item must be in for the modifier to take effect."
                                | optional,
                              ..
                            },
                            Array Dyn
                          ]
                      }
                    )
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
                      { function = js2n.Const "minecraft:set_banner_pattern", },
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
                  append
                    | Bool
                    | doc "If true, new patterns will be appended to existing ones."
                    | optional,
                  patterns
                    | Array (
                      {
                        _ | {
                          color
                            | std.enum.TagOrString
                            | [|
                              'black,
                              'red,
                              'green,
                              'brown,
                              'blue,
                              'purple,
                              'cyan,
                              'light_gray,
                              'gray,
                              'pink,
                              'lime,
                              'yellow,
                              'light_blue,
                              'magenta,
                              'orange,
                              'white
                            |]
                            | doc "The color for this pattern."
                            | optional,
                          pattern | String | doc "The pattern type." | optional,
                          ..
                        }
                      }
                    )
                    | doc "List of patterns."
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
                      { function = js2n.Const "minecraft:set_contents", },
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
                  entries
                    | Array Dyn
                    | doc "The entries to use as contents."
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
                      { function = js2n.Const "minecraft:set_count", },
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
                  add
                    | Bool
                    | doc "If true, change will be relative to the current count."
                    | optional,
                  count
                    | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                    | refs."definitions.numberProvider"
                    | doc "Specifies the stack size to set."
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
                      { function = js2n.Const "minecraft:set_damage", },
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
                  add
                    | Bool
                    | doc "If true, change will be relative to current damage."
                    | optional,
                  damage
                    | refs."definitions.numberProvider"
                    | std.contract.any_of [ { _ | Dyn }, Number ]
                    | doc "Specifies the damage fraction to set (1.0 is undamaged, 0.0 is zero durability left)."
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
                      { function = js2n.Const "minecraft:set_enchantments", },
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
                  add
                    | Bool
                    | doc "If true, change will be relative to current level."
                    | optional,
                  enchantments
                    | {
                      _ | std.contract.Sequence
                        [
                          std.contract.any_of
                            [ std.number.Integer, { _ | Dyn } ],
                          refs."definitions.numberProvider"
                        ]
                    }
                    | doc "Enchantments to add."
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
                      { function = js2n.Const "minecraft:set_loot_table", },
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
                  name
                    | String
                    | doc "Specifies the resource location of the loot table to be used."
                    | optional,
                  seed
                    | std.number.Integer
                    | doc "Specifies the loot table seed. If absent or set to 0, a random seed will be used."
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
                      { function = js2n.Const "minecraft:set_lore", },
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
                  entity
                    | String
                    | doc "Specifies the entity to act as the source @s in the JSON text component."
                    | optional,
                  lore
                    | Array ({ _ | Dyn })
                    | doc "List of JSON text components. Each list entry represents one line of the lore. Advanced components are resolved only if entity successfully targets an entity."
                    | optional,
                  replace
                    | Bool
                    | doc "If true, replaces all existing lines of lore, if false appends the list."
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
                      { function = js2n.Const "minecraft:set_name", },
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
                  entity
                    | String
                    | doc "Specifies an entity to act as source @s in the JSON text component."
                    | optional,
                  name
                    | std.contract.any_of [ String, { _ | Dyn }, Array Dyn ]
                    | doc "A JSON text component name, allowing color, translations, etc. Advanced components are resolved only if entity successfully targets an entity."
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
                    properties = { function = js2n.Const "minecraft:set_nbt", },
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
                  tag
                    | String
                    | doc "Tag string to add, similar to those used by commands. Note that the first bracket is required and quotation marks need to be escaped using a backslash (\\)."
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
                      { function = js2n.Const "minecraft:set_stew_effect", },
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
                  effects
                    | Array (
                      {
                        _ | {
                          duration
                            | std.contract.any_of
                              [ std.number.Integer, { _ | Dyn } ]
                            | refs."definitions.numberProvider"
                            | doc "The duration of the effect."
                            | optional,
                          type | String | doc "The effect ID." | optional,
                          ..
                        }
                      }
                    )
                    | doc "The effects to apply."
                    | optional,
                  ..
                },
                Array Dyn
              ]) js2n.Always
        ]
    )