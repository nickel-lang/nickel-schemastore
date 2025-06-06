# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DependencyConfig" =
        {
            id | String | doc "ID of the depended on project." | optional,
            scope
              | refs."definitions.DependencyScope"
              | String
              | doc "Scope of the dependency relationship."
              | optional,
            source
              | refs."definitions.DependencySource"
              | String
              | doc "Source of where the dependency came from."
              | optional,
            via
              | js2n.Nullable String
              | doc "Metadata about the source."
              | optional,
          },
      "definitions.DependencyScope" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'root, 'production, 'peer, 'development, 'build |]
            ],
      "definitions.DependencySource" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'implicit, 'explicit |] ],
      "definitions.LanguageType" =
        std.contract.any_of
            [
              js2n.Const "bash",
              js2n.Const "batch",
              js2n.Const "go",
              js2n.Const "javascript",
              js2n.Const "php",
              js2n.Const "python",
              js2n.Const "ruby",
              js2n.Const "rust",
              js2n.Const "typescript",
              js2n.Const "unknown",
              String
            ],
      "definitions.OwnersConfig" =
        {
            customGroups
              | js2n.record.PropertyNames String
              | { _ | Array String }
              | doc "Bitbucket only. A mapping of custom groups (prefixed with @@@), to a list of user and normal groups."
              | optional,
            defaultOwner
              | js2n.Nullable String
              | doc "The default owner for paths."
              | optional,
            "optional"
              | Bool
              | doc "GitLab only. Marks the code owners section as optional."
              | optional,
            paths
              | refs."definitions.OwnersPaths"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
              | doc "A mapping of file paths and file globs to owners. When a list, the defaultOwner is the owner, and each item is a path. When an object, the key is a path, and the value is a list of owners."
              | optional,
            requiredApprovals
              | js2n.Nullable Number
              | doc "Bitbucket and GitLab only. The number of approvals required for the request to be satisfied. For Bitbucket, utilizes the Check() condition. For GitLab, marks the code owners section as required."
              | optional,
          },
      "definitions.OwnersPaths" =
        std.contract.any_of
            [
              Array String,
              std.contract.Sequence
                [ js2n.record.PropertyNames String, { _ | Array String } ]
            ],
      "definitions.PlatformType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'unknown, 'system, 'rust, 'python, 'node, 'deno, 'bun |]
            ],
      "definitions.PluginLocator" = String,
      "definitions.ProjectDependsOn" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.DependencyConfig", { _ | Dyn } ]
            ],
      "definitions.ProjectDockerConfig" =
        {
            file
              | refs."definitions.ProjectDockerFileConfig"
              | { _ | Dyn }
              | doc "Configures aspects of the Dockerfile generation process."
              | optional,
            scaffold
              | refs."definitions.ProjectDockerScaffoldConfig"
              | { _ | Dyn }
              | doc "Configures aspects of the Docker scaffolding process."
              | optional,
          },
      "definitions.ProjectDockerFileConfig" =
        {
            buildTask
              | js2n.Nullable String
              | doc "A task within the current project for building the project."
              | optional,
            image
              | js2n.Nullable String
              | doc "The base Docker image."
              | optional,
            startTask
              | js2n.Nullable String
              | doc "A task within the current project for starting the project."
              | optional,
          },
      "definitions.ProjectDockerScaffoldConfig" =
        {
            include
              | Array String
              | doc "List of glob patterns, relative from the project root, to include (or exclude) in the sources skeleton."
              | optional,
          },
      "definitions.ProjectMetadataConfig" =
        {
            channel
              | js2n.Nullable String
              | doc "The Slack, Discord, etc, channel to discuss the project. Must start with a #."
              | optional,
            description
              | String
              | doc "A description on what the project does, and why it exists."
              | optional,
            maintainers
              | Array String
              | doc "The individual maintainers of the project. The format is unspecified."
              | optional,
            metadata
              | js2n.record.PropertyNames String
              | {
                _ | std.contract.any_of
                  [ Bool, std.number.Integer, String, { _ | Dyn }, Array Dyn ]
              }
              | doc "Custom metadata fields."
              | optional,
            name
              | js2n.Nullable String
              | doc "A human-readable name of the project."
              | optional,
            owner
              | js2n.Nullable String
              | doc "The owner of the project. Can be an individual, team, or organization. The format is unspecified."
              | optional,
          },
      "definitions.ProjectToolchainCommonToolConfig" =
        {
            version
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.UnresolvedVersionSpec", String ])
              | doc "Version of the tool this project will use."
              | optional,
          },
      "definitions.ProjectToolchainConfig" =
        {
            bun
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.ProjectToolchainCommonToolConfig",
                    { _ | Dyn }
                  ])
              | doc "Overrides bun settings."
              | optional,
            "default"
              | std.contract.any_of [ String, Array String, js2n.Null ]
              | doc "The default toolchain(s) for all tasks within the project, if their toolchain is unknown."
              | optional,
            deno
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.ProjectToolchainCommonToolConfig",
                    { _ | Dyn }
                  ])
              | doc "Overrides deno settings."
              | optional,
            node
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.ProjectToolchainCommonToolConfig",
                    { _ | Dyn }
                  ])
              | doc "Overrides node settings."
              | optional,
            plugins
              | js2n.record.PropertyNames String
              | { _ | refs."definitions.ProjectToolchainEntry" }
              | doc "Overrides toolchains by their ID."
              | optional,
            python
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.ProjectToolchainCommonToolConfig",
                    { _ | Dyn }
                  ])
              | doc "Overrides python settings."
              | optional,
            rust
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.ProjectToolchainCommonToolConfig",
                    { _ | Dyn }
                  ])
              | doc "Overrides rust settings."
              | optional,
          },
      "definitions.ProjectToolchainEntry" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              std.contract.Sequence
                [ refs."definitions.ToolchainPluginConfig", { _ | Dyn } ]
            ],
      "definitions.ProjectType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'unknown,
                'tool,
                'scaffolding,
                'library,
                'configuration,
                'automation,
                'application
              |]
            ],
      "definitions.ProjectWorkspaceConfig" =
        {
            inheritedTasks
              | refs."definitions.ProjectWorkspaceInheritedTasksConfig"
              | { _ | Dyn }
              | doc "Controls how tasks are inherited."
              | optional,
          },
      "definitions.ProjectWorkspaceInheritedTasksConfig" =
        {
            exclude
              | Array String
              | doc "Excludes inheriting tasks by ID."
              | optional,
            include
              | js2n.Nullable (Array String)
              | doc "Only inherits tasks by ID, and ignores the rest. When not defined, inherits all matching tasks. When an empty list, inherits no tasks."
              | optional,
            rename
              | js2n.record.PropertyNames String
              | { _ | String }
              | doc "Renames inherited tasks to a new ID."
              | optional,
          },
      "definitions.StackType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'unknown, 'systems, 'infrastructure, 'frontend, 'backend |]
            ],
      "definitions.TaskArgs" =
        std.contract.any_of [ js2n.Null, String, Array String ],
      "definitions.TaskConfig" =
        {
            args
              | refs."definitions.TaskArgs"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | doc "Arguments to pass to the command when it's ran. Can be defined as a string, or a list of individual arguments."
              | optional,
            command
              | refs."definitions.TaskArgs"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | doc "The command or command line to execute when the task is ran. Supports the command name, with or without arguments. Can be defined as a string, or a list of individual arguments."
              | optional,
            deps
              | js2n.Nullable (Array refs."definitions.TaskDependency")
              | doc "Other tasks that this task depends on, and must run to completion before this task is ran. Can depend on sibling tasks, or tasks in other projects, using targets."
              | optional,
            description
              | js2n.Nullable String
              | doc "A human-readable description about the task."
              | optional,
            env
              | js2n.Nullable
                (std.contract.Sequence
                  [ js2n.record.PropertyNames String, { _ | String } ])
              | doc "A mapping of environment variables that will be set when the task is ran."
              | optional,
            extends
              | js2n.Nullable String
              | doc "Extends settings from a sibling task by ID."
              | optional,
            inputs
              | js2n.Nullable (Array String)
              | doc "Inputs and sources that will mark the task as affected when comparing against touched files. When not provided, all files within the project are considered an input. When an empty list, no files are considered. Otherwise, an explicit list of inputs are considered."
              | optional,
            local
              | js2n.Nullable Bool
              | doc "Marks the task as local only. Local tasks do not run in CI, do not have options.cache enabled, and are marked as options.persistent."
              | optional,
            options
              | refs."definitions.TaskOptionsConfig"
              | { _ | Dyn }
              | doc "Options to control task inheritance and execution."
              | optional,
            outputs
              | js2n.Nullable (Array String)
              | doc "Outputs that will be created when the task has successfully ran. When cache is enabled, the outputs will be persisted for subsequent runs."
              | optional,
            platform
              | refs."definitions.PlatformType"
              | String
              | doc "The platform in which the task will be ran in. The platform determines available binaries, lookup paths, and more. When not provided, will be automatically detected."
              | optional,
            preset
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskPreset", String ])
              | doc "The preset to apply for the task. Will inherit default options."
              | optional,
            script
              | js2n.Nullable String
              | doc "A script to run within a shell. A script is anything from a single command, to multiple commands (&&, etc), or shell specific syntax. Does not support arguments, merging, or inheritance."
              | optional,
            toolchain
              | std.contract.any_of [ String, Array String ]
              | doc "The toolchain(s) in which the task will be ran in. The toolchain determines available binaries, lookup paths, and more. When not provided, will be automatically detected."
              | optional,
            type
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.TaskType", String ])
              | doc "The type of task, primarily used for categorical reasons. When not provided, will be automatically determined."
              | optional,
          },
      "definitions.TaskDependency" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.TaskDependencyConfig", { _ | Dyn } ]
            ],
      "definitions.TaskDependencyConfig" =
        {
            args
              | refs."definitions.TaskArgs"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | doc "Additional arguments to pass to this dependency when it's ran."
              | optional,
            env
              | js2n.record.PropertyNames String
              | { _ | String }
              | doc "A mapping of environment variables specific to this dependency."
              | optional,
            "optional"
              | js2n.Nullable Bool
              | doc "Marks the dependency is optional when being inherited from the top-level."
              | optional,
            target
              | String
              | doc "The target of the depended on task."
              | optional,
          },
      "definitions.TaskMergeStrategy" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'replace, 'preserve, 'prepend, 'append |]
            ],
      "definitions.TaskOperatingSystem" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'windows, 'macos, 'linux |] ],
      "definitions.TaskOptionEnvFile" =
        std.contract.any_of [ Bool, String, Array String ],
      "definitions.TaskOptionsConfig" =
        {
            affectedFiles
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'env, 'args |] ],
                  js2n.Null
                ]
              | doc "The pattern in which affected files will be passed to the task."
              | optional,
            affectedPassInputs
              | js2n.Nullable Bool
              | doc "When affected and no files are matching, pass the task inputs as arguments to the command, instead of .."
              | optional,
            allowFailure
              | js2n.Nullable Bool
              | doc "Allows the task to fail without failing the entire pipeline."
              | optional,
            cache
              | js2n.Nullable Bool
              | doc "Caches the outputs of the task. Defaults to true if outputs are configured for the task."
              | optional,
            cacheKey
              | js2n.Nullable String
              | doc "A custom key to include in the cache hashing process. Can be used to invalidate local and remote caches."
              | optional,
            cacheLifetime
              | js2n.Nullable String
              | doc "Lifetime to cache the task itself, in the format of \"1h\", \"30m\", etc. If not defined, caches live forever, or until inputs change."
              | optional,
            envFile
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.TaskOptionEnvFile",
                    std.contract.any_of [ Bool, Array Dyn, String ]
                  ])
              | doc "Loads and sets environment variables from the .env file when running the task."
              | optional,
            inferInputs
              | js2n.Nullable Bool
              | doc "Automatically infer inputs from file groups or environment variables that were utilized within command, script, args, and env."
              | optional,
            interactive
              | js2n.Nullable Bool
              | doc "Marks the task as interactive, so that it will run in isolation, and have direct access to stdin."
              | optional,
            internal
              | js2n.Nullable Bool
              | doc "Marks the task as internal, which disables it from begin ran from the command line, but can be depended on."
              | optional,
            "merge"
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskMergeStrategy", String ])
              | doc "The default strategy to use when merging args, deps, env, inputs, or outputs with an inherited task. Can be overridden with the other field-specific merge options."
              | optional,
            mergeArgs
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskMergeStrategy", String ])
              | doc "The strategy to use when merging args with an inherited task."
              | optional,
            mergeDeps
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskMergeStrategy", String ])
              | doc "The strategy to use when merging deps with an inherited task."
              | optional,
            mergeEnv
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskMergeStrategy", String ])
              | doc "The strategy to use when merging env with an inherited task."
              | optional,
            mergeInputs
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskMergeStrategy", String ])
              | doc "The strategy to use when merging inputs with an inherited task."
              | optional,
            mergeOutputs
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskMergeStrategy", String ])
              | doc "The strategy to use when merging outputs with an inherited task."
              | optional,
            mutex
              | js2n.Nullable String
              | doc "Creates an exclusive lock on a virtual resource, preventing other tasks using the same resource from running concurrently."
              | optional,
            os
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.TaskOperatingSystem", String ],
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.TaskOperatingSystem", String ]
                  ),
                  js2n.Null
                ]
              | doc "The operating system in which to only run this task on."
              | optional,
            outputStyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskOutputStyle", String ])
              | doc "The style in which task output will be printed to the console."
              | optional,
            persistent
              | js2n.Nullable Bool
              | doc "Marks the task as persistent (continuously running). This is ideal for watchers, servers, or never-ending processes."
              | optional,
            "priority"
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskPriority", String ])
              | doc "Marks the task with a certain priority, which determines the order in which it is ran within the pipeline."
              | optional,
            retryCount
              | js2n.Nullable Number
              | doc "The number of times a failing task will be retried to succeed."
              | optional,
            runDepsInParallel
              | js2n.Nullable Bool
              | doc "Runs direct task dependencies (via deps) in sequential order. This does not apply to indirect or transient dependencies."
              | optional,
            runFromWorkspaceRoot
              | js2n.Nullable Bool
              | doc "Runs the task from the workspace root, instead of the project root."
              | optional,
            runInCI
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'affected, 'always |] ],
                  js2n.Null
                ]
              | doc "Whether to run the task in CI or not, when executing moon ci or moon run."
              | optional,
            shell
              | js2n.Nullable Bool
              | doc "Runs the task within a shell. When not defined, runs the task directly while relying on PATH resolution."
              | optional,
            timeout
              | js2n.Nullable Number
              | doc "The maximum time in seconds that a task can run before being cancelled."
              | optional,
            unixShell
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskUnixShell", String ])
              | doc "The shell to run the task in when on a Unix-based machine."
              | optional,
            windowsShell
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.TaskWindowsShell", String ])
              | doc "The shell to run the task in when on a Windows machine."
              | optional,
          },
      "definitions.TaskOutputStyle" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'stream, 'none, 'hash, 'buffer-only-failure, 'buffer |]
            ],
      "definitions.TaskPreset" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'watcher, 'server |] ],
      "definitions.TaskPriority" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'low, 'normal, 'high, 'critical |] ],
      "definitions.TaskType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'test, 'run, 'build |] ],
      "definitions.TaskUnixShell" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'zsh,
                'xonsh,
                'pwsh,
                'nu,
                'murex,
                'ion,
                'fish,
                'elvish,
                'bash
              |]
            ],
      "definitions.TaskWindowsShell" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'xonsh, 'pwsh, 'nu, 'murex, 'fish, 'elvish, 'bash |]
            ],
      "definitions.ToolchainPluginConfig" =
        {
            config
              | js2n.record.PropertyNames String
              | {
                _ | std.contract.any_of
                  [ Bool, std.number.Integer, String, { _ | Dyn }, Array Dyn ]
              }
              | doc "Arbitrary configuration that'll be passed to the WASM plugin."
              | optional,
            disabled | Bool | optional,
            plugin
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PluginLocator", String ])
              | doc "Location of the WASM plugin to use."
              | optional,
            version
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.UnresolvedVersionSpec", String ])
              | doc "The version of the toolchain to download and install."
              | optional,
          },
      "definitions.UnresolvedVersionSpec" = String,
    }
    in
  {
      "$schema" | String | optional,
      dependsOn
        | Array refs."definitions.ProjectDependsOn"
        | doc "Other projects that this project depends on."
        | optional,
      docker
        | refs."definitions.ProjectDockerConfig"
        | doc "Configures Docker integration for this project."
        | optional,
      env
        | js2n.record.PropertyNames String
        | { _ | String }
        | doc "A mapping of environment variables that will be set for all tasks within the project."
        | optional,
      fileGroups
        | js2n.record.PropertyNames String
        | { _ | Array String }
        | doc "A mapping of group IDs to a list of file paths, globs, and environment variables, that can be referenced from tasks."
        | optional,
      id
        | js2n.Nullable String
        | doc "Overrides the ID within the project graph, as defined in the workspace projects setting."
        | optional,
      language
        | refs."definitions.LanguageType"
        | doc "The primary programming language of the project."
        | optional,
      owners
        | refs."definitions.OwnersConfig"
        | doc "Defines ownership of source code within the current project, by mapping file paths and globs to owners. An owner is either a user, team, or group."
        | optional,
      platform
        | js2n.Nullable refs."definitions.PlatformType"
        | doc "The default platform for all tasks within the project, if their platform is unknown."
        | optional,
      project
        | js2n.Nullable refs."definitions.ProjectMetadataConfig"
        | doc "Expanded information about the project."
        | optional,
      stack
        | refs."definitions.StackType"
        | doc "The technology stack of the project, for categorizing."
        | optional,
      tags
        | Array String
        | doc "A list of tags that this project belongs to, for categorizing, boundary enforcement, and task inheritance."
        | optional,
      tasks
        | js2n.record.PropertyNames String
        | { _ | refs."definitions.TaskConfig" }
        | doc "A mapping of tasks by ID to parameters required for running the task."
        | optional,
      toolchain
        | refs."definitions.ProjectToolchainConfig"
        | doc "Overrides top-level toolchain settings, scoped to this project."
        | optional,
      type
        | refs."definitions.ProjectType"
        | doc "The type of project."
        | optional,
      workspace
        | refs."definitions.ProjectWorkspaceConfig"
        | doc "Overrides top-level workspace settings, scoped to this project."
        | optional,
    }