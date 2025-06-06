# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.env" = { _ | refs."definitions.env_value" },
      "definitions.env_files" =
        std.contract.Sequence
            [ js2n.array.UniqueItems, Array refs."definitions.envfile" ],
      "definitions.env_value" =
        std.contract.any_of
            [
              Bool,
              std.number.Integer,
              String,
              js2n.array.ArrayOf String,
              std.contract.Sequence
                [ refs."definitions.env_value_unset", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.env_value_script", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.env_value_decode", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.env_value_conditioned", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.env_value_path_glob", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.env", { _ | Dyn } ]
            ],
      "definitions.env_value_conditioned" =
        {
            condition
              | refs."definitions.task_condition"
              | { _ | Dyn }
              | doc "Condition to evaluate to see whether to set the environment value or not"
              | optional,
            value | String | doc "The value to set (can be an env expression)",
          },
      "definitions.env_value_decode" =
        {
            default_value
              | String
              | doc "The default value in case no decode mapping was found, if not provided it will default to the source value"
              | optional,
            mapping
              | { _ | String }
              | doc "The decoding mapping from one value to another value",
            source
              | String
              | doc "The source environment variable (can be an env expression)",
          },
      "definitions.env_value_path_glob" =
        {
            glob | String | doc "The glob used to fetch all paths",
            ignore_type
              | std.enum.TagOrString
              | [| 'git |]
              | doc "An ignore source that enables respecting ignore files from that source"
              | optional,
            include_dirs
              | Bool
              | doc "If true, include directories in glob"
              | optional,
            include_files
              | Bool
              | doc "If true, include files in glob"
              | optional,
          },
      "definitions.env_value_script" =
        {
            multi_line | Bool | doc "Enable multi-line values" | optional,
            script | Array String,
          },
      "definitions.env_value_unset" =
        {
            unset
              | Bool
              | doc "If true, the env variable will be unset, else ignored",
          },
      "definitions.envfile" =
        std.contract.any_of
            [
              String,
              {
                base_path
                  | String
                  | doc "The path base directory (relative paths are from this base path)"
                  | optional,
                path | String | doc "The path to the env file",
                profile
                  | String
                  | doc "The profile name this file is relevant to"
                  | optional,
              }
            ],
      "definitions.extend" =
        {
            "optional"
              | Bool
              | doc "If true, the external makefile is optional and does not need to exist"
              | optional,
            path
              | String
              | doc "The path of the external makefile, relative to this file",
            relative
              | js2n.OneOf
                [
                  js2n.Const "git",
                  js2n.Const "crate",
                  js2n.Const "workspace",
                  js2n.Null
                ]
              | doc "Where the path is relative to"
              | optional,
          },
      "definitions.script" =
        js2n.OneOf
            [
              String,
              js2n.array.ArrayOf String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { absolute_path = Bool, file = String, },
                  required = { file = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { main = String, post = String, pre = String, },
                  required = {},
                }
            ],
      "definitions.semver" =
        js2n.string.Matches
            "^(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)\\.(0|[1-9][0-9]*)(?:-((?:0|[1-9][0-9]*|[0-9]*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9][0-9]*|[0-9]*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$",
      "definitions.task" =
        {
            alias
              | String
              | doc "If defined, task points to another task and all other properties are ignored"
              | optional,
            args
              | Array String
              | doc "The args for the executed command"
              | optional,
            category
              | String
              | doc "Category name used to document the task"
              | optional,
            clear
              | Bool
              | doc "If true, it should ignore all data in the base task"
              | optional,
            command
              | String
              | doc "The command to execute for this task"
              | optional,
            condition
              | refs."definitions.task_condition"
              | { _ | Dyn }
              | doc "If provided all condition values must be met in order for the task to be invoked (will not stop dependencies)"
              | optional,
            condition_script
              | Array String
              | doc "If script exit code is not 0, the command/script of this task will not be invoked, dependencies however will be"
              | optional,
            cwd
              | String
              | doc "The working directory for the task to execute its command/script"
              | optional,
            dependencies
              | Array (
                std.contract.any_of
                  [
                    String,
                    {
                      name | String | doc "The task name to execute",
                      path
                        | String
                        | doc "The path to the makefile the task resides in"
                        | optional,
                    }
                  ]
              )
              | doc "A list of tasks to execute before this task"
              | optional,
            deprecated
              | std.contract.any_of [ Bool, String ]
              | doc "If set, this task is documented as deprecated. This can be a boolean or a string deprecation message."
              | optional,
            description
              | String
              | doc "A description used to document the task"
              | optional,
            disabled
              | Bool
              | doc "If true, the command/script of this task will not be invoked, but dependencies will be"
              | optional,
            env
              | refs."definitions.env"
              | { _ | Dyn }
              | doc "The env vars to setup before running the task commands"
              | optional,
            env_files
              | refs."definitions.env_files"
              | Array Dyn
              | doc "The env files to setup before running the task commands"
              | optional,
            extend
              | String
              | doc "Extends the specified task as a base task"
              | optional,
            "force"
              | Bool
              | doc "DEPRECATED, replaced with `ignore_errors`"
              | optional,
            ignore_errors
              | Bool
              | doc "If true, any error while executing the task will be printed but will not break the build"
              | optional,
            install_crate
              | js2n.OneOf
                [
                  Bool,
                  String,
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            binary = String,
                            crate_name = String,
                            "force" = Bool,
                            install_command = String,
                            min_version =
                              std.contract.Sequence
                                  [ refs."definitions.semver", String ],
                            rustup_component_name = String,
                            test_arg =
                              std.contract.any_of
                                  [ String, js2n.array.ArrayOf String ],
                            version =
                              std.contract.Sequence
                                  [ refs."definitions.semver", String ],
                          },
                      required =
                        { binary = true, crate_name = true, test_arg = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            binary = String,
                            rustup_component_name = String,
                            test_arg =
                              std.contract.any_of
                                  [ String, js2n.array.ArrayOf String ],
                          },
                      required = { rustup_component_name = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            crate_name = String,
                            min_version =
                              std.contract.Sequence
                                  [ refs."definitions.semver", String ],
                          },
                      required = { crate_name = true, min_version = true, },
                    }
                ]
              | doc "Indicates the provided crate needs to be installed (if needed) before running the task"
              | optional,
            install_crate_args
              | Array String
              | doc "Additional cargo install args"
              | optional,
            install_script
              | refs."definitions.script"
              | doc "Provided script will be executed before running the task"
              | optional,
            linux
              | js2n.Always
              | { _ | Dyn }
              | doc "Override task if runtime OS is Linux (takes precedence over alias)"
              | optional,
            linux_alias
              | String
              | doc "If defined and this platform is Linux, task points to another task and all other properties are ignored (takes precedence over `alias` on Linux)"
              | optional,
            mac
              | js2n.Always
              | { _ | Dyn }
              | doc "Override task if runtime OS is Mac (takes precedence over alias)"
              | optional,
            mac_alias
              | String
              | doc "If defined and this platform is Mac, task points to another task and all other properties are ignored (takes precedence over `alias` on Mac)"
              | optional,
            private
              | Bool
              | doc "If true, the task is hidden from the list of available tasks and also cannot be invoked directly from CLI"
              | optional,
            run_task
              | std.contract.any_of
                [
                  String,
                  {
                    cleanup_task
                      | String
                      | doc "A task to run after all specified sub-tasks have completed"
                      | optional,
                    fork
                      | Bool
                      | doc "Fork the sub-task into a a new subprocess"
                      | optional,
                    name
                      | std.contract.any_of [ String, Array String ]
                      | doc "Name(s) of the sub-task to execute",
                    parallel | Bool | doc "Run tasks in parallel" | optional,
                  },
                  Array
                    {
                      cleanup_task
                        | String
                        | doc "A task to run after all specified sub-tasks have completed"
                        | optional,
                      condition
                        | refs."definitions.task_condition"
                        | { _ | Dyn }
                        | doc "If provided all condition values must be met in order for the task to be invoked"
                        | optional,
                      condition_script
                        | Array String
                        | doc "If script exit code is not 0, the sub tasks will not be invoked"
                        | optional,
                      fork
                        | Bool
                        | doc "Fork the sub-task into a a new subprocess"
                        | optional,
                      name
                        | std.contract.any_of [ String, Array String ]
                        | doc "Name(s) of the sub-task to execute",
                      parallel | Bool | doc "Run tasks in parallel" | optional,
                    }
                ]
              | doc "Run a task as a sub-task at the end of executing this task"
              | optional,
            script
              | refs."definitions.script"
              | doc "If `command` is not defined, but `script` is defined, the provided script will be executed"
              | optional,
            script_extension
              | String
              | doc "The file extension to use for the script"
              | optional,
            script_runner
              | String
              | doc "The script attribute may hold non OS scripts, for example rust code to be compiled and executed. In order to use non OS script runners, you must define the special script_runner with the @ prefix."
              | optional,
            script_runner_args
              | String
              | doc "The script runner arguments before the script file path"
              | optional,
            toolchain
              | String
              | doc "The rust toolchain used to invoke the command or install the needed crates/components"
              | optional,
            watch
              | std.contract.any_of
                [
                  Bool,
                  {
                    ignore_pattern
                      | String
                      | doc "Ignore a glob/gitignore-style pattern while watching"
                      | optional,
                    no_git_ignore
                      | Bool
                      | doc "Do not use .gitignore files while watching"
                      | optional,
                    postpone
                      | Bool
                      | doc "Postpone first run until a file changes"
                      | optional,
                    version
                      | refs."definitions.semver"
                      | String
                      | doc "Version of cargo-watch to install if it's not already installed"
                      | optional,
                    watch
                      | Array String
                      | doc "List of files and folders to watch"
                      | optional,
                  }
                ]
              | doc "Watch for file changes and invoke the task operation"
              | optional,
            windows
              | js2n.Always
              | { _ | Dyn }
              | doc "Override task if runtime OS is Windows (takes precedence over alias)"
              | optional,
            windows_alias
              | String
              | doc "If defined and this platform is Windows, task points to another task and all other properties are ignored (takes precedence over `alias` on Windows)"
              | optional,
            workspace
              | Bool
              | doc "Set to false to specify that this is not a workspace and should not call the task for every member (same as --no-workspace CLI flag)"
              | optional,
            x-taplo
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
          },
      "definitions.task_condition" =
        {
            channels
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'nightly, 'beta, 'stable |] ]
              )
              | doc "Rust channels to match for the condition"
              | optional,
            condition_type
              | std.enum.TagOrString
              | [| 'GroupOr, 'Or, 'And |]
              | doc "How multiple conditions are evaluated"
              | optional,
            env
              | { _ | String }
              | doc "Map of environment variables that must be defined and equal to the provided values"
              | optional,
            env_contains
              | { _ | String }
              | doc "Map of environment variables that must be defined and contain (case insensitive) the provided values"
              | optional,
            env_false
              | Array String
              | doc "List of environment variables which must be defined and must be set to any of the following (case insensitive): `false`, `no`, `0`, or empty"
              | optional,
            env_not_set
              | Array String
              | doc "List of environment variables which must not be defined"
              | optional,
            env_set
              | Array String
              | doc "List of environment variables which must be defined"
              | optional,
            env_true
              | Array String
              | doc "List of environment variables which must be defined and must not be set to any of the following (case insensitive): `false`, `no`, `0`, or empty"
              | optional,
            fail_message
              | String
              | doc "Message to display when the condition fails"
              | optional,
            files_exist
              | Array String
              | doc "List of absolute path files to check they exist. Environment substitution is supported so you can define relative paths"
              | optional,
            files_modified
              | {
                input | Array String | doc "List of input globs" | optional,
                output | Array String | doc "List of output globs" | optional,
              }
              | doc "If any input file is newer than all output files, the condition is met. Environment substitution is supported so you can define relative paths"
              | optional,
            files_not_exist
              | Array String
              | doc "List of absolute path files to check they do not exist. Environment substitution is supported so you can define relative paths"
              | optional,
            platforms
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'mac, 'windows, 'linux |] ]
              )
              | doc "Platform names to match for the condition"
              | optional,
            profiles
              | Array String
              | doc "Profile names to match for the condition"
              | optional,
            rust_version
              | {
                equal
                  | refs."definitions.semver"
                  | String
                  | doc "Exact Rust version"
                  | optional,
                max
                  | refs."definitions.semver"
                  | String
                  | doc "Maximum Rust version"
                  | optional,
                min
                  | refs."definitions.semver"
                  | String
                  | doc "Minimum Rust version"
                  | optional,
              }
              | doc "A definition of min, max and/or specific rust version"
              | optional,
          },
      "definitions.unstable_feature_flag" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'CTRL_C_HANDLING |] ],
      "definitions.unstable_feature_flags" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.unstable_feature_flag", String ]
              )
            ],
    }
    in
  {
      config
        | {
          additional_profiles
            | js2n.array.UniqueItems
            | Array String
            | doc "Additional profile names to load"
            | optional,
          default_to_workspace
            | Bool
            | doc "The default value for the `workspace` value of tasks in this makefile"
            | optional,
          end_task
            | String
            | doc "End task name which will be invoked at the end of every run"
            | optional,
          init_task
            | String
            | doc "Init task name which will be invoked at the start of every run"
            | optional,
          legacy_migration_task
            | String
            | doc "The name of the task which runs legacy migration flows"
            | optional,
          linux_load_script
            | refs."definitions.script"
            | doc "Invoked while loading the descriptor file but before loading any extended descriptor. Takes precedence over `load_script` if runtime OS is Linux."
            | optional,
          load_cargo_aliases
            | Bool
            | doc "Automatically load cargo aliases as cargo-make tasks"
            | optional,
          load_script
            | refs."definitions.script"
            | doc "Invoked while loading the descriptor file but before loading any extended descriptor"
            | optional,
          mac_load_script
            | refs."definitions.script"
            | doc "Invoked while loading the descriptor file but before loading any extended descriptor. Takes precedence over `load_script` if runtime OS is Mac."
            | optional,
          main_project_member
            | String
            | doc "The project information member (used by workspaces)"
            | optional,
          min_version
            | refs."definitions.semver"
            | doc "Minimum cargo-make/makers version"
            | optional,
          modify_core_tasks
            | {
              namespace
                | String
                | doc "If set to some value, all core tasks are modified to: `namespace::name`"
                | optional,
              private
                | Bool
                | doc "If true, all core tasks will be set to private (default false)"
                | optional,
            }
            | doc "Options to modify all the core tasks"
            | optional,
          on_error_task
            | String
            | doc "The name of the task to run in case of any error during the invocation of the flow"
            | optional,
          reduce_output
            | Bool
            | doc "Set to true to reduce console output for non CI execution"
            | optional,
          skip_core_tasks
            | Bool
            | doc "If true, the default core tasks will not be loaded"
            | optional,
          skip_crate_env_info
            | Bool
            | doc "If true, the current crate related environment variables will not be loaded"
            | optional,
          skip_git_env_info
            | Bool
            | doc "If true, the Git related environment variables will not be loaded"
            | optional,
          skip_rust_env_info
            | Bool
            | doc "If true, the rust related environment variables will not be loaded"
            | optional,
          time_summary
            | Bool
            | doc "Set to true to print time summary at the end of the flow"
            | optional,
          unstable_features
            | refs."definitions.unstable_feature_flags"
            | Array Dyn
            | doc "Enables unstable cargo-make features"
            | optional,
          windows_load_script
            | refs."definitions.script"
            | doc "Invoked while loading the descriptor file but before loading any extended descriptor. Takes precedence over `load_script` if runtime OS is Windows."
            | optional,
        }
        | doc "Configuration options for this makefile"
        | optional,
      env
        | refs."definitions.env"
        | doc "The environment variables to setup before running any tasks"
        | optional,
      env_files
        | refs."definitions.env_files"
        | Array Dyn
        | doc "The environment files to setup before running any tasks"
        | optional,
      env_scripts
        | Array (std.contract.Sequence [ refs."definitions.script", String ])
        | doc "The environment scripts to execute after environment files and the env block. These scripts can be used to run anything needed before starting up the flow."
        | optional,
      extend
        | std.contract.any_of
          [
            String,
            refs."definitions.extend",
            std.contract.Sequence
              [ js2n.array.UniqueItems, Array refs."definitions.extend" ]
          ]
        | doc "Extend an external makefile by importing its tasks and properties to this file. Paths are relative to this makefile"
        | optional,
      tasks
        | { _ | refs."definitions.task" }
        | doc "Task definitions"
        | optional,
    }