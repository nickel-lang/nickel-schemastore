# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.aliases" =
        { _ | std.contract.any_of [ String, Array String ] },
      "definitions.exports" =
        std.contract.any_of
            [
              String,
              Array String,
              { _ | std.contract.any_of [ String, Array String ] }
            ],
      "definitions.tsconfigPath" = String,
    }
    in
  {
      "$schema"
        | std.contract.Equal "https://json.schemastore.org/omletrc.json"
        | doc "The schema that the configuration file uses."
        | optional,
      aliases | refs."definitions.aliases" | optional,
      exports | refs."definitions.exports" | optional,
      hookScript | String | optional,
      ignore
        | Array String
        | doc "Filenames or glob patterns that will be excluded from the scan."
        | optional,
      include
        | js2n.array.MinItems 1
        | Array String
        | doc "Filenames or glob patterns that will be included in the scan."
        | optional,
      tsconfigPath | refs."definitions.tsconfigPath" | optional,
      workspaces
        | {
          _ | {
            aliases | refs."definitions.aliases" | optional,
            exports | refs."definitions.exports" | optional,
            tsconfigPath | refs."definitions.tsconfigPath" | optional,
          }
        }
        | doc "Package-specific configurations if you have a monorepo."
        | optional,
    }