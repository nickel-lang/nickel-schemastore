# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _patternplate
        | { _ | Dyn }
        | doc "Technical values saved by patternplate core"
        | optional,
      data
        | js2n.record.MinProperties 1
        | doc "Custom data object supplied by user"
        | optional,
      demoPatterns
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            std.contract.Sequence
              [
                js2n.record.MinProperties 1,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      { "^.+$" = js2n.string.Matches "^(/)?([^/ ]+(/)?)+$", },
                    properties = {},
                    required = {},
                  }
              ],
            Array Dyn
          ]
        | doc "Dependencies of the pattern used for demo purposes"
        | optional,
      displayName
        | js2n.string.MinLength 1
        | doc "Human readable name of the pattern"
        | optional,
      flag
        | js2n.string.Matches "^alpha|beta|rc|stable$"
        | doc "Stability flag of the pattern"
        | optional,
      id | js2n.string.MinLength 1 | doc "Unique id of this pattern" | optional,
      meta
        | js2n.record.MinProperties 1
        | doc "Custom meta data object supplied by user"
        | optional,
      name
        | js2n.string.MinLength 1
        | js2n.string.Matches "^[a-z]+(?:-[a-z]+)*$"
        | doc "Machine readable name of the pattern",
      options
        | js2n.record.MinProperties 1
        | doc "Custom options object supplied by user"
        | optional,
      overrides
        | js2n.record.MinProperties 1
        | {
          demo
            | String
            | doc "Custom url to use as demo for this pattern"
            | optional,
          files
            | js2n.record.MinProperties 1
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  { "^.+$" = js2n.string.Matches "^(/)?([^/ ]+(/)?)+$", },
                properties = {},
                required = {},
              }
            | doc "Custom mapping between patternplate files and paths to use in exchange for this pattern"
            | optional,
          ..
        }
        | doc "Options for overriding of core pattern behaviour"
        | optional,
      patterns
        | js2n.record.MinProperties 1
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^.+$" = js2n.string.Matches "^(/)?([^/ ]+(/)?)+$", },
            properties = {},
            required = {},
          }
        | doc "Dependencies of the pattern"
        | optional,
      tags
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "Array of tags describing the pattern"
        | optional,
      version
        | js2n.string.Matches "^\\d+\\.\\d+\\.\\d+(-[a-z]*){0,1}$"
        | doc "Semantic version of the pattern",
      versions
        | js2n.array.MinItems 1
        | Array (js2n.string.Matches "^\\d+\\.\\d+\\.\\d+(-[a-z]*){0,1}$")
        | doc "Available semantic versions of the pattern"
        | optional,
    }