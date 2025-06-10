# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions._listOfGlobs" = Array String,
      "definitions.autoApply" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'root_package, 'all_packages, 'dependents, 'none |]
            ],
      "definitions.buildConfig" =
        {
            additional_public_assets
              | refs."definitions._listOfGlobs"
              | Array Dyn
              | optional,
            builders
              | js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."definitions.builderKey", String ])
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.builderDefinition", { _ | Dyn } ]
              }
              | optional,
            global_options
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.globalBuilderOptions", { _ | Dyn } ]
              }
              | optional,
            post_process_builders
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.postProcessBuilderDefinition",
                    { _ | Dyn }
                  ]
              }
              | optional,
            targets
              | js2n.record.PropertyNames
                (std.contract.Sequence [ refs."definitions.targetKey", String ])
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.buildTarget", { _ | Dyn } ]
              }
              | optional,
          },
      "definitions.buildTarget" =
        {
            auto_apply_builders | Bool | optional,
            builders
              | js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."definitions.builderKey", String ])
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.targetBuilderConfig", { _ | Dyn } ]
              }
              | optional,
            dependencies
              | Array (
                std.contract.Sequence [ refs."definitions.targetKey", String ]
              )
              | optional,
            sources | refs."definitions.inputSet" | optional,
          },
      "definitions.buildTo" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'source, 'cache |] ],
      "definitions.builderDefinition" =
        {
            applies_builders
              | Array (
                std.contract.Sequence [ refs."definitions.builderKey", String ]
              )
              | optional,
            auto_apply | refs."definitions.autoApply" | String | optional,
            build_extensions | { _ | Array String } | optional,
            build_to | refs."definitions.buildTo" | String | optional,
            builder_factories | Array String | optional,
            defaults
              | refs."definitions.targetBuilderConfigDefaults"
              | { _ | Dyn }
              | optional,
            "import" | String | optional,
            is_optional | Bool | optional,
            required_inputs | Array String | optional,
            runs_before | refs."definitions.runsBefore" | Array Dyn | optional,
            target | String | optional,
          },
      "definitions.builderKey" = js2n.string.Matches "^(?:\\w*:)?\\w+$",
      "definitions.builderOptions" = {  .. },
      "definitions.globalBuilderOptions" =
        {
            dev_options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            release_options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            runs_before | refs."definitions.runsBefore" | Array Dyn | optional,
          },
      "definitions.inputSet" =
        std.contract.any_of
            [
              {
                exclude
                  | refs."definitions._listOfGlobs"
                  | Array Dyn
                  | optional,
                include
                  | refs."definitions._listOfGlobs"
                  | Array Dyn
                  | optional,
              },
              std.contract.Sequence
                [ refs."definitions._listOfGlobs", Array Dyn ]
            ],
      "definitions.postProcessBuilderDefinition" =
        {
            builder_factory | String | optional,
            defaults
              | refs."definitions.targetBuilderConfigDefaults"
              | { _ | Dyn }
              | optional,
            "import" | String | optional,
            input_extensions | Array String | optional,
          },
      "definitions.runsBefore" =
        Array (std.contract.Sequence [ refs."definitions.builderKey", String ]),
      "definitions.targetBuilderConfig" =
        {
            dev_options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            enabled | Bool | optional,
            generate_for | refs."definitions.inputSet" | optional,
            options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            release_options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
          },
      "definitions.targetBuilderConfigDefaults" =
        {
            dev_options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            generate_for | refs."definitions.inputSet" | optional,
            options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
            release_options
              | refs."definitions.builderOptions"
              | { _ | Dyn }
              | optional,
          },
      "definitions.targetKey" =
        js2n.string.Matches "^(?:\\w+:)?\\w+|\\$default$",
    }
    in
  refs."definitions.buildConfig"