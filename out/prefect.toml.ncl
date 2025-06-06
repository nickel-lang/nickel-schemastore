# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      api
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      cli
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      client
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      cloud
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      debug_mode
        | Bool
        | doc "If True, enables debug mode which may provide additional logging and debugging features."
        | optional,
      deployments
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      experiments
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Settings for controlling experimental features"
        | optional,
      flows
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      home
        | String
        | doc "The path to the Prefect home directory. Defaults to ~/.prefect"
        | optional,
      internal
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Settings for internal Prefect machinery"
        | optional,
      logging
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      profiles_path
        | js2n.Nullable String
        | doc "The path to a profiles configuration file."
        | optional,
      results
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      runner
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      server
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      silence_api_url_misconfiguration
        | Bool
        | doc m%"
          
                  If `True`, disable the warning when a user accidentally misconfigure its `PREFECT_API_URL`
                  Sometimes when a user manually set `PREFECT_API_URL` to a custom url,reverse-proxy for example,
                  we would like to silence this warning so we will set it to `FALSE`.
                  
        "%
        | optional,
      tasks
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Settings for controlling task behavior"
        | optional,
      testing
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Settings used during testing"
        | optional,
      ui_url
        | js2n.Nullable String
        | doc "The URL of the Prefect UI. If not set, the client will attempt to infer it."
        | optional,
      worker
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Settings for controlling worker behavior"
        | optional,
      ..
    }