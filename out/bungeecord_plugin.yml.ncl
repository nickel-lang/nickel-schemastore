# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.plugin-name" = js2n.string.Matches "^[A-Za-z0-9_\\.-]+$", }
    in
  {
      author | String | doc "Plugin author." | optional,
      depends
        | Array refs."definitions.plugin-name"
        | doc "Plugin hard dependencies."
        | optional,
      description | String | doc "Optional description." | optional,
      main
        | js2n.string.Matches
          "^([a-zA-Z_$][a-zA-Z\\d_$]*\\.)*[a-zA-Z_$][a-zA-Z\\d_$]*$"
        | doc "Plugin main class.",
      name | refs."definitions.plugin-name" | doc "The name of the plugin.",
      softDepends
        | Array refs."definitions.plugin-name"
        | doc "Plugin soft dependencies."
        | optional,
      version | String | doc "Plugin version." | optional,
      ..
    }