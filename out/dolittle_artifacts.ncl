# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.artifactDefinition" =
        {
            generation | Number | doc "The artifact generation",
            type | String | doc "The CLR Type represented by the artifact ",
            ..
          },
      "definitions.artifactsByTypeDefinition" =
        {
            commands
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.artifactDefinition", { _ | Dyn } ]
              }
              | doc "The command artifacts of a Feature",
            eventSources
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.artifactDefinition", { _ | Dyn } ]
              }
              | doc "The event source artifacts of a Feature",
            events
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.artifactDefinition", { _ | Dyn } ]
              }
              | doc "The event artifacts of a Feature",
            queries
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.artifactDefinition", { _ | Dyn } ]
              }
              | doc "The query artifacts of a Feature",
            readModels
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.artifactDefinition", { _ | Dyn } ]
              }
              | doc "The read model artifacts of a Feature",
            ..
          },
    }
    in
  { _ | refs."definitions.artifactsByTypeDefinition" }