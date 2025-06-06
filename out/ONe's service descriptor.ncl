# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Consumes" = Array String,
      "definitions.Events" =
        {
            consumes | refs."definitions.Produces" | Array Dyn,
            produces | refs."definitions.Consumes" | Array Dyn,
          },
      "definitions.Produces" = Array String,
      "definitions.Require" =
        {
            service | String,
            uses
              | Array (
                std.contract.Sequence [ refs."definitions.Use", { _ | Dyn } ]
              ),
            version | String,
          },
      "definitions.ServiceDescriptor" =
        {
            description | String,
            events | refs."definitions.Events" | { _ | Dyn },
            requires
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Require", { _ | Dyn } ]
              ),
          },
      "definitions.Use" =
        {
            api
              | std.enum.TagOrString
              | [| 'integration, 'external, 'internal |],
            type | std.enum.TagOrString | [| 'library, 'REST |],
          },
    }
    in
  refs."definitions.ServiceDescriptor"