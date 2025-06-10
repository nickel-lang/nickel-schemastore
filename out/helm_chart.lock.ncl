# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      dependencies
        | Array
          {
            name | String | doc "The name of the chart",
            repository | String | doc "The repository URL or alias",
            version | String | doc "The version of the chart",
          }
        | doc m%"
          In Helm, one chart may depend on any number of other charts. These dependencies can be dynamically linked using the dependencies field in Chart.yaml or brought in to the charts/ directory and managed manually.
          The charts required by the current chart are defined as a list in the dependencies field.
        "%,
      digest
        | String
        | doc "Digest is a hash of the dependencies in Chart.yaml.",
      generated
        | String
        | doc "Generated is the date the lock file was last generated.",
    }