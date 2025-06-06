# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | js2n.string.MinLength 1 | doc "Url to JSON Schema" | optional,
      backup | js2n.string.MinLength 1 | optional,
      interface
        | {
          debug | Bool | doc "Enables or disables debug mode." | optional,
          proxy
            | {
              auth
                | {
                  bearer
                    | {
                      keys
                        | js2n.array.MinItems 1
                        | Array String
                        | doc "List of preshared keys that are allowed to access the server.",
                    }
                    | doc "Enables or disables preshared key authentication."
                    | optional,
                }
                | optional,
              domain
                | String
                | doc "The domain of the proxy server."
                | optional,
              host
                | String
                | doc "The host address of the proxy server."
                | optional,
              http
                | {
                  enabled
                    | Bool
                    | doc "Enables or disables the HTTP server."
                    | optional,
                  port
                    | Number
                    | doc "The host port to serve the HTTP server on."
                    | optional,
                }
                | optional,
              tls
                | {
                  cert
                    | String
                    | doc "The (absolute) file path of the certificate to use for the TLS connection.",
                  enabled
                    | Bool
                    | doc "Enables or disables transport layer security (TLS).",
                  key
                    | String
                    | doc "The (absolute) file path of the TLS key that should be used for the TLS connection.",
                }
                | optional,
            }
            | doc "Configuration for the Configu proxy server."
            | optional,
        }
        | doc "Global configuration for a Configu interface."
        | optional,
      register
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | optional,
      schemas | { _ | String } | optional,
      scripts | { _ | String } | optional,
      stores
        | {
          _ | {
            backup | Bool | optional,
            configuration | { _ | Dyn } | optional,
            "default" | Bool | optional,
            type | String,
            version | String | optional,
          }
        }
        | optional,
    }