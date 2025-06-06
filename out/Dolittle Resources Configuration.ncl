# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.resourceTypeConfiguration" =
        {
            eventStore
              | { _ | Dyn }
              | doc "Configuration for the resource type for the event store",
            readModels
              | { _ | Dyn }
              | doc "Configuration for the resource type for read models",
            ..
          },
    }
    in
  { _ | refs."definitions.resourceTypeConfiguration" }