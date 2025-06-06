# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.analyzer_list" = Array String,
      "definitions.architecture_group" =
        {
            annotation | String | optional,
            exclude
              | refs."definitions.file_pattern_list"
              | Array Dyn
              | optional,
            include | refs."definitions.file_pattern_list" | Array Dyn,
            name | String,
          },
      "definitions.architecture_group_list" =
        Array (
            std.contract.Sequence
              [ refs."definitions.architecture_group", { _ | Dyn } ]
          ),
      "definitions.architecture_pattern" = { description | String, .. },
      "definitions.architecture_patterns" =
        Array (
            std.contract.Sequence
              [ refs."definitions.architecture_pattern", { _ | Dyn } ]
          ),
      "definitions.branches" =
        js2n.string.Matches "^[0-9a-zA-Z]+(,[0-9a-zA-Z]+)*$",
      "definitions.component" =
        js2n.Nullable
            {
              exclude
                | refs."definitions.file_pattern_list"
                | Array Dyn
                | optional,
              include
                | refs."definitions.file_pattern_list"
                | Array Dyn
                | optional,
              override | Bool | optional,
            },
      "definitions.component_list" =
        Array
            {
              exclude
                | refs."definitions.file_pattern_list"
                | Array Dyn
                | optional,
              include
                | refs."definitions.file_pattern_list"
                | Array Dyn
                | optional,
              name | String | optional,
            },
      "definitions.dependency" =
        {
            bidirectional | Bool | optional,
            count | std.number.Integer | optional,
            source | String,
            target | String,
            type | String | optional,
          },
      "definitions.dependency_checker_source" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'sbom, 'all |] ],
      "definitions.dependency_list" =
        Array (
            std.contract.Sequence [ refs."definitions.dependency", { _ | Dyn } ]
          ),
      "definitions.file_pattern_list" = Array String,
      "definitions.interval" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'month, 'week |] ],
      "definitions.language" =
        std.contract.any_of
            [
              {
                generated
                  | refs."definitions.component"
                  | js2n.Nullable ({ _ | Dyn })
                  | optional,
                name | refs."definitions.language_name" | String | optional,
                production
                  | refs."definitions.component"
                  | js2n.Nullable ({ _ | Dyn })
                  | optional,
                supplementary
                  | refs."definitions.component"
                  | js2n.Nullable ({ _ | Dyn })
                  | optional,
                test
                  | refs."definitions.component"
                  | js2n.Nullable ({ _ | Dyn })
                  | optional,
              },
              std.contract.Sequence [ refs."definitions.language_name", String ]
            ],
      "definitions.language_list" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."definitions.language" ],
      "definitions.language_name" = js2n.string.MinLength 1,
      "definitions.model" =
        std.contract.any_of
            [
              js2n.string.Matches "20[0-9]{2}",
              std.contract.Sequence
                [
                  std.number.Integer,
                  js2n.number.Minimum 2000,
                  js2n.number.ExclusiveMaximum 2100
                ]
            ],
      "definitions.system_element" =
        { name | String, type | String | optional, .. },
      "definitions.system_element_list" =
        Array (
            std.contract.Sequence
              [ refs."definitions.system_element", { _ | Dyn } ]
          ),
      "definitions.yyyymmdd" =
        std.contract.any_of
            [
              js2n.string.Matches "20\\d{2}-?\\d{2}-?\\d{2}",
              std.contract.Sequence
                [
                  std.number.Integer,
                  js2n.number.Minimum 20000000,
                  js2n.number.ExclusiveMaximum 21000000
                ]
            ],
    }
    in
  {
      architecture
        | {
          add_dependencies
            | refs."definitions.dependency_list"
            | doc "List of manually added dependencies on top of the ones detected automatically by the analysis."
            | optional,
          add_system_elements
            | refs."definitions.system_element_list"
            | doc "List of system elements that are manually defined and added to the architecture graph."
            | optional,
          branch
            | refs."definitions.branches"
            | doc "Deprecated. This option is obsolete."
            | optional,
          co_evolution
            | Bool
            | doc "Set to false to disable co-evolution detection, improves performance for huge systems."
            | optional,
          custom_components
            | Bool
            | doc "Deprecated. This option is obsolete."
            | optional,
          custom_patterns
            | refs."definitions.architecture_patterns"
            | doc "Adds additional custom patterns to the architecture knowledge base used for the analysis."
            | optional,
          disabled_metrics
            | Array String
            | doc "List of metrics that should be removed from the analysis and set to N/A."
            | optional,
          duplication
            | Bool
            | doc "Set to false to disable duplication detection, improves performance for huge systems."
            | optional,
          enabled
            | Bool
            | doc "When true, architecture analysis will be triggered for each incoming upload."
            | optional,
          exclude
            | refs."definitions.file_pattern_list"
            | doc "List of exclude patterns that applies only to Architecture Quality, not globally."
            | optional,
          file_annotation_components
            | Bool
            | doc "Automatic componentization based on @sigrid:component annotations in source files."
            | optional,
          flatten_directories
            | refs."definitions.file_pattern_list"
            | doc "List of directory names that should be flattened and not considered as components during the analysis."
            | optional,
          grouping
            | refs."definitions.architecture_group_list"
            | doc "Annotate all top-level components matching the pattern, in order to divide them into logical groups."
            | optional,
          history
            | std.contract.any_of [ Bool, String ]
            | doc "Deprecated. This option is obsolete."
            | optional,
          history_enabled
            | Bool
            | doc "Deprecated. This option is obsolete."
            | optional,
          history_end
            | refs."definitions.yyyymmdd"
            | doc "Repository history end date in the format 'yyyy-mm-dd', default is current date."
            | optional,
          history_filter_outliers
            | Bool
            | doc "Filters commits with an abnormally large amount of churn from the history analysis."
            | optional,
          history_interval
            | refs."definitions.interval"
            | doc "Either 'week' (default) or ‘month’."
            | optional,
          history_period_months
            | std.number.Integer
            | doc "Period to use for repository history analysis, default is last 12 months."
            | optional,
          history_start
            | refs."definitions.yyyymmdd"
            | doc "Repository history start date in the format 'yyyy-mm-dd', default is last year."
            | optional,
          merge_data_stores
            | Bool
            | doc "Default is false. When true, skips automated data store detection and assumes one monolithic data store."
            | optional,
          model
            | refs."definitions.model"
            | doc "SIG Architecture Quality Model that should be used for the analysis, defaults to latest."
            | optional,
          remove_dependencies
            | refs."definitions.dependency_list"
            | doc "List of dependencies that manually overrides the analysis and removes them from the results."
            | optional,
          remove_system_elements
            | refs."definitions.system_element_list"
            | doc "List of system elements to manually remove from the architecture graph."
            | optional,
          rename
            | { _ | String }
            | doc "Map of system elements for which to manually override the name."
            | optional,
          undesirable_dependencies
            | refs."definitions.dependency_list"
            | doc "List of dependencies considered undesirable, and should therefore be highlighted in the visualization."
            | optional,
        }
        | optional,
      checkmarx | js2n.Never | optional,
      component_base_dirs | refs."definitions.file_pattern_list" | optional,
      component_depth
        | std.number.Integer
        | doc "Directory depth that will be used to define components."
        | optional,
      components | refs."definitions.component_list" | optional,
      default_excludes
        | Bool
        | doc "When true, excludes files and directories from the analysis scope based on common conventions."
        | optional,
      dependencychecker
        | {
          blacklist
            | Array String
            | doc "Deprecated, use 'blocklist' instead."
            | optional,
          blocklist
            | Array String
            | doc "List of patterns for library names that should not be sent to external services."
            | optional,
          enabled
            | Bool
            | doc "When this *or* the 'blocklist' option is provided, OSH analysis is performed for every upload."
            | optional,
          exclude
            | Array (
              std.contract.any_of
                [
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { path = String, },
                      required = { path = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { vulnerability = String, },
                      required = { vulnerability = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { license = String, },
                      required = { license = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { activity = String, },
                      required = { activity = true, },
                    }
                ]
            )
            | doc "List of paths and/or dependencies that should be ignored for Open Source Health."
            | optional,
          model
            | refs."definitions.model"
            | doc "SIG Open Source Health model version that should be used for the analysis, defaults to latest."
            | optional,
          override_disabled_technologies
            | Array String
            | doc "List of technologies for which the analysis should be disabled."
            | optional,
          override_enabled_technologies
            | Array String
            | doc "List of additional technologies to analyze, which are not enabled by default."
            | optional,
          source | refs."definitions.dependency_checker_source" | optional,
          transitive
            | Bool
            | doc "When true, transitive dependencies are also checked and included in the results."
            | optional,
        }
        | optional,
      exclude
        | refs."definitions.file_pattern_list"
        | doc "List of file and directory patterns to manually exclude from the analysis."
        | optional,
      experimental
        | Bool
        | doc "Enable experimental analysis features."
        | optional,
      languages
        | refs."definitions.language_list"
        | Array Dyn
        | doc "A list of technologies that should be included as part of the analysis.",
      model
        | refs."definitions.model"
        | doc "SIG Maintainability Model that should be used for the analysis, defaults to latest."
        | optional,
      thirdpartyfindings
        | {
          disabled_analyzers
            | refs."definitions.analyzer_list"
            | doc "List of third-party analyzers that should not be ran."
            | optional,
          disabled_rules
            | Array String
            | doc "List of rule IDs that should not be reported by Sigrid."
            | optional,
          enabled
            | Bool
            | doc "When true, third party findings analysis will be triggered for each incoming upload."
            | optional,
          enabled_analyzers
            | refs."definitions.analyzer_list"
            | doc "List of third-party analyzer names that should be ran even though they are disabled by default."
            | optional,
          enabled_rules
            | Array String
            | doc "List of rule IDs that should be reported by Sigrid, even though they are disabled by default."
            | optional,
          exclude
            | refs."definitions.file_pattern_list"
            | doc "List of file/directory patterns that should be excluded from the third party findings analysis."
            | optional,
          include
            | refs."definitions.file_pattern_list"
            | doc "List of file/directory patterns that should be included in the third party findings analysis beyond the maintainability scope and production configuration files."
            | optional,
        }
        | optional,
      ..
    }