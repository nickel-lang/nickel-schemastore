# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      entryPoint
        | js2n.OneOf
          [
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      appBasePath = String,
                      assemblyPath = String,
                      configPath = String,
                      fullClassName = String,
                    },
                required = { assemblyPath = true, fullClassName = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  { constructorFunction = String, scriptPath = String, },
                required = { constructorFunction = true, scriptPath = true, },
              }
          ]
        | { _ | Dyn }
        | doc "Host-specific parameters that describe how to activate this service.",
      host
        | String
        | doc "The name of the host that should activate the service.",
      hostGroupAllowed
        | Bool
        | doc "A value of 'true' will allow a client to specify a host group when requesting this service."
        | optional,
      hostId
        | js2n.string.Matches "^[^ ]*$"
        | doc "A non-empty value will cause this service to be activated on a dedicated host with this ID. All services with the same host / hostId combination will run in the same host process such that they may share global data. If unspecified or empty, a service will share its host process with other services that require the same host and also leave this field empty. If specified, the value must not have spaces in it."
        | optional,
      versionRange
        | String
        | doc "Defines the version of the service."
        | optional,
      ..
    }