# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.soundPath" =
        std.contract.Sequence [ refs."definitions.string", String ],
      "definitions.string" = String,
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              {
                replace
                  | Bool
                  | doc m%"
                    Used only in resource packs.
                    True if the sounds listed in sounds should replace the sounds listed in the default sounds.json for this sound event
                    False if the sounds listed should be added to the list of default sounds.
                    Default is false
                  "%
                  | optional,
                sounds
                  | Array (std.contract.any_of [ String, { _ | Dyn } ])
                  | js2n.IfThenElse
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        js2n.array.ArrayOf String
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array (
                          std.contract.Sequence
                            [ refs."definitions.soundPath", String ]
                        )
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array (
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                attenuation_distance
                                  | std.number.Integer
                                  | doc m%"
                                    Modify sound reduction rate based on distance. Used by portals, beacons, and conduits.
                                    Default is 16
                                  "%
                                  | optional,
                                name
                                  | refs."definitions.soundPath"
                                  | String
                                  | optional,
                                pitch
                                  | Number
                                  | doc m%"
                                    Plays the pitch at the specified value.
                                    Default is 1.0
                                  "%
                                  | optional,
                                preload
                                  | Bool
                                  | doc m%"
                                    True if this sound should be loaded when loading the pack instead of when the sound is played. Used by the underwater ambience.
                                    Default is false
                                  "%
                                  | optional,
                                stream
                                  | Bool
                                  | doc m%"
                                    True if this sound should be streamed from its file. It is recommended that this is set to "true" for sounds that have a duration longer than a few seconds to avoid lag. Used for all sounds in the "music" and "record" categories (except Note Block sounds), as (almost) all the sounds that belong to those categories are over a minute long. Setting this to false allows many more instances of the sound to be ran at the same time while setting it to true only allows 4 instances (of that type) to be ran at the same time.
                                    Default is false
                                  "%
                                  | optional,
                                type
                                  | std.enum.TagOrString
                                  | [| 'event, 'sound |]
                                  | doc m%"
                                    "sound" causes the value of "name" to be interpreted as the name of a file
                                    "event" causes the value of "name" to be interpreted as the name of an already defined event.
                                    Default is "sound"
                                  "%
                                  | optional,
                                volume
                                  | js2n.number.Maximum 1
                                  | js2n.number.Minimum 0
                                  | doc m%"
                                    The volume for playing this sound. Value is a decimal between 0.0 and 1.0
                                    Default is 1.0
                                  "%
                                  | optional,
                                weight
                                  | std.number.Integer
                                  | doc m%"
                                    The chance that this sound is selected to play when this sound event is triggered.
                                    Example: putting 2 in for the value would be like placing in the name twice.
                                    Default is 1
                                  "%
                                  | optional,
                                ..
                              },
                              Array Dyn
                            ]
                        )
                      ])
                  | doc "The sound files this sound event uses. One of the listed sounds is randomly selected to play when this sound event is triggered."
                  | optional,
                subtitle
                  | refs."definitions.string"
                  | doc "Translated as the subtitle of the sound if Show Subtitles is enabled ingame."
                  | optional,
              },
        patterns = {},
        properties = { "$schema" = refs."definitions.string", },
        required = {},
      }