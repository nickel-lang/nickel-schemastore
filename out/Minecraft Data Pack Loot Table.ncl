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
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          functions
            | Array (
              {
                _ | {
                  conditions
                    | Array (
                      {
                        _ | {
                          condition
                            | String
                            | doc "Namespaced ID of condition."
                            | optional,
                          ..
                        }
                      }
                    )
                    | doc "Determines conditions for this function to be applied. If multiple conditions are specified, all must pass."
                    | optional,
                  function
                    | String
                    | doc "Namespaced ID of the function to apply."
                    | optional,
                  ..
                }
              }
            )
            | doc " Applies functions to all item stacks produced by this table. Functions are applied in order, so for example looting_enchant must be after set_count to work correctly."
            | optional,
          pools
            | Array
              {
                bonus_rolls
                  | refs."definitions.numberProvider"
                  | std.contract.any_of [ { _ | Dyn }, Number ]
                  | doc "Specifies the number of bonus rolls on the pool per point of luck. Rounded down after multiplying."
                  | optional,
                conditions
                  | Array (
                    {
                      _ | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            condition
                              | String
                              | doc "Namespaced ID of condition."
                              | optional,
                            ..
                          },
                          Array Dyn
                        ]
                    }
                  )
                  | doc "Determines conditions for this pool to be used. If multiple conditions are specified, all must pass."
                  | optional,
                entries
                  | Array
                    {
                      children | Array Dyn | optional,
                      conditions
                        | Array (
                          {
                            _ | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  condition
                                    | String
                                    | doc "Namespaced ID of condition."
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ]
                          }
                        )
                        | doc "Determines conditions for this entry to be used. If multiple conditions are specified, all must pass."
                        | optional,
                      expand
                        | Bool
                        | doc "For type 'tag', if set to true, it chooses one item of the tag, each with the same weight and quality. If false, it generates one of each of the items in the tag."
                        | optional,
                      functions
                        | Array (
                          {
                            _ | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  conditions
                                    | Array
                                      {
                                        condition
                                          | String
                                          | doc "Namespaced ID of condition."
                                          | optional,
                                        ..
                                      }
                                    | doc "Determines conditions for this function to be applied. If multiple conditions are specified, all must pass."
                                    | optional,
                                  function
                                    | String
                                    | doc "Namespaced ID of the function to apply."
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ]
                          }
                        )
                        | doc "Applies functions to the item stack or item stacks being produced. Functions are applied in order, so for example looting_enchant must be after set_count to work correctly."
                        | optional,
                      name | String | optional,
                      quality
                        | std.number.Integer
                        | doc "Modifies the entry's weight based on the killing/opening/fishing player's luck attribute. Formula is floor( weight + (quality * generic.luck))."
                        | optional,
                      type
                        | std.enum.TagOrString
                        | [|
                          '"minecraft:empty",
                          '"minecraft:dynamic",
                          '"minecraft:sequence",
                          '"minecraft:alternatives",
                          '"minecraft:group",
                          '"minecraft:loot_table",
                          '"minecraft:tag",
                          '"minecraft:item"
                        |]
                        | doc "Namespaced ID type of entry."
                        | optional,
                      weight
                        | std.number.Integer
                        | doc "Determines how often this entry is chosen out of all the entries in the pool. Entries with higher weights are used more often (chance is this entry's weight⁄total of all considered entries' weights)."
                        | optional,
                      ..
                    }
                  | doc "A list of all things that can be produced by this pool. One entry is chosen per roll as a weighted random selection from all entries without failing conditions."
                  | optional,
                functions
                  | Array (
                    {
                      _ | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            conditions
                              | Array
                                {
                                  condition
                                    | String
                                    | doc "Namespaced ID of condition."
                                    | optional,
                                  ..
                                }
                              | doc "Determines conditions for this function to be applied. If multiple conditions are specified, all must pass."
                              | optional,
                            function
                              | String
                              | doc "Namespaced ID of the function to apply."
                              | optional,
                            ..
                          },
                          Array Dyn
                        ]
                    }
                  )
                  | doc "Applies functions to all item stacks produced by this pool. Functions are applied in order, so for example looting_enchant must be after set_count to work correctly."
                  | optional,
                rolls
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.numberProvider"
                  | doc "Specifies the number of rolls on the pool."
                  | optional,
                ..
              }
            | doc "A list of all pools for this loot table. Each pool used generates items from its list of items based on the number of rolls. Pools are applied in order."
            | optional,
          type
            | std.enum.TagOrString
            | [|
              'generic,
              '"minecraft:generic",
              'advancement_entity,
              '"minecraft:advancement_entity",
              'selector,
              '"minecraft:selector",
              'command,
              '"minecraft:command",
              'barter,
              '"minecraft:barter",
              'advancement_reward,
              '"minecraft:advancement_reward",
              'gift,
              '"minecraft:gift",
              'fishing,
              '"minecraft:fishing",
              'chest,
              '"minecraft:chest",
              'block,
              '"minecraft:block",
              'entity,
              '"minecraft:entity",
              'empty,
              '"minecraft:empty"
            |]
            | optional,
          ..
        },
        Array Dyn
      ]