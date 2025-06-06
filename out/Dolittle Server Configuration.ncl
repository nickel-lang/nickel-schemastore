# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      interaction
        | {
          enabled
            | Bool
            | doc "Whether or not the interaction server is enabled"
            | optional,
          port
            | Number
            | doc "The port to use for exposing the interaction server"
            | optional,
          unixSocket
            | String
            | doc "The unix socket to use for exposing the interaction server on"
            | optional,
          ..
        }
        | doc "The configuration for the interaction server",
      management
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      ..
    }