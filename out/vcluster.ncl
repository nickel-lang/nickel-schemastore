# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      controlPlane
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Configure vCluster's control plane components and deployment."
        | optional,
      experimental
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Experimental features for vCluster. Configuration here might change, so be careful with this."
        | optional,
      exportKubeConfig
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "ExportKubeConfig describes how vCluster should export the vCluster kubeConfig file."
        | optional,
      external
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "External holds configuration for tools that are external to the vCluster."
        | optional,
      global
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Global values shared across all (sub)charts"
        | optional,
      integrations
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Integrations holds config for vCluster integrations with other operators or tools running on the host cluster"
        | optional,
      networking
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Networking options related to the virtual cluster."
        | optional,
      plugin
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = String, },
                properties = {},
                required = {},
              },
            { _ | Dyn },
            { _ | Dyn }
          ]
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Plugin specifies which vCluster plugins to enable. Use \"plugins\" instead. Do not use this option anymore."
        | optional,
      plugins
        | std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { ".*" = String, },
                properties = {},
                required = {},
              },
            { _ | Dyn },
            { _ | Dyn }
          ]
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Define which vCluster plugins to load."
        | optional,
      policies
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Policies to enforce for the virtual cluster deployment as well as within the virtual cluster."
        | optional,
      pro
        | Bool
        | doc "Specifies whether to use vCluster Pro. This is automatically inferred in newer versions. Do not use that option anymore."
        | optional,
      rbac
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "RBAC options for the virtual cluster."
        | optional,
      serviceCIDR
        | String
        | doc "ServiceCIDR holds the service cidr for the virtual cluster. Do not use this option anymore."
        | optional,
      sleepMode
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "SleepMode holds the native sleep mode configuration for Pro clusters"
        | optional,
      sync
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Sync describes how to sync resources from the virtual cluster to host cluster and back."
        | optional,
      telemetry
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Configuration related to telemetry gathered about vCluster usage."
        | optional,
    }