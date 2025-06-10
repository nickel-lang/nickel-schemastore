# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      agent
        | {
          name | String | doc "CI server type" | optional,
          version | String | doc "CI server version" | optional,
          ..
        }
        | doc "CI server information"
        | optional,
      buildAgent
        | {
          name | String | doc "Build tool type" | optional,
          version | String | doc "Build tool version" | optional,
          ..
        }
        | doc "Build tool information"
        | optional,
      durationMillis
        | std.number.Integer
        | doc "Build duration in milliseconds"
        | optional,
      name | String | doc "Build name" | optional,
      number | String | doc "Build number" | optional,
      principal | String | doc "" | optional,
      properties
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^.+$" = String, },
            properties = {},
            required = {},
          }
        | doc "Environment variables and properties collected from the CI server"
        | optional,
      started
        | js2n.string.Matches
          "^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}.\\d{3}(Z|[+-]\\d{4})$"
        | doc "Build start time"
        | optional,
      type | String | doc "Build type" | optional,
      url | String | doc "CI server URL" | optional,
      vcs
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        )
        | doc "List of VCS used for the build"
        | optional,
      version | String | doc "Build info schema version" | optional,
      ..
    }