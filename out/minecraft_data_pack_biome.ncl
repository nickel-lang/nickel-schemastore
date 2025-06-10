# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.spawner-options" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array
                {
                  maxCount
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc m%"
                      A maximum mob spawn in a pack for the current biome
                      https://minecraft.wiki/w/Custom_biome
                    "%
                    | optional,
                  minCount
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc m%"
                      A minimum mob spawn in a pack for the current biome
                      https://minecraft.wiki/w/Custom_biome
                    "%
                    | optional,
                  type
                    | String
                    | doc m%"
                      A mob namespaced entity for the current biome
                      https://minecraft.wiki/w/Custom_biome
                    "%
                    | optional,
                  weight
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc m%"
                      A mod spawn factor for the current biome
                      https://minecraft.wiki/w/Custom_biome
                    "%
                    | optional,
                }
            ],
    }
    in
  {
      carvers
        | {
          air
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              Carvers used during air generation step for the current biome
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          liquid
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc m%"
              Carvers used during liquid generation step for the current biome
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
        }
        | doc m%"
          Carvers to use for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      category
        | std.enum.TagOrString
        | [|
          'nether,
          'mushroom,
          'swamp,
          'river,
          'desert,
          'ocean,
          'forest,
          'beach,
          'the_end,
          'icy,
          'savanna,
          'plains,
          'mesa,
          'jungle,
          'extreme_hills,
          'taiga,
          'none
        |]
        | optional,
      creature_spawn_friendly
        | js2n.number.Maximum 1
        | js2n.number.Minimum 0
        | doc m%"
          Spawns passive mobs as long as random value is less than this
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      creature_spawn_probability
        | js2n.number.Minimum 0
        | js2n.number.ExclusiveMaximum 1
        | doc m%"
          A creature spawn probability for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      depth
        | Number
        | doc m%"
          Used for terrain noise generation. Biomes with positive depth are considered land, biomes with negative depth are oceans
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      downfall
        | js2n.number.Maximum 1
        | js2n.number.Minimum 0
        | doc m%"
          A grass and foliage color for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      effects
        | {
          additions_sound
            | {
              sound
                | String
                | doc m%"
                  Sound event to use
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
              tick_chance | std.number.Integer | optional,
              ..
            }
            | doc m%"
              Settings for additions sound
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          ambient_sound
            | String
            | doc m%"
              Sound event to use for ambient sound
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          fog_color
            | std.number.Integer
            | doc m%"
              A fog color
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          foliage_color
            | std.number.Integer
            | doc m%"
              Decimal value converted from Hex color to use for tree leaves and vines. If not present, the value depends on humidity and temperature
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          grass_color
            | std.number.Integer
            | doc m%"
              A grass color
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          grass_color_modifier
            | std.enum.TagOrString
            | [| 'swamp, 'dark_forest, 'none |]
            | doc m%"
              A grass color modifier
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          mood_sound
            | {
              block_search_context
                | std.number.Integer
                | doc m%"
                  Determines the cubic range of possible positions to play the mood sound. The player is at the center of the cubic range, and the edge length is 2 * block_search_extent + 1
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
              offset | std.number.Integer | optional,
              sound
                | String
                | doc m%"
                  Sound event to use
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
              tick_delay | std.number.Integer | optional,
              ..
            }
            | doc m%"
              Settings for mood sound
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          music
            | {
              max_delay | std.number.Integer | optional,
              min_delay | std.number.Integer | optional,
              replace_current_music
                | Bool
                | doc m%"
                  Whether or not to replace music which is already playing
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
              sound
                | String
                | doc m%"
                  Sound event to use
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
              ..
            }
            | doc m%"
              Specific music that should be played in the biome
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          particle
            | {
              options
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
                          properties = { type = js2n.Const "item", },
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
                        Count
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc m%"
                            A particle amount for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        id
                          | js2n.string.MinLength 1
                          | doc m%"
                            A particle namespaced identifier for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        tag
                          | js2n.string.MinLength 1
                          | doc m%"
                            A particle NBT data for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            A particle type for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        value
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]),
                              patterns = {},
                              properties = { Name = js2n.string.MinLength 1, },
                              required = {},
                            }
                          | doc m%"
                            A particle state for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
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
                          properties = { type = js2n.Const "dust", },
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
                        color
                          | js2n.array.MaxItems 3
                          | js2n.array.MinItems 3
                          | Array (
                            std.contract.Sequence
                              [ js2n.number.Maximum 1, js2n.number.Minimum 0 ]
                          )
                          | doc m%"
                            A dust color for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        scale
                          | Number
                          | doc m%"
                            A particle size for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            A particle type for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        value
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]),
                              patterns = {},
                              properties = { Name = js2n.string.MinLength 1, },
                              required = {},
                            }
                          | doc m%"
                            A particle state for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
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
                          properties =
                            { type = js2n.Const "dust_color_transition", },
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
                        fromColor
                          | js2n.array.MaxItems 3
                          | js2n.array.MinItems 3
                          | Array (
                            std.contract.Sequence
                              [ js2n.number.Maximum 1, js2n.number.Minimum 0 ]
                          )
                          | doc m%"
                            A start dust color for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        scale
                          | Number
                          | doc m%"
                            A particle size for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        toColor
                          | js2n.array.MaxItems 3
                          | js2n.array.MinItems 3
                          | Array (
                            std.contract.Sequence
                              [ js2n.number.Maximum 1, js2n.number.Minimum 0 ]
                          )
                          | doc m%"
                            An end dust color for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            A particle type for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        value
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]),
                              patterns = {},
                              properties = { Name = js2n.string.MinLength 1, },
                              required = {},
                            }
                          | doc m%"
                            A particle state for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
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
                          properties = { type = js2n.Const "sculk_charge", },
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
                        roll
                          | Number
                          | doc m%"
                            A particle angle in radians for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            A particle type for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        value
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]),
                              patterns = {},
                              properties = { Name = js2n.string.MinLength 1, },
                              required = {},
                            }
                          | doc m%"
                            A particle state for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
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
                          properties = { type = js2n.Const "vibration", },
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
                        arrival_in_ticks
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc m%"
                            A particle move duration for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        destination
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                type
                                  | std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ]
                                  | doc m%"
                                    A namespaced identifier of the position source type for the current biome
                                    https://minecraft.wiki/w/Custom_biome
                                  "%
                                  | optional,
                                y_offset
                                  | Number
                                  | doc m%"
                                    An offset from entity's feet for the current biome
                                    https://minecraft.wiki/w/Custom_biome
                                  "%
                                  | optional,
                                ..
                              },
                              Array Dyn
                            ]
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
                                    properties = { type = js2n.Const "block", },
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
                                  pos
                                    | js2n.array.MaxItems 3
                                    | js2n.array.MinItems 3
                                    | Array std.number.Integer
                                    | doc m%"
                                      A block position for the current biome
                                      https://minecraft.wiki/w/Custom_biome
                                    "%
                                    | optional,
                                  type
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | doc m%"
                                      A namespaced identifier of the position source type for the current biome
                                      https://minecraft.wiki/w/Custom_biome
                                    "%
                                    | optional,
                                  y_offset
                                    | Number
                                    | doc m%"
                                      An offset from entity's feet for the current biome
                                      https://minecraft.wiki/w/Custom_biome
                                    "%
                                    | optional,
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
                                    properties =
                                      { type = js2n.Const "entity", },
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
                                  source_entity
                                    | js2n.array.MaxItems 4
                                    | js2n.array.MinItems 4
                                    | Array std.number.Integer
                                    | doc m%"
                                      A block position for the current biome
                                      https://minecraft.wiki/w/Custom_biome
                                    "%
                                    | optional,
                                  type
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | doc m%"
                                      A namespaced identifier of the position source type for the current biome
                                      https://minecraft.wiki/w/Custom_biome
                                    "%
                                    | optional,
                                  y_offset
                                    | Number
                                    | doc m%"
                                      An offset from entity's feet for the current biome
                                      https://minecraft.wiki/w/Custom_biome
                                    "%
                                    | optional,
                                },
                                Array Dyn
                              ]) js2n.Always
                          | doc m%"
                            A particle angle in radians for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            A particle type for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        value
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]),
                              patterns = {},
                              properties = { Name = js2n.string.MinLength 1, },
                              required = {},
                            }
                          | doc m%"
                            A particle state for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
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
                          properties = { type = js2n.Const "shriek", },
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
                        delay
                          | std.number.Integer
                          | doc m%"
                            A particle delay in ticks for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            A particle type for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                        value
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    (std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]),
                              patterns = {},
                              properties = { Name = js2n.string.MinLength 1, },
                              required = {},
                            }
                          | doc m%"
                            A particle state for the current biome
                            https://minecraft.wiki/w/Custom_biome
                          "%
                          | optional,
                      },
                      Array Dyn
                    ]) js2n.Always
                | {
                  type
                    | String
                    | doc m%"
                      A particle type for the current biome
                      https://minecraft.wiki/w/Custom_biome
                    "%
                    | optional,
                  value
                    | js2n.record.Record
                      {
                        additional =
                          'Some
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]),
                        patterns = {},
                        properties = { Name = js2n.string.MinLength 1, },
                        required = {},
                      }
                    | doc m%"
                      A particle state for the current biome
                      https://minecraft.wiki/w/Custom_biome
                    "%
                    | optional,
                  ..
                }
                | doc m%"
                  A particle type for the current biome
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
              probability
                | js2n.number.Maximum 1
                | js2n.number.Minimum 0
                | doc m%"
                  A particle spawning frequency for the current biome
                  https://minecraft.wiki/w/Custom_biome
                "%
                | optional,
            }
            | doc m%"
              Particle options for the current biome
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          sky_color
            | std.number.Integer
            | doc m%"
              A sky color
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          water_color
            | std.number.Integer
            | doc m%"
              A water color
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
          water_fog_color
            | std.number.Integer
            | doc m%"
              Decimal value converted from Hex color to use for fog
              https://minecraft.wiki/w/Custom_biome
            "%
            | optional,
        }
        | doc m%"
          Effect options for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      features
        | js2n.array.UniqueItems
        | Array (std.contract.any_of [ String, Array Dyn ])
        | doc m%"
          Features for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      has_precipitation
        | Bool
        | doc "Controls if the current biome has precipitation"
        | optional,
      player_spawn_friendly | Bool | optional,
      scale
        | Number
        | doc m%"
          Used for terrain noise generation. Vertically stretches the terrain. Lower values produce flatter terrain
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      spawn_costs
        | {
          _ | {
            charge
              | js2n.number.Minimum 0
              | doc m%"
                A new mob charge for the current biome
                https://minecraft.wiki/w/Custom_biome
              "%
              | optional,
            energy_budget
              | js2n.number.Minimum 0
              | doc m%"
                A new mob maximum potential for the current biome
                https://minecraft.wiki/w/Custom_biome
              "%
              | optional,
          }
        }
        | doc m%"
          Entity identifiers for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      spawners
        | {
          ambient | refs."definitions.spawner-options" | Array Dyn | optional,
          axolotls | refs."definitions.spawner-options" | Array Dyn | optional,
          creature | refs."definitions.spawner-options" | Array Dyn | optional,
          misc | refs."definitions.spawner-options" | Array Dyn | optional,
          monster | refs."definitions.spawner-options" | Array Dyn | optional,
          underground_water_creature
            | refs."definitions.spawner-options"
            | Array Dyn
            | optional,
          water_ambient
            | refs."definitions.spawner-options"
            | Array Dyn
            | optional,
          water_creature
            | refs."definitions.spawner-options"
            | Array Dyn
            | optional,
        }
        | doc m%"
          Entity spawning options for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      starts
        | Array String
        | doc m%"
          The structures to generate in this biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      surface_builder
        | String
        | doc m%"
          The namespaced id of the configured surface builder to use
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      temperature
        | Number
        | doc m%"
          A temperature for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      temperature_modifier
        | std.enum.TagOrString
        | [| 'frozen, 'none |]
        | doc m%"
          A temperature modifier for the current biome
          https://minecraft.wiki/w/Custom_biome
        "%
        | optional,
      ..
    }