# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.profile" =
        {
            autoload | { _ | String } | optional,
            extensions | { _ | { _ | Dyn } } | optional,
            formatters
              | {
                junit | Bool | optional,
                pretty | Bool | optional,
                progress | Bool | optional,
              }
              | optional,
            suites
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.suite", { _ | Dyn } ]
              }
              | optional,
            ..
          },
      "definitions.suite" =
        {
            contexts
              | js2n.array.UniqueItems
              | Array (std.contract.any_of [ String, { _ | Dyn } ])
              | optional,
            filters
              | { role | String | optional, tags | String | optional, .. }
              | optional,
            paths | js2n.array.UniqueItems | Array String | optional,
            ..
          },
    }
    in
  js2n.record.Record
      {
        additional = 'Some refs."definitions.profile",
        patterns = {},
        properties =
          {
              "default" = refs."definitions.profile",
              imports =
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
            },
        required = {},
      }