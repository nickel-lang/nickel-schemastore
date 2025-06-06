# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dimensionType" =
        {
            ambient_light
              | Number
              | doc "How much light the dimension has."
              | optional,
            bed_works
              | Bool
              | doc "When false, the bed blows up when trying to sleep."
              | optional,
            coordinate_scale
              | Number
              | doc "The multiplier applied to coordinates when traveling to the dimension."
              | optional,
            effects
              | std.enum.TagOrString
              | [|
                '"minecraft:the_end",
                '"minecraft:the_nether",
                '"minecraft:overworld"
              |]
              | doc "Determines the dimension effect used for this dimension."
              | optional,
            fixed_time
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 24000,
                      js2n.number.Minimum 0
                    ]
                ]
              | doc "If this is set to a number, the time of the day is the specified value."
              | optional,
            has_ceiling
              | Bool
              | doc "Whether the dimension has a bedrock ceiling or not."
              | optional,
            has_raids
              | Bool
              | doc "Whether players with the Bad Omen effect can cause a raid."
              | optional,
            has_skylight
              | Bool
              | doc "Whether the dimension has skylight access or not."
              | optional,
            height
              | std.number.Integer
              | js2n.number.MultipleOf 16
              | js2n.number.Maximum 4096
              | js2n.number.Minimum 0
              | doc "The total height in which blocks can exist within this dimension."
              | optional,
            infiniburn
              | String
              | doc "A resource location defining what block tag to use for infiniburn."
              | optional,
            logical_height
              | std.number.Integer
              | doc "The maximum height to which chorus fruits and nether portals can bring players within this dimension. This excludes portals that were already built above the limit as they still connect normally."
              | optional,
            min_y
              | std.number.Integer
              | js2n.number.MultipleOf 16
              | js2n.number.Maximum 2031
              | js2n.number.Minimum (-2032)
              | doc "The minimum height in which blocks can exist within this dimension."
              | optional,
            name
              | String
              | doc "The resource location used for the dimension type."
              | optional,
            natural
              | Bool
              | doc "When true, nether portals can spawn zombified piglins. When false, compasses spin randomly, and using a bed to set the respawn point or sleep, is disabled."
              | optional,
            piglin_safe
              | Bool
              | doc "Whether piglins shake and transform to zombified piglins."
              | optional,
            respawn_anchor_works
              | Bool
              | doc "Whether players can charge and use respawn anchors."
              | optional,
            ultrawarm
              | Bool
              | doc "Whether the dimensions behaves like the nether (water evaporates and sponges dry) or not. Also lets stalactites drip lava and causes lava to spread faster and thinner."
              | optional,
            ..
          },
      "definitions.noise" =
        {
            amplitudes
              | Array Number
              | doc "A list of floats. Using more values allows for greater precision. Higher absolute values seem to make the altitude reach greater absolute values."
              | optional,
            firstOctave
              | std.number.Integer
              | doc "The lower the value, the smoother the changes in altitude will be, making biome edges smoother."
              | optional,
            ..
          },
    }
    in
  {
      generator
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
                  properties = { type = js2n.Const "minecraft:flat", },
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
                settings
                  | {
                    biome
                      | String
                      | doc "The single biome of the world."
                      | optional,
                    features
                      | Bool
                      | doc "Whether or not to generate biome-specific decorations like trees, grass, flowers, cacti, etc."
                      | optional,
                    lakes
                      | Bool
                      | doc "Whether or not to generate lakes. If set to true, then water and lava lakes generate often even in biomes where lakes don't normally generate. Lava lakes generate surrounded by different types of stone and ores from the overworld."
                      | optional,
                    layers
                      | Array
                        {
                          block
                            | String
                            | doc "The block the layer is made of."
                            | optional,
                          height
                            | std.number.Integer
                            | doc "The number of blocks in the layer."
                            | optional,
                          ..
                        }
                      | doc "Layer settings."
                      | optional,
                    structures
                      | {
                        stronghold
                          | {
                            count
                              | std.number.Integer
                              | doc "How many strongholds to generate."
                              | optional,
                            distance
                              | std.number.Integer
                              | doc "Controls how far apart the strongholds are."
                              | optional,
                            spread | std.number.Integer | optional,
                            ..
                          }
                          | doc "Settings for how strongholds should be spawned."
                          | optional,
                        structures
                          | {
                            _ | {
                              salt
                                | std.number.Integer
                                | doc "A number that assists in randomization."
                                | optional,
                              separation
                                | std.number.Integer
                                | doc "Minimum distance between two structures of this type in chunks; must be less than spacing."
                                | optional,
                              spacing
                                | std.number.Integer
                                | doc "Average distance between two structure placement attempts of this type in chunks."
                                | optional,
                              ..
                            }
                          }
                          | doc "Map of structures to use in this dimension."
                          | optional,
                        ..
                      }
                      | doc "Structure settings."
                      | optional,
                    ..
                  }
                  | doc "Superflat settings."
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
                  properties = { type = js2n.Const "minecraft:noise", },
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
                biome_source
                  | {
                    biomes
                      | Array Dyn
                      | doc "A list of biome IDs to generate."
                      | optional,
                    seed
                      | std.number.Integer
                      | doc "The seed used for biome generation."
                      | optional,
                    type
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
                                  {
                                      type =
                                        js2n.Const "minecraft:vanilla_layered",
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
                              large_biomes
                                | Bool
                                | doc "Whether the biomes are large."
                                | optional,
                              legacy_biome_init_layer
                                | Bool
                                | doc "Whether the world was default_1_1."
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
                                properties =
                                  { type = js2n.Const "minecraft:fixed", },
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
                              biome
                                | String
                                | doc "The single biome to generate."
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
                                properties =
                                  {
                                      type =
                                        js2n.Const "minecraft:checkerboard",
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
                              biomes
                                | Array Dyn
                                | doc "A list of biomes that repeat along the diagonals."
                                | optional,
                              scale
                                | std.number.Integer
                                | js2n.number.Maximum 62
                                | js2n.number.Minimum 0
                                | doc "Determines the size of the squares on an exponential scale."
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
                                properties =
                                  {
                                      type = js2n.Const "minecraft:multi_noise",
                                    },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.Sequence
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  altitude_noise
                                    | refs."definitions.noise"
                                    | doc "How the altitude parameter is spread in the world."
                                    | optional,
                                  humidity_noise
                                    | refs."definitions.noise"
                                    | doc "Similar to altitude_noise for the humidity parameter."
                                    | optional,
                                  temperature_noise
                                    | refs."definitions.noise"
                                    | doc "Similar to altitude_noise for the temperature parameter."
                                    | optional,
                                  weirdness_noise
                                    | refs."definitions.noise"
                                    | doc "Similar to altitude_noise for the weirdness parameter."
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ],
                            std.contract.any_of
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
                                          preset =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| '"minecraft:nether" |]
                                                ],
                                        },
                                    required = {},
                                  },
                                Array Dyn,
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
                                          biomes =
                                            js2n.array.ArrayOf
                                                (js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          biome = String,
                                                          parameters =
                                                            js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        altitude =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.number.Maximum
                                                                                  2,
                                                                                js2n.number.Minimum
                                                                                  (-2)
                                                                              ],
                                                                        humidity =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.number.Maximum
                                                                                  2,
                                                                                js2n.number.Minimum
                                                                                  (-2)
                                                                              ],
                                                                        offset =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.number.Maximum
                                                                                  1,
                                                                                js2n.number.Minimum
                                                                                  0
                                                                              ],
                                                                        temperature =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.number.Maximum
                                                                                  2,
                                                                                js2n.number.Minimum
                                                                                  (-2)
                                                                              ],
                                                                        weirdness =
                                                                          std.contract.Sequence
                                                                              [
                                                                                js2n.number.Maximum
                                                                                  2,
                                                                                js2n.number.Minimum
                                                                                  (-2)
                                                                              ],
                                                                      },
                                                                  required = {},
                                                                },
                                                        },
                                                    required = {},
                                                  }),
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ]
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
                                  { type = js2n.Const "minecraft:the_end", },
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
                            { _ | Dyn },
                            Array Dyn
                          ]) js2n.Always
                      | String
                      | doc "The type of biome generation."
                      | optional,
                    ..
                  }
                  | doc "Settings dictating which biomes and biome shapes."
                  | optional,
                seed
                  | std.number.Integer
                  | doc "The seed used to generate the dimension. In most cases, this is exactly the same as the world seed, but can be different and the dimension generated is based upon this seed and not the world seed."
                  | optional,
                settings
                  | std.contract.any_of [ String, { _ | Dyn } ]
                  | doc "The noise settings used in the terrain generator. Can be set to a string to use a preset defined in the worldgen/noise_settings folder with a list of customized options."
                  | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always
        | {
          type
            | std.enum.TagOrString
            | [| '"minecraft:debug", '"minecraft:noise", '"minecraft:flat" |]
            | doc "The ID of the generator."
            | optional,
          ..
        }
        | doc "Generation settings used for that dimension."
        | optional,
      type
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  '"minecraft:the_end",
                  '"minecraft:the_nether",
                  '"minecraft:overworld_caves",
                  '"minecraft:overworld"
                |]
              ],
            refs."definitions.dimensionType"
          ]
        | doc "The namespaced ID of the dimension type."
        | optional,
      ..
    }