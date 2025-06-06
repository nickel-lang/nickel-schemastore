# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      artifacts
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines the attributes to build an artifact"
        | optional,
      bundle
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The attributes of the bundle."
        | optional,
      experimental
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines attributes for experimental features."
        | optional,
      include
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Specifies a list of path globs that contain configuration files to include within the bundle."
        | optional,
      permissions
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines the permissions to apply to experiments, jobs, pipelines, and models defined in the bundle"
        | optional,
      presets
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines bundle deployment presets."
        | optional,
      resources
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Specifies information about the Databricks resources used by the bundle"
        | optional,
      run_as
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The identity to use to run the bundle."
        | optional,
      sync
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The files and file paths to include or exclude in the bundle."
        | optional,
      targets
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines deployment targets for the bundle."
        | optional,
      variables
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "A Map that defines the custom variables for the bundle, where each key is the name of the variable, and the value is a Map that defines the variable."
        | optional,
      workspace
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines the Databricks workspace for the bundle."
        | optional,
      ..
    }