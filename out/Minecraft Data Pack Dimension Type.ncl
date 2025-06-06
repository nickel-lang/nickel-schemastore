# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
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
    }