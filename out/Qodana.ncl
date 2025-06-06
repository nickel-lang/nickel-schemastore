# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.coverageThresholds" =
        {
            fresh
              | std.number.Integer
              | doc "The run fails if the percentage of fresh lines covered is lower than this number"
              | optional,
            total
              | std.number.Integer
              | doc "The run fails if the percentage of total lines covered is lower than this number."
              | optional,
            ..
          },
      "definitions.customDependency" =
        {
            licenses
              | js2n.array.MinItems 0
              | Array (
                std.contract.Sequence
                  [ refs."definitions.license", { _ | Dyn } ]
              )
              | doc "The dependency licenses",
            name | String | doc "The dependency name",
            url | String | doc "The dependency homepage" | optional,
            version | String | doc "The dependency version",
          },
      "definitions.dependencyIgnore" =
        {
            name | String | doc "The name of a dependency to ignore" | optional,
          },
      "definitions.dependencyOverride" =
        {
            licenses
              | js2n.array.MinItems 0
              | Array (
                std.contract.Sequence
                  [ refs."definitions.license", { _ | Dyn } ]
              )
              | doc "The dependency licenses",
            name | String | doc "The dependency name",
            url | String | doc "The dependency homepage" | optional,
            version | String | doc "The dependency version",
          },
      "definitions.dot-net" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { solution = js2n.string.MinLength 1, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { project = js2n.string.MinLength 1, },
                  required = {},
                }
            ],
      "definitions.dotnet" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { solution = js2n.string.MinLength 1, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { project = js2n.string.MinLength 1, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { configuration = js2n.string.MinLength 1, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { platform = js2n.string.MinLength 1, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { frameworks = js2n.string.MinLength 1, },
                  required = {},
                }
            ],
      "definitions.exclude" =
        {
            name | String | doc "The ID of the inspection to exclude, or 'All'",
            paths
              | js2n.array.MinItems 0
              | Array String
              | doc "The path in which to disable the inspection, relative to the project root. Omitting the paths disables the inspection everywhere"
              | optional,
          },
      "definitions.failureConditions" =
        {
            severityThresholds
              | refs."definitions.severityThresholds"
              | { _ | Dyn }
              | optional,
            testCoverageThresholds
              | refs."definitions.coverageThresholds"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.include" =
        {
            name | String | doc "The ID of the inspection to be added",
            paths
              | js2n.array.MinItems 0
              | Array String
              | doc "The path in which to enable the inspection, relative to the project root. Omitting the paths enables the inspection everywhere"
              | optional,
          },
      "definitions.license" =
        {
            key | String | doc "The SPDX ID of the license" | optional,
            url | String | doc "The license homepage" | optional,
          },
      "definitions.licenseOverride" =
        {
            key | String | doc "SPDX id of this license" | optional,
            url | String | doc "Homepage of this license" | optional,
            ..
          },
      "definitions.licenseRule" =
        {
            allowed
              | js2n.array.MinItems 0
              | Array String
              | doc "The list of allowed dependency licenses for the project"
              | optional,
            keys
              | js2n.array.MinItems 0
              | Array String
              | doc "The list of project license SPDX IDs"
              | optional,
            prohibited
              | js2n.array.MinItems 0
              | Array String
              | doc "The list of prohibited dependency licenses for the project"
              | optional,
          },
      "definitions.php" =
        {
            version
              | js2n.string.MinLength 1
              | doc "The PHP version to use for the code analysis"
              | optional,
          },
      "definitions.plugin" =
        {
            id
              | js2n.string.MinLength 1
              | doc "The plugin ID to install (can be copied from the plugin page on the JetBrains Marketplace)"
              | optional,
            ..
          },
      "definitions.profile" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { name = String, },
                  required = { name = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { path = String, },
                  required = { path = true, },
                }
            ],
      "definitions.script" =
        {
            name
              | std.enum.TagOrString
              | [|
                'migrate-classes,
                'teamcity-changes,
                'local-changes,
                'php-migration,
                '"default"
              |]
              | doc "The name of the script"
              | optional,
            parameters
              | {  .. }
              | doc "The parameters to pass to the script"
              | optional,
          },
      "definitions.severityThresholds" =
        {
            any
              | std.number.Integer
              | doc "The run fails if the total amount of results exceeds this number."
              | optional,
            critical
              | std.number.Integer
              | doc "The run fails if the amount results with severity CRITICAL exceeds this number."
              | optional,
            high
              | std.number.Integer
              | doc "The run fails if the amount results with severity HIGH exceeds this number."
              | optional,
            info
              | std.number.Integer
              | doc "The run fails if the amount results with severity INFO exceeds this number."
              | optional,
            low
              | std.number.Integer
              | doc "The run fails if the amount results with severity LOW exceeds this number."
              | optional,
            moderate
              | std.number.Integer
              | doc "The run fails if the amount results with severity MODERATE exceeds this number."
              | optional,
            ..
          },
    }
    in
  {
      analyzeDevDependencies
        | Bool
        | doc "Whether to include dev dependencies in the analysis"
        | optional,
      bootstrap
        | String
        | doc "The command to run inside Docker before the analysis starts"
        | optional,
      customDependencies
        | js2n.array.MinItems 0
        | Array refs."definitions.customDependency"
        | doc ""
        | optional,
      dependencyIgnores
        | js2n.array.MinItems 0
        | Array refs."definitions.dependencyIgnore"
        | doc ""
        | optional,
      dependencyOverrides
        | js2n.array.MinItems 0
        | Array refs."definitions.dependencyOverride"
        | doc ""
        | optional,
      dependencySbomExclude
        | Array refs."definitions.dependencyIgnore"
        | doc "Which dependencies to exclude from the generated SBOM report"
        | optional,
      disableSanityInspections
        | Bool
        | doc "Disable sanity checks for the project"
        | optional,
      dot-net
        | refs."definitions.dot-net"
        | doc "The configuration for .NET solutions and projects"
        | optional,
      dotnet
        | refs."definitions.dotnet"
        | doc "The configuration for .NET solutions and projects"
        | optional,
      enablePackageSearch
        | Bool
        | doc "Using package-search service for fetching license data for dependencies (only for jvm libraries)"
        | optional,
      exclude
        | js2n.array.MinItems 0
        | Array refs."definitions.exclude"
        | doc "The inspections and paths that are excluded from analysis"
        | optional,
      failOnErrorNotification
        | Bool
        | doc "Whether to fail the run when any internal error was encountered. In that case, the program returns exit code 70"
        | optional,
      failThreshold
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "Deprecated: Use failureConditions#anySeverity"
        | optional,
      failureConditions
        | refs."definitions.failureConditions"
        | doc "Configures individual failure conditions. Absent properties will not be checked"
        | optional,
      fixesStrategy
        | std.enum.TagOrString
        | [| 'apply, 'cleanup, 'none |]
        | doc "The strategy to apply fixes"
        | optional,
      ide
        | String
        | doc "The local path to an IDE or a product code to use for Qodana analysis. Incompatible with 'linter'"
        | optional,
      include
        | js2n.array.MinItems 0
        | Array refs."definitions.include"
        | doc "The inspections and paths that are added to those from the profile"
        | optional,
      includeAbsent
        | Bool
        | doc "Whether to include absent issues in the baseline calculation"
        | optional,
      licenseRules
        | js2n.array.MinItems 0
        | Array refs."definitions.licenseRule"
        | doc "A list of license rules to apply for license checks"
        | optional,
      linter
        | String
        | doc "The linter (Docker image) to run for Qodana CLI / any CI extensions"
        | optional,
      maxRuntimeNotifications
        | std.number.Integer
        | doc "Maximum amount of internal errors to collect in the report"
        | optional,
      modulesToAnalyze
        | js2n.array.MinItems 0
        | Array { name | String | optional, .. }
        | doc "Which submodules to include. Omitting this key will include all submodules"
        | optional,
      php
        | refs."definitions.php"
        | doc "The configuration for PHP projects"
        | optional,
      plugins
        | js2n.array.MinItems 0
        | Array refs."definitions.plugin"
        | doc "A list of plugins to install for Qodana analysis"
        | optional,
      profile
        | refs."definitions.profile"
        | doc "The profile configuration for Qodana analysis"
        | optional,
      projectJDK | String | doc "The JDK to use for the project" | optional,
      projectLicenses
        | js2n.array.MinItems 0
        | Array refs."definitions.licenseOverride"
        | doc "Overrides the licenses attached to the project"
        | optional,
      properties
        | { _ | String }
        | doc "Set JVM properties to be used while running Qodana"
        | optional,
      raiseLicenseProblems
        | Bool
        | doc "Show license problems like other inspections"
        | optional,
      runPromoInspections
        | Bool
        | doc "Whether to run a curated set of promo inspections"
        | optional,
      script
        | refs."definitions.script"
        | doc "The run scenario. 'default' by default"
        | optional,
      version
        | std.enum.TagOrString
        | [| '"1.0" |]
        | doc "The version of the file format",
      ..
    }