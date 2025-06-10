# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      configurations
        | {
          _ | std.contract.Sequence
            [
              {
                apiLocation
                  | String
                  | doc "API folder or Azure Functions emulator address"
                  | optional,
                apiPort | Number | doc "API backend port" | optional,
                apiPrefix | std.enum.TagOrString | [| 'api |] | optional,
                appArtifactLocation
                  | String
                  | doc "Location of the build output directory relative to the appLocation"
                  | optional,
                appLocation
                  | String
                  | doc "Location for the static app source code"
                  | optional,
                build | Bool | optional,
                customUrlScheme | String | optional,
                devserverTimeout
                  | Number
                  | doc "Time to wait(in ms) for the dev server to start"
                  | optional,
                host | String | doc "CLI host address" | optional,
                overridableErrorCode | Array Number | optional,
                port | Number | doc "set the cli port" | optional,
                run | String | doc "Run a command at startup" | optional,
                ssl | Bool | doc "Serve the app and API over HTTPS" | optional,
                sslCert
                  | String
                  | doc "SSL certificate (.crt) to use for serving HTTPS"
                  | optional,
                sslKey
                  | String
                  | doc "SSL key (.key) to use for serving HTTPS"
                  | optional,
                swaConfigFilename
                  | std.enum.TagOrString
                  | [| '"staticwebapp.config.json" |]
                  | optional,
                swaConfigFilenameLegacy
                  | std.enum.TagOrString
                  | [| '"routes.json" |]
                  | optional,
                swaConfigLocation | String | optional,
                verbose | String | optional,
                ..
              },
              { context | String | optional, .. }
            ]
        }
        | optional,
      ..
    }