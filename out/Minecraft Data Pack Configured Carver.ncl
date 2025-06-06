# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      config
        | {
          debug_settings
            | {
              air_state
                | {  .. }
                | doc m%"
                  Air replacement options for the current carver
                  https://minecraft.wiki/w/Custom_carver#JSON_format
                "%
                | optional,
              barrier_state
                | {  .. }
                | doc m%"
                  Barrier replacement options for the current carver
                  https://minecraft.wiki/w/Custom_carver#JSON_format
                "%
                | optional,
              debug_mode
                | Bool
                | doc m%"
                  Whether to enable debug mode for the current carver
                  https://minecraft.wiki/w/Custom_carver#JSON_format
                "%
                | optional,
              lava_state
                | {  .. }
                | doc m%"
                  Lava replacement options for the current carver
                  https://minecraft.wiki/w/Custom_carver#JSON_format
                "%
                | optional,
              water_state
                | {  .. }
                | doc m%"
                  Water replacement options for the current carver
                  https://minecraft.wiki/w/Custom_carver#JSON_format
                "%
                | optional,
            }
            | doc m%"
              Replace blocks for debugging for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          floor_level
            | std.contract.any_of
              [
                std.contract.Sequence
                  [ js2n.number.Maximum 1, js2n.number.Minimum (-1) ],
                {  .. }
              ]
            | doc m%"
              Floor level options for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          horizontal_radius_multiplier
            | std.contract.any_of [ Number, {  .. } ]
            | doc m%"
              Horizontal tunnel scaling options for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          lava_level
            | std.enum.TagOrString
            | [| 'below_top, 'above_bottom, 'absolute |]
            | doc m%"
              A height at which to generate the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          probability
            | js2n.number.Maximum 1
            | js2n.number.Minimum 0
            | doc m%"
              A probability that each chunk attempts to generate for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          replaceable
            | std.contract.any_of
              [
                js2n.string.MinLength 1,
                std.contract.Sequence
                  [ js2n.array.UniqueItems, Array (js2n.string.MinLength 1) ]
              ]
            | doc m%"
              Blocks can be carved for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          shape
            | {  .. }
            | doc m%"
              Ravine shape for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          vertical_radius_multiplier
            | std.contract.any_of [ Number, {  .. } ]
            | doc m%"
              Vertical tunnel scaling options for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          vertical_rotation
            | std.contract.any_of [ Number, {  .. } ]
            | doc m%"
              Vertical rotation options for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          y
            | { _ | Dyn }
            | doc m%"
              A height at which to generate the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
          yScale
            | std.contract.any_of [ Number, {  .. } ]
            | doc m%"
              Vertical scaling options for the current carver
              https://minecraft.wiki/w/Custom_carver#JSON_format
            "%
            | optional,
        }
        | doc m%"
          Options for the current carver
          https://minecraft.wiki/w/Custom_carver#JSON_format
        "%
        | optional,
      type
        | std.enum.TagOrString
        | [|
          'underwater_cave,
          '"minecraft:underwater_cave",
          'underwater_canyon,
          '"minecraft:underwater_canyon",
          'canyon,
          '"minecraft:canyon",
          'nether_cave,
          '"minecraft:nether_cave",
          'cave,
          '"minecraft:cave"
        |]
        | doc m%"
          A type for the current carver
          https://minecraft.wiki/w/Custom_carver#JSON_format
        "%
        | optional,
      ..
    }