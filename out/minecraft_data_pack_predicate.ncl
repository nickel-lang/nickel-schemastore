# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.enchantments" =
        Array
            {
              enchantment | String | doc "An enchantment ID." | optional,
              levels
                | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                | refs."definitions.integerRange"
                | doc "The level of the enchantment."
                | optional,
              ..
            },
      "definitions.integerRange" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                max
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.numberProvider"
                  | doc "The max value."
                  | optional,
                min
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.numberProvider"
                  | doc "The minimum value."
                  | optional,
                ..
              },
              Array Dyn
            ],
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
      "definitions.numberRange" =
        {
            max | Number | doc "The max value." | optional,
            min | Number | doc "The minimum value." | optional,
            ..
          },
      "definitions.tagsCommonToAllDamageTypes" =
        {
            bypasses_armor
              | Bool
              | doc "Checks if the damage bypassed the armor of the player (suffocation damage predominantly)."
              | optional,
            bypasses_invulnerability
              | Bool
              | doc "Checks if the damage bypassed the invulnerability status of the player (void or /kill damage)."
              | optional,
            bypasses_magic
              | Bool
              | doc "Checks if the damage was caused by starvation."
              | optional,
            direct_entity
              | { _ | Dyn }
              | doc "The entity that was the direct cause of the damage."
              | optional,
            is_explosion
              | Bool
              | doc "Checks if the damage originated from an explosion."
              | optional,
            is_fire
              | Bool
              | doc "Checks if the damage originated from fire."
              | optional,
            is_lightning
              | Bool
              | doc "Checks if the damage originated from lightning."
              | optional,
            is_magic
              | Bool
              | doc "Checks if the damage originated from magic."
              | optional,
            is_projectile
              | Bool
              | doc "Checks if the damage originated from a projectile."
              | optional,
            source_entity
              | refs."definitions.tagsCommonToAllEntities"
              | { _ | Dyn }
              | doc "Checks the entity that was the source of the damage (for example: The skeleton that shot the arrow)."
              | optional,
            ..
          },
      "definitions.tagsCommonToAllEntities" =
        {
            distance
              | {
                absolute
                  | refs."definitions.numberRange"
                  | { _ | Dyn }
                  | optional,
                horizontal
                  | refs."definitions.numberRange"
                  | { _ | Dyn }
                  | optional,
                x | refs."definitions.numberRange" | { _ | Dyn } | optional,
                y | refs."definitions.numberRange" | { _ | Dyn } | optional,
                z | refs."definitions.numberRange" | { _ | Dyn } | optional,
                ..
              }
              | optional,
            effects
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    _ | {
                      ambient
                        | Bool
                        | doc "Whether the effect is from a beacon."
                        | optional,
                      amplifier
                        | std.contract.any_of
                          [ std.number.Integer, { _ | Dyn } ]
                        | refs."definitions.integerRange"
                        | doc "The effect amplifier."
                        | optional,
                      duration
                        | std.contract.any_of
                          [ std.number.Integer, { _ | Dyn } ]
                        | refs."definitions.integerRange"
                        | doc "The effect duration in ticks."
                        | optional,
                      visible
                        | Bool
                        | doc "Whether the effect has visible particles."
                        | optional,
                      ..
                    }
                  },
                  Array Dyn
                ]
              | doc "A map of status effects."
              | optional,
            equipment
              | {
                chest
                  | refs."definitions.tagsCommonToAllItems"
                  | { _ | Dyn }
                  | optional,
                feet
                  | refs."definitions.tagsCommonToAllItems"
                  | { _ | Dyn }
                  | optional,
                head
                  | refs."definitions.tagsCommonToAllItems"
                  | { _ | Dyn }
                  | optional,
                legs
                  | refs."definitions.tagsCommonToAllItems"
                  | { _ | Dyn }
                  | optional,
                mainhand
                  | refs."definitions.tagsCommonToAllItems"
                  | { _ | Dyn }
                  | optional,
                offhand
                  | refs."definitions.tagsCommonToAllItems"
                  | { _ | Dyn }
                  | optional,
                ..
              }
              | optional,
            flags
              | {
                is_baby
                  | Bool
                  | doc "Test whether the entity is or is not a baby variant."
                  | optional,
                is_on_fire
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Test whether the entity is or is not on fire."
                  | optional,
                is_sneaking
                  | Bool
                  | doc "Test whether the entity is or is not sneaking."
                  | optional,
                is_sprinting
                  | Bool
                  | doc "Test whether the entity is or is not sprinting."
                  | optional,
                is_swimming
                  | Bool
                  | doc "Test whether the entity is or is not swimming."
                  | optional,
                ..
              }
              | doc "Predicate Flags to be checked."
              | optional,
            lightning_bolt
              | {
                blocks_set_on_fire
                  | std.number.Integer
                  | doc "Number of blocks set on fire by this lightning bolt."
                  | optional,
                entity_struck
                  | js2n.Always
                  | { _ | Dyn }
                  | doc "Entity properties of entities struck by this lightning bolt. If present, this tag must match one or more entities."
                  | optional,
                ..
              }
              | doc "Lightning bolt properties to be checked. Fails when entity is not a lightning bolt."
              | optional,
            location
              | refs."definitions.tagsCommonToAllLocations"
              | { _ | Dyn }
              | optional,
            nbt | String | doc "An NBT string." | optional,
            passenger
              | js2n.Always
              | { _ | Dyn }
              | doc "The entity directly riding this entity."
              | optional,
            player
              | {
                advancements
                  | { _ | std.contract.any_of [ Bool, { _ | Bool } ] }
                  | doc "A map of advancements to check."
                  | optional,
                gamemode
                  | std.enum.TagOrString
                  | [| 'spectator, 'creative, 'adventure, 'survival |]
                  | doc "The game mode of the player."
                  | optional,
                level
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.integerRange"
                  | doc "The level of the player."
                  | optional,
                looking_at
                  | js2n.Always
                  | { _ | Dyn }
                  | doc "The entity that the player is looking at, as long as it is visible and within a radius of 100 blocks."
                  | optional,
                recipes
                  | { _ | Bool }
                  | doc "A map of recipes to check."
                  | optional,
                stats
                  | {
                    _ | {
                      stat
                        | String
                        | doc "The statistic ID. Mostly mimics the criteria used for defining scoreboard objectives."
                        | optional,
                      type
                        | std.enum.TagOrString
                        | [|
                          '"minecraft:killed_by",
                          '"minecraft:dropped",
                          '"minecraft:picked_up",
                          '"minecraft:killed",
                          '"minecraft:mined",
                          '"minecraft:broken",
                          '"minecraft:used",
                          '"minecraft:crafted",
                          '"minecraft:custom"
                        |]
                        | doc "The statistic base."
                        | optional,
                      value
                        | std.contract.any_of
                          [ std.number.Integer, { _ | Dyn } ]
                        | refs."definitions.integerRange"
                        | doc "The value of the statistic."
                        | optional,
                      ..
                    }
                  }
                  | doc "List of statistics to match."
                  | optional,
                ..
              }
              | doc "Player properties to be checked. Fails when entity is not a player."
              | optional,
            stepping_on
              | refs."definitions.tagsCommonToAllLocations"
              | { _ | Dyn }
              | doc "Location predicate for the block the entity is standing on."
              | optional,
            targeted_entity
              | js2n.Always
              | { _ | Dyn }
              | doc "The entity which this entity is targeting for attacks."
              | optional,
            team | String | doc "The team the entity belongs to." | optional,
            type | String | doc "An entity ID." | optional,
            vehicle
              | js2n.Always
              | { _ | Dyn }
              | doc " The vehicle that the entity is riding on."
              | optional,
            ..
          },
      "definitions.tagsCommonToAllItems" =
        {
            count
              | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
              | refs."definitions.integerRange"
              | doc "The amount of the item."
              | optional,
            durability
              | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
              | refs."definitions.integerRange"
              | doc "The durability of the item."
              | optional,
            enchantments
              | refs."definitions.enchantments"
              | Array Dyn
              | doc "List of enchantments."
              | optional,
            items | Array Dyn | doc "List of item IDs." | optional,
            nbt | String | doc "An NBT string." | optional,
            potion | String | doc "A brewed potion ID." | optional,
            stored_enchantments
              | refs."definitions.enchantments"
              | Array Dyn
              | doc "List of stored enchantments."
              | optional,
            tag | String | doc "An item data pack tag." | optional,
            ..
          },
      "definitions.tagsCommonToAllLocations" =
        {
            biome
              | std.enum.TagOrString
              | [|
                'wooded_mountains,
                'wooded_hills,
                'wooded_badlands_plateau,
                'warm_ocean,
                'the_void,
                'the_end,
                'tall_birch_hills,
                'tall_birch_forest,
                'taiga_mountains,
                'taiga_hills,
                'taiga,
                'swamp_hills,
                'swamp,
                'sunflower_plains,
                'stone_shore,
                'snowy_tundra,
                'snowy_taiga_mountains,
                'snowy_taiga_hills,
                'snowy_taiga,
                'snowy_mountains,
                'snowy_beach,
                'small_end_islands,
                'shattered_savanna_plateau,
                'shattered_savanna,
                'savanna_plateau,
                'savanna,
                'river,
                'plains,
                'ocean,
                'nether,
                'mushroom_fields,
                'mushroom_field_shore,
                'mountains,
                'mountain_edge,
                'modified_wooded_badlands_plateau,
                'modified_jungle_edge,
                'modified_jungle,
                'modified_gravelly_mountains,
                'modified_badlands_plateau,
                'lukewarm_ocean,
                'jungle_hills,
                'jungle_edge,
                'jungle,
                'ice_spikes,
                'gravelly_mountains,
                'giant_tree_taiga_hills,
                'giant_tree_taiga,
                'giant_spruce_taiga_hills,
                'giant_spruce_taiga,
                'frozen_river,
                'frozen_ocean,
                'forest,
                'flower_forest,
                'eroded_badlands,
                'end_midlands,
                'end_highlands,
                'end_barrens,
                'desert_lakes,
                'desert_hills,
                'desert,
                'deep_warm_ocean,
                'deep_ocean,
                'deep_lukewarm_ocean,
                'deep_frozen_ocean,
                'deep_cold_ocean,
                'dark_forest_hills,
                'dark_forest,
                'cold_ocean,
                'birch_forest_hills,
                'birch_forest,
                'beach,
                'badlands_plateau,
                'badlands
              |]
              | doc "The biome the entity is currently in."
              | optional,
            block
              | {
                blocks | Array Dyn | doc "A list of block IDs." | optional,
                nbt | String | doc "The block NBT." | optional,
                state
                  | {
                    key
                      | std.contract.any_of
                        [ Bool, std.number.Integer, String, { _ | Dyn } ]
                      | refs."definitions.integerRange"
                      | doc "Block property key and value pair."
                      | optional,
                    ..
                  }
                  | doc "A map of block property names to values. Test will fail if the block doesn't match."
                  | optional,
                tag | String | doc "The block tag." | optional,
                ..
              }
              | doc "The block at the location."
              | optional,
            dimension
              | String
              | doc "The dimension the entity is currently in."
              | optional,
            feature
              | std.enum.TagOrString
              | [|
                'village,
                'swamp_hut,
                'stronghold,
                'shipwreck,
                'pillager_outpost,
                'ocean_ruin,
                'monument,
                'mineshaft,
                'mansion,
                'jungle_pyramid,
                'igloo,
                'fortress,
                'endcity,
                'desert_pyramid,
                'buried_treasure
              |]
              | doc "Name of a structure."
              | optional,
            fluid
              | {
                fluid | String | doc "The fluid ID." | optional,
                state
                  | std.contract.any_of
                    [ Bool, std.number.Integer, String, { _ | Dyn } ]
                  | refs."definitions.integerRange"
                  | doc "A map of fluid property names to values. Test will fail if the fluid doesn't match."
                  | optional,
                tag | String | doc "The fluid tag." | optional,
                ..
              }
              | doc "The fluid at the location."
              | optional,
            light
              | {
                light
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.integerRange"
                  | doc "The light Level of visible light. Calculated using: (max(sky-darkening,block))."
                  | optional,
                ..
              }
              | doc "The light at the location."
              | optional,
            position
              | {
                x
                  | refs."definitions.numberRange"
                  | { _ | Dyn }
                  | doc "The X position."
                  | optional,
                y
                  | refs."definitions.numberRange"
                  | { _ | Dyn }
                  | doc "The Y position."
                  | optional,
                z
                  | refs."definitions.numberRange"
                  | { _ | Dyn }
                  | doc "The Z position."
                  | optional,
                ..
              }
              | optional,
            smokey
              | Bool
              | doc "True if the block is closely above a campfire or soul campfire."
              | optional,
            ..
          },
    }
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
                    { conditions = js2n.Const "minecraft:alternative", },
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
                terms
                  | { _ | Dyn }
                  | doc "A list of conditions to join using 'or'."
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
                        conditions =
                          js2n.Const "minecraft:block_state_property",
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
                block | String | doc "A block ID." | optional,
                properties
                  | { _ | String }
                  | doc "A map of block property names to values."
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
                        conditions =
                          js2n.Const "minecraft:damage_source_properties",
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
                predicate
                  | refs."definitions.tagsCommonToAllDamageTypes"
                  | doc "Predicate applied to the damage source."
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
                    { conditions = js2n.Const "minecraft:entity_properties", },
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
                  | std.enum.TagOrString
                  | [| 'killer_player, 'killer, 'this |]
                  | doc "Specifies the entity to check for the condition."
                  | optional,
                predicate
                  | refs."definitions.tagsCommonToAllEntities"
                  | doc "Predicate applied to entity."
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
                    { conditions = js2n.Const "minecraft:entity_scores", },
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
                  | std.enum.TagOrString
                  | [| 'killer_player, 'killer, 'this |]
                  | doc "Specifies the entity to check for the condition."
                  | optional,
                scores
                  | {
                    _ | std.contract.Sequence
                      [
                        std.contract.any_of [ std.number.Integer, { _ | Dyn } ],
                        refs."definitions.integerRange"
                      ]
                  }
                  | doc "Scores to check. All specified scores must pass for the condition to pass."
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
                    { conditions = js2n.Const "minecraft:inverted", },
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
                term
                  | { _ | Dyn }
                  | doc "The condition to be negated."
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
                    { conditions = js2n.Const "minecraft:killed_by_player", },
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
                inverse
                  | Bool
                  | doc "If true, the condition passes if killer_player is not available."
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
                    { conditions = js2n.Const "minecraft:location_check", },
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
                offsetX
                  | std.number.Integer
                  | doc "Offsets to location."
                  | optional,
                offsetY
                  | std.number.Integer
                  | doc "Offsets to location."
                  | optional,
                offsetZ
                  | std.number.Integer
                  | doc "Offsets to location."
                  | optional,
                predicate
                  | refs."definitions.tagsCommonToAllLocations"
                  | doc "Predicate applied to location."
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
                    { conditions = js2n.Const "minecraft:match_tool", },
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
                predicate
                  | refs."definitions.tagsCommonToAllItems"
                  | doc "Predicate applied to item."
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
                    { conditions = js2n.Const "minecraft:random_chance", },
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
                chance
                  | js2n.number.Maximum 1
                  | js2n.number.Minimum 0
                  | doc "Success rate."
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
                        conditions =
                          js2n.Const "minecraft:random_chance_with_looting",
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
                chance | Number | doc "Base success rate." | optional,
                looting_multiplier
                  | Number
                  | doc "Looting adjustment to the base success rate. Formula is chance + (looting_level * looting_multiplier)."
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
                    { conditions = js2n.Const "minecraft:reference", },
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
                  | doc "The namespaced ID of the condition (predicate) referred to. A cyclic reference causes a parsing failure."
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
                    { conditions = js2n.Const "minecraft:survives_explosion", },
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
                    { conditions = js2n.Const "minecraft:table_bonus", },
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
                chances
                  | Array Dyn
                  | doc "List of probabilities for enchantment level, indexed from 0."
                  | optional,
                enchantment
                  | std.number.Integer
                  | doc "Id of enchantment."
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
                    { conditions = js2n.Const "minecraft:time_check", },
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
                period
                  | std.number.Integer
                  | doc "Time gets modulo-divided by this value (for example, if set to 24000, value operates on a time period of daytime ticks just like /time query daytime)."
                  | optional,
                value
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.integerRange"
                  | doc "The time value in ticks."
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
                    { conditions = js2n.Const "minecraft:weather_check", },
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
                raining
                  | Bool
                  | doc "If true, the condition evaluates to true only if it's raining or thundering."
                  | optional,
                thundering
                  | Bool
                  | doc "If true, the condition evaluates to true only if it's thundering."
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
                    { conditions = js2n.Const "minecraft:value_check", },
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
                range
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.integerRange"
                  | doc "If true, the condition evaluates to true only if it's thundering."
                  | optional,
                value
                  | std.contract.any_of [ std.number.Integer, { _ | Dyn } ]
                  | refs."definitions.numberProvider"
                  | doc "The value to test."
                  | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always,
        {
          conditions
            | std.enum.TagOrString
            | [|
              '"minecraft:value_check",
              '"minecraft:weather_check",
              '"minecraft:time_check",
              '"minecraft:table_bonus",
              '"minecraft:survives_explosion",
              '"minecraft:reference",
              '"minecraft:random_chance_with_looting",
              '"minecraft:random_chance",
              '"minecraft:match_tool",
              '"minecraft:location_check",
              '"minecraft:killed_by_player",
              '"minecraft:inverted",
              '"minecraft:entity_scores",
              '"minecraft:entity_properties",
              '"minecraft:damage_source_properties",
              '"minecraft:block_state_property",
              '"minecraft:alternative"
            |]
            | doc "The condition's ID."
            | optional,
          ..
        }
      ]