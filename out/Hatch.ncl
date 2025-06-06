# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Build" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { dev-mode-dirs = js2n.Never, },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { dev-mode-exact = js2n.Never, },
                      required = {},
                    }
                ],
              {
                artifacts
                  | Array String
                  | doc "List of glob patterns to include VCS-ignored files"
                  | optional,
                dev-mode-dirs
                  | Array String
                  | doc "List of directories to add to PYTHONPATH in development mode"
                  | optional,
                dev-mode-exact
                  | Bool
                  | doc "Whether to use an exact dev mode that doesn’t add whole directories to PYTHONPATH"
                  | optional,
                directory
                  | String
                  | doc "Directory to write build artifacts to"
                  | optional,
                exclude
                  | Array String
                  | doc "List of glob patterns to exclude files"
                  | optional,
                hooks | refs."definitions.Hooks" | { _ | Dyn } | optional,
                ignore-vcs
                  | Bool
                  | doc "Whether to ignore VCS .*ignore files and include those files by default"
                  | optional,
                include
                  | Array String
                  | doc "List of glob patterns to include files"
                  | optional,
                only-packages
                  | Bool
                  | doc "Whether to only include non-artifact files in packages"
                  | optional,
                reproducible
                  | Bool
                  | doc "Whether to make the build reproducible"
                  | optional,
                skip-excluded-dirs
                  | Bool
                  | doc "Whether to skip excluded directories (for performance reasons)"
                  | optional,
                sources
                  | std.contract.any_of [ { _ | String }, Array String ]
                  | doc "Rewrite relative paths"
                  | optional,
                targets
                  | refs."definitions.CustomTargets"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.CollectorEnv" =
        {
            collectors
              | { _ | { _ | Dyn } }
              | doc "Custom environment collectors"
              | optional,
            requires
              | Array String
              | doc "Required environment collectors for automatic management"
              | optional,
            ..
          },
      "definitions.CustomTargets" =
        {
            _ | std.contract.Sequence [ refs."definitions.Target", { _ | Dyn } ]
          },
      "definitions.Env" =
        {
            dependencies
              | Array String
              | doc "List of dependencies to install in the environment"
              | optional,
            description
              | String
              | doc "Description of the environment for the `env show` command"
              | optional,
            detached
              | Bool
              | doc "Make the environment self-referential and skip project install"
              | optional,
            dev-mode
              | Bool
              | doc "Whether to install the project in development mode"
              | optional,
            env-exclude
              | Array String
              | doc "Glob patterns of environment variables to exclude"
              | optional,
            env-include
              | Array String
              | doc "Glob patterns of environment variables to include"
              | optional,
            env-vars
              | { _ | String }
              | doc "Environment variables to set"
              | optional,
            extra-dependencies
              | Array String
              | doc "List of extra dependencies to install in the environment in addition to the template environment’s dependencies"
              | optional,
            features
              | Array String
              | doc "List of optional dependency groups (extras) to install"
              | optional,
            matrix
              | Array ({ _ | Array String })
              | doc "Matrix of environments"
              | optional,
            matrix-name-format
              | String
              | doc "Format string for matrix names, supporting {variable} and {value} placeholders"
              | optional,
            overrides | refs."definitions.Overrides" | { _ | Dyn } | optional,
            platforms
              | Array (
                std.contract.Sequence [ refs."definitions.Platform", String ]
              )
              | doc "List of platforms to build for"
              | optional,
            post-install-commands
              | Array String
              | doc "List of commands to run after installing the project"
              | optional,
            pre-install-commands
              | Array String
              | doc "List of commands to run before installing the project"
              | optional,
            python
              | String
              | doc "Python version to use or an absolute path to a python interpreter"
              | optional,
            requires
              | Array String
              | doc "Required environment plugins"
              | optional,
            scripts
              | { _ | std.contract.any_of [ String, Array String ] }
              | doc "Dictionary of scripts to run"
              | optional,
            skip-install
              | Bool
              | doc "Whether to skip installing the project"
              | optional,
            template
              | String
              | doc "Template environment to inherit from. Set to own name to make self referential (disable inheritance from “default”)"
              | optional,
            type
              | String
              | doc "Type of environment. Without plugins, the only supported type is \"virtual\""
              | optional,
            ..
          },
      "definitions.Envs" =
        { _ | std.contract.Sequence [ refs."definitions.Env", { _ | Dyn } ] },
      "definitions.Hook" =
        {
            dependencies
              | Array String
              | doc "Additional dependencies installed in the build environment"
              | optional,
            enable-by-default
              | Bool
              | doc "Whether to enable current hook (disable to control activation using environment variables)"
              | optional,
            require-runtime-dependencies
              | Bool
              | doc "Whether to install the project’s runtime dependencies"
              | optional,
            require-runtime-features
              | Array String
              | doc "A list of the project’s runtime features to install"
              | optional,
            ..
          },
      "definitions.Hooks" =
        { _ | std.contract.Sequence [ refs."definitions.Hook", { _ | Dyn } ] },
      "definitions.Metadata" =
        {
            allow-ambiguous-features
              | Bool
              | doc "Whether to allow ambiguous features"
              | optional,
            allow-direct-references
              | Bool
              | doc "Whether to allow direct references"
              | optional,
            ..
          },
      "definitions.Override" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.Overrides" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                { "env|matrix|name" = { _ | refs."definitions.Override" }, },
              properties =
                {
                    platform =
                      std.contract.Sequence
                          [
                            js2n.record.PropertyNames
                              (std.contract.Sequence
                                [ refs."definitions.Platform", String ]),
                            { _ | refs."definitions.Override" }
                          ],
                  },
              required = {},
            },
      "definitions.Platform" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'macos, 'windows, 'linux |] ],
      "definitions.Publish" =
        {
            index | refs."definitions.PublishIndex" | { _ | Dyn } | optional,
            ..
          },
      "definitions.PublishIndex" =
        {
            disable
              | Bool
              | doc "Ask for confirmation when publishing to index"
              | optional,
            repos
              | js2n.record.Record
                {
                  additional = 'Some { url | String | optional, .. },
                  patterns = {},
                  properties = { main = js2n.Never, test = js2n.Never, },
                  required = {},
                }
              | doc "Define named repositories to publish to"
              | optional,
            ..
          },
      "definitions.Target" =
        {
            dependencies
              | Array String
              | doc "Additional dependencies to install in the environment"
              | optional,
            require-runtime-dependencies
              | Bool
              | doc "Whether to install the project’s runtime dependencies"
              | optional,
            require-runtime-features
              | Array String
              | doc "A list of the project’s runtime features to install"
              | optional,
            versions
              | Array String
              | doc "List of versions to build"
              | optional,
            ..
          },
      "definitions.Version" =
        {
            path
              | String
              | doc "A relative path to a file containing the project version"
              | optional,
            pattern
              | String
              | doc "A regex pattern to extract the version"
              | optional,
            source
              | String
              | doc "A source to use for retrieving and updating the version."
              | optional,
            ..
          },
    }
    in
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
                    properties = { version = js2n.Never, },
                    required = {},
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
                          version =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    { path = String, pattern = String, },
                                  required = { path = true, },
                                },
                        },
                    required = { version = true, },
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
                          version =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { source = String, },
                                  required = { source = true, },
                                },
                        },
                    required = { version = true, },
                  },
                Array Dyn
              ]
          ],
        {
          build | refs."definitions.Build" | { _ | Dyn } | optional,
          env | refs."definitions.CollectorEnv" | optional,
          envs | refs."definitions.Envs" | optional,
          metadata | refs."definitions.Metadata" | optional,
          publish | refs."definitions.Publish" | optional,
          version | refs."definitions.Version" | optional,
        }
      ]