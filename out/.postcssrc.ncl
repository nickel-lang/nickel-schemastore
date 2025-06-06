# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ConfigPlugin" =
        std.contract.any_of [ { _ | Dyn }, js2n.Enum [ false ] ],
    }
    in
  {
      from
        | String
        | doc "The input file name (most runners set it automatically)."
        | optional,
      map
        | js2n.Enum [ false, "absolute", "inline", "sourcesContent" ]
        | doc "Source map options."
        | optional,
      parser
        | std.contract.any_of [ String, js2n.Enum [ false ] ]
        | doc "A special syntax parser (for example, SCSS)."
        | optional,
      plugins
        | std.contract.any_of
          [
            Array refs."definitions.ConfigPlugin",
            { _ | refs."definitions.ConfigPlugin" }
          ]
        | optional,
      stringifier
        | std.contract.any_of [ String, js2n.Enum [ false ] ]
        | doc "A special syntax output generator (for example, Midas)."
        | optional,
      syntax
        | std.contract.any_of [ String, js2n.Enum [ false ] ]
        | doc "An object providing a syntax parser and a stringifier."
        | optional,
      to
        | String
        | doc "The output file name (most runners set it automatically)."
        | optional,
    }