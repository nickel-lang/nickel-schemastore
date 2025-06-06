# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.licenseFindingCurationReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'REFERENCE,
                'NOT_DETECTED,
                'INCORRECT,
                'DOCUMENTATION_OF,
                'DATA_OF,
                'CODE
              |]
            ],
      "definitions.licenseFindingCurations" =
        {
            comment | String | optional,
            concluded_license | String,
            detected_license | String | optional,
            line_count | std.number.Integer | optional,
            path | String,
            reason | refs."definitions.licenseFindingCurationReason" | String,
            start_lines
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            ..
          },
      "definitions.pathExcludeReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'TEST_TOOL_OF,
                'TEST_OF,
                'PROVIDED_BY,
                'OTHER,
                'OPTIONAL_COMPONENT_OF,
                'EXAMPLE_OF,
                'DOCUMENTATION_OF,
                'DATA_FILE_OF,
                'BUILD_TOOL_OF
              |]
            ],
      "definitions.scopeExcludeReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'RUNTIME_DEPENDENCY_OF,
                'TEST_DEPENDENCY_OF,
                'PROVIDED_DEPENDENCY_OF,
                'DEV_DEPENDENCY_OF,
                'BUILD_DEPENDENCY_OF
              |]
            ],
      "definitions.snippetChoiceReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'OTHER, 'ORIGINAL_FINDING, 'NO_RELEVANT_FINDING |]
            ],
      "properties.analyzer.properties.enabled_package_managers.items" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Yarn2,
                'Yarn,
                'Unmanaged,
                'SwiftPM,
                'Stack,
                'SpdxDocumentFile,
                'SBT,
                'Pub,
                'Poetry,
                'PNPM,
                'Pipenv,
                'PIP,
                'NuGet,
                'NPM,
                'Maven,
                'GradleInspector,
                'Gradle,
                'GoMod,
                'Conan,
                'Composer,
                'CocoaPods,
                'Carthage,
                'Cargo,
                'Bundler,
                'Bower,
                'Bazel
              |]
            ],
      "properties.analyzer.properties.package_managers.definitions.PackageManagerConfigs" =
        {
            must_run_after
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.analyzer.properties.enabled_package_managers.items",
                    String
                  ]
              )
              | optional,
            options
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | std.contract.any_of [ Bool, Number, String ] },
                  Array Dyn
                ]
              | optional,
          },
      "properties.curations.properties.packages.definitions.hash" =
        { algorithm | String, value | String, .. },
      "properties.curations.properties.packages.definitions.vcsMatcher" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "type" ],
                  js2n.record.Required [ "url" ],
                  js2n.record.Required [ "revision" ],
                  js2n.record.Required [ "path" ]
                ],
              {
                path | String | optional,
                revision | String | optional,
                type | String | optional,
                url | String | optional,
                ..
              }
            ],
      "properties.package_configurations.items.definitions.licenseFindingCurationReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'REFERENCE,
                'NOT_DETECTED,
                'INCORRECT,
                'DOCUMENTATION_OF,
                'DATA_OF,
                'CODE
              |]
            ],
      "properties.package_configurations.items.definitions.licenseFindingCurations" =
        {
            comment | String | optional,
            concluded_license | String,
            detected_license | String | optional,
            line_count | std.number.Integer | optional,
            path | String,
            reason
              | refs."properties.package_configurations.items.definitions.licenseFindingCurationReason"
              | String,
            start_lines
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            ..
          },
      "properties.package_configurations.items.definitions.pathExcludeReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'TEST_TOOL_OF,
                'TEST_OF,
                'PROVIDED_BY,
                'OTHER,
                'OPTIONAL_COMPONENT_OF,
                'EXAMPLE_OF,
                'DOCUMENTATION_OF,
                'DATA_FILE_OF,
                'BUILD_TOOL_OF
              |]
            ],
      "properties.package_configurations.items.definitions.vcsMatcher" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "type" ],
                  js2n.record.Required [ "url" ],
                  js2n.record.Required [ "revision" ],
                  js2n.record.Required [ "path" ]
                ],
              {
                path | String | optional,
                revision | String | optional,
                type | String | optional,
                url | String | optional,
                ..
              }
            ],
      "properties.resolutions.definitions.issueResolutionReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'SCANNER_ISSUE, 'CANT_FIX_ISSUE, 'BUILD_TOOL_ISSUE |]
            ],
      "properties.resolutions.definitions.ruleViolationResolutionReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'PATENT_GRANT_EXCEPTION,
                'NOT_MODIFIED_EXCEPTION,
                'LICENSE_ACQUIRED_EXCEPTION,
                'EXAMPLE_OF_EXCEPTION,
                'DYNAMIC_LINKAGE_EXCEPTION,
                'CANT_FIX_EXCEPTION
              |]
            ],
      "properties.resolutions.definitions.vulnerabilityResolutionReason" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'WORKAROUND_FOR_VULNERABILITY,
                'WILL_NOT_FIX_VULNERABILITY,
                'NOT_A_VULNERABILITY,
                'MITIGATED_VULNERABILITY,
                'INVALID_MATCH_VULNERABILITY,
                'INEFFECTIVE_VULNERABILITY,
                'CANT_FIX_VULNERABILITY
              |]
            ],
    }
    in
  {
      analyzer
        | {
          allow_dynamic_versions | Bool | optional,
          disabled_package_managers
            | Array
              refs."properties.analyzer.properties.enabled_package_managers.items"
            | optional,
          enabled_package_managers
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'Yarn2,
                    'Yarn,
                    'Unmanaged,
                    'SwiftPM,
                    'Stack,
                    'SpdxDocumentFile,
                    'SBT,
                    'Pub,
                    'Poetry,
                    'PNPM,
                    'Pipenv,
                    'PIP,
                    'NuGet,
                    'NPM,
                    'Maven,
                    'GradleInspector,
                    'Gradle,
                    'GoMod,
                    'Conan,
                    'Composer,
                    'CocoaPods,
                    'Carthage,
                    'Cargo,
                    'Bundler,
                    'Bower,
                    'Bazel
                  |]
                ]
            )
            | optional,
          package_managers
            | js2n.record.PropertyNames
              refs."properties.analyzer.properties.enabled_package_managers.items"
            | {
              _ | refs."properties.analyzer.properties.package_managers.definitions.PackageManagerConfigs"
            }
            | doc "Configurations for package managers for the OSS-Review-Toolkit (ORT). A full list of all available options can be found at https://github.com/oss-review-toolkit/ort/blob/main/model/src/main/kotlin/config/PackageManagerConfiguration.kt."
            | optional,
          skip_excluded | Bool | optional,
        }
        | doc "Configurations for the analyzer of the The OSS-Review-Toolkit (ORT). A full list of all available options can be found at https://github.com/oss-review-toolkit/ort/blob/main/model/src/main/kotlin/config/AnalyzerConfiguration.kt."
        | optional,
      curations
        | std.contract.any_of
          [
            js2n.record.Required [ "license_findings" ],
            js2n.record.Required [ "packages" ]
          ]
        | {
          license_findings
            | Array refs."definitions.licenseFindingCurations"
            | optional,
          packages
            | Array
              {
                curations
                  | {
                    authors
                      | js2n.array.Items [ String ] js2n.Always
                      | optional,
                    binary_artifact
                      | {
                        hash
                          | refs."properties.curations.properties.packages.definitions.hash",
                        url | String,
                        ..
                      }
                      | optional,
                    comment | String | optional,
                    concluded_license | String | optional,
                    cpe | String | optional,
                    declared_license_mapping | { _ | Dyn } | optional,
                    description | String | optional,
                    homepage_url | String | optional,
                    is_metadata_only | Bool | optional,
                    is_modified | Bool | optional,
                    purl | String | optional,
                    source_artifact
                      | {
                        hash
                          | refs."properties.curations.properties.packages.definitions.hash",
                        url | String,
                        ..
                      }
                      | optional,
                    vcs
                      | refs."properties.curations.properties.packages.definitions.vcsMatcher"
                      | { _ | Dyn }
                      | optional,
                    ..
                  },
                id | String,
                ..
              }
            | doc "The OSS-Review-Toolkit (ORT) provides a possibility to correct metadata and set the concluded license for a specific packages (dependencies) in curation files. A full list of all available options can be found at https://oss-review-toolkit.org/ort/docs/configuration/package-curations."
            | optional,
          ..
        }
        | doc "Curations for artifacts in a repository."
        | optional,
      excludes
        | {
          paths
            | Array
              {
                comment | String | optional,
                pattern
                  | String
                  | doc "A glob to match the path of the project definition file, relative to the root of the repository.",
                reason | refs."definitions.pathExcludeReason",
                ..
              }
            | optional,
          scopes
            | Array
              {
                comment | String | optional,
                pattern | String,
                reason | refs."definitions.scopeExcludeReason",
                ..
              }
            | optional,
          ..
        }
        | doc "Defines which parts of a repository should be excluded."
        | optional,
      license_choices
        | {
          package_license_choices
            | Array
              {
                license_choices
                  | Array { choice | String, given | String | optional, .. },
                package_id | String,
                ..
              }
            | optional,
          repository_license_choices
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            )
            | optional,
          ..
        }
        | doc "A configuration to select a license from a multi-licensed package."
        | optional,
      package_configurations
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "vcs" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "source_artifact_url" ],
                      Array Dyn
                    ]
                ],
              {
                id | String,
                license_finding_curations
                  | Array
                    refs."properties.package_configurations.items.definitions.licenseFindingCurations"
                  | optional,
                path_excludes
                  | Array
                    {
                      comment | String | optional,
                      pattern | String,
                      reason
                        | refs."properties.package_configurations.items.definitions.pathExcludeReason",
                      ..
                    }
                  | optional,
                source_artifact_url | String | optional,
                vcs
                  | refs."properties.package_configurations.items.definitions.vcsMatcher"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ]
        )
        | doc "A configuration for a specific package and provenance."
        | optional,
      resolutions
        | std.contract.any_of
          [
            js2n.record.Required [ "issues" ],
            js2n.record.Required [ "rule_violations" ],
            js2n.record.Required [ "vulnerabilities" ]
          ]
        | {
          issues
            | Array
              {
                comment | String | optional,
                message | String,
                reason
                  | refs."properties.resolutions.definitions.issueResolutionReason",
                ..
              }
            | optional,
          rule_violations
            | Array
              {
                comment | String | optional,
                message | String,
                reason
                  | refs."properties.resolutions.definitions.ruleViolationResolutionReason",
                ..
              }
            | optional,
          vulnerabilities
            | Array
              {
                comment | String | optional,
                id | String,
                reason
                  | refs."properties.resolutions.definitions.vulnerabilityResolutionReason",
                ..
              }
            | optional,
          ..
        }
        | doc "The OSS-Review-Toolkit (ORT) provides a possibility to resolve issues, rule violations and security vulnerabilities in a resolutions file. A full list of all available options can be found at https://oss-review-toolkit.org/ort/docs/configuration/resolutions."
        | optional,
      snippet_choices
        | Array
          {
            choices
              | Array
                {
                  choice
                    | {
                      comment | String | optional,
                      purl | String | optional,
                      reason | refs."definitions.snippetChoiceReason",
                      ..
                    },
                  given
                    | {
                      source_location
                        | {
                          end_line | std.number.Integer,
                          path | String,
                          start_line | std.number.Integer,
                          ..
                        }
                        | optional,
                      ..
                    },
                  ..
                },
            provenance | { url | String, .. },
            ..
          }
        | doc "A configuration to select a snippet from a package with multiple snippet findings."
        | optional,
      ..
    }