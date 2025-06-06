# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        {
          controller
            | {
              additionalEnvironmentVariables
                | { _ | String }
                | js2n.record.FieldsMatch "^[A-Za-z0-9_/\\.]+$"
                | doc "An object with properties like \"environment variable name\": \"value\" that describes what environment variables to set for the Hub Controller."
                | optional,
              args | Array String | optional,
              contextEnvironmentVariables
                | js2n.array.UniqueItems
                | Array String
                | doc "Array of environment variable names. These variables are mixed-up into hash that determines the location service pipe name. The order is significant."
                | optional,
              executable | String,
              ..
            }
            | doc "Specifies the location of the controller executable and activation parameters.",
          ..
        },
        js2n.record.Required [ "hosts", "services" ]
      ]