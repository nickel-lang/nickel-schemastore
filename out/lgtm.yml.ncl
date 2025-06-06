# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.queryItem" =
        {
            id
              | String
              | doc "Use to identify a specific query whose results you want to include or exclude from display on LGTM."
              | optional,
            severity
              | String
              | doc "Use to specify a single level of severity (error, warning or recommendation) for queries whose results you want to include or exclude from display."
              | optional,
            tags
              | Array String
              | doc "Use to specify one or more tags for queries whose results you want to include or exclude from display."
              | optional,
            ..
          },
    }
    in
  {
      extraction
        | {
          _ | {
            after_prepare
              | Array String
              | doc "Customizable step used by all languages."
              | optional,
            before_index
              | Array String
              | doc "Customizable step used by all languages."
              | optional,
            configure
              | {
                command
                  | js2n.Nullable (Array String)
                  | doc "Override the default process by specifying a list of commands to run to generate the build configuration."
                  | optional,
                ..
              }
              | doc "Customizable step used only by C/C++ extraction."
              | optional,
            index
              | {
                all_solutions
                  | Bool
                  | doc "Specify that all project or solution files should be used for extraction."
                  | optional,
                build_command
                  | std.contract.any_of [ String, Array String ]
                  | optional,
                buildless
                  | Bool
                  | doc "Specify whether or not to extract the codebase without building the code."
                  | optional,
                dotnet
                  | {
                    arguments
                      | Array String
                      | doc "Specify a list of additional arguments to dotnet build."
                      | optional,
                    version
                      | String
                      | doc "Specify the version of the .NET Core SDK to use."
                      | optional,
                    ..
                  }
                  | optional,
                exclude
                  | Array String
                  | doc "Specify a list of files and folders to exclude from extraction. Each path is specified by defining paths relative to LGTM_SRC."
                  | optional,
                filetypes
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | String },
                      Array Dyn
                    ]
                  | doc "Specify additional file types to extract."
                  | optional,
                gradle
                  | {
                    version | std.contract.any_of [ Number, String ] | optional,
                    ..
                  }
                  | optional,
                include
                  | Array String
                  | doc "Specify a list of files and folders to scan for files to extract."
                  | optional,
                java_version
                  | std.contract.any_of [ Number, String ]
                  | doc "Specify the Java version required to build the project."
                  | optional,
                maven
                  | {
                    settings_file
                      | String
                      | doc "Specify the path (absolute or relative) of a Maven settings file to use."
                      | optional,
                    toolchains_file
                      | String
                      | doc "Specify the path of a Maven toolchains file to use."
                      | optional,
                    version
                      | std.contract.any_of [ Number, String ]
                      | doc "Specify the required Maven version."
                      | optional,
                    ..
                  }
                  | doc "Specify Maven settings to use by specifying one or more of the maven subproperties detailed below."
                  | optional,
                msbuild
                  | {
                    arguments
                      | Array String
                      | doc "Specify a list of additional arguments to MSBuild."
                      | optional,
                    configuration
                      | String
                      | doc "Specify the MSBuild configuration to use, for example, debug or release."
                      | optional,
                    platform
                      | String
                      | doc "Specify the platform to target, for example: x86, x64, or Any CPU."
                      | optional,
                    target
                      | String
                      | doc "Specify the MSBuild target."
                      | optional,
                    ..
                  }
                  | optional,
                nuget_restore
                  | Bool
                  | doc "Specify whether or not to perform a NuGet restore for extraction."
                  | optional,
                properties_files
                  | Bool
                  | doc "Specify whether .properties files are extracted."
                  | optional,
                solution
                  | Array String
                  | doc "Specify a list of one or more project or solution files for extraction."
                  | optional,
                typescript
                  | std.enum.TagOrString
                  | [| 'full, 'basic, 'none |]
                  | doc "Specify how TypeScript files should be extracted."
                  | optional,
                xml_mode
                  | std.enum.TagOrString
                  | [| 'disabled, '"default", 'all |]
                  | doc "Specify how XML files should be extracted."
                  | optional,
                ..
              }
              | doc "Customizable step used by all languages."
              | optional,
            prepare
              | {
                packages
                  | Array String
                  | doc "One or more packages to install."
                  | optional,
                ..
              }
              | doc "Customizable step used by all languages."
              | optional,
            python_setup
              | {
                exclude_requirements
                  | Array String
                  | doc "Specify packages to exclude from extraction/analysis."
                  | optional,
                requirements
                  | Array String
                  | doc "Specify a list of pip packages to install. If any of these packages cannot be installed, the extraction will fail."
                  | optional,
                requirements_files
                  | std.contract.any_of [ Bool, Array String ]
                  | doc "Specify a list of requirements text files to use to set up the environment, or false for none."
                  | optional,
                setup_py
                  | String
                  | doc "Specify a setup.py file to use to set up the environment, or false for none."
                  | optional,
                version
                  | std.contract.any_of [ Number, String ]
                  | doc "Override the version of the Python interpreter used for setup and extraction."
                  | optional,
                ..
              }
              | doc "This step is used only by Python blocks. It sets up the Python interpreter and virtual environment, ready for the index step to extract the codebase."
              | optional,
            ..
          }
        }
        | optional,
      path_classifiers
        | {
          _ | Array (
            std.contract.any_of
              [
                String,
                {
                  exclude
                    | String
                    | doc "Do not classify files on this path with the parent tag."
                    | optional,
                  ..
                }
              ]
          )
        }
        | doc "Defines the tag that you want to modify. Usually this is a built-in tag, but you can define your own tags."
        | optional,
      queries
        | js2n.Nullable
          (Array (
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  exclude
                    | refs."definitions.queryItem"
                    | doc "Hide the results for queries with the specified properties."
                    | optional,
                  include
                    | refs."definitions.queryItem"
                    | doc "Show the results for queries with the specified properties."
                    | optional,
                  ..
                },
                Array Dyn
              ]
          ))
        | optional,
      ..
    }