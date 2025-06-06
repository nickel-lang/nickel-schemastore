# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Advisor" =
        {
            config | refs."definitions.AdvisorConfig" | { _ | Dyn } | optional,
            skipExcluded | Bool | optional,
          },
      "definitions.AdvisorConfig" = { _ | { _ | Dyn } },
      "definitions.Analyzer" =
        {
            allowDynamicVersions | Bool | optional,
            disabledPackageManagers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.Analyzer.properties.enabledPackageManagers.items",
                    String
                  ]
              )
              | optional,
            enabledPackageManagers
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
            packageManagers
              | js2n.record.PropertyNames
                (std.contract.Sequence
                  [
                    refs."definitions.Analyzer.properties.enabledPackageManagers.items",
                    String
                  ])
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.Analyzer.properties.packageManagers.definitions.PackageManagerConfigs",
                    { _ | Dyn }
                  ]
              }
              | doc "Configurations for package managers for the OSS-Review-Toolkit (ORT). A full list of all available options can be found at https://github.com/oss-review-toolkit/ort/blob/main/model/src/main/kotlin/config/PackageManagerConfiguration.kt."
              | optional,
            skipExcluded | Bool | optional,
            sw360Configuration
              | refs."definitions.Analyzer.definitions.Sw360Configuration"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Analyzer.definitions.Sw360Configuration" =
        {
            authUrl | String,
            clientId | String,
            clientPassword | String | optional,
            password | String | optional,
            restUrl | String,
            token | String | optional,
            username | String,
          },
      "definitions.Analyzer.properties.enabledPackageManagers.items" =
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
      "definitions.Analyzer.properties.packageManagers.definitions.PackageManagerConfigs" =
        {
            mustRunAfter
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.Analyzer.properties.enabledPackageManagers.items",
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
      "definitions.Archive" =
        {
            enabled | Bool | optional,
            fileStorage
              | refs."definitions.FileStorage"
              | { _ | Dyn }
              | optional,
            postgresStorage
              | refs."definitions.PostgresConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Connection" =
        {
            connectionTimeout | std.number.Integer | optional,
            idleTimeout | std.number.Integer | optional,
            keepaliveTime | std.number.Integer | optional,
            maxLifetime | std.number.Integer | optional,
            maximumPoolSize | std.number.Integer | optional,
            minimumIdle | std.number.Integer | optional,
            password | String | optional,
            schema | String | optional,
            sslcert | String | optional,
            sslkey | String | optional,
            sslmode | String | optional,
            sslrootcert | String | optional,
            url | String,
            username | String,
          },
      "definitions.DetectedLicenseMapping" = { _ | String },
      "definitions.Downloader" =
        {
            allowMovingRevisions | Bool | optional,
            includedLicenseCategories | Array String | optional,
            skipExcluded | Bool | optional,
            sourceCodeOrigins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SourceCodeOrigins", String ]
              )
              | optional,
          },
      "definitions.FileListStorage" =
        {
            fileStorage
              | refs."definitions.FileStorage"
              | { _ | Dyn }
              | optional,
            postgresStorage
              | refs."definitions.PostgresConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.FileStorage" =
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
                      js2n.record.Required [ "localFileStorage" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "httpFileStorage" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "s3FileStorage" ],
                      Array Dyn
                    ]
                ],
              {
                httpFileStorage
                  | refs."definitions.HttpFileStorage"
                  | { _ | Dyn }
                  | optional,
                localFileStorage
                  | refs."definitions.LocalFileStorage"
                  | { _ | Dyn }
                  | optional,
                s3FileStorage
                  | refs."definitions.S3FileStorage"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.Headers" =
        { _ | std.contract.any_of [ Bool, Number, String ] },
      "definitions.HttpFileStorage" =
        {
            headers | refs."definitions.Headers" | { _ | Dyn } | optional,
            query | String | optional,
            url | String,
          },
      "definitions.Jira" =
        {
            host | String | optional,
            password | String | optional,
            username | String | optional,
          },
      "definitions.LicenseFilePatterns" =
        {
            licenseFilenames | Array String | optional,
            otherLicenseFilenames | Array String | optional,
            patentFilenames | Array String | optional,
          },
      "definitions.LocalFileStorage" =
        { compression | Bool | optional, directory | String, },
      "definitions.Mail" =
        {
            fromAddress | String | optional,
            hostName | String | optional,
            password | String | optional,
            port | std.number.Integer | optional,
            useSsl | Bool | optional,
            username | String | optional,
          },
      "definitions.Notifier" =
        {
            jira | refs."definitions.Jira" | { _ | Dyn } | optional,
            mail | refs."definitions.Mail" | { _ | Dyn } | optional,
          },
      "definitions.PostgresConfig" =
        { connection | refs."definitions.Connection" | { _ | Dyn }, },
      "definitions.ProvenanceStorage" =
        {
            fileStorage
              | refs."definitions.FileStorage"
              | { _ | Dyn }
              | optional,
            postgresStorage
              | refs."definitions.PostgresConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Reporter" =
        { config | refs."definitions.ReporterOptions" | { _ | Dyn }, },
      "definitions.ReporterOptions" = { _ | { _ | Dyn } },
      "definitions.S3FileStorage" =
        {
            accessKeyId | String | optional,
            awsRegion | String | optional,
            bucketName | String,
            compression | Bool | optional,
            customEndpoint | String | optional,
            secretAccessKey | String | optional,
          },
      "definitions.Scanner" =
        {
            archive | refs."definitions.Archive" | { _ | Dyn } | optional,
            config | refs."definitions.ScannerConfig" | { _ | Dyn } | optional,
            detectedLicenseMapping
              | refs."definitions.DetectedLicenseMapping"
              | { _ | Dyn }
              | optional,
            fileListStorage
              | refs."definitions.FileListStorage"
              | { _ | Dyn }
              | optional,
            ignorePatterns | Array String | optional,
            provenanceStorage
              | refs."definitions.ProvenanceStorage"
              | { _ | Dyn }
              | optional,
            skipConcluded | Bool | optional,
            skipExcluded | Bool | optional,
            storageReaders
              | Array (
                std.contract.Sequence
                  [ refs."definitions.StorageTypes", String ]
              )
              | optional,
            storageWriters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.StorageTypes", String ]
              )
              | optional,
            storages | refs."definitions.Storages" | { _ | Dyn } | optional,
          },
      "definitions.ScannerConfig" = { _ | { _ | Dyn } },
      "definitions.Severity" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ERROR, 'WARNING, 'HINT |] ],
      "definitions.SourceCodeOrigins" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'VCS, 'ARTIFACT |] ],
      "definitions.StorageTypes" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'postgres, 'local, 'http, 'clearlyDefined, 'aws |]
            ],
      "definitions.Storages" = { _ | { _ | Dyn } },
    }
    in
  {
      ort
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              advisor | refs."definitions.Advisor" | optional,
              analyzer | refs."definitions.Analyzer" | optional,
              downloader | refs."definitions.Downloader" | optional,
              enableRepositoryPackageConfigurations | Bool | optional,
              enableRepositoryPackageCurations | Bool | optional,
              licenseFilePatterns
                | refs."definitions.LicenseFilePatterns"
                | optional,
              notifier | refs."definitions.Notifier" | optional,
              reporter | refs."definitions.Reporter" | optional,
              scanner | refs."definitions.Scanner" | optional,
              severeIssueThreshold | refs."definitions.Severity" | optional,
              severeRuleViolationThreshold
                | refs."definitions.Severity"
                | optional,
              ..
            },
            Array Dyn
          ],
      ..
    }