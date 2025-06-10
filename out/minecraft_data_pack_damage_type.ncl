# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      death_message_type
        | std.enum.TagOrString
        | [| 'intentional_game_design, 'fall_variants, '"default" |]
        | optional,
      effects
        | std.enum.TagOrString
        | [| 'freezing, 'poking, 'burning, 'drowning, 'thorns, 'hurt |]
        | optional,
      exhaustion | Number,
      message_id | String,
      scaling
        | std.enum.TagOrString
        | [| 'when_caused_by_living_non_player, 'always, 'never |],
      ..
    }