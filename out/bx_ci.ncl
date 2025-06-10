# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.binaryRepository" =
        {
            address | String | doc "Repository URL",
            credentials
              | refs."definitions.credentials"
              | String
              | doc "Jenkins credentials ID for connecting to this repository",
          },
      "definitions.branchPattern" = String,
      "definitions.cacheItem" =
        {
            enabled | Bool | doc "Sets whether this cache type is enabled",
            source
              | String
              | doc "Location of the cache in the Jenkins workspace"
              | optional,
            target
              | String
              | doc "Location of the cache directory inside the Docker container"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'local, 'npm, 'maven |]
              | doc "Cache type",
          },
      "definitions.checkmarx" =
        {
            branch_pattern
              | refs."definitions.branchPattern"
              | String
              | doc "Specifies in which branches this stage will be executed"
              | optional,
            credentialsId | String | doc "Jenkins credentials ID" | optional,
            enabled
              | Bool
              | doc "Sets whether the scan should be run"
              | optional,
            excludeFolders
              | String
              | doc "Comma separated list of folders to be excluded from the CxSAST scan"
              | optional,
            exclusionsSetting
              | std.enum.TagOrString
              | [| 'global, 'job |]
              | doc "Specifies which exclusions settings to use: global (Jenkins global settings) or job (current pipeline)"
              | optional,
            filterPattern
              | String
              | doc "Defines the include/exclude wildcard patterns. Does not have effect when \"exclusionsSetting\" is set to \"global\""
              | optional,
            groupId
              | String
              | doc "Fully qualified team name for the project"
              | optional,
            hideDebugLogs
              | Bool
              | doc "Sets whether debug logs are visible in the job output"
              | optional,
            highThreshold
              | std.number.Integer
              | doc "Sets the maximum number of High vulnerabilities allowed"
              | optional,
            isProxy | Bool | optional,
            lowThreshold
              | std.number.Integer
              | doc "Sets the maximum number of Low vulnerabilities allowed"
              | optional,
            mediumThreshold
              | std.number.Integer
              | doc "Sets the maximum number of Medium vulnerabilities allowed"
              | optional,
            preset | String | doc "Scan preset for the project" | optional,
            projectName
              | String
              | doc "Unique project name. Will be inferred from the repository name if not provided"
              | optional,
            serverUrl
              | String
              | doc "Checkmarx Server URL or IP address"
              | optional,
            sourceEncoding
              | String
              | doc "Language encoding ID associated to the source code character encoding (5: Multi-Language Scan)"
              | optional,
            useOwnServerCredentials
              | Bool
              | doc "Enables the use of the default server credentials or disables and provides server and credentials that override the defaults"
              | optional,
            vulnerabilityThresholdEnabled
              | Bool
              | doc "Sets whether the scan should fail if the number of vulnerabilities is above the configured thresholds. This option is only available if the waitForResultsEnabled parameter is enabled"
              | optional,
            waitForResultsEnabled
              | Bool
              | doc "Sets whether the scan should be executed synchronously (default). The Synchronous mode allows viewing scan results in Jenkins"
              | optional,
          },
      "definitions.context" = String,
      "definitions.credentials" = String,
      "definitions.dockerReleaseChannel" =
        {
            branch | refs."definitions.releaseChannelBranch" | String,
            channel | refs."definitions.releaseChannel" | String,
            credentials
              | refs."definitions.credentials"
              | String
              | doc "Jenkins credentials ID for publishing into the specified Docker registry",
            registry
              | String
              | doc "Docker registry. Must include protocol (http|https) and port",
          },
      "definitions.dockerfile" = String,
      "definitions.failFast" = Bool,
      "definitions.helmReleaseChannel" =
        {
            branch | refs."definitions.releaseChannelBranch" | String,
            channel | refs."definitions.releaseChannel" | String,
            credentials
              | refs."definitions.credentials"
              | String
              | doc "Jenkins credentials Id for this repository for uploading the chart",
            repository
              | String
              | doc "Helm chart repository. Must include protocol, host, port (if needed) and path",
          },
      "definitions.outputDocker" =
        {
            images
              | Array (
                std.contract.Sequence
                  [ refs."definitions.outputDockerImage", { _ | Dyn } ]
              ),
            multiArch
              | {
                architectures | Array String | optional,
                enabled
                  | Bool
                  | doc "Whether the multi-arch build should be enabled"
                  | optional,
                ..
              }
              | optional,
            publish
              | refs."definitions.outputDockerPublish"
              | Array Dyn
              | doc "Docker publishing information. If not present, no images will be published"
              | optional,
          },
      "definitions.outputDockerBuildArgs" =
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                additionalProperties = js2n.Never,
                                key = String,
                                value = String,
                              },
                          required = { key = true, value = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                additionalProperties = js2n.Never,
                                env =
                                  js2n.string.Matches
                                      "^[A-Za-z_][A-Za-z0-9_]*$",
                                key = String,
                              },
                          required = { env = true, key = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                env
                  | js2n.string.Matches "^[A-Za-z_][A-Za-z0-9_]*$"
                  | doc "Environment variable whose value will be used to set the ARG"
                  | optional,
                key | String | doc "ARG name" | optional,
                value | String | doc "Value of the ARG" | optional,
                ..
              }
            ],
      "definitions.outputDockerImage" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dockerfile =
                              std.contract.Sequence
                                  [ refs."definitions.dockerfile", String ],
                          },
                      required = { dockerfile = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            context =
                              std.contract.Sequence
                                  [ refs."definitions.context", String ],
                          },
                      required = { context = true, },
                    }
                ],
              {
                args
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.outputDockerBuildArgs", { _ | Dyn } ]
                  )
                  | doc "List of build args (--build-arg) to pass in docker build"
                  | optional,
                context
                  | refs."definitions.context"
                  | String
                  | doc "Path to the desired docker build context."
                  | optional,
                dockerfile
                  | refs."definitions.dockerfile"
                  | String
                  | doc "Path to Dockerfile used to generate the docker image"
                  | optional,
                name | String | doc "Docker image name",
                vulnerability_scan
                  | {
                    enabled
                      | Bool
                      | doc "Whether the vulnerability scan step should be run"
                      | optional,
                    ..
                  }
                  | doc "Configuration for running vulnerability scans on published Docker images"
                  | optional,
              }
            ],
      "definitions.outputDockerPublish" =
        Array (
            std.contract.Sequence
              [ refs."definitions.dockerReleaseChannel", { _ | Dyn } ]
          ),
      "definitions.outputHelm" =
        {
            charts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.outputHelmChart", { _ | Dyn } ]
              )
              | optional,
            publish
              | refs."definitions.outputHelmPublish"
              | Array Dyn
              | doc "Helm chart publishing configuration. If not present, no charts will be published",
          },
      "definitions.outputHelmChart" =
        {
            path | String | doc "Path to the Helm chart directory",
            updates
              | Array (
                std.contract.Sequence
                  [ refs."definitions.outputHelmUpdates", { _ | Dyn } ]
              )
              | doc "List of files to update"
              | optional,
          },
      "definitions.outputHelmPublish" =
        Array (
            std.contract.Sequence
              [ refs."definitions.helmReleaseChannel", { _ | Dyn } ]
          ),
      "definitions.outputHelmUpdates" =
        {
            file
              | String
              | doc "Name (including path from Helm object path) of the file to be updated. Only supports yaml files",
            properties
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.outputHelmUpdatesProperties",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of properties to update. It can be updated with a fixed value or environment variable",
          },
      "definitions.outputHelmUpdatesProperties" =
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
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                additionalProperties = js2n.Never,
                                env =
                                  js2n.string.Matches
                                      "^[A-Za-z_][A-Za-z0-9_]*$",
                                key = String,
                              },
                          required = { env = true, key = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties = { key = String, value = String, },
                          required = { key = true, value = true, },
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ],
      "definitions.outputPackage" =
        {
            publish
              | refs."definitions.outputPackagePublish"
              | Array Dyn
              | doc "Package publish configuration.",
          },
      "definitions.outputPackagePublish" =
        Array (
            std.contract.Sequence
              [ refs."definitions.packagePublishChannel", { _ | Dyn } ]
          ),
      "definitions.packagePublishChannel" =
        {
            branch | refs."definitions.releaseChannelBranch" | String,
            channel | refs."definitions.releaseChannel" | String,
            credentials
              | refs."definitions.credentials"
              | String
              | doc "Jenkins credentials ID for publishing into the specified Docker registry"
              | optional,
            maven_releases_repo
              | String
              | doc "Maven repository for deploying releases"
              | optional,
            maven_snapshots_repo
              | String
              | doc "Maven repository for deploying snapshots"
              | optional,
            params
              | String
              | doc "Optional params for npm publish or mvn deploy command."
              | optional,
            registry
              | String
              | doc "NPM registry (env variable or registry URL)"
              | optional,
          },
      "definitions.parallelStage" =
        {
            fail_fast | refs."definitions.failFast" | Bool | optional,
            parallel
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\w+( \\w+)*$" =
                          std.contract.Sequence
                              [ refs."definitions.singleStage", { _ | Dyn } ],
                      },
                  properties = {},
                  required = {},
                }
              | doc "List of stages to be executed in parallel",
            when | refs."definitions.when" | { _ | Dyn } | optional,
          },
      "definitions.releaseChannel" = String,
      "definitions.releaseChannelBranch" =
        std.contract.Sequence [ refs."definitions.branchPattern", String ],
      "definitions.singleStage" =
        {
            steps | refs."definitions.steps" | Array Dyn,
            when | refs."definitions.when" | { _ | Dyn } | optional,
          },
      "definitions.sonar" =
        {
            branch_analysis
              | Bool
              | doc "Indicates whether sonnar server supports branch analysis, to provide dedicated parameters."
              | optional,
            branch_pattern
              | String
              | doc "Indicates on which branches static analysis will be performed."
              | optional,
            breaks_build
              | Bool
              | doc "Waits for analysis result and breaks the build when the project fails for some quality gates"
              | optional,
            enabled | Bool | optional,
            exclusions
              | String
              | doc "Comma separated list of wildcard patterns defining files to be excluded from the SonarQube scan"
              | optional,
            image
              | String
              | doc "Prebuilt Docker image for running scan into it. If not specified, it will use the same image used for main build."
              | optional,
            timeout
              | refs."definitions.timeout"
              | Number
              | doc "Seconds to wait for the result of the quality gate. Only applies when breaks_build is set to true"
              | optional,
          },
      "definitions.stage" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.singleStage", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.parallelStage", { _ | Dyn } ]
                ],
              {
                fail_fast | refs."definitions.failFast" | Bool | optional,
                parallel
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^\\w+( \\w+)*$" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.singleStage",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                steps | refs."definitions.steps" | Array Dyn | optional,
                when | refs."definitions.when" | { _ | Dyn } | optional,
              }
            ],
      "definitions.steps" = Array Dyn,
      "definitions.timeout" = std.number.Integer,
      "definitions.when" =
        { branch | refs."definitions.branchPattern" | String | optional, .. },
    }
    in
  {
      archive
        | Array Dyn
        | doc "List of artifacts to archive (wildcards allowed). Check out https://www.jenkins.io/doc/pipeline/steps/core/#archiveartifacts-archive-the-artifacts"
        | optional,
      config
        | {
          branch
            | {
              branch_pattern | refs."definitions.branchPattern" | optional,
              disable_validation
                | Bool
                | doc "Disables branch name validation"
                | optional,
            }
            | doc "Describes on which branch names a build will be run"
            | optional,
          build
            | {
              checkmarx
                | refs."definitions.checkmarx"
                | doc "Adds a Static Analysis stage for CheckMarx. See https://www.jenkins.io/doc/pipeline/steps/checkmarx/ for all the configuration options."
                | optional,
              clean_workspace_after_run
                | Bool
                | doc "Whether Jenkins workspace should be cleaned after the build"
                | optional,
              commit_time_threshold
                | std.contract.any_of
                  [
                    std.contract.Sequence
                      [ std.number.Integer, std.contract.Equal 0 ],
                    js2n.string.Matches "^\\d+[mhd]$"
                  ]
                | doc "Commit age threshold. Disables automated builds older than this parameter. When 0, this feature is disabled"
                | optional,
              static_analysis
                | refs."definitions.sonar"
                | doc "Adds a Static Analysis stage for Sonar."
                | optional,
            }
            | optional,
          cache
            | {
              items
                | Array refs."definitions.cacheItem"
                | doc "List of cache types"
                | optional,
              repository | refs."definitions.binaryRepository" | optional,
            }
            | doc "Cache configuration for projects built inside Docker containers"
            | optional,
          jenkins_runtime
            | {
              docker
                | {
                  dockerfile
                    | refs."definitions.dockerfile"
                    | doc "Path to a local Dockerfile"
                    | optional,
                  image
                    | String
                    | doc "Prebuilt Docker image (has precedence over dockerfile)"
                    | optional,
                }
                | doc "Specifies how to build the Docker container (from an existing image or from a local Dockerfile)",
            }
            | optional,
        }
        | optional,
      environment
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[A-Za-z_][A-Za-z0-9_]*$",
              { _ | Dyn },
              Array Dyn
            ])
        | doc "Custom environment variables to be added to the pipeline"
        | optional,
      jenkinsEnvironment
        | js2n.array.UniqueItems
        | Array (js2n.string.Matches "^[A-Za-z_][A-Za-z0-9_]*$")
        | doc "Jenkins environment variables that are passed to the Docker container"
        | optional,
      output
        | {
          docker
            | refs."definitions.outputDocker"
            | doc "Configuration for generating a Docker image"
            | optional,
          helm
            | refs."definitions.outputHelm"
            | doc "Configuration for generating a Helm chart"
            | optional,
          package
            | refs."definitions.outputPackage"
            | doc "Configuration for publishing NPM or Maven packages"
            | optional,
        }
        | doc "Describes artifacts generated after all the stages have been run"
        | optional,
      project
        | {
          name
            | String
            | doc "Project's name (used by Jenkins, Docker and Sonar)"
            | optional,
          settings
            | String
            | doc "ID of a managed maven or npm Jenkins file"
            | optional,
          type
            | std.enum.TagOrString
            | [| 'mvn, 'maven, 'npm |]
            | doc "Project type"
            | optional,
        }
        | doc "Project properties",
      services
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Elasticsearch,
                'Mongodb,
                'Mysql,
                'Mssql,
                'Redis,
                'Postgis,
                'Postgres
              |]
            ]
        )
        | doc "Additional services required by the project or application."
        | optional,
      stages
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^\\w+( \\w+)*$" =
                    std.contract.Sequence
                        [ refs."definitions.stage", { _ | Dyn } ],
                },
            properties = {},
            required = {},
          }
        | doc "Defines the stages and steps required to build the project."
        | optional,
      timeout
        | refs."definitions.timeout"
        | doc "Build timeout in seconds"
        | optional,
      ..
    }