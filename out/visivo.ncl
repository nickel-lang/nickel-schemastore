# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      alerts
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      charts
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      cli_version
        | js2n.Nullable String
        | doc "The version of the CLI that created the project."
        | optional,
      dashboards
        | Array (
          js2n.OneOf
            [
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ]
        )
        | optional,
      dbt
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | optional,
      defaults
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | optional,
      destinations
        | Array (
          js2n.OneOf
            [
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ]
        )
        | optional,
      file_path
        | js2n.Nullable String
        | doc "The path to the file that contains the object definition."
        | optional,
      includes
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      models
        | Array (
          js2n.OneOf
            [
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ]
        )
        | optional,
      name
        | js2n.Nullable String
        | doc "The unique name of the object across the entire project."
        | optional,
      path
        | js2n.Nullable String
        | doc "A unique path to this object"
        | optional,
      project_file_path | js2n.Nullable String | optional,
      selectors
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      sources
        | Array (
          js2n.OneOf
            [
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            ]
        )
        | doc "A list of source objects."
        | optional,
      tables
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      traces
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
    }