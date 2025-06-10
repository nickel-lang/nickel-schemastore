# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      advanced
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Advanced config"
        | optional,
      api
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc "Management API config"
        | optional,
      contracts
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String
            ]
        }
        | doc "Mapping of contract aliases and contract configs"
        | optional,
      custom
        | { _ | Dyn }
        | doc "User-defined configuration to use in callbacks"
        | optional,
      database
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String
          ]
        | doc "Database config"
        | optional,
      datasources
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String
            ]
        }
        | doc "Mapping of datasource aliases and datasource configs"
        | optional,
      hasura
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc "Hasura integration config"
        | optional,
      hooks
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Mapping of hook aliases and hook configs"
        | optional,
      indexes
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String
            ]
        }
        | doc "Mapping of index aliases and index configs"
        | optional,
      jobs
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Mapping of job aliases and job configs"
        | optional,
      logging
        | std.contract.any_of
          [
            { _ | std.contract.any_of [ String, std.number.Integer ] },
            String,
            std.number.Integer
          ]
        | doc "Modify logging verbosity"
        | optional,
      mcp
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc "MCP server config"
        | optional,
      package
        | String
        | doc "Name of indexer's Python package, existing or not"
        | optional,
      prometheus
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc "Prometheus integration config"
        | optional,
      runtimes
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Mapping of runtime aliases and runtime configs"
        | optional,
      sentry
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc "Sentry integration config"
        | optional,
      spec_version
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Version of config specification, currently always `3.0`"
        | optional,
      templates
        | {
          _ | std.contract.any_of
            [
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String,
              js2n.Null,
              Bool,
              { _ | Dyn },
              Array Dyn,
              Number,
              String
            ]
        }
        | doc "Mapping of template aliases and index templates"
        | optional,
    }