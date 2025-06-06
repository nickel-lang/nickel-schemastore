# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.command" =
        js2n.OneOf
            [
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { ps = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { pwsh = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { cmd = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { sh = String, },
                  required = {},
                }
            ],
      "definitions.commitFilter" =
        {
            author
              | String
              | doc "Commit author's username, name, email or regexp matching one of these."
              | optional,
            files
              | Array String
              | doc "Only specific files (glob patterns)"
              | optional,
            message
              | String
              | doc "Regex for matching commit message"
              | optional,
          },
      "definitions.configuration" = String,
      "definitions.envVarHash" =
        {
            _ | std.contract.Sequence
              [
                refs."definitions.possiblySecretString",
                std.contract.any_of [ { _ | Dyn }, Number, String ]
              ]
          },
      "definitions.image" =
        std.contract.any_of
            [
              Array (
                std.contract.Sequence [ refs."definitions.imageName", String ]
              ),
              std.contract.Sequence [ refs."definitions.imageName", String ]
            ],
      "definitions.imageName" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"WMF 5",
                'zhaw18,
                '"Previous Visual Studio 2022",
                '"Previous Visual Studio 2019",
                '"Previous Visual Studio 2017",
                '"Previous Visual Studio 2015",
                '"Previous Visual Studio 2013",
                '"Visual Studio 2019 Preview",
                '"Visual Studio 2017 Preview",
                '"Visual Studio 2022",
                '"Visual Studio 2019",
                '"Visual Studio 2017",
                '"Visual Studio 2015",
                '"Visual Studio 2013",
                '"Previous Ubuntu2004",
                '"Previous Ubuntu1804",
                '"Previous Ubuntu1604",
                '"Previous Ubuntu",
                'Ubuntu2204,
                'Ubuntu2004,
                'Ubuntu1804,
                'Ubuntu1604,
                'Ubuntu,
                '"Previous macOS-Mojave",
                '"Previous macOS",
                'macos-monterey,
                'macos-bigsur,
                'macOS-Mojave,
                'macOS
              |]
            ],
      "definitions.job" =
        {
            after_build
              | Array refs."definitions.command"
              | doc "Scripts to run after build"
              | optional,
            after_deploy
              | Array refs."definitions.command"
              | doc "Scripts to run after deployment"
              | optional,
            after_test
              | Array refs."definitions.command"
              | doc "Scripts to run after tests"
              | optional,
            artifacts
              | Array
                {
                  name | String | optional,
                  path | String,
                  type
                    | std.enum.TagOrString
                    | [|
                      'File,
                      'Zip,
                      'SsdtPackage,
                      'AzureCloudServiceConfig,
                      'AzureCloudService,
                      'NuGetPackage,
                      'WebDeployPackage,
                      'Auto
                    |]
                    | optional,
                }
              | optional,
            assembly_info
              | {
                assembly_file_version | String | optional,
                assembly_informational_version | String | optional,
                assembly_version | String | optional,
                file | String | optional,
                patch | Bool | optional,
              }
              | doc "Enable patching of AssemblyInfo.* files"
              | optional,
            before_build
              | Array refs."definitions.command"
              | doc "Scripts to run before build"
              | optional,
            before_deploy
              | Array refs."definitions.command"
              | doc "Scripts to run before deployment"
              | optional,
            before_package
              | Array refs."definitions.command"
              | doc "Scripts to run *after* solution is built and *before* automatic packaging occurs (web apps, NuGet packages, Azure Cloud Services)"
              | optional,
            before_test
              | Array refs."definitions.command"
              | doc "Scripts to run before tests"
              | optional,
            branches
              | {
                except | Array String | doc "Blacklist" | optional,
                only | Array String | doc "Whitelist" | optional,
              }
              | doc "Branches to build"
              | optional,
            build
              | std.contract.any_of
                [
                  js2n.Enum [ false ],
                  {
                    include_nuget_references
                      | Bool
                      | doc "Add -IncludeReferencedProjects option while packaging NuGet artifacts"
                      | optional,
                    parallel
                      | Bool
                      | doc "Enable MSBuild parallel builds"
                      | optional,
                    project
                      | String
                      | doc "Path to Visual Studio solution or project"
                      | optional,
                    publish_aspnet_core
                      | Bool
                      | doc "Package ASP.NET Core projects"
                      | optional,
                    publish_azure
                      | Bool
                      | doc "Package Azure Cloud Service projects and push to artifacts"
                      | optional,
                    publish_azure_webjob
                      | Bool
                      | doc "Package Azure WebJobs for Zip Push deployment"
                      | optional,
                    publish_core_console
                      | Bool
                      | doc "Package .NET Core console projects"
                      | optional,
                    publish_nuget
                      | Bool
                      | doc "Package projects with .nuspec files and push to artifacts"
                      | optional,
                    publish_nuget_symbols
                      | Bool
                      | doc "Generate and publish NuGet symbol packages"
                      | optional,
                    publish_wap
                      | Bool
                      | doc "Package Web Application Projects (WAP) for Web Deploy"
                      | optional,
                    publish_wap_beanstalk
                      | Bool
                      | doc "Package Web Applications for AWS Elastic Beanstalk deployment"
                      | optional,
                    publish_wap_octopus
                      | Bool
                      | doc "Package Web Applications for Octopus deployment"
                      | optional,
                    publish_wap_xcopy
                      | Bool
                      | doc "Package Web Application Projects (WAP) for XCopy deployment"
                      | optional,
                    verbosity
                      | std.enum.TagOrString
                      | [| 'detailed, 'normal, 'minimal, 'quiet |]
                      | doc "MSBuild verbosity level"
                      | optional,
                  }
                ]
              | optional,
            build_script
              | Array refs."definitions.command"
              | doc "To run your custom scripts instead of automatic MSBuild"
              | optional,
            cache
              | Array String
              | doc "Build cache to preserve files/folders between builds"
              | optional,
            clone_depth
              | std.number.Integer
              | doc "Set git clone depth"
              | optional,
            clone_folder | String | doc "Clone directory" | optional,
            configuration
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.configuration", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.configuration", String ]
                  )
                ]
              | doc "Build Configuration, i.e. Debug, Release, etc."
              | optional,
            deploy
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  Array ({ _ | Dyn })
                ]
              | optional,
            deploy_script
              | Array refs."definitions.command"
              | doc "To run your custom scripts instead of provider deployments"
              | optional,
            environment
              | std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            global =
                              std.contract.Sequence
                                  [
                                    refs."definitions.envVarHash",
                                    { _ | Dyn }
                                  ],
                            matrix =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.envVarHash",
                                      { _ | Dyn }
                                    ]),
                          },
                      required = {},
                    },
                  std.contract.Sequence
                    [ refs."definitions.envVarHash", { _ | Dyn } ]
                ]
              | doc "Environment variables"
              | optional,
            hosts
              | { _ | String }
              | doc "Setting up etc\\hosts file"
              | optional,
            image | refs."definitions.image" | optional,
            init
              | Array refs."definitions.command"
              | doc "Scripts that are called at very beginning, before repo cloning"
              | optional,
            install
              | Array refs."definitions.command"
              | doc "Scripts that run after cloning repository"
              | optional,
            matrix
              | {
                allow_failures
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.jobScalars", { _ | Dyn } ]
                  )
                  | doc "This is how to allow failing jobs in the matrix"
                  | optional,
                exclude
                  | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                  | doc "Exclude configuration from the matrix. Works similarly to 'allow_failures' but build not even being started for excluded combination."
                  | optional,
                fast_finish
                  | Bool
                  | doc "Set this flag to immediately finish build once one of the jobs fails"
                  | optional,
              }
              | optional,
            max_jobs
              | std.number.Integer
              | doc "Maximum number of concurrent jobs for the project"
              | optional,
            notifications | Array ({ _ | Dyn }) | optional,
            nuget
              | {
                account_feed | Bool | optional,
                disable_publish_on_pr
                  | Bool
                  | doc "Disable publishing of .nupkg artifacts to account/project feeds for pull request builds"
                  | optional,
                project_feed | Bool | optional,
                ..
              }
              | doc "Automatically register private account and/or project AppVeyor NuGet feeds"
              | optional,
            on_failure
              | Array refs."definitions.command"
              | doc "On build failure"
              | optional,
            on_finish
              | Array refs."definitions.command"
              | doc "After build failure or success"
              | optional,
            on_success
              | Array refs."definitions.command"
              | doc "On successful build"
              | optional,
            only_commits
              | refs."definitions.commitFilter"
              | { _ | Dyn }
              | doc "Including commits with particular message or from specific user"
              | optional,
            platform
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.platform", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.platform", String ]
                  )
                ]
              | doc "Build platform, i.e. x86, x64, Any CPU. This setting is optional"
              | optional,
            services
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'postgresql13,
                      'postgresql12,
                      'postgresql11,
                      'postgresql10,
                      'postgresql96,
                      'postgresql95,
                      'postgresql94,
                      'postgresql93,
                      'postgresql,
                      'mysql,
                      'mssql2017,
                      'mssql2016,
                      'mssql2014rs,
                      'mssql2014,
                      'mssql2012sp1rs,
                      'mssql2012sp1,
                      'mssql2008r2sp2rs,
                      'mssql2008r2sp2,
                      'mssql,
                      'msmq,
                      'mongodb,
                      'iis,
                      'docker
                    |]
                  ]
              )
              | doc "Enable service required for build/tests"
              | optional,
            shallow_clone
              | Bool
              | doc "Fetch repository as zip archive"
              | optional,
            skip_branch_with_pr
              | Bool
              | doc "Do not build feature branch with open Pull Requests"
              | optional,
            skip_commits
              | refs."definitions.commitFilter"
              | { _ | Dyn }
              | doc "Skipping commits with particular message or from specific user"
              | optional,
            skip_non_tags
              | Bool
              | doc "Start builds on tags only (GitHub and BitBucket)"
              | optional,
            skip_tags
              | Bool
              | doc "Do not build on tags (GitHub and BitBucket)"
              | optional,
            test
              | std.contract.any_of
                [
                  js2n.Enum [ false ],
                  {
                    assemblies
                      | {
                        except | Array String | optional,
                        only | Array String | optional,
                      }
                      | optional,
                    categories
                      | std.contract.any_of
                        [
                          {
                            except | Array String | optional,
                            only | Array String | optional,
                          },
                          Array (std.contract.any_of [ String, Array String ])
                        ]
                      | optional,
                  }
                ]
              | optional,
            test_script
              | Array refs."definitions.command"
              | doc "To run your custom scripts instead of automatic tests"
              | optional,
            version | String | doc "Version format" | optional,
            ..
          },
      "definitions.jobScalars" =
        std.contract.Sequence
            [
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "skip_tags" ],
                    Array Dyn
                  ]),
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "skip_commits" ],
                    Array Dyn
                  ]),
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "skip_branch_with_pr" ],
                    Array Dyn
                  ]),
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "skip_non_tags" ],
                    Array Dyn
                  ]),
              {
                configuration
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.configuration", String ],
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.configuration", String ]
                      )
                    ]
                  | doc "Build Configuration, i.e. Debug, Release, etc."
                  | optional,
                image | refs."definitions.image" | optional,
                platform
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.platform", String ],
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.platform", String ]
                      )
                    ]
                  | doc "Build platform, i.e. x86, x64, Any CPU. This setting is optional"
                  | optional,
                ..
              }
            ],
      "definitions.platform" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| '"Any CPU", 'Win32, 'ARM64, 'ARM, 'x64, 'x86 |]
            ],
      "definitions.possiblySecretString" =
        std.contract.any_of
            [
              String,
              Number,
              {
                secure
                  | String
                  | doc "This should have been encrypted by the same user account to which the project belongs"
                  | optional,
              }
            ],
    }
    in
  refs."definitions.job"