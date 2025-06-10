# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      analysis-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      asset-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      clean-targets
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      config-version | std.number.Integer | optional,
      data_tests
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      dbt-cloud | { project-id | Number | optional, .. } | optional,
      dispatch
        | Array
          {
            macro_namespace | String,
            search_order
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
          }
        | optional,
      docs-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      flags
        | {
          cache_selected_only | Bool | optional,
          debug | Bool | optional,
          fail_fast | Bool | optional,
          indirect_selection | String | optional,
          log_format | String | optional,
          log_format_file | String | optional,
          log_level | String | optional,
          log_level_file | String | optional,
          partial_parse | Bool | optional,
          populate_cache | Bool | optional,
          printer_width | std.number.Integer | optional,
          require_explicit_package_overrides_for_builtin_materializations
            | Bool
            | optional,
          require_resource_names_without_spaces | Bool | optional,
          send_anonymous_usage_stats | Bool | optional,
          source_freshness_run_project_hooks | Bool | optional,
          static_parser | Bool | optional,
          use_colors | Bool | optional,
          use_colors_file | Bool | optional,
          use_experimental_parser | Bool | optional,
          version_check | Bool | optional,
          warn_error | Bool | optional,
          warn_error_options | { _ | Dyn } | optional,
          write_json | Bool | optional,
          ..
        }
        | optional,
      log-path | String | optional,
      macro-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      model-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      models
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      name | String,
      on-run-end
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, String ]
        | optional,
      on-run-start
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, String ]
        | optional,
      packages-install-path | String | optional,
      profile | String | optional,
      query-comment
        | std.contract.any_of
          [
            String,
            {
              append
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              comment | String | optional,
              job-label
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
            }
          ]
        | optional,
      quoting
        | {
          database
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          identifier
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          schema
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ..
        }
        | optional,
      require-dbt-version
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      seed-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      seeds
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      snapshot-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      snapshots
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      sources
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      target-path | String | optional,
      test-paths
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      tests
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      unit_tests
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      vars | { _ | Dyn } | optional,
      version | String | optional,
    }