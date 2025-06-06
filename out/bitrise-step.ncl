# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AptGetDepModel" =
        { bin_name | String | optional, name | String | optional, },
      "definitions.BashStepToolkitModel" = { entry_file | String | optional, },
      "definitions.BrewDepModel" =
        { bin_name | String | optional, name | String | optional, },
      "definitions.CheckOnlyDepModel" = { name | String | optional, },
      "definitions.DependencyModel" =
        { manager | String | optional, name | String | optional, },
      "definitions.DepsModel" =
        {
            apt_get
              | Array (
                std.contract.Sequence
                  [ refs."definitions.AptGetDepModel", { _ | Dyn } ]
              )
              | optional,
            brew
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BrewDepModel", { _ | Dyn } ]
              )
              | optional,
            check_only
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CheckOnlyDepModel", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.GoStepToolkitModel" = { package_name | String, },
      "definitions.StepModel" =
        {
            asset_urls
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            dependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DependencyModel", { _ | Dyn } ]
              )
              | optional,
            deps | refs."definitions.DepsModel" | { _ | Dyn } | optional,
            description | String | optional,
            host_os_tags | Array String | optional,
            inputs
              | Array (
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      {
                          ".*" =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {  .. },
                                  Array Dyn
                                ],
                        },
                    properties = {},
                    required = {},
                  }
              )
              | optional,
            is_always_run | Bool | optional,
            is_requires_admin_user | Bool | optional,
            is_skippable | Bool | optional,
            meta
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {  .. },
                                Array Dyn
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            outputs
              | Array (
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      {
                          ".*" =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {  .. },
                                  Array Dyn
                                ],
                        },
                    properties = {},
                    required = {},
                  }
              )
              | optional,
            project_type_tags | Array String | optional,
            published_at | String | optional,
            run_if | String | optional,
            source
              | refs."definitions.StepSourceModel"
              | { _ | Dyn }
              | optional,
            source_code_url | String | optional,
            summary | String | optional,
            support_url | String | optional,
            timeout | std.number.Integer | optional,
            title | String | optional,
            toolkit
              | refs."definitions.StepToolkitModel"
              | { _ | Dyn }
              | optional,
            type_tags | Array String | optional,
            website | String | optional,
          },
      "definitions.StepSourceModel" =
        { commit | String | optional, git | String | optional, },
      "definitions.StepToolkitModel" =
        {
            bash
              | refs."definitions.BashStepToolkitModel"
              | { _ | Dyn }
              | optional,
            go | refs."definitions.GoStepToolkitModel" | { _ | Dyn } | optional,
          },
    }
    in
  refs."definitions.StepModel"