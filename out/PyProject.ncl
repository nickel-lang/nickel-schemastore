# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BuildSystem" =
        {
            backend-path
              | Array String
              | doc "list of directories to prepend to `sys.path` when loading the build backend, relative to project root"
              | optional,
            build-backend
              | String
              | doc "String is formatted following the same `module:object` syntax as a `setuptools` entry point. It’s also legal to leave out the `:object` part."
              | optional,
            requires
              | Array String
              | doc "List of strings following the version specifier specification, representing dependencies required to execute the build system.",
          },
      "definitions.projectAuthor" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { name = js2n.Always, },
                      required = { name = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { email = js2n.Always, },
                      required = { email = true, },
                    }
                ],
              { email | String | optional, name | String | optional, }
            ],
      "properties.tool.properties.cibuildwheel.properties.archs" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.before-all" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.before-build" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.before-test" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.build-frontend" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| '"default", '"build[uv]", 'build, 'pip |]
                ],
              js2n.string.Matches "^pip; ?args:",
              js2n.string.Matches "^build; ?args:",
              js2n.string.Matches "^build\\[uv\\]; ?args:",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        args = js2n.array.ArrayOf String,
                        name =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"build[uv]", 'build, 'pip |]
                              ],
                      },
                  required = { name = true, },
                }
            ],
      "properties.tool.properties.cibuildwheel.properties.build-verbosity" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 3,
              js2n.number.Minimum (-3)
            ],
      "properties.tool.properties.cibuildwheel.properties.config-settings" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  { _ | std.contract.any_of [ String, Array String ] },
                  js2n.record.FieldsMatch ".+"
                ]
            ],
      "properties.tool.properties.cibuildwheel.properties.container-engine" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'podman, 'docker |] ],
              js2n.string.Matches "^docker; ?(create_args|disable_host_mount):",
              js2n.string.Matches "^podman; ?(create_args|disable_host_mount):",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        create-args = js2n.array.ArrayOf String,
                        disable-host-mount = Bool,
                        name =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'podman, 'docker |] ],
                      },
                  required = { name = true, },
                }
            ],
      "properties.tool.properties.cibuildwheel.properties.dependency-versions" =
        String,
      "properties.tool.properties.cibuildwheel.properties.environment" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ { _ | String }, js2n.record.FieldsMatch ".+" ]
            ],
      "properties.tool.properties.cibuildwheel.properties.environment-pass" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.manylinux-aarch64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-armv7l-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-i686-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-ppc64le-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-pypy_aarch64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-pypy_i686-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-pypy_x86_64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-s390x-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-x86_64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-aarch64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-armv7l-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-i686-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-ppc64le-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-s390x-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-x86_64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.repair-wheel-command" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-command" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-extras" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-groups" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-requires" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.hatch.definitions.Build" =
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
                hooks
                  | refs."properties.tool.properties.hatch.definitions.Hooks"
                  | { _ | Dyn }
                  | optional,
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
                  | refs."properties.tool.properties.hatch.definitions.CustomTargets"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "properties.tool.properties.hatch.definitions.CollectorEnv" =
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
      "properties.tool.properties.hatch.definitions.CustomTargets" =
        {
            _ | std.contract.Sequence
              [
                refs."properties.tool.properties.hatch.definitions.Target",
                { _ | Dyn }
              ]
          },
      "properties.tool.properties.hatch.definitions.Env" =
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
            overrides
              | refs."properties.tool.properties.hatch.definitions.Overrides"
              | { _ | Dyn }
              | optional,
            platforms
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.hatch.definitions.Platform",
                    String
                  ]
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
      "properties.tool.properties.hatch.definitions.Envs" =
        {
            _ | std.contract.Sequence
              [
                refs."properties.tool.properties.hatch.definitions.Env",
                { _ | Dyn }
              ]
          },
      "properties.tool.properties.hatch.definitions.Hook" =
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
      "properties.tool.properties.hatch.definitions.Hooks" =
        {
            _ | std.contract.Sequence
              [
                refs."properties.tool.properties.hatch.definitions.Hook",
                { _ | Dyn }
              ]
          },
      "properties.tool.properties.hatch.definitions.Metadata" =
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
      "properties.tool.properties.hatch.definitions.Override" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "properties.tool.properties.hatch.definitions.Overrides" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "env|matrix|name" =
                      {
                          _ | refs."properties.tool.properties.hatch.definitions.Override"
                        },
                  },
              properties =
                {
                    platform =
                      std.contract.Sequence
                          [
                            js2n.record.PropertyNames
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.hatch.definitions.Platform",
                                  String
                                ]),
                            {
                              _ | refs."properties.tool.properties.hatch.definitions.Override"
                            }
                          ],
                  },
              required = {},
            },
      "properties.tool.properties.hatch.definitions.Platform" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'macos, 'windows, 'linux |] ],
      "properties.tool.properties.hatch.definitions.Publish" =
        {
            index
              | refs."properties.tool.properties.hatch.definitions.PublishIndex"
              | { _ | Dyn }
              | optional,
            ..
          },
      "properties.tool.properties.hatch.definitions.PublishIndex" =
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
      "properties.tool.properties.hatch.definitions.Target" =
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
      "properties.tool.properties.hatch.definitions.Version" =
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
      "properties.tool.properties.maturin.definitions.AuditWheelMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'repair |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'check |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'skip |] ]
            ],
      "properties.tool.properties.maturin.definitions.CargoCrateType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'bin |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'cdylib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'dylib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'rlib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'staticlib |] ]
            ],
      "properties.tool.properties.maturin.definitions.CargoTarget" =
        {
            kind
              | js2n.Nullable
                refs."properties.tool.properties.maturin.definitions.CargoCrateType"
              | doc "Kind of target (\"bin\", \"cdylib\")"
              | optional,
            name
              | String
              | doc "Name as given in the `Cargo.toml` or generated from the file name",
            ..
          },
      "properties.tool.properties.maturin.definitions.Format" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'sdist |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'wheel |] ]
            ],
      "properties.tool.properties.maturin.definitions.Formats" =
        std.contract.any_of
            [
              refs."properties.tool.properties.maturin.definitions.Format",
              js2n.array.ArrayOf
                refs."properties.tool.properties.maturin.definitions.Format"
            ],
      "properties.tool.properties.maturin.definitions.GlobPattern" =
        std.contract.any_of
            [
              String,
              {
                format
                  | refs."properties.tool.properties.maturin.definitions.Formats"
                  | doc "One or more [Format] values",
                path | String | doc "A glob",
                ..
              }
            ],
      "properties.tool.properties.maturin.definitions.PlatformTag" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Manylinux =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      x =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                      y =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                    },
                                required = { x = true, y = true, },
                              },
                      },
                  required = { Manylinux = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        Musllinux =
                          js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      x =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                      y =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 0
                                            ],
                                    },
                                required = { x = true, y = true, },
                              },
                      },
                  required = { Musllinux = true, },
                },
              std.contract.Sequence [ std.enum.TagOrString, [| 'Linux |] ]
            ],
      "properties.tool.properties.maturin.definitions.SdistGenerator" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'cargo |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'git |] ]
            ],
      "properties.tool.properties.maturin.definitions.TargetConfig" =
        {
            macos-deployment-target
              | js2n.Nullable String
              | doc "macOS deployment target version"
              | optional,
            ..
          },
      "properties.tool.properties.mypy.properties.allow_redefinition" = Bool,
      "properties.tool.properties.mypy.properties.allow_untyped_globals" = Bool,
      "properties.tool.properties.mypy.properties.always_false" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.mypy.properties.always_true" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.mypy.properties.any_exprs_report" = String,
      "properties.tool.properties.mypy.properties.cache_dir" = String,
      "properties.tool.properties.mypy.properties.cache_fine_grained" = Bool,
      "properties.tool.properties.mypy.properties.check_untyped_defs" = Bool,
      "properties.tool.properties.mypy.properties.cobertura_xml_report" =
        String,
      "properties.tool.properties.mypy.properties.color_output" = Bool,
      "properties.tool.properties.mypy.properties.custom_typeshed_dir" = String,
      "properties.tool.properties.mypy.properties.custom_typing_module" =
        String,
      "properties.tool.properties.mypy.properties.disable_error_code" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.mypy.properties.disallow_any_decorated" =
        Bool,
      "properties.tool.properties.mypy.properties.disallow_any_explicit" = Bool,
      "properties.tool.properties.mypy.properties.disallow_any_expr" = Bool,
      "properties.tool.properties.mypy.properties.disallow_any_generics" = Bool,
      "properties.tool.properties.mypy.properties.disallow_any_unimported" =
        Bool,
      "properties.tool.properties.mypy.properties.disallow_incomplete_defs" =
        Bool,
      "properties.tool.properties.mypy.properties.disallow_subclassing_any" =
        Bool,
      "properties.tool.properties.mypy.properties.disallow_untyped_calls" =
        Bool,
      "properties.tool.properties.mypy.properties.disallow_untyped_decorators" =
        Bool,
      "properties.tool.properties.mypy.properties.disallow_untyped_defs" = Bool,
      "properties.tool.properties.mypy.properties.enable_error_code" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.mypy.properties.error_summary" = Bool,
      "properties.tool.properties.mypy.properties.extra_checks" = Bool,
      "properties.tool.properties.mypy.properties.follow_imports" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'error, 'skip, 'silent, 'normal |] ],
      "properties.tool.properties.mypy.properties.follow_imports_for_stubs" =
        Bool,
      "properties.tool.properties.mypy.properties.follow_untyped_imports" =
        Bool,
      "properties.tool.properties.mypy.properties.force_union_syntax" = Bool,
      "properties.tool.properties.mypy.properties.force_uppercase_builtins" =
        Bool,
      "properties.tool.properties.mypy.properties.hide_error_codes" = Bool,
      "properties.tool.properties.mypy.properties.ignore_errors" = Bool,
      "properties.tool.properties.mypy.properties.ignore_missing_imports" =
        Bool,
      "properties.tool.properties.mypy.properties.implicit_optional" = Bool,
      "properties.tool.properties.mypy.properties.implicit_reexport" = Bool,
      "properties.tool.properties.mypy.properties.incremental" = Bool,
      "properties.tool.properties.mypy.properties.junit_xml" = String,
      "properties.tool.properties.mypy.properties.linecount_report" = String,
      "properties.tool.properties.mypy.properties.linecoverage_report" = String,
      "properties.tool.properties.mypy.properties.lineprecision_report" =
        String,
      "properties.tool.properties.mypy.properties.local_partial_types" = Bool,
      "properties.tool.properties.mypy.properties.no_implicit_optional" = Bool,
      "properties.tool.properties.mypy.properties.no_implicit_reexport" = Bool,
      "properties.tool.properties.mypy.properties.no_site_packages" = Bool,
      "properties.tool.properties.mypy.properties.pdb" = Bool,
      "properties.tool.properties.mypy.properties.plugins" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.mypy.properties.pretty" = Bool,
      "properties.tool.properties.mypy.properties.raise_exceptions" = Bool,
      "properties.tool.properties.mypy.properties.scripts_are_modules" = Bool,
      "properties.tool.properties.mypy.properties.show_absolute_path" = Bool,
      "properties.tool.properties.mypy.properties.show_column_numbers" = Bool,
      "properties.tool.properties.mypy.properties.show_error_code_links" = Bool,
      "properties.tool.properties.mypy.properties.show_error_context" = Bool,
      "properties.tool.properties.mypy.properties.show_traceback" = Bool,
      "properties.tool.properties.mypy.properties.skip_cache_mtime_checks" =
        Bool,
      "properties.tool.properties.mypy.properties.skip_version_check" = Bool,
      "properties.tool.properties.mypy.properties.sqlite_cache" = Bool,
      "properties.tool.properties.mypy.properties.strict" = Bool,
      "properties.tool.properties.mypy.properties.strict_bytes" = Bool,
      "properties.tool.properties.mypy.properties.strict_concatenate" = Bool,
      "properties.tool.properties.mypy.properties.strict_equality" = Bool,
      "properties.tool.properties.mypy.properties.strict_optional" = Bool,
      "properties.tool.properties.mypy.properties.untyped_calls_exclude" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.mypy.properties.verbosity" =
        std.number.Integer,
      "properties.tool.properties.mypy.properties.warn_incomplete_stub" = Bool,
      "properties.tool.properties.mypy.properties.warn_no_return" = Bool,
      "properties.tool.properties.mypy.properties.warn_return_any" = Bool,
      "properties.tool.properties.mypy.properties.warn_unreachable" = Bool,
      "properties.tool.properties.mypy.properties.warn_unused_configs" = Bool,
      "properties.tool.properties.mypy.properties.warn_unused_ignores" = Bool,
      "properties.tool.properties.mypy.properties.xml_report" = String,
      "properties.tool.properties.pdm.definitions.command-options" =
        Array String,
      "properties.tool.properties.pdm.definitions.dev-dependency" = String,
      "properties.tool.properties.pdm.definitions.dev-dependency-group" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.pdm.definitions.dev-dependency",
                String
              ]
          ),
      "properties.tool.properties.pdm.definitions.env-file" =
        std.contract.any_of
            [
              {
                additionalProperties | js2n.Never | optional,
                override
                  | String
                  | doc "Path to a file with env vars. Existing vars will be overwritten"
                  | optional,
                ..
              },
              String
            ],
      "properties.tool.properties.pdm.definitions.env-vars" = { _ | String },
      "properties.tool.properties.pdm.definitions.package-source" =
        {
            exclude_packages
              | Array String
              | doc "Glob patterns of packages that should not be used from this source. Ignored if include_packages configuration is present"
              | optional,
            include_packages
              | Array String
              | doc "Glob patterns of the only packages that should be used from this source"
              | optional,
            name | String | doc "Name of the package source",
            password
              | String
              | doc "Password for the package source"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'find_links, 'index |]
              | doc "index or find_links"
              | optional,
            url | String | doc "HTTP url for the package source",
            username
              | String
              | doc "Username for the package source"
              | optional,
            verify_ssl
              | Bool
              | doc "Whether to verify certificates when using the package source"
              | optional,
          },
      "properties.tool.properties.pdm.definitions.pdm-script" =
        std.contract.any_of
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            call = String,
                            env =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-vars",
                                    { _ | Dyn }
                                  ],
                            env_file =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-file",
                                    std.contract.any_of [ { _ | Dyn }, String ]
                                  ],
                            help =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.script-help",
                                    String
                                  ],
                          },
                      required = { call = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            cmd =
                              std.contract.any_of
                                  [ String, js2n.array.ArrayOf String ],
                            env =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-vars",
                                    { _ | Dyn }
                                  ],
                            env_file =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-file",
                                    std.contract.any_of [ { _ | Dyn }, String ]
                                  ],
                            help =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.script-help",
                                    String
                                  ],
                          },
                      required = { cmd = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            env =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-vars",
                                    { _ | Dyn }
                                  ],
                            env_file =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-file",
                                    std.contract.any_of [ { _ | Dyn }, String ]
                                  ],
                            help =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.script-help",
                                    String
                                  ],
                            shell = String,
                          },
                      required = { shell = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            composite = js2n.array.ArrayOf String,
                            env =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-vars",
                                    { _ | Dyn }
                                  ],
                            env_file =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.env-file",
                                    std.contract.any_of [ { _ | Dyn }, String ]
                                  ],
                            help =
                              std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.pdm.definitions.script-help",
                                    String
                                  ],
                            keep_going = Bool,
                          },
                      required = { composite = true, },
                    }
                ],
              String
            ],
      "properties.tool.properties.pdm.definitions.script-help" = String,
      "properties.tool.properties.pdm.definitions.wheel-data-array" =
        Array (
            std.contract.any_of
              [
                {
                  path | String | doc "Path pattern of included files",
                  relative-to
                    | String
                    | doc "If specified, the relative paths of the matched files will be calculated based on this directory, otherwise the files will be flattened and installed directly under the scheme directory"
                    | optional,
                },
                String
              ]
          ),
      "properties.tool.properties.pdm.properties.dockerize.definitions.fnmatch-filter" =
        String,
      "properties.tool.properties.pdm.properties.dockerize.definitions.selector" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.pdm.properties.dockerize.definitions.fnmatch-filter",
                  String
                ],
              Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.pdm.properties.dockerize.definitions.fnmatch-filter",
                    String
                  ]
              )
            ],
      "properties.tool.properties.poe.definitions.cmd_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                cmd
                  | String
                  | doc "Executes a single command as a subprocess without a shell. Supports glob patterns for file matching, parameter expansion, and pattern matching. Environment variable templating is also supported within the command.",
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.common_task" =
        {
            args
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [
                            refs."properties.tool.properties.poe.definitions.common_task.properties.args.definitions.args",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    _ | std.contract.Sequence
                      [
                        refs."properties.tool.properties.poe.definitions.common_task.properties.args.definitions.args",
                        { _ | Dyn }
                      ]
                  }
                ]
              | doc "Define CLI options, positional arguments, or flags that this task should accept."
              | optional,
            capture_stdout
              | js2n.string.Matches "^(?:\\$\\{[^\\}]+\\}/)?.+$"
              | doc "Redirects the task output to a file with the given path. Supports environment variable interpolation."
              | optional,
            cwd
              | js2n.string.MinLength 1
              | js2n.string.Matches "^(?!\\s*$).+"
              | doc "Specify the current working directory that this task should run with. This can be a relative path from the project root or an absolute path, and environment variables can be used in the format ${VAR_NAME}."
              | optional,
            deps
              | Array String
              | doc "A list of task invocations that will be executed before this one. Each item in the list is a reference to another task defined within the tasks object."
              | optional,
            env
              | {
                _ | std.contract.any_of
                  [
                    String,
                    {
                      "default"
                        | String
                        | doc "A default value for an environment variable that will be used only if the variable is not already set."
                        | optional,
                      ..
                    }
                  ]
              }
              | js2n.record.FieldsMatch "^.+$"
              | optional,
            envfile
              | std.contract.any_of [ String, Array String ]
              | doc "Provide one or more env files to be loaded before running this task. If an array is provided, files will be loaded in the given order."
              | optional,
            help
              | js2n.Nullable String
              | doc "Help text to be displayed next to the task name in the documentation when poe is run without specifying a task."
              | optional,
            use_exec
              | Bool
              | doc "Specify that this task should be executed in the same process, instead of as a subprocess. Note: This feature has limitations, such as not being compatible with tasks that are referenced by other tasks and not working on Windows."
              | optional,
            uses
              | { _ | String }
              | doc "Allows this task to use the output of other tasks which are executed first. The values are references to the names of the tasks, and the keys are environment variables by which the results of those tasks will be accessible in this task."
              | optional,
            ..
          },
      "properties.tool.properties.poe.definitions.common_task.properties.args.definitions.args" =
        {
            "default"
              | std.contract.any_of
                [ String, std.number.Integer, Number, Bool, js2n.Null ]
              | doc "The default value for the argument when not provided."
              | optional,
            help
              | String
              | doc "A short description of the argument to include in the documentation of the task."
              | optional,
            multiple
              | std.contract.any_of [ Bool, std.number.Integer ]
              | doc "Indicates if multiple values are allowed for the argument."
              | optional,
            name | String | doc "The name of the argument.",
            options
              | Array String
              | doc "A list of options to be provided along with the argument."
              | optional,
            positional
              | Bool
              | doc "Indicates if the argument is positional."
              | optional,
            required
              | Bool
              | doc "Indicates if the argument is required."
              | optional,
            type
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "The type of the argument."
              | optional,
            ..
          },
      "properties.tool.properties.poe.definitions.expr_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                assert
                  | Bool
                  | doc "A boolean indicating if the task will fail when the result of the expression is falsy."
                  | optional,
                expr
                  | String
                  | doc "A Python expression to be evaluated. Can include environment variables and arguments.",
                imports
                  | Array String
                  | doc "A list of Python modules to be imported for use in the expression."
                  | optional,
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.one_of_tasks" =
        js2n.OneOf
            [
              String,
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.cmd_task",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.script_task",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.shell_task",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.sequence_task",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.expr_task",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.switch_task",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poe.definitions.ref_task",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.poe.definitions.ref_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                ref
                  | String
                  | doc "A reference to another task by name, with optional additional arguments appended.",
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.script_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                print_result
                  | Bool
                  | doc "If true then the return value of the Python callable will be output to stdout, unless it is None."
                  | optional,
                script
                  | String
                  | doc "A reference to a Python callable to import and execute, and optionally values or expressions to pass as arguments. If the target Python function is an async function then it will be executed with asyncio.run.",
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.sequence_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                default_item_type
                  | String
                  | doc "Change the default item type that strings in the sequence are interpreted as."
                  | optional,
                ignore_fail
                  | std.contract.any_of
                    [
                      Bool,
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'return_non_zero, 'return_zero |]
                        ]
                    ]
                  | doc "If set, the sequence will continue running even if one of the tasks fails."
                  | optional,
                sequence
                  | refs."properties.tool.properties.poe.definitions.tasks_array"
                  | Array Dyn
                  | doc "A sequence task is defined by an array of tasks or command names to be run one after the other. Each item in the sequence can be a command name, a command, script, reference to another task, or another sequence.",
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.shell_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                interpreter
                  | std.contract.any_of [ String, Array String ]
                  | doc "Specify the shell interpreter that this task should execute with, or a list of interpreters in order of preference."
                  | optional,
                shell
                  | String
                  | doc "A simple command line or a sequence of commands to be executed inside a new shell. It can consist of multiple statements. These tasks can leverage the full syntax of the shell interpreter such as command substitution, pipes, background processes, etc.",
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.switch_task" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.poe.definitions.common_task",
              {
                control
                  | refs."properties.tool.properties.poe.definitions.one_of_tasks"
                  | doc "A required definition for a task to be executed to determine which case task to run.",
                "default"
                  | std.enum.TagOrString
                  | [| 'fail, 'pass |]
                  | doc "Defines the default behavior if no cases are matched. Can either pass or fail."
                  | optional,
                switch
                  | Array (
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poe.definitions.one_of_tasks",
                        {
                          case
                            | std.contract.any_of [ String, Array String ]
                            | doc "The value(s) that match the control task's output to determine this case should be executed."
                            | optional,
                          ..
                        }
                      ]
                  )
                  | doc "A list of cases with tasks to execute based on the control task's output.",
                ..
              }
            ],
      "properties.tool.properties.poe.definitions.tasks_array" =
        Array refs."properties.tool.properties.poe.definitions.one_of_tasks",
      "properties.tool.properties.poetry.definitions.poetry-author-pattern" =
        js2n.string.Matches "^(?:[- .,\\w\\d'’\"():&]+)(?: <(?:.+?)>)?",
      "properties.tool.properties.poetry.definitions.poetry-authors" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.poetry.definitions.poetry-author-pattern",
                String
              ]
          ),
      "properties.tool.properties.poetry.definitions.poetry-build-config" =
        {
            generate-setup-file
              | Bool
              | doc "Generate and include a setup.py file in sdist."
              | optional,
            script
              | refs."properties.tool.properties.poetry.definitions.poetry-build-script"
              | String
              | optional,
          },
      "properties.tool.properties.poetry.definitions.poetry-build-script" =
        String,
      "properties.tool.properties.poetry.definitions.poetry-build-section" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-build-script",
                  String
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-build-config",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.poetry.definitions.poetry-dependency-any" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-pep440-version",
                  String
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-long-dependency",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-git-dependency",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-file-dependency",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-path-dependency",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-url-dependency",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-multiple-constraints-dependency",
                  Array Dyn
                ]
            ],
      "properties.tool.properties.poetry.definitions.poetry-description" =
        js2n.string.Matches "^[^\n]*$",
      "properties.tool.properties.poetry.definitions.poetry-extra-script-legacy" =
        {
            callable
              | refs."properties.tool.properties.poetry.definitions.poetry-script-legacy"
              | String
              | doc "The entry point of the script. Deprecated in favour of reference."
              | optional,
            extras
              | Array String
              | doc "The required extras for this script."
              | optional,
          },
      "properties.tool.properties.poetry.definitions.poetry-extra-scripts" =
        {
            extras
              | Array String
              | doc "The required extras for this script. Only applicable if type is console."
              | optional,
            reference
              | String
              | doc "If type is file this is the relative path of the script file, if console it is the module name.",
            type
              | std.enum.TagOrString
              | [| 'console, 'file |]
              | doc "Value can be either file or console.",
          },
      "properties.tool.properties.poetry.definitions.poetry-file-dependency" =
        {
            extras
              | Array String
              | doc "The required extras for this dependency."
              | optional,
            file | String | doc "The path to the file.",
            markers
              | String
              | doc "The PEP 508 compliant environment markers for which the dependency should be installed."
              | optional,
            "optional"
              | Bool
              | doc "Whether the dependency is optional or not."
              | optional,
            platform
              | String
              | doc "The platform(s) for which the dependency should be installed."
              | optional,
            python
              | String
              | doc "The python versions for which the dependency should be installed."
              | optional,
          },
      "properties.tool.properties.poetry.definitions.poetry-git-dependency" =
        {
            allow-prereleases
              | Bool
              | doc "Whether the dependency allows prereleases or not."
              | optional,
            allows-prereleases
              | Bool
              | doc "Whether the dependency allows prereleases or not."
              | optional,
            branch | String | doc "The branch to checkout." | optional,
            develop
              | Bool
              | doc "Whether to install the dependency in development mode."
              | optional,
            extras
              | Array String
              | doc "The required extras for this dependency."
              | optional,
            git
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches
                    "^([A-Za-z0-9\\-]+@|https://|http://)[A-Za-z][A-Za-z0-9+.-]*(:|/)[A-Za-z0-9\\-\\.]+(/[A-Za-z0-9\\-_\\.]+)+\\.git$"
                ]
              | doc "The url of the git repository.",
            markers
              | String
              | doc "The PEP 508 compliant environment markers for which the dependency should be installed."
              | optional,
            "optional"
              | Bool
              | doc "Whether the dependency is optional or not."
              | optional,
            platform
              | String
              | doc "The platform(s) for which the dependency should be installed."
              | optional,
            python
              | String
              | doc "The python versions for which the dependency should be installed."
              | optional,
            rev | String | doc "The revision to checkout." | optional,
            subdirectory
              | String
              | doc "The relative path to the directory where the package is located."
              | optional,
            tag | String | doc "The tag to checkout." | optional,
          },
      "properties.tool.properties.poetry.definitions.poetry-include-path" =
        String,
      "properties.tool.properties.poetry.definitions.poetry-long-dependency" =
        {
            allow-prereleases
              | Bool
              | doc "Whether the dependency allows prereleases or not."
              | optional,
            allows-prereleases
              | Bool
              | doc "Whether the dependency allows prereleases or not."
              | optional,
            extras
              | Array String
              | doc "The required extras for this dependency."
              | optional,
            markers
              | String
              | doc "The PEP 508 compliant environment markers for which the dependency should be installed."
              | optional,
            "optional"
              | Bool
              | doc "Whether the dependency is optional or not."
              | optional,
            platform
              | String
              | doc "The platform(s) for which the dependency should be installed."
              | optional,
            python
              | String
              | doc "The python versions for which the dependency should be installed."
              | optional,
            source
              | String
              | doc "The exclusive source used to search for this dependency."
              | optional,
            version
              | refs."properties.tool.properties.poetry.definitions.poetry-pep440-version"
              | String,
          },
      "properties.tool.properties.poetry.definitions.poetry-maintainers" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.poetry.definitions.poetry-author-pattern",
                String
              ]
          ),
      "properties.tool.properties.poetry.definitions.poetry-multiple-constraints-dependency" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poetry.definitions.poetry-pep440-version",
                        String
                      ],
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poetry.definitions.poetry-long-dependency",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poetry.definitions.poetry-git-dependency",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poetry.definitions.poetry-file-dependency",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poetry.definitions.poetry-path-dependency",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.poetry.definitions.poetry-url-dependency",
                        { _ | Dyn }
                      ]
                  ]
              )
            ],
      "properties.tool.properties.poetry.definitions.poetry-name" = String,
      "properties.tool.properties.poetry.definitions.poetry-package-format" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'wheel, 'sdist |] ],
      "properties.tool.properties.poetry.definitions.poetry-package-formats" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-package-format",
                  String
                ],
              Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.poetry.definitions.poetry-package-format",
                    String
                  ]
              )
            ],
      "properties.tool.properties.poetry.definitions.poetry-path-dependency" =
        {
            develop
              | Bool
              | doc "Whether to install the dependency in development mode."
              | optional,
            extras
              | Array String
              | doc "The required extras for this dependency."
              | optional,
            markers
              | String
              | doc "The PEP 508 compliant environment markers for which the dependency should be installed."
              | optional,
            "optional"
              | Bool
              | doc "Whether the dependency is optional or not."
              | optional,
            path | String | doc "The path to the dependency.",
            platform
              | String
              | doc "The platform(s) for which the dependency should be installed."
              | optional,
            python
              | String
              | doc "The python versions for which the dependency should be installed."
              | optional,
          },
      "properties.tool.properties.poetry.definitions.poetry-pep440-version" =
        String,
      "properties.tool.properties.poetry.definitions.poetry-priority" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'explicit, 'supplemental, 'secondary, 'primary, '"default" |]
            ],
      "properties.tool.properties.poetry.definitions.poetry-script-legacy" =
        String,
      "properties.tool.properties.poetry.definitions.poetry-script-table" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-extra-script-legacy",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.poetry.definitions.poetry-extra-scripts",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.poetry.definitions.poetry-url-dependency" =
        {
            extras
              | Array String
              | doc "The required extras for this dependency."
              | optional,
            markers
              | String
              | doc "The PEP 508 compliant environment markers for which the dependency should be installed."
              | optional,
            "optional"
              | Bool
              | doc "Whether the dependency is optional or not."
              | optional,
            platform
              | String
              | doc "The platform(s) for which the dependency should be installed."
              | optional,
            python
              | String
              | doc "The python versions for which the dependency should be installed."
              | optional,
            url | String | doc "The url to the file.",
          },
      "properties.tool.properties.poetry.definitions.poetry-version" = String,
      "properties.tool.properties.pyright.definitions.analyzeUnannotatedFunctions" =
        Bool,
      "properties.tool.properties.pyright.definitions.deprecateTypingAliases" =
        Bool,
      "properties.tool.properties.pyright.definitions.diagnostic" =
        js2n.Enum [ "none", "information", "warning", "error", true, false ],
      "properties.tool.properties.pyright.definitions.disableBytesTypePromotions" =
        Bool,
      "properties.tool.properties.pyright.definitions.enableExperimentalFeatures" =
        Bool,
      "properties.tool.properties.pyright.definitions.enableReachabilityAnalysis" =
        Bool,
      "properties.tool.properties.pyright.definitions.enableTypeIgnoreComments" =
        Bool,
      "properties.tool.properties.pyright.definitions.extraPaths" =
        Array String,
      "properties.tool.properties.pyright.definitions.pythonPlatform" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'All, 'Linux, 'Darwin, 'Windows |] ],
      "properties.tool.properties.pyright.definitions.pythonVersion" =
        js2n.string.Matches "^3\\.[0-9]+$",
      "properties.tool.properties.pyright.definitions.reportAbstractUsage" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportArgumentType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportAssertAlwaysTrue" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportAssertTypeFailure" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportAssignmentType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportAttributeAccessIssue" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportCallInDefaultInitializer" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportCallIssue" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportConstantRedefinition" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportDeprecated" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportDuplicateImport" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportFunctionMemberAccess" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportGeneralTypeIssues" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportImplicitOverride" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportImplicitStringConcatenation" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportImportCycles" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportIncompatibleMethodOverride" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportIncompatibleVariableOverride" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportIncompleteStub" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInconsistentConstructor" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInconsistentOverload" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportIndexIssue" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInvalidStringEscapeSequence" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInvalidStubStatement" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInvalidTypeArguments" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInvalidTypeForm" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportInvalidTypeVarUse" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMatchNotExhaustive" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMissingImports" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMissingModuleSource" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMissingParameterType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMissingSuperCall" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMissingTypeArgument" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportMissingTypeStubs" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportNoOverloadImplementation" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOperatorIssue" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOptionalCall" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOptionalContextManager" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOptionalIterable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOptionalMemberAccess" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOptionalOperand" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOptionalSubscript" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportOverlappingOverload" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportPossiblyUnboundVariable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportPrivateImportUsage" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportPrivateUsage" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportPropertyTypeMismatch" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportRedeclaration" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportReturnType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportSelfClsParameterName" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportShadowedImports" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportTypeCommentUsage" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportTypedDictNotRequiredAccess" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnboundVariable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUndefinedVariable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnhashable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUninitializedInstanceVariable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnknownArgumentType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnknownLambdaType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnknownMemberType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnknownParameterType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnknownVariableType" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnnecessaryCast" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnnecessaryComparison" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnnecessaryContains" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnnecessaryIsInstance" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnnecessaryTypeIgnoreComment" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnsupportedDunderAll" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUntypedBaseClass" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUntypedClassDecorator" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUntypedFunctionDecorator" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUntypedNamedTuple" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedCallResult" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedClass" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedCoroutine" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedExcept" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedExpression" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedFunction" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedImport" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportUnusedVariable" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.reportWildcardImportFromLibrary" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.pyright.definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "properties.tool.properties.pyright.definitions.strictDictionaryInference" =
        Bool,
      "properties.tool.properties.pyright.definitions.strictListInference" =
        Bool,
      "properties.tool.properties.pyright.definitions.strictParameterNoneValue" =
        Bool,
      "properties.tool.properties.pyright.definitions.strictSetInference" =
        Bool,
      "properties.tool.properties.pytest.definitions.AsyncioScope" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'session, 'package, 'module, 'class, 'function |]
            ],
      "properties.tool.properties.pytest.definitions.IniOptions" =
        {
            addopts
              | std.contract.any_of [ Array String, String ]
              | doc "Extra command line options to be added by default."
              | optional,
            cache_dir
              | String
              | doc "Sets directory for cache plugin. Can include environment variables."
              | optional,
            consider_namespace_packages
              | Bool
              | doc "Controls whether pytest attempts to identify namespace packages."
              | optional,
            console_output_style
              | std.enum.TagOrString
              | [|
                'count,
                'progress-even-when-capture-no,
                'progress,
                'classic
              |]
              | doc "Sets console output style during test execution."
              | optional,
            doctest_encoding
              | String
              | doc "Sets default encoding for doctest files."
              | optional,
            doctest_optionflags
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies doctest flag names from the `doctest` module."
              | optional,
            empty_parameter_set_mark
              | std.enum.TagOrString
              | [| 'fail_at_collect, 'xfail, 'skip |]
              | doc "Defines behavior for empty parameter sets in parameterization."
              | optional,
            faulthandler_timeout
              | std.number.Integer
              | doc "Sets timeout in seconds for dumping the traceback of all threads if a test takes too long."
              | optional,
            filterwarnings
              | std.contract.any_of [ Array String, String ]
              | doc "Sets action to take for matching warnings. Each item is a warning specification string."
              | optional,
            junit_duration_report
              | std.enum.TagOrString
              | [| 'call, 'total |]
              | doc "Sets how to record test durations in JUnit XML report."
              | optional,
            junit_family
              | std.enum.TagOrString
              | [| 'xunit2, 'xunit1 |]
              | doc "Sets format of generated JUnit XML files."
              | optional,
            junit_log_passing_tests
              | Bool
              | doc "If `junit_logging` is not 'no', controls whether to include output of passing tests."
              | optional,
            junit_logging
              | std.enum.TagOrString
              | [| 'all, 'out-err, 'system-err, 'system-out, 'log, 'no |]
              | doc "Controls whether captured output is written to JUnit XML file."
              | optional,
            junit_suite_name
              | String
              | doc "Sets name of root test suite in JUnit XML report."
              | optional,
            log_auto_indent
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Off, 'On |] ]
                ]
              | doc "Allows selective auto-indentation of multiline log messages. Can be true, false, positive integer, 'On', or 'Off'."
              | optional,
            log_cli
              | Bool
              | doc "Enables log display during test run (live logging)."
              | optional,
            log_cli_date_format
              | String
              | doc "Sets date format for live logging using `time.strftime()` format."
              | optional,
            log_cli_format
              | String
              | doc "Sets message format for live logging using `logging` format."
              | optional,
            log_cli_level
              | refs."properties.tool.properties.pytest.definitions.LogLevel"
              | doc "Sets minimum log level for live logging. Can be level name or integer value."
              | optional,
            log_date_format
              | String
              | doc "Sets date format for captured logging using `time.strftime()` format."
              | optional,
            log_file
              | String
              | doc "Sets file path to write log messages to."
              | optional,
            log_file_date_format
              | String
              | doc "Sets date format for log file using `time.strftime()` format."
              | optional,
            log_file_format
              | String
              | doc "Sets message format for log file using `logging` format."
              | optional,
            log_file_level
              | refs."properties.tool.properties.pytest.definitions.LogLevel"
              | doc "Sets minimum log level for log file. Can be level name or integer value."
              | optional,
            log_format
              | String
              | doc "Sets message format for captured logging using `logging` format."
              | optional,
            log_level
              | refs."properties.tool.properties.pytest.definitions.LogLevel"
              | doc "Sets minimum log level for captured logging. Can be level name or integer value."
              | optional,
            markers
              | std.contract.any_of [ Array String, String ]
              | doc "Allows registering additional markers for test functions."
              | optional,
            minversion
              | String
              | doc "Specifies minimum required pytest version."
              | optional,
            norecursedirs
              | std.contract.any_of [ Array String, String ]
              | doc "Sets base name patterns for directories to be skipped during test discovery. Uses fnmatch-style matching. Replaces default patterns."
              | optional,
            python_classes
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies name prefixes or glob patterns for identifying test classes."
              | optional,
            python_files
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies glob patterns for identifying Python test module files."
              | optional,
            python_functions
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies name prefixes or glob patterns for identifying test functions and methods."
              | optional,
            pythonpath
              | std.contract.any_of [ Array String, String ]
              | doc "Sets list of directories to be added to the Python search path. Paths are relative to root directory."
              | optional,
            required_plugins
              | std.contract.any_of [ Array String, String ]
              | doc "Space-separated list of plugins required to run pytest. Can include version specifiers."
              | optional,
            testpaths
              | std.contract.any_of [ Array String, String ]
              | doc "Sets directories to search for tests when no specific paths are given on the command line. Paths are relative to root directory. Shell-style wildcards can be used."
              | optional,
            tmp_path_retention_count
              | std.number.Integer
              | doc "Number of sessions to retain `tmp_path` directories for."
              | optional,
            tmp_path_retention_policy
              | std.enum.TagOrString
              | [| 'none, 'failed, 'all |]
              | doc "Controls which `tmp_path` directories to retain based on test outcome."
              | optional,
            usefixtures
              | std.contract.any_of [ Array String, String ]
              | doc "List of fixtures that will be applied to all test functions."
              | optional,
            verbosity_assertions
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ]
                ]
              | doc "Sets verbosity specific to assertion-related output. Can be integer or 'auto'."
              | optional,
            verbosity_test_cases
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ]
                ]
              | doc "Sets verbosity specific to test case execution output. Can be integer or 'auto'."
              | optional,
            xfail_strict
              | Bool
              | doc "If true, test suite will fail if a test marked with `@pytest.mark.xfail` unexpectedly passes."
              | optional,
            ..
          },
      "properties.tool.properties.pytest.definitions.IniOptionsAsyncio" =
        {
            asyncio_default_fixture_loop_scope
              | refs."properties.tool.properties.pytest.definitions.AsyncioScope"
              | String
              | doc "Default event loop scope of asynchronous fixtures. When this configuration option is unset, it defaults to the fixture scope. In future versions of pytest-asyncio, the value will default to function when unset"
              | optional,
            asyncio_default_test_loop_scope
              | refs."properties.tool.properties.pytest.definitions.AsyncioScope"
              | String
              | doc "Default event loop scope of asynchronous tests. When this configuration option is unset, it default to function scope"
              | optional,
            asyncio_mode
              | js2n.OneOf [ js2n.Const "auto", js2n.Const "strict" ]
              | String
              | doc "Sets the asyncio mode for pytest-asyncio."
              | optional,
            ..
          },
      "properties.tool.properties.pytest.definitions.LogLevel" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.number.Integer, js2n.number.Minimum 0 ],
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'NOTSET, 'DEBUG, 'INFO, 'WARNING, 'ERROR, 'CRITICAL |]
                ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'WARN, 'FATAL |] ]
            ],
      "properties.tool.properties.ruff.definitions.Alias" = String,
      "properties.tool.properties.ruff.definitions.AnalyzeOptions" =
        {
            detect-string-imports
              | js2n.Nullable Bool
              | doc "Whether to detect imports from string literals. When enabled, Ruff will search for string literals that \"look like\" import paths, and include them in the import map, if they resolve to valid Python modules."
              | optional,
            direction
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.Direction"
              | doc "Whether to generate a map from file to files that it depends on (dependencies) or files that depend on it (dependents)."
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                A list of file patterns to exclude from analysis in addition to the files excluded globally (see [`exclude`](#exclude), and [`extend-exclude`](#extend-exclude)).
                
                Exclusions are based on globs, and can be either:
                
                - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                
                For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            include-dependencies
              | js2n.Nullable ({ _ | Array String })
              | doc "A map from file path to the list of Python or non-Python file paths or globs that should be considered dependencies of that file, regardless of whether relevant imports are detected."
              | optional,
            preview
              | js2n.Nullable Bool
              | doc "Whether to enable preview mode. When preview mode is enabled, Ruff will expose unstable commands."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.ApiBan" =
        { msg | String | doc "The message to display when the API is used.", },
      "properties.tool.properties.ruff.definitions.BannedAliases" =
        Array String,
      "properties.tool.properties.ruff.definitions.ConstantType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'str, 'int, 'float, 'complex, 'bytes |]
            ],
      "properties.tool.properties.ruff.definitions.Convention" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'google |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'numpy |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'pep257 |] ]
            ],
      "properties.tool.properties.ruff.definitions.Direction" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'Dependencies |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'Dependents |] ]
            ],
      "properties.tool.properties.ruff.definitions.DocstringCodeLineWidth" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.ruff.definitions.LineWidth",
                  Number
                ],
              std.contract.Equal "dynamic"
            ],
      "properties.tool.properties.ruff.definitions.Flake8AnnotationsOptions" =
        {
            allow-star-arg-any
              | js2n.Nullable Bool
              | doc "Whether to suppress `ANN401` for dynamically typed `*args` and `**kwargs` arguments."
              | optional,
            ignore-fully-untyped
              | js2n.Nullable Bool
              | doc "Whether to suppress `ANN*` rules for any declaration that hasn't been typed at all. This makes it easier to gradually add types to a codebase."
              | optional,
            mypy-init-return
              | js2n.Nullable Bool
              | doc "Whether to allow the omission of a return type hint for `__init__` if at least one argument is annotated."
              | optional,
            suppress-dummy-args
              | js2n.Nullable Bool
              | doc "Whether to suppress `ANN000`-level violations for arguments matching the \"dummy\" variable regex (like `_`)."
              | optional,
            suppress-none-returning
              | js2n.Nullable Bool
              | doc m%"
                Whether to suppress `ANN200`-level violations for functions that meet either of the following criteria:
                
                - Contain no `return` statement. - Explicit `return` statement(s) all return `None` (explicitly or implicitly).
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8BanditOptions" =
        {
            allowed-markup-calls
              | js2n.Nullable (Array String)
              | doc m%"
                A list of callable names, whose result may be safely passed into [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `bleach.clean`, rather than `clean`).
                
                This setting helps you avoid false positives in code like:
                
                ```python from bleach import clean from markupsafe import Markup
                
                cleaned_markup = Markup(clean(some_user_input)) ```
                
                Where the use of [`bleach.clean`](https://bleach.readthedocs.io/en/latest/clean.html) usually ensures that there's no XSS vulnerability.
                
                Although it is not recommended, you may also use this setting to whitelist other kinds of calls, e.g. calls to i18n translation functions, where how safe that is will depend on the implementation and how well the translations are audited.
                
                Another common use-case is to wrap the output of functions that generate markup like [`xml.etree.ElementTree.tostring`](https://docs.python.org/3/library/xml.etree.elementtree.html#xml.etree.ElementTree.tostring) or template rendering engines where sanitization of potential user input is either already baked in or has to happen before rendering.
              "%
              | optional,
            check-typed-exception
              | js2n.Nullable Bool
              | doc "Whether to disallow `try`-`except`-`pass` (`S110`) for specific exception types. By default, `try`-`except`-`pass` is only disallowed for `Exception` and `BaseException`."
              | optional,
            extend-markup-names
              | js2n.Nullable (Array String)
              | doc m%"
                A list of additional callable names that behave like [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `webhelpers.html.literal`, rather than `literal`).
              "%
              | optional,
            hardcoded-tmp-directory
              | js2n.Nullable (Array String)
              | doc "A list of directories to consider temporary (see `S108`)."
              | optional,
            hardcoded-tmp-directory-extend
              | js2n.Nullable (Array String)
              | doc "A list of directories to consider temporary, in addition to those specified by [`hardcoded-tmp-directory`](#lint_flake8-bandit_hardcoded-tmp-directory) (see `S108`)."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8BooleanTrapOptions" =
        {
            extend-allowed-calls
              | js2n.Nullable (Array String)
              | doc m%"
                Additional callable functions with which to allow boolean traps.
                
                Expects to receive a list of fully-qualified names (e.g., `pydantic.Field`, rather than `Field`).
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8BugbearOptions" =
        {
            extend-immutable-calls
              | js2n.Nullable (Array String)
              | doc m%"
                Additional callable functions to consider "immutable" when evaluating, e.g., the `function-call-in-default-argument` rule (`B008`) or `function-call-in-dataclass-defaults` rule (`RUF009`).
                
                Expects to receive a list of fully-qualified names (e.g., `fastapi.Query`, rather than `Query`).
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8BuiltinsOptions" =
        {
            allowed-modules
              | js2n.Nullable (Array String)
              | doc "List of builtin module names to allow."
              | optional,
            builtins-allowed-modules
              | js2n.Nullable (Array String)
              | doc m%"
                DEPRECATED: This option has been renamed to `allowed-modules`. Use `allowed-modules` instead.
                
                List of builtin module names to allow.
                
                This option is ignored if both `allowed-modules` and `builtins-allowed-modules` are set.
              "%
              | optional,
            builtins-ignorelist
              | js2n.Nullable (Array String)
              | doc m%"
                DEPRECATED: This option has been renamed to `ignorelist`. Use `ignorelist` instead.
                
                Ignore list of builtins.
                
                This option is ignored if both `ignorelist` and `builtins-ignorelist` are set.
              "%
              | optional,
            builtins-strict-checking
              | js2n.Nullable Bool
              | doc m%"
                DEPRECATED: This option has been renamed to `strict-checking`. Use `strict-checking` instead.
                
                Compare module names instead of full module paths.
                
                This option is ignored if both `strict-checking` and `builtins-strict-checking` are set.
              "%
              | optional,
            ignorelist
              | js2n.Nullable (Array String)
              | doc "Ignore list of builtins."
              | optional,
            strict-checking
              | js2n.Nullable Bool
              | doc m%"
                Compare module names instead of full module paths.
                
                Used by [`A005` - `stdlib-module-shadowing`](https://docs.astral.sh/ruff/rules/stdlib-module-shadowing/).
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8ComprehensionsOptions" =
        {
            allow-dict-calls-with-keyword-arguments
              | js2n.Nullable Bool
              | doc "Allow `dict` calls that make use of keyword arguments (e.g., `dict(a=1, b=2)`)."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8CopyrightOptions" =
        {
            author
              | js2n.Nullable String
              | doc "Author to enforce within the copyright notice. If provided, the author must be present immediately following the copyright notice."
              | optional,
            min-file-size
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "A minimum file size (in bytes) required for a copyright notice to be enforced. By default, all files are validated."
              | optional,
            notice-rgx
              | js2n.Nullable String
              | doc m%"
                The regular expression used to match the copyright notice, compiled with the [`regex`](https://docs.rs/regex/latest/regex/) crate. Defaults to `(?i)Copyright\s+((?:\(C\)|©)\s+)?\d{4}((-|,\s)\d{4})*`, which matches the following:
                
                - `Copyright 2023` - `Copyright (C) 2023` - `Copyright 2021-2023` - `Copyright (C) 2021-2023` - `Copyright (C) 2021, 2023`
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8ErrMsgOptions" =
        {
            max-string-length
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum string length for string literals in exception messages."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8GetTextOptions" =
        {
            extend-function-names
              | js2n.Nullable (Array String)
              | doc "Additional function names to consider as internationalization calls, in addition to those included in [`function-names`](#lint_flake8-gettext_function-names)."
              | optional,
            function-names
              | js2n.Nullable (Array String)
              | doc "The function names to consider as internationalization calls."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8ImplicitStrConcatOptions" =
        {
            allow-multiline
              | js2n.Nullable Bool
              | doc m%"
                Whether to allow implicit string concatenations for multiline strings. By default, implicit concatenations of multiline strings are allowed (but continuation lines, delimited with a backslash, are prohibited).
                
                Setting `allow-multiline = false` will automatically disable the `explicit-string-concatenation` (`ISC003`) rule. Otherwise, both implicit and explicit multiline string concatenations would be seen as violations, making it impossible to write a linter-compliant multiline string.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8ImportConventionsOptions" =
        {
            aliases
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.Alias",
                      String
                    ]
                })
              | doc "The conventional aliases for imports. These aliases can be extended by the [`extend-aliases`](#lint_flake8-import-conventions_extend-aliases) option."
              | optional,
            banned-aliases
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.BannedAliases",
                      Array Dyn
                    ]
                })
              | doc "A mapping from module to its banned import aliases."
              | optional,
            banned-from
              | js2n.Nullable
                (std.contract.Sequence [ js2n.array.UniqueItems, Array String ])
              | doc m%"
                A list of modules that should not be imported from using the `from ... import ...` syntax.
                
                For example, given `banned-from = ["pandas"]`, `from pandas import DataFrame` would be disallowed, while `import pandas` would be allowed.
              "%
              | optional,
            extend-aliases
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.Alias",
                      String
                    ]
                })
              | doc "A mapping from module to conventional import alias. These aliases will be added to the [`aliases`](#lint_flake8-import-conventions_aliases) mapping."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8PytestStyleOptions" =
        {
            fixture-parentheses
              | js2n.Nullable Bool
              | doc "Boolean flag specifying whether `@pytest.fixture()` without parameters should have parentheses. If the option is set to `false` (the default), `@pytest.fixture` is valid and `@pytest.fixture()` is invalid. If set to `true`, `@pytest.fixture()` is valid and `@pytest.fixture` is invalid."
              | optional,
            mark-parentheses
              | js2n.Nullable Bool
              | doc "Boolean flag specifying whether `@pytest.mark.foo()` without parameters should have parentheses. If the option is set to `false` (the default), `@pytest.mark.foo` is valid and `@pytest.mark.foo()` is invalid. If set to `true`, `@pytest.mark.foo()` is valid and `@pytest.mark.foo` is invalid."
              | optional,
            parametrize-names-type
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.ParametrizeNameType",
                    String
                  ])
              | doc m%"
                Expected type for multiple argument names in `@pytest.mark.parametrize`. The following values are supported:
                
                - `csv` — a comma-separated list, e.g. `@pytest.mark.parametrize("name1,name2", ...)` - `tuple` (default) — e.g. `@pytest.mark.parametrize(("name1", "name2"), ...)` - `list` — e.g. `@pytest.mark.parametrize(["name1", "name2"], ...)`
              "%
              | optional,
            parametrize-values-row-type
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.ParametrizeValuesRowType",
                    String
                  ])
              | doc m%"
                Expected type for each row of values in `@pytest.mark.parametrize` in case of multiple parameters. The following values are supported:
                
                - `tuple` (default) — e.g. `@pytest.mark.parametrize(("name1", "name2"), [(1, 2), (3, 4)])` - `list` — e.g. `@pytest.mark.parametrize(("name1", "name2"), [[1, 2], [3, 4]])`
              "%
              | optional,
            parametrize-values-type
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.ParametrizeValuesType",
                    String
                  ])
              | doc m%"
                Expected type for the list of values rows in `@pytest.mark.parametrize`. The following values are supported:
                
                - `tuple` — e.g. `@pytest.mark.parametrize("name", (1, 2, 3))` - `list` (default) — e.g. `@pytest.mark.parametrize("name", [1, 2, 3])`
              "%
              | optional,
            raises-extend-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of additional exception names that require a match= parameter in a `pytest.raises()` call. This extends the default list of exceptions that require a match= parameter. This option is useful if you want to extend the default list of exceptions that require a match= parameter without having to specify the entire list. Note that this option does not remove any exceptions from the default list.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            raises-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of exception names that require a match= parameter in a `pytest.raises()` call.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            warns-extend-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of additional warning names that require a match= parameter in a `pytest.warns()` call. This extends the default list of warnings that require a match= parameter.
                
                This option is useful if you want to extend the default list of warnings that require a match= parameter without having to specify the entire list.
                
                Note that this option does not remove any warnings from the default list.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            warns-require-match-for
              | js2n.Nullable (Array String)
              | doc m%"
                List of warning names that require a match= parameter in a `pytest.warns()` call.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8QuotesOptions" =
        {
            avoid-escape
              | js2n.Nullable Bool
              | doc "Whether to avoid using single quotes if a string contains single quotes, or vice-versa with double quotes, as per [PEP 8](https://peps.python.org/pep-0008/#string-quotes). This minimizes the need to escape quotation marks within strings."
              | optional,
            docstring-quotes
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.Quote"
              | doc m%"
                Quote style to prefer for docstrings (either "single" or "double").
                
                When using the formatter, only "double" is compatible, as the formatter enforces double quotes for docstrings strings.
              "%
              | optional,
            inline-quotes
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.Quote"
              | doc m%"
                Quote style to prefer for inline strings (either "single" or "double").
                
                When using the formatter, ensure that [`format.quote-style`](#format_quote-style) is set to the same preferred quote style.
              "%
              | optional,
            multiline-quotes
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.Quote"
              | doc m%"
                Quote style to prefer for multiline strings (either "single" or "double").
                
                When using the formatter, only "double" is compatible, as the formatter enforces double quotes for multiline strings.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8SelfOptions" =
        {
            extend-ignore-names
              | js2n.Nullable (Array String)
              | doc "Additional names to ignore when considering `flake8-self` violations, in addition to those included in [`ignore-names`](#lint_flake8-self_ignore-names)."
              | optional,
            ignore-names
              | js2n.Nullable (Array String)
              | doc "A list of names to ignore when considering `flake8-self` violations."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8TidyImportsOptions" =
        {
            ban-relative-imports
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.Strictness"
              | doc "Whether to ban all relative imports (`\"all\"`), or only those imports that extend into the parent module or beyond (`\"parents\"`)."
              | optional,
            banned-api
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.ApiBan",
                      { _ | Dyn }
                    ]
                })
              | doc "Specific modules or module members that may not be imported or accessed. Note that this rule is only meant to flag accidental uses, and can be circumvented via `eval` or `importlib`."
              | optional,
            banned-module-level-imports
              | js2n.Nullable (Array String)
              | doc "List of specific modules that may not be imported at module level, and should instead be imported lazily (e.g., within a function definition, or an `if TYPE_CHECKING:` block, or some other nested context)."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8TypeCheckingOptions" =
        {
            exempt-modules
              | js2n.Nullable (Array String)
              | doc "Exempt certain modules from needing to be moved into type-checking blocks."
              | optional,
            quote-annotations
              | js2n.Nullable Bool
              | doc m%"
                Whether to add quotes around type annotations, if doing so would allow the corresponding import to be moved into a type-checking block.
                
                For example, in the following, Python requires that `Sequence` be available at runtime, despite the fact that it's only used in a type annotation:
                
                ```python from collections.abc import Sequence
                
                def func(value: Sequence[int]) -> None: ... ```
                
                In other words, moving `from collections.abc import Sequence` into an `if TYPE_CHECKING:` block above would cause a runtime error, as the type would no longer be available at runtime.
                
                By default, Ruff will respect such runtime semantics and avoid moving the import to prevent such runtime errors.
                
                Setting `quote-annotations` to `true` will instruct Ruff to add quotes around the annotation (e.g., `"Sequence[int]"`), which in turn enables Ruff to move the import into an `if TYPE_CHECKING:` block, like so:
                
                ```python from typing import TYPE_CHECKING
                
                if TYPE_CHECKING: from collections.abc import Sequence
                
                def func(value: "Sequence[int]") -> None: ... ```
                
                Note that this setting has no effect when `from __future__ import annotations` is present, as `__future__` annotations are always treated equivalently to quoted annotations.
              "%
              | optional,
            runtime-evaluated-base-classes
              | js2n.Nullable (Array String)
              | doc m%"
                Exempt classes that list any of the enumerated classes as a base class from needing to be moved into type-checking blocks.
                
                Common examples include Pydantic's `pydantic.BaseModel` and SQLAlchemy's `sqlalchemy.orm.DeclarativeBase`, but can also support user-defined classes that inherit from those base classes. For example, if you define a common `DeclarativeBase` subclass that's used throughout your project (e.g., `class Base(DeclarativeBase) ...` in `base.py`), you can add it to this list (`runtime-evaluated-base-classes = ["base.Base"]`) to exempt models from being moved into type-checking blocks.
              "%
              | optional,
            runtime-evaluated-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                Exempt classes and functions decorated with any of the enumerated decorators from being moved into type-checking blocks.
                
                Common examples include Pydantic's `@pydantic.validate_call` decorator (for functions) and attrs' `@attrs.define` decorator (for classes).
                
                This also supports framework decorators like FastAPI's `fastapi.FastAPI.get` which will work across assignments in the same module.
                
                For example: ```python import fastapi
                
                app = FastAPI("app")
                
                @app.get("/home") def home() -> str: ... ```
                
                Here `app.get` will correctly be identified as `fastapi.FastAPI.get`.
              "%
              | optional,
            strict
              | js2n.Nullable Bool
              | doc m%"
                Enforce `TC001`, `TC002`, and `TC003` rules even when valid runtime imports are present for the same module.
                
                See flake8-type-checking's [strict](https://github.com/snok/flake8-type-checking#strict) option.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.Flake8UnusedArgumentsOptions" =
        {
            ignore-variadic-names
              | js2n.Nullable Bool
              | doc "Whether to allow unused variadic arguments, like `*args` and `**kwargs`."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.FormatOptions" =
        {
            docstring-code-format
              | js2n.Nullable Bool
              | doc m%"
                Whether to format code snippets in docstrings.
                
                When this is enabled, Python code examples within docstrings are automatically reformatted.
                
                For example, when this is enabled, the following code:
                
                ```python def f(x): """ Something about `f`. And an example in doctest format:
                
                >>> f(  x  )
                
                Markdown is also supported:
                
                ```py f(  x  ) ```
                
                As are reStructuredText literal blocks::
                
                f(  x  )
                
                And reStructuredText code blocks:
                
                .. code-block:: python
                
                f(  x  ) """ pass ```
                
                ... will be reformatted (assuming the rest of the options are set to their defaults) as:
                
                ```python def f(x): """ Something about `f`. And an example in doctest format:
                
                >>> f(x)
                
                Markdown is also supported:
                
                ```py f(x) ```
                
                As are reStructuredText literal blocks::
                
                f(x)
                
                And reStructuredText code blocks:
                
                .. code-block:: python
                
                f(x) """ pass ```
                
                If a code snippet in a docstring contains invalid Python code or if the formatter would otherwise write invalid Python code, then the code example is ignored by the formatter and kept as-is.
                
                Currently, doctest, Markdown, reStructuredText literal blocks, and reStructuredText code blocks are all supported and automatically recognized. In the case of unlabeled fenced code blocks in Markdown and reStructuredText literal blocks, the contents are assumed to be Python and reformatted. As with any other format, if the contents aren't valid Python, then the block is left untouched automatically.
              "%
              | optional,
            docstring-code-line-length
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.DocstringCodeLineWidth"
              | doc m%"
                Set the line length used when formatting code snippets in docstrings.
                
                This only has an effect when the `docstring-code-format` setting is enabled.
                
                The default value for this setting is `"dynamic"`, which has the effect of ensuring that any reformatted code examples in docstrings adhere to the global line length configuration that is used for the surrounding Python code. The point of this setting is that it takes the indentation of the docstring into account when reformatting code examples.
                
                Alternatively, this can be set to a fixed integer, which will result in the same line length limit being applied to all reformatted code examples in docstrings. When set to a fixed integer, the indent of the docstring is not taken into account. That is, this may result in lines in the reformatted code example that exceed the globally configured line length limit.
                
                For example, when this is set to `20` and [`docstring-code-format`](#docstring-code-format) is enabled, then this code:
                
                ```python def f(x): ''' Something about `f`. And an example:
                
                .. code-block:: python
                
                foo, bar, quux = this_is_a_long_line(lion, hippo, lemur, bear) ''' pass ```
                
                ... will be reformatted (assuming the rest of the options are set to their defaults) as:
                
                ```python def f(x): """ Something about `f`. And an example:
                
                .. code-block:: python
                
                ( foo, bar, quux, ) = this_is_a_long_line( lion, hippo, lemur, bear, ) """ pass ```
              "%
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                A list of file patterns to exclude from formatting in addition to the files excluded globally (see [`exclude`](#exclude), and [`extend-exclude`](#extend-exclude)).
                
                Exclusions are based on globs, and can be either:
                
                - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                
                For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            indent-style
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.IndentStyle"
              | doc m%"
                Whether to use spaces or tabs for indentation.
                
                `indent-style = "space"` (default):
                
                ```python def f(): print("Hello") #  Spaces indent the `print` statement. ```
                
                `indent-style = "tab"`:
                
                ```python def f(): print("Hello") #  A tab `\t` indents the `print` statement. ```
                
                PEP 8 recommends using spaces for [indentation](https://peps.python.org/pep-0008/#indentation). We care about accessibility; if you do not need tabs for accessibility, we do not recommend you use them.
                
                See [`indent-width`](#indent-width) to configure the number of spaces per indentation and the tab width.
              "%
              | optional,
            line-ending
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.LineEnding"
              | doc m%"
                The character Ruff uses at the end of a line.
                
                * `auto`: The newline style is detected automatically on a file per file basis. Files with mixed line endings will be converted to the first detected line ending. Defaults to `\n` for files that contain no line endings. * `lf`: Line endings will be converted to `\n`. The default line ending on Unix. * `cr-lf`: Line endings will be converted to `\r\n`. The default line ending on Windows. * `native`: Line endings will be converted to `\n` on Unix and `\r\n` on Windows.
              "%
              | optional,
            preview
              | js2n.Nullable Bool
              | doc "Whether to enable the unstable preview style formatting."
              | optional,
            quote-style
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.QuoteStyle",
                    String
                  ])
              | doc m%"
                Configures the preferred quote character for strings. The recommended options are
                
                * `double` (default): Use double quotes `"` * `single`: Use single quotes `'`
                
                In compliance with [PEP 8](https://peps.python.org/pep-0008/) and [PEP 257](https://peps.python.org/pep-0257/), Ruff prefers double quotes for triple quoted strings and docstrings even when using `quote-style = "single"`.
                
                Ruff deviates from using the configured quotes if doing so prevents the need for escaping quote characters inside the string:
                
                ```python a = "a string without any quotes" b = "It's monday morning" ```
                
                Ruff will change the quotes of the string assigned to `a` to single quotes when using `quote-style = "single"`. However, Ruff uses double quotes for the string assigned to `b` because using single quotes would require escaping the `'`, which leads to the less readable code: `'It\'s monday morning'`.
                
                In addition, Ruff supports the quote style `preserve` for projects that already use a mixture of single and double quotes and can't migrate to the `double` or `single` style. The quote style `preserve` leaves the quotes of all strings unchanged.
              "%
              | optional,
            skip-magic-trailing-comma
              | js2n.Nullable Bool
              | doc m%"
                Ruff uses existing trailing commas as an indication that short lines should be left separate. If this option is set to `true`, the magic trailing comma is ignored.
                
                For example, Ruff leaves the arguments separate even though collapsing the arguments to a single line doesn't exceed the line length if `skip-magic-trailing-comma = false`:
                
                ```python # The arguments remain on separate lines because of the trailing comma after `b` def test( a, b, ): pass ```
                
                Setting `skip-magic-trailing-comma = true` changes the formatting to:
                
                ```python # The arguments remain on separate lines because of the trailing comma after `b` def test(a, b): pass ```
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.ImportSection" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.ruff.definitions.ImportType",
                  String
                ],
              String
            ],
      "properties.tool.properties.ruff.definitions.ImportType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'local-folder,
                'first-party,
                'third-party,
                'standard-library,
                'future
              |]
            ],
      "properties.tool.properties.ruff.definitions.IndentStyle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'tab |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'space |] ]
            ],
      "properties.tool.properties.ruff.definitions.IndentWidth" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "properties.tool.properties.ruff.definitions.IsortOptions" =
        {
            case-sensitive
              | js2n.Nullable Bool
              | doc "Sort imports taking into account case sensitivity."
              | optional,
            classes
              | js2n.Nullable (Array String)
              | doc "An override list of tokens to always recognize as a Class for [`order-by-type`](#lint_isort_order-by-type) regardless of casing."
              | optional,
            combine-as-imports
              | js2n.Nullable Bool
              | doc "Combines as imports on the same line. See isort's [`combine-as-imports`](https://pycqa.github.io/isort/docs/configuration/options.html#combine-as-imports) option."
              | optional,
            constants
              | js2n.Nullable (Array String)
              | doc "An override list of tokens to always recognize as a CONSTANT for [`order-by-type`](#lint_isort_order-by-type) regardless of casing."
              | optional,
            default-section
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.ImportSection"
              | doc "Define a default section for any imports that don't fit into the specified [`section-order`](#lint_isort_section-order)."
              | optional,
            detect-same-package
              | js2n.Nullable Bool
              | doc m%"
                Whether to automatically mark imports from within the same package as first-party. For example, when `detect-same-package = true`, then when analyzing files within the `foo` package, any imports from within the `foo` package will be considered first-party.
                
                This heuristic is often unnecessary when `src` is configured to detect all first-party sources; however, if `src` is _not_ configured, this heuristic can be useful to detect first-party imports from _within_ (but not _across_) first-party packages.
              "%
              | optional,
            extra-standard-library
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider standard-library, in addition to those known to Ruff in advance.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            force-single-line
              | js2n.Nullable Bool
              | doc "Forces all from imports to appear on their own line."
              | optional,
            force-sort-within-sections
              | js2n.Nullable Bool
              | doc "Don't sort straight-style imports (like `import sys`) before from-style imports (like `from itertools import groupby`). Instead, sort the imports by module, independent of import style."
              | optional,
            force-to-top
              | js2n.Nullable (Array String)
              | doc "Force specific imports to the top of their appropriate section."
              | optional,
            force-wrap-aliases
              | js2n.Nullable Bool
              | doc m%"
                Force `import from` statements with multiple members and at least one alias (e.g., `import A as B`) to wrap such that every line contains exactly one member. For example, this formatting would be retained, rather than condensing to a single line:
                
                ```python from .utils import ( test_directory as test_directory, test_id as test_id ) ```
                
                Note that this setting is only effective when combined with `combine-as-imports = true`. When [`combine-as-imports`](#lint_isort_combine-as-imports) isn't enabled, every aliased `import from` will be given its own line, in which case, wrapping is not necessary.
                
                When using the formatter, ensure that [`format.skip-magic-trailing-comma`](#format_skip-magic-trailing-comma) is set to `false` (default) when enabling `force-wrap-aliases` to avoid that the formatter collapses members if they all fit on a single line.
              "%
              | optional,
            forced-separate
              | js2n.Nullable (Array String)
              | doc "A list of modules to separate into auxiliary block(s) of imports, in the order specified."
              | optional,
            from-first
              | js2n.Nullable Bool
              | doc m%"
                Whether to place `import from` imports before straight imports when sorting.
                
                For example, by default, imports will be sorted such that straight imports appear before `import from` imports, as in: ```python import os import sys from typing import List ```
                
                Setting `from-first = true` will instead sort such that `import from` imports appear before straight imports, as in: ```python from typing import List import os import sys ```
              "%
              | optional,
            known-first-party
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider first-party, regardless of whether they can be identified as such via introspection of the local filesystem.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            known-local-folder
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider being a local folder. Generally, this is reserved for relative imports (`from . import module`).
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            known-third-party
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to consider third-party, regardless of whether they can be identified as such via introspection of the local filesystem.
                
                Supports glob patterns. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            length-sort
              | js2n.Nullable Bool
              | doc m%"
                Sort imports by their string length, such that shorter imports appear before longer imports. For example, by default, imports will be sorted alphabetically, as in: ```python import collections import os ```
                
                Setting `length-sort = true` will instead sort such that shorter imports appear before longer imports, as in: ```python import os import collections ```
              "%
              | optional,
            length-sort-straight
              | js2n.Nullable Bool
              | doc "Sort straight imports by their string length. Similar to [`length-sort`](#lint_isort_length-sort), but applies only to straight imports and doesn't affect `from` imports."
              | optional,
            lines-after-imports
              | js2n.Nullable std.number.Integer
              | doc m%"
                The number of blank lines to place after imports. Use `-1` for automatic determination.
                
                Ruff uses at most one blank line after imports in typing stub files (files with `.pyi` extension) in accordance to the typing style recommendations ([source](https://typing.python.org/en/latest/guides/writing_stubs.html#blank-lines)).
                
                When using the formatter, only the values `-1`, `1`, and `2` are compatible because it enforces at least one empty and at most two empty lines after imports.
              "%
              | optional,
            lines-between-types
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                The number of lines to place between "direct" and `import from` imports.
                
                When using the formatter, only the values `0` and `1` are compatible because it preserves up to one empty line after imports in nested blocks.
              "%
              | optional,
            no-lines-before
              | js2n.Nullable
                (Array
                  refs."properties.tool.properties.ruff.definitions.ImportSection")
              | doc "A list of sections that should _not_ be delineated from the previous section via empty lines."
              | optional,
            no-sections
              | js2n.Nullable Bool
              | doc m%"
                Put all imports into the same section bucket.
                
                For example, rather than separating standard library and third-party imports, as in: ```python import os import sys
                
                import numpy import pandas ```
                
                Setting `no-sections = true` will instead group all imports into a single section: ```python import numpy import os import pandas import sys ```
              "%
              | optional,
            order-by-type
              | js2n.Nullable Bool
              | doc "Order imports by type, which is determined by case, in addition to alphabetically."
              | optional,
            relative-imports-order
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.RelativeImportsOrder"
              | doc m%"
                Whether to place "closer" imports (fewer `.` characters, most local) before "further" imports (more `.` characters, least local), or vice versa.
                
                The default ("furthest-to-closest") is equivalent to isort's [`reverse-relative`](https://pycqa.github.io/isort/docs/configuration/options.html#reverse-relative) default (`reverse-relative = false`); setting this to "closest-to-furthest" is equivalent to isort's `reverse-relative = true`.
              "%
              | optional,
            required-imports
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.NameImports",
                      String
                    ]
                ))
              | doc "Add the specified import line to all files."
              | optional,
            section-order
              | js2n.Nullable
                (Array
                  refs."properties.tool.properties.ruff.definitions.ImportSection")
              | doc "Override in which order the sections should be output. Can be used to move custom sections."
              | optional,
            sections
              | js2n.Nullable ({ _ | Array String })
              | doc m%"
                A list of mappings from section names to modules.
                
                By default, imports are categorized according to their type (e.g., `future`, `third-party`, and so on). This setting allows you to group modules into custom sections, to augment or override the built-in sections.
                
                For example, to group all testing utilities, you could create a `testing` section: ```toml testing = ["pytest", "hypothesis"] ```
                
                The values in the list are treated as glob patterns. For example, to match all packages in the LangChain ecosystem (`langchain-core`, `langchain-openai`, etc.): ```toml langchain = ["langchain-*"] ```
                
                Custom sections should typically be inserted into the [`section-order`](#lint_isort_section-order) list to ensure that they're displayed as a standalone group and in the intended order, as in: ```toml section-order = [ "future", "standard-library", "third-party", "first-party", "local-folder", "testing" ] ```
                
                If a custom section is omitted from [`section-order`](#lint_isort_section-order), imports in that section will be assigned to the [`default-section`](#lint_isort_default-section) (which defaults to `third-party`).
              "%
              | optional,
            single-line-exclusions
              | js2n.Nullable (Array String)
              | doc "One or more modules to exclude from the single line rule."
              | optional,
            split-on-trailing-comma
              | js2n.Nullable Bool
              | doc m%"
                If a comma is placed after the last member in a multi-line import, then the imports will never be folded into one line.
                
                See isort's [`split-on-trailing-comma`](https://pycqa.github.io/isort/docs/configuration/options.html#split-on-trailing-comma) option.
                
                When using the formatter, ensure that [`format.skip-magic-trailing-comma`](#format_skip-magic-trailing-comma) is set to `false` (default) when enabling `split-on-trailing-comma` to avoid that the formatter removes the trailing commas.
              "%
              | optional,
            variables
              | js2n.Nullable (Array String)
              | doc "An override list of tokens to always recognize as a var for [`order-by-type`](#lint_isort_order-by-type) regardless of casing."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.LineEnding" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'cr-lf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'native |] ]
            ],
      "properties.tool.properties.ruff.definitions.LineLength" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 320,
              js2n.number.Minimum 1
            ],
      "properties.tool.properties.ruff.definitions.LineWidth" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "properties.tool.properties.ruff.definitions.LintOptions" =
        {
            allowed-confusables
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ js2n.string.MaxLength 1, js2n.string.MinLength 1 ]
                ))
              | doc "A list of allowed \"confusable\" Unicode characters to ignore when enforcing `RUF001`, `RUF002`, and `RUF003`."
              | optional,
            dummy-variable-rgx
              | js2n.Nullable String
              | doc "A regular expression used to identify \"dummy\" variables, or those which should be ignored when enforcing (e.g.) unused-variable rules. The default expression matches `_`, `__`, and `_var`, but not `_var_`."
              | optional,
            exclude
              | js2n.Nullable (Array String)
              | doc m%"
                A list of file patterns to exclude from linting in addition to the files excluded globally (see [`exclude`](#exclude), and [`extend-exclude`](#extend-exclude)).
                
                Exclusions are based on globs, and can be either:
                
                - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                
                For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            explicit-preview-rules
              | js2n.Nullable Bool
              | doc "Whether to require exact codes to select preview rules. When enabled, preview rules will not be selected by prefixes — the full code of each preview rule will be required to enable the rule."
              | optional,
            extend-fixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes to consider fixable, in addition to those specified by [`fixable`](#lint_fixable)."
              | optional,
            extend-ignore
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes to ignore, in addition to those specified by `ignore`."
              | optional,
            extend-per-file-ignores
              | js2n.Nullable
                ({
                  _ | Array (
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.ruff.definitions.RuleSelector",
                        String
                      ]
                  )
                })
              | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, in addition to any rules excluded by [`per-file-ignores`](#lint_per-file-ignores)."
              | optional,
            extend-safe-fixes
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes for which unsafe fixes should be considered safe."
              | optional,
            extend-select
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes to enable, in addition to those specified by [`select`](#lint_select)."
              | optional,
            extend-unfixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes to consider non-auto-fixable, in addition to those specified by [`unfixable`](#lint_unfixable)."
              | optional,
            extend-unsafe-fixes
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes for which safe fixes should be considered unsafe."
              | optional,
            external
              | js2n.Nullable (Array String)
              | doc "A list of rule codes or prefixes that are unsupported by Ruff, but should be preserved when (e.g.) validating `# noqa` directives. Useful for retaining `# noqa` directives that cover plugins not yet implemented by Ruff."
              | optional,
            fixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes to consider fixable. By default, all rules are considered fixable."
              | optional,
            flake8-annotations
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8AnnotationsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-annotations` plugin."
              | optional,
            flake8-bandit
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8BanditOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-bandit` plugin."
              | optional,
            flake8-boolean-trap
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8BooleanTrapOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-boolean-trap` plugin."
              | optional,
            flake8-bugbear
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8BugbearOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-bugbear` plugin."
              | optional,
            flake8-builtins
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8BuiltinsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-builtins` plugin."
              | optional,
            flake8-comprehensions
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8ComprehensionsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-comprehensions` plugin."
              | optional,
            flake8-copyright
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8CopyrightOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-copyright` plugin."
              | optional,
            flake8-errmsg
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8ErrMsgOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-errmsg` plugin."
              | optional,
            flake8-gettext
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8GetTextOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-gettext` plugin."
              | optional,
            flake8-implicit-str-concat
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8ImplicitStrConcatOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-implicit-str-concat` plugin."
              | optional,
            flake8-import-conventions
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8ImportConventionsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-import-conventions` plugin."
              | optional,
            flake8-pytest-style
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8PytestStyleOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-pytest-style` plugin."
              | optional,
            flake8-quotes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8QuotesOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-quotes` plugin."
              | optional,
            flake8-self
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8SelfOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8_self` plugin."
              | optional,
            flake8-tidy-imports
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8TidyImportsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-tidy-imports` plugin."
              | optional,
            flake8-type-checking
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8TypeCheckingOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-type-checking` plugin."
              | optional,
            flake8-unused-arguments
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Flake8UnusedArgumentsOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `flake8-unused-arguments` plugin."
              | optional,
            ignore
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc m%"
                A list of rule codes or prefixes to ignore. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
                
                When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
              "%
              | optional,
            ignore-init-module-imports
              | js2n.Nullable Bool
              | doc m%"
                Avoid automatically removing unused imports in `__init__.py` files. Such imports will still be flagged, but with a dedicated message suggesting that the import is either added to the module's `__all__` symbol, or re-exported with a redundant alias (e.g., `import os as os`).
                
                This option is enabled by default, but you can opt-in to removal of imports via an unsafe fix.
              "%
              | optional,
            isort
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.IsortOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `isort` plugin."
              | optional,
            logger-objects
              | js2n.Nullable (Array String)
              | doc m%"
                A list of objects that should be treated equivalently to a `logging.Logger` object.
                
                This is useful for ensuring proper diagnostics (e.g., to identify `logging` deprecations and other best-practices) for projects that re-export a `logging.Logger` object from a common module.
                
                For example, if you have a module `logging_setup.py` with the following contents: ```python import logging
                
                logger = logging.getLogger(__name__) ```
                
                Adding `"logging_setup.logger"` to `logger-objects` will ensure that `logging_setup.logger` is treated as a `logging.Logger` object when imported from other modules (e.g., `from logging_setup import logger`).
              "%
              | optional,
            mccabe
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.McCabeOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `mccabe` plugin."
              | optional,
            pep8-naming
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.Pep8NamingOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pep8-naming` plugin."
              | optional,
            per-file-ignores
              | js2n.Nullable
                ({
                  _ | Array (
                    std.contract.Sequence
                      [
                        refs."properties.tool.properties.ruff.definitions.RuleSelector",
                        String
                      ]
                  )
                })
              | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, when considering any matching files. An initial '!' negates the file pattern."
              | optional,
            preview
              | js2n.Nullable Bool
              | doc "Whether to enable preview mode. When preview mode is enabled, Ruff will use unstable rules and fixes."
              | optional,
            pycodestyle
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.PycodestyleOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pycodestyle` plugin."
              | optional,
            pydoclint
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.PydoclintOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pydoclint` plugin."
              | optional,
            pydocstyle
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.PydocstyleOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pydocstyle` plugin."
              | optional,
            pyflakes
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.PyflakesOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pyflakes` plugin."
              | optional,
            pylint
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.PylintOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pylint` plugin."
              | optional,
            pyupgrade
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.PyUpgradeOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `pyupgrade` plugin."
              | optional,
            ruff
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.RuffOptions",
                    { _ | Dyn }
                  ])
              | doc "Options for the `ruff` plugin"
              | optional,
            select
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc m%"
                A list of rule codes or prefixes to enable. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
                
                When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
              "%
              | optional,
            task-tags
              | js2n.Nullable (Array String)
              | doc m%"
                A list of task tags to recognize (e.g., "TODO", "FIXME", "XXX").
                
                Comments starting with these tags will be ignored by commented-out code detection (`ERA`), and skipped by line-length rules (`E501`) if [`ignore-overlong-task-comments`](#lint_pycodestyle_ignore-overlong-task-comments) is set to `true`.
              "%
              | optional,
            typing-extensions
              | js2n.Nullable Bool
              | doc m%"
                Whether to allow imports from the third-party `typing_extensions` module for Python versions before a symbol was added to the first-party `typing` module.
                
                Many rules try to import symbols from the `typing` module but fall back to `typing_extensions` for earlier versions of Python. This option can be used to disable this fallback behavior in cases where `typing_extensions` is not installed.
              "%
              | optional,
            typing-modules
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules whose exports should be treated equivalently to members of the `typing` module.
                
                This is useful for ensuring proper type annotation inference for projects that re-export `typing` and `typing_extensions` members from a compatibility module. If omitted, any members imported from modules apart from `typing` and `typing_extensions` will be treated as ordinary Python objects.
              "%
              | optional,
            unfixable
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.RuleSelector",
                      String
                    ]
                ))
              | doc "A list of rule codes or prefixes to consider non-fixable."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.McCabeOptions" =
        {
            max-complexity
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "The maximum McCabe complexity to allow before triggering `C901` errors."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.NameImports" = String,
      "properties.tool.properties.ruff.definitions.OutputFormat" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'sarif,
                'azure,
                'rdjson,
                'pylint,
                'gitlab,
                'github,
                'grouped,
                'junit,
                'json-lines,
                'json,
                'full,
                'concise
              |]
            ],
      "properties.tool.properties.ruff.definitions.ParametrizeNameType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'list, 'tuple, 'csv |] ],
      "properties.tool.properties.ruff.definitions.ParametrizeValuesRowType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'list, 'tuple |] ],
      "properties.tool.properties.ruff.definitions.ParametrizeValuesType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'list, 'tuple |] ],
      "properties.tool.properties.ruff.definitions.Pep8NamingOptions" =
        {
            classmethod-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                A list of decorators that, when applied to a method, indicate that the method should be treated as a class method (in addition to the builtin `@classmethod`).
                
                For example, Ruff will expect that any method decorated by a decorator in this list takes a `cls` argument as its first argument.
                
                Expects to receive a list of fully-qualified names (e.g., `pydantic.validator`, rather than `validator`) or alternatively a plain name which is then matched against the last segment in case the decorator itself consists of a dotted name.
              "%
              | optional,
            extend-ignore-names
              | js2n.Nullable (Array String)
              | doc m%"
                Additional names (or patterns) to ignore when considering `pep8-naming` violations, in addition to those included in [`ignore-names`](#lint_pep8-naming_ignore-names).
                
                Supports glob patterns. For example, to ignore all names starting with `test_` or ending with `_test`, you could use `ignore-names = ["test_*", "*_test"]`. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            ignore-names
              | js2n.Nullable (Array String)
              | doc m%"
                A list of names (or patterns) to ignore when considering `pep8-naming` violations.
                
                Supports glob patterns. For example, to ignore all names starting with `test_` or ending with `_test`, you could use `ignore-names = ["test_*", "*_test"]`. For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
              "%
              | optional,
            staticmethod-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                A list of decorators that, when applied to a method, indicate that the method should be treated as a static method (in addition to the builtin `@staticmethod`).
                
                For example, Ruff will expect that any method decorated by a decorator in this list has no `self` or `cls` argument.
                
                Expects to receive a list of fully-qualified names (e.g., `belay.Device.teardown`, rather than `teardown`) or alternatively a plain name which is then matched against the last segment in case the decorator itself consists of a dotted name.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PyUpgradeOptions" =
        {
            keep-runtime-typing
              | js2n.Nullable Bool
              | doc m%"
                Whether to avoid [PEP 585](https://peps.python.org/pep-0585/) (`List[int]` -> `list[int]`) and [PEP 604](https://peps.python.org/pep-0604/) (`Union[str, int]` -> `str | int`) rewrites even if a file imports `from __future__ import annotations`.
                
                This setting is only applicable when the target Python version is below 3.9 and 3.10 respectively, and is most commonly used when working with libraries like Pydantic and FastAPI, which rely on the ability to parse type annotations at runtime. The use of `from __future__ import annotations` causes Python to treat the type annotations as strings, which typically allows for the use of language features that appear in later Python versions but are not yet supported by the current version (e.g., `str | int`). However, libraries that rely on runtime type annotations will break if the annotations are incompatible with the current Python version.
                
                For example, while the following is valid Python 3.8 code due to the presence of `from __future__ import annotations`, the use of `str | int` prior to Python 3.10 will cause Pydantic to raise a `TypeError` at runtime:
                
                ```python from __future__ import annotations
                
                import pydantic
                
                class Foo(pydantic.BaseModel): bar: str | int ```
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PycodestyleOptions" =
        {
            ignore-overlong-task-comments
              | js2n.Nullable Bool
              | doc "Whether line-length violations (`E501`) should be triggered for comments starting with [`task-tags`](#lint_task-tags) (by default: \"TODO\", \"FIXME\", and \"XXX\")."
              | optional,
            max-doc-length
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.LineLength",
                    Number
                  ])
              | doc m%"
                The maximum line length to allow for [`doc-line-too-long`](https://docs.astral.sh/ruff/rules/doc-line-too-long/) violations within documentation (`W505`), including standalone comments. By default, this is set to `null` which disables reporting violations.
                
                The length is determined by the number of characters per line, except for lines containing Asian characters or emojis. For these lines, the [unicode width](https://unicode.org/reports/tr11/) of each character is added up to determine the length.
                
                See the [`doc-line-too-long`](https://docs.astral.sh/ruff/rules/doc-line-too-long/) rule for more information.
              "%
              | optional,
            max-line-length
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ruff.definitions.LineLength",
                    Number
                  ])
              | doc m%"
                The maximum line length to allow for [`line-too-long`](https://docs.astral.sh/ruff/rules/line-too-long/) violations. By default, this is set to the value of the [`line-length`](#line-length) option.
                
                Use this option when you want to detect extra-long lines that the formatter can't automatically split by setting `pycodestyle.line-length` to a value larger than [`line-length`](#line-length).
                
                ```toml # The formatter wraps lines at a length of 88. line-length = 88
                
                [pycodestyle] # E501 reports lines that exceed the length of 100. max-line-length = 100 ```
                
                The length is determined by the number of characters per line, except for lines containing East Asian characters or emojis. For these lines, the [unicode width](https://unicode.org/reports/tr11/) of each character is added up to determine the length.
                
                See the [`line-too-long`](https://docs.astral.sh/ruff/rules/line-too-long/) rule for more information.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PydoclintOptions" =
        {
            ignore-one-line-docstrings
              | js2n.Nullable Bool
              | doc m%"
                Skip docstrings which fit on a single line.
                
                Note: The corresponding setting in `pydoclint` is named `skip-checking-short-docstrings`.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PydocstyleOptions" =
        {
            convention
              | js2n.Nullable
                refs."properties.tool.properties.ruff.definitions.Convention"
              | doc m%"
                Whether to use Google-style, NumPy-style conventions, or the [PEP 257](https://peps.python.org/pep-0257/) defaults when analyzing docstring sections.
                
                Enabling a convention will disable all rules that are not included in the specified convention. As such, the intended workflow is to enable a convention and then selectively enable or disable any additional rules on top of it.
                
                For example, to use Google-style conventions but avoid requiring documentation for every function parameter:
                
                ```toml [tool.ruff.lint] # Enable all `pydocstyle` rules, limiting to those that adhere to the # Google convention via `convention = "google"`, below. select = ["D"]
                
                # On top of the Google convention, disable `D417`, which requires # documentation for every function parameter. ignore = ["D417"]
                
                [tool.ruff.lint.pydocstyle] convention = "google" ```
                
                To enable an additional rule that's excluded from the convention, select the desired rule via its fully qualified rule code (e.g., `D400` instead of `D4` or `D40`):
                
                ```toml [tool.ruff.lint] # Enable D400 on top of the Google convention. extend-select = ["D400"]
                
                [tool.ruff.lint.pydocstyle] convention = "google" ```
              "%
              | optional,
            ignore-decorators
              | js2n.Nullable (Array String)
              | doc "Ignore docstrings for functions or methods decorated with the specified fully-qualified decorators."
              | optional,
            ignore-var-parameters
              | js2n.Nullable Bool
              | doc "If set to `true`, ignore missing documentation for `*args` and `**kwargs` parameters."
              | optional,
            property-decorators
              | js2n.Nullable (Array String)
              | doc m%"
                A list of decorators that, when applied to a method, indicate that the method should be treated as a property (in addition to the builtin `@property` and standard-library `@functools.cached_property`).
                
                For example, Ruff will expect that any method decorated by a decorator in this list can use a non-imperative summary line.
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PyflakesOptions" =
        {
            allowed-unused-imports
              | js2n.Nullable (Array String)
              | doc m%"
                A list of modules to ignore when considering unused imports.
                
                Used to prevent violations for specific modules that are known to have side effects on import (e.g., `hvplot.pandas`).
                
                Modules in this list are expected to be fully-qualified names (e.g., `hvplot.pandas`). Any submodule of a given module will also be ignored (e.g., given `hvplot`, `hvplot.pandas` will also be ignored).
              "%
              | optional,
            extend-generics
              | js2n.Nullable (Array String)
              | doc m%"
                Additional functions or classes to consider generic, such that any subscripts should be treated as type annotation (e.g., `ForeignKey` in `django.db.models.ForeignKey["User"]`.
                
                Expects to receive a list of fully-qualified names (e.g., `django.db.models.ForeignKey`, rather than `ForeignKey`).
              "%
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PylintOptions" =
        {
            allow-dunder-method-names
              | js2n.Nullable
                (std.contract.Sequence [ js2n.array.UniqueItems, Array String ])
              | doc "Dunder methods name to allow, in addition to the default set from the Python standard library (see `PLW3201`)."
              | optional,
            allow-magic-value-types
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.ruff.definitions.ConstantType",
                      String
                    ]
                ))
              | doc "Constant types to ignore when used as \"magic values\" (see `PLR2004`)."
              | optional,
            max-args
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of arguments allowed for a function or method definition (see `PLR0913`)."
              | optional,
            max-bool-expr
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of Boolean expressions allowed within a single `if` statement (see `PLR0916`)."
              | optional,
            max-branches
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of branches allowed for a function or method body (see `PLR0912`)."
              | optional,
            max-locals
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of local variables allowed for a function or method body (see `PLR0914`)."
              | optional,
            max-nested-blocks
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of nested blocks allowed within a function or method body (see `PLR1702`)."
              | optional,
            max-positional-args
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Maximum number of positional arguments allowed for a function or method definition (see `PLR0917`).
                
                If not specified, defaults to the value of `max-args`.
              "%
              | optional,
            max-public-methods
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of public methods allowed for a class (see `PLR0904`)."
              | optional,
            max-returns
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of return statements allowed for a function or method body (see `PLR0911`)"
              | optional,
            max-statements
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Maximum number of statements allowed for a function or method body (see `PLR0915`)."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.PythonVersion" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'py314, 'py313, 'py312, 'py311, 'py310, 'py39, 'py38, 'py37 |]
            ],
      "properties.tool.properties.ruff.definitions.Quote" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'double |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'single |] ]
            ],
      "properties.tool.properties.ruff.definitions.QuoteStyle" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'preserve, 'double, 'single |] ],
      "properties.tool.properties.ruff.definitions.RelativeImportsOrder" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'closest-to-furthest |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'furthest-to-closest |] ]
            ],
      "properties.tool.properties.ruff.definitions.RequiredVersion" = String,
      "properties.tool.properties.ruff.definitions.RuffOptions" =
        {
            allowed-markup-calls
              | js2n.Nullable (Array String)
              | doc m%"
                A list of callable names, whose result may be safely passed into [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `bleach.clean`, rather than `clean`).
                
                This setting helps you avoid false positives in code like:
                
                ```python from bleach import clean from markupsafe import Markup
                
                cleaned_markup = Markup(clean(some_user_input)) ```
                
                Where the use of [`bleach.clean`](https://bleach.readthedocs.io/en/latest/clean.html) usually ensures that there's no XSS vulnerability.
                
                Although it is not recommended, you may also use this setting to whitelist other kinds of calls, e.g. calls to i18n translation functions, where how safe that is will depend on the implementation and how well the translations are audited.
                
                Another common use-case is to wrap the output of functions that generate markup like [`xml.etree.ElementTree.tostring`](https://docs.python.org/3/library/xml.etree.elementtree.html#xml.etree.ElementTree.tostring) or template rendering engines where sanitization of potential user input is either already baked in or has to happen before rendering.
              "%
              | optional,
            extend-markup-names
              | js2n.Nullable (Array String)
              | doc m%"
                A list of additional callable names that behave like [`markupsafe.Markup`](https://markupsafe.palletsprojects.com/en/stable/escaping/#markupsafe.Markup).
                
                Expects to receive a list of fully-qualified names (e.g., `webhelpers.html.literal`, rather than `literal`).
              "%
              | optional,
            parenthesize-tuple-in-subscript
              | js2n.Nullable Bool
              | doc "Whether to prefer accessing items keyed by tuples with parentheses around the tuple (see `RUF031`)."
              | optional,
          },
      "properties.tool.properties.ruff.definitions.RuleSelector" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'YTT303,
                'YTT302,
                'YTT301,
                'YTT30,
                'YTT3,
                'YTT204,
                'YTT203,
                'YTT202,
                'YTT201,
                'YTT20,
                'YTT2,
                'YTT103,
                'YTT102,
                'YTT101,
                'YTT10,
                'YTT1,
                'YTT,
                'W605,
                'W60,
                'W6,
                'W505,
                'W50,
                'W5,
                'W391,
                'W39,
                'W3,
                'W293,
                'W292,
                'W291,
                'W29,
                'W2,
                'W191,
                'W19,
                'W1,
                'W,
                'UP050,
                'UP05,
                'UP049,
                'UP047,
                'UP046,
                'UP045,
                'UP044,
                'UP043,
                'UP042,
                'UP041,
                'UP040,
                'UP04,
                'UP039,
                'UP038,
                'UP037,
                'UP036,
                'UP035,
                'UP034,
                'UP033,
                'UP032,
                'UP031,
                'UP030,
                'UP03,
                'UP029,
                'UP028,
                'UP026,
                'UP025,
                'UP024,
                'UP023,
                'UP022,
                'UP021,
                'UP020,
                'UP02,
                'UP019,
                'UP018,
                'UP017,
                'UP015,
                'UP014,
                'UP013,
                'UP012,
                'UP011,
                'UP010,
                'UP01,
                'UP009,
                'UP008,
                'UP007,
                'UP006,
                'UP005,
                'UP004,
                'UP003,
                'UP001,
                'UP00,
                'UP0,
                'UP,
                'TRY401,
                'TRY400,
                'TRY40,
                'TRY4,
                'TRY301,
                'TRY300,
                'TRY30,
                'TRY3,
                'TRY203,
                'TRY201,
                'TRY20,
                'TRY2,
                'TRY004,
                'TRY003,
                'TRY002,
                'TRY00,
                'TRY0,
                'TRY,
                'TID253,
                'TID252,
                'TID251,
                'TID25,
                'TID2,
                'TID,
                'TD007,
                'TD006,
                'TD005,
                'TD004,
                'TD003,
                'TD002,
                'TD001,
                'TD00,
                'TD0,
                'TD,
                'TC010,
                'TC01,
                'TC008,
                'TC007,
                'TC006,
                'TC005,
                'TC004,
                'TC003,
                'TC002,
                'TC001,
                'TC00,
                'TC0,
                'TC,
                'T203,
                'T201,
                'T20,
                'T2,
                'T100,
                'T10,
                'T1,
                'T,
                'SLOT002,
                'SLOT001,
                'SLOT000,
                'SLOT00,
                'SLOT0,
                'SLOT,
                'SLF001,
                'SLF00,
                'SLF0,
                'SLF,
                'SIM911,
                'SIM910,
                'SIM91,
                'SIM905,
                'SIM90,
                'SIM9,
                'SIM401,
                'SIM40,
                'SIM4,
                'SIM300,
                'SIM30,
                'SIM3,
                'SIM223,
                'SIM222,
                'SIM221,
                'SIM220,
                'SIM22,
                'SIM212,
                'SIM211,
                'SIM210,
                'SIM21,
                'SIM208,
                'SIM202,
                'SIM201,
                'SIM20,
                'SIM2,
                'SIM118,
                'SIM117,
                'SIM116,
                'SIM115,
                'SIM114,
                'SIM113,
                'SIM112,
                'SIM110,
                'SIM11,
                'SIM109,
                'SIM108,
                'SIM107,
                'SIM105,
                'SIM103,
                'SIM102,
                'SIM101,
                'SIM10,
                'SIM1,
                'SIM,
                'S704,
                'S702,
                'S701,
                'S70,
                'S7,
                'S612,
                'S611,
                'S610,
                'S61,
                'S609,
                'S608,
                'S607,
                'S606,
                'S605,
                'S604,
                'S603,
                'S602,
                'S601,
                'S60,
                'S6,
                'S509,
                'S508,
                'S507,
                'S506,
                'S505,
                'S504,
                'S503,
                'S502,
                'S501,
                'S50,
                'S5,
                'S415,
                'S413,
                'S412,
                'S411,
                'S41,
                'S409,
                'S408,
                'S407,
                'S406,
                'S405,
                'S404,
                'S403,
                'S402,
                'S401,
                'S40,
                'S4,
                'S324,
                'S323,
                'S321,
                'S320,
                'S32,
                'S319,
                'S318,
                'S317,
                'S316,
                'S315,
                'S314,
                'S313,
                'S312,
                'S311,
                'S310,
                'S31,
                'S308,
                'S307,
                'S306,
                'S305,
                'S304,
                'S303,
                'S302,
                'S301,
                'S30,
                'S3,
                'S202,
                'S201,
                'S20,
                'S2,
                'S113,
                'S112,
                'S110,
                'S11,
                'S108,
                'S107,
                'S106,
                'S105,
                'S104,
                'S103,
                'S102,
                'S101,
                'S10,
                'S1,
                'S,
                'RUF200,
                'RUF20,
                'RUF2,
                'RUF102,
                'RUF101,
                'RUF100,
                'RUF10,
                'RUF1,
                'RUF060,
                'RUF06,
                'RUF059,
                'RUF058,
                'RUF057,
                'RUF056,
                'RUF055,
                'RUF054,
                'RUF053,
                'RUF052,
                'RUF051,
                'RUF05,
                'RUF049,
                'RUF048,
                'RUF047,
                'RUF046,
                'RUF045,
                'RUF043,
                'RUF041,
                'RUF040,
                'RUF04,
                'RUF039,
                'RUF038,
                'RUF037,
                'RUF036,
                'RUF034,
                'RUF033,
                'RUF032,
                'RUF031,
                'RUF030,
                'RUF03,
                'RUF029,
                'RUF028,
                'RUF027,
                'RUF026,
                'RUF024,
                'RUF023,
                'RUF022,
                'RUF021,
                'RUF020,
                'RUF02,
                'RUF019,
                'RUF018,
                'RUF017,
                'RUF016,
                'RUF015,
                'RUF013,
                'RUF012,
                'RUF010,
                'RUF01,
                'RUF009,
                'RUF008,
                'RUF007,
                'RUF006,
                'RUF005,
                'RUF003,
                'RUF002,
                'RUF001,
                'RUF00,
                'RUF0,
                'RUF,
                'RSE102,
                'RSE10,
                'RSE1,
                'RSE,
                'RET508,
                'RET507,
                'RET506,
                'RET505,
                'RET504,
                'RET503,
                'RET502,
                'RET501,
                'RET50,
                'RET5,
                'RET,
                'Q004,
                'Q003,
                'Q002,
                'Q001,
                'Q000,
                'Q00,
                'Q0,
                'Q,
                'PYI066,
                'PYI064,
                'PYI063,
                'PYI062,
                'PYI061,
                'PYI06,
                'PYI059,
                'PYI058,
                'PYI057,
                'PYI056,
                'PYI055,
                'PYI054,
                'PYI053,
                'PYI052,
                'PYI051,
                'PYI050,
                'PYI05,
                'PYI049,
                'PYI048,
                'PYI047,
                'PYI046,
                'PYI045,
                'PYI044,
                'PYI043,
                'PYI042,
                'PYI041,
                'PYI04,
                'PYI036,
                'PYI035,
                'PYI034,
                'PYI033,
                'PYI032,
                'PYI030,
                'PYI03,
                'PYI029,
                'PYI026,
                'PYI025,
                'PYI024,
                'PYI021,
                'PYI020,
                'PYI02,
                'PYI019,
                'PYI018,
                'PYI017,
                'PYI016,
                'PYI015,
                'PYI014,
                'PYI013,
                'PYI012,
                'PYI011,
                'PYI010,
                'PYI01,
                'PYI009,
                'PYI008,
                'PYI007,
                'PYI006,
                'PYI005,
                'PYI004,
                'PYI003,
                'PYI002,
                'PYI001,
                'PYI00,
                'PYI0,
                'PYI,
                'PTH211,
                'PTH210,
                'PTH21,
                'PTH208,
                'PTH207,
                'PTH206,
                'PTH205,
                'PTH204,
                'PTH203,
                'PTH202,
                'PTH201,
                'PTH20,
                'PTH2,
                'PTH124,
                'PTH123,
                'PTH122,
                'PTH121,
                'PTH120,
                'PTH12,
                'PTH119,
                'PTH118,
                'PTH117,
                'PTH116,
                'PTH115,
                'PTH114,
                'PTH113,
                'PTH112,
                'PTH111,
                'PTH110,
                'PTH11,
                'PTH109,
                'PTH108,
                'PTH107,
                'PTH106,
                'PTH105,
                'PTH104,
                'PTH103,
                'PTH102,
                'PTH101,
                'PTH100,
                'PTH10,
                'PTH1,
                'PTH,
                'PT031,
                'PT030,
                'PT03,
                'PT029,
                'PT028,
                'PT027,
                'PT026,
                'PT025,
                'PT024,
                'PT023,
                'PT022,
                'PT021,
                'PT020,
                'PT02,
                'PT019,
                'PT018,
                'PT017,
                'PT016,
                'PT015,
                'PT014,
                'PT013,
                'PT012,
                'PT011,
                'PT010,
                'PT01,
                'PT009,
                'PT008,
                'PT007,
                'PT006,
                'PT003,
                'PT002,
                'PT001,
                'PT00,
                'PT0,
                'PT,
                'PLW3301,
                'PLW330,
                'PLW33,
                'PLW3201,
                'PLW320,
                'PLW32,
                'PLW3,
                'PLW2901,
                'PLW290,
                'PLW29,
                'PLW2101,
                'PLW210,
                'PLW21,
                'PLW2,
                'PLW1641,
                'PLW164,
                'PLW16,
                'PLW1514,
                'PLW1510,
                'PLW151,
                'PLW1509,
                'PLW1508,
                'PLW1507,
                'PLW1501,
                'PLW150,
                'PLW15,
                'PLW1,
                'PLW0711,
                'PLW071,
                'PLW07,
                'PLW0642,
                'PLW064,
                'PLW0604,
                'PLW0603,
                'PLW0602,
                'PLW060,
                'PLW06,
                'PLW0406,
                'PLW040,
                'PLW04,
                'PLW0245,
                'PLW0244,
                'PLW024,
                'PLW0211,
                'PLW021,
                'PLW02,
                'PLW0177,
                'PLW017,
                'PLW0133,
                'PLW0131,
                'PLW013,
                'PLW0129,
                'PLW0128,
                'PLW0127,
                'PLW0120,
                'PLW012,
                'PLW0108,
                'PLW010,
                'PLW01,
                'PLW0,
                'PLW,
                'PLR6301,
                'PLR630,
                'PLR63,
                'PLR6201,
                'PLR620,
                'PLR62,
                'PLR6104,
                'PLR610,
                'PLR61,
                'PLR6,
                'PLR5501,
                'PLR550,
                'PLR55,
                'PLR5,
                'PLR2044,
                'PLR204,
                'PLR2004,
                'PLR200,
                'PLR20,
                'PLR2,
                'PLR1736,
                'PLR1733,
                'PLR1730,
                'PLR173,
                'PLR1722,
                'PLR172,
                'PLR1716,
                'PLR1714,
                'PLR1711,
                'PLR171,
                'PLR1704,
                'PLR1702,
                'PLR170,
                'PLR17,
                'PLR1,
                'PLR0917,
                'PLR0916,
                'PLR0915,
                'PLR0914,
                'PLR0913,
                'PLR0912,
                'PLR0911,
                'PLR091,
                'PLR0904,
                'PLR090,
                'PLR09,
                'PLR0402,
                'PLR040,
                'PLR04,
                'PLR0206,
                'PLR0203,
                'PLR0202,
                'PLR020,
                'PLR02,
                'PLR0133,
                'PLR013,
                'PLR0124,
                'PLR012,
                'PLR01,
                'PLR0,
                'PLR,
                'PLE4703,
                'PLE470,
                'PLE47,
                'PLE4,
                'PLE2515,
                'PLE2514,
                'PLE2513,
                'PLE2512,
                'PLE2510,
                'PLE251,
                'PLE2502,
                'PLE250,
                'PLE25,
                'PLE2,
                'PLE1700,
                'PLE170,
                'PLE17,
                'PLE1520,
                'PLE152,
                'PLE1519,
                'PLE151,
                'PLE1507,
                'PLE150,
                'PLE15,
                'PLE1310,
                'PLE131,
                'PLE1307,
                'PLE1300,
                'PLE130,
                'PLE13,
                'PLE1206,
                'PLE1205,
                'PLE120,
                'PLE12,
                'PLE1142,
                'PLE1141,
                'PLE114,
                'PLE1132,
                'PLE113,
                'PLE11,
                'PLE1,
                'PLE0704,
                'PLE070,
                'PLE07,
                'PLE0643,
                'PLE064,
                'PLE0605,
                'PLE0604,
                'PLE060,
                'PLE06,
                'PLE0309,
                'PLE0308,
                'PLE0307,
                'PLE0305,
                'PLE0304,
                'PLE0303,
                'PLE0302,
                'PLE030,
                'PLE03,
                'PLE0241,
                'PLE024,
                'PLE0237,
                'PLE023,
                'PLE02,
                'PLE0118,
                'PLE0117,
                'PLE0116,
                'PLE0115,
                'PLE011,
                'PLE0101,
                'PLE0100,
                'PLE010,
                'PLE01,
                'PLE0,
                'PLE,
                'PLC3002,
                'PLC300,
                'PLC30,
                'PLC3,
                'PLC2801,
                'PLC280,
                'PLC28,
                'PLC2701,
                'PLC270,
                'PLC27,
                'PLC2403,
                'PLC2401,
                'PLC240,
                'PLC24,
                'PLC2,
                'PLC1901,
                'PLC190,
                'PLC19,
                'PLC1802,
                'PLC180,
                'PLC18,
                'PLC1,
                'PLC0415,
                'PLC0414,
                'PLC041,
                'PLC04,
                'PLC0208,
                'PLC0207,
                'PLC0206,
                'PLC0205,
                'PLC020,
                'PLC02,
                'PLC0132,
                'PLC0131,
                'PLC013,
                'PLC0105,
                'PLC010,
                'PLC01,
                'PLC0,
                'PLC,
                'PL,
                'PIE810,
                'PIE81,
                'PIE808,
                'PIE807,
                'PIE804,
                'PIE800,
                'PIE80,
                'PIE8,
                'PIE796,
                'PIE794,
                'PIE790,
                'PIE79,
                'PIE7,
                'PIE,
                'PGH005,
                'PGH004,
                'PGH003,
                'PGH00,
                'PGH0,
                'PGH,
                'PERF403,
                'PERF402,
                'PERF401,
                'PERF40,
                'PERF4,
                'PERF203,
                'PERF20,
                'PERF2,
                'PERF102,
                'PERF101,
                'PERF10,
                'PERF1,
                'PERF,
                'PD901,
                'PD90,
                'PD9,
                'PD101,
                'PD10,
                'PD1,
                'PD015,
                'PD013,
                'PD012,
                'PD011,
                'PD010,
                'PD01,
                'PD009,
                'PD008,
                'PD007,
                'PD004,
                'PD003,
                'PD002,
                'PD00,
                'PD0,
                'PD,
                'NPY201,
                'NPY20,
                'NPY2,
                'NPY003,
                'NPY002,
                'NPY001,
                'NPY00,
                'NPY0,
                'NPY,
                'N999,
                'N99,
                'N9,
                'N818,
                'N817,
                'N816,
                'N815,
                'N814,
                'N813,
                'N812,
                'N811,
                'N81,
                'N807,
                'N806,
                'N805,
                'N804,
                'N803,
                'N802,
                'N801,
                'N80,
                'N8,
                'N,
                'LOG015,
                'LOG014,
                'LOG01,
                'LOG009,
                'LOG007,
                'LOG004,
                'LOG002,
                'LOG001,
                'LOG00,
                'LOG0,
                'LOG,
                'ISC003,
                'ISC002,
                'ISC001,
                'ISC00,
                'ISC0,
                'ISC,
                'INT003,
                'INT002,
                'INT001,
                'INT00,
                'INT0,
                'INT,
                'INP001,
                'INP00,
                'INP0,
                'INP,
                'ICN003,
                'ICN002,
                'ICN001,
                'ICN00,
                'ICN0,
                'ICN,
                'I002,
                'I001,
                'I00,
                'I0,
                'I,
                'G202,
                'G201,
                'G20,
                'G2,
                'G101,
                'G10,
                'G1,
                'G010,
                'G01,
                'G004,
                'G003,
                'G002,
                'G001,
                'G00,
                'G0,
                'G,
                'FURB192,
                'FURB19,
                'FURB189,
                'FURB188,
                'FURB187,
                'FURB181,
                'FURB180,
                'FURB18,
                'FURB177,
                'FURB171,
                'FURB17,
                'FURB169,
                'FURB168,
                'FURB167,
                'FURB166,
                'FURB164,
                'FURB163,
                'FURB162,
                'FURB161,
                'FURB16,
                'FURB157,
                'FURB156,
                'FURB154,
                'FURB152,
                'FURB15,
                'FURB148,
                'FURB145,
                'FURB142,
                'FURB140,
                'FURB14,
                'FURB136,
                'FURB132,
                'FURB131,
                'FURB13,
                'FURB129,
                'FURB122,
                'FURB12,
                'FURB118,
                'FURB116,
                'FURB113,
                'FURB110,
                'FURB11,
                'FURB105,
                'FURB103,
                'FURB101,
                'FURB10,
                'FURB1,
                'FURB,
                'FLY002,
                'FLY00,
                'FLY0,
                'FLY,
                'FIX004,
                'FIX003,
                'FIX002,
                'FIX001,
                'FIX00,
                'FIX0,
                'FIX,
                'FBT003,
                'FBT002,
                'FBT001,
                'FBT00,
                'FBT0,
                'FBT,
                'FAST003,
                'FAST002,
                'FAST001,
                'FAST00,
                'FAST0,
                'FAST,
                'FA102,
                'FA100,
                'FA10,
                'FA1,
                'FA,
                'F901,
                'F90,
                'F9,
                'F842,
                'F841,
                'F84,
                'F823,
                'F822,
                'F821,
                'F82,
                'F811,
                'F81,
                'F8,
                'F722,
                'F72,
                'F707,
                'F706,
                'F704,
                'F702,
                'F701,
                'F70,
                'F7,
                'F634,
                'F633,
                'F632,
                'F631,
                'F63,
                'F622,
                'F621,
                'F62,
                'F602,
                'F601,
                'F60,
                'F6,
                'F541,
                'F54,
                'F525,
                'F524,
                'F523,
                'F522,
                'F521,
                'F52,
                'F509,
                'F508,
                'F507,
                'F506,
                'F505,
                'F504,
                'F503,
                'F502,
                'F501,
                'F50,
                'F5,
                'F407,
                'F406,
                'F405,
                'F404,
                'F403,
                'F402,
                'F401,
                'F40,
                'F4,
                'F,
                'EXE005,
                'EXE004,
                'EXE003,
                'EXE002,
                'EXE001,
                'EXE00,
                'EXE0,
                'EXE,
                'ERA001,
                'ERA00,
                'ERA0,
                'ERA,
                'EM103,
                'EM102,
                'EM101,
                'EM10,
                'EM1,
                'EM,
                'E902,
                'E90,
                'E9,
                'E743,
                'E742,
                'E741,
                'E74,
                'E731,
                'E73,
                'E722,
                'E721,
                'E72,
                'E714,
                'E713,
                'E712,
                'E711,
                'E71,
                'E703,
                'E702,
                'E701,
                'E70,
                'E7,
                'E502,
                'E501,
                'E50,
                'E5,
                'E402,
                'E401,
                'E40,
                'E4,
                'E306,
                'E305,
                'E304,
                'E303,
                'E302,
                'E301,
                'E30,
                'E3,
                'E275,
                'E274,
                'E273,
                'E272,
                'E271,
                'E27,
                'E266,
                'E265,
                'E262,
                'E261,
                'E26,
                'E252,
                'E251,
                'E25,
                'E242,
                'E241,
                'E24,
                'E231,
                'E23,
                'E228,
                'E227,
                'E226,
                'E225,
                'E224,
                'E223,
                'E222,
                'E221,
                'E22,
                'E211,
                'E21,
                'E204,
                'E203,
                'E202,
                'E201,
                'E20,
                'E2,
                'E117,
                'E116,
                'E115,
                'E114,
                'E113,
                'E112,
                'E111,
                'E11,
                'E101,
                'E10,
                'E1,
                'E,
                'DTZ901,
                'DTZ90,
                'DTZ9,
                'DTZ012,
                'DTZ011,
                'DTZ01,
                'DTZ007,
                'DTZ006,
                'DTZ005,
                'DTZ004,
                'DTZ003,
                'DTZ002,
                'DTZ001,
                'DTZ00,
                'DTZ0,
                'DTZ,
                'DOC502,
                'DOC501,
                'DOC50,
                'DOC5,
                'DOC403,
                'DOC402,
                'DOC40,
                'DOC4,
                'DOC202,
                'DOC201,
                'DOC20,
                'DOC2,
                'DOC,
                'DJ013,
                'DJ012,
                'DJ01,
                'DJ008,
                'DJ007,
                'DJ006,
                'DJ003,
                'DJ001,
                'DJ00,
                'DJ0,
                'DJ,
                'D419,
                'D418,
                'D417,
                'D416,
                'D415,
                'D414,
                'D413,
                'D412,
                'D411,
                'D410,
                'D41,
                'D409,
                'D408,
                'D407,
                'D406,
                'D405,
                'D404,
                'D403,
                'D402,
                'D401,
                'D400,
                'D40,
                'D4,
                'D301,
                'D300,
                'D30,
                'D3,
                'D215,
                'D214,
                'D213,
                'D212,
                'D211,
                'D210,
                'D21,
                'D209,
                'D208,
                'D207,
                'D206,
                'D205,
                'D204,
                'D203,
                'D202,
                'D201,
                'D200,
                'D20,
                'D2,
                'D107,
                'D106,
                'D105,
                'D104,
                'D103,
                'D102,
                'D101,
                'D100,
                'D10,
                'D1,
                'D,
                'CPY001,
                'CPY00,
                'CPY0,
                'CPY,
                'COM819,
                'COM818,
                'COM812,
                'COM81,
                'COM8,
                'COM,
                'C901,
                'C90,
                'C9,
                'C420,
                'C42,
                'C419,
                'C418,
                'C417,
                'C416,
                'C415,
                'C414,
                'C413,
                'C411,
                'C410,
                'C41,
                'C409,
                'C408,
                'C406,
                'C405,
                'C404,
                'C403,
                'C402,
                'C401,
                'C400,
                'C40,
                'C4,
                'C,
                'BLE001,
                'BLE00,
                'BLE0,
                'BLE,
                'B911,
                'B91,
                'B909,
                'B905,
                'B904,
                'B903,
                'B901,
                'B90,
                'B9,
                'B039,
                'B035,
                'B034,
                'B033,
                'B032,
                'B031,
                'B030,
                'B03,
                'B029,
                'B028,
                'B027,
                'B026,
                'B025,
                'B024,
                'B023,
                'B022,
                'B021,
                'B020,
                'B02,
                'B019,
                'B018,
                'B017,
                'B016,
                'B015,
                'B014,
                'B013,
                'B012,
                'B011,
                'B010,
                'B01,
                'B009,
                'B008,
                'B007,
                'B006,
                'B005,
                'B004,
                'B003,
                'B002,
                'B00,
                'B0,
                'B,
                'ASYNC251,
                'ASYNC25,
                'ASYNC230,
                'ASYNC23,
                'ASYNC222,
                'ASYNC221,
                'ASYNC220,
                'ASYNC22,
                'ASYNC210,
                'ASYNC21,
                'ASYNC2,
                'ASYNC116,
                'ASYNC115,
                'ASYNC110,
                'ASYNC11,
                'ASYNC109,
                'ASYNC105,
                'ASYNC100,
                'ASYNC10,
                'ASYNC1,
                'ASYNC,
                'ARG005,
                'ARG004,
                'ARG003,
                'ARG002,
                'ARG001,
                'ARG00,
                'ARG0,
                'ARG,
                'ANN401,
                'ANN40,
                'ANN4,
                'ANN206,
                'ANN205,
                'ANN204,
                'ANN202,
                'ANN201,
                'ANN20,
                'ANN2,
                'ANN003,
                'ANN002,
                'ANN001,
                'ANN00,
                'ANN0,
                'ANN,
                'ALL,
                'AIR312,
                'AIR311,
                'AIR31,
                'AIR302,
                'AIR301,
                'AIR30,
                'AIR3,
                'AIR002,
                'AIR001,
                'AIR00,
                'AIR0,
                'AIR,
                'A006,
                'A005,
                'A004,
                'A003,
                'A002,
                'A001,
                'A00,
                'A0,
                'A
              |]
            ],
      "properties.tool.properties.ruff.definitions.Strictness" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'parents |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
            ],
      "properties.tool.properties.scikit-build.properties.backport" =
        {
            find-python
              | String
              | doc "If CMake is less than this value, backport a copy of FindPython. Set to 0 disable this, or the empty string."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.build" =
        {
            targets
              | Array String
              | doc "The build targets to use when building the project. Empty builds the default target."
              | optional,
            tool-args
              | Array String
              | doc "Extra args to pass directly to the builder in the build step."
              | optional,
            verbose | Bool | doc "Verbose printout when building." | optional,
          },
      "properties.tool.properties.scikit-build.properties.build-dir" = String,
      "properties.tool.properties.scikit-build.properties.cmake" =
        {
            args
              | Array String
              | doc "A list of args to pass to CMake when configuring the project. Setting this in config or envvar will override toml. See also ``cmake.define``."
              | optional,
            build-type
              | String
              | doc "The build type to use when building the project. Valid options are: \"Debug\", \"Release\", \"RelWithDebInfo\", \"MinSizeRel\", \"\", etc."
              | optional,
            define
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".+" =
                          js2n.OneOf
                              [
                                std.contract.any_of [ Bool, String ],
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          "default" =
                                            std.contract.any_of
                                                [ Bool, String ],
                                          env = js2n.string.MinLength 1,
                                        },
                                    required = { env = true, },
                                  }
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | doc "A table of defines to pass to CMake when configuring the project. Additive."
              | optional,
            minimum-version
              | String
              | doc "DEPRECATED in 0.8; use version instead."
              | optional,
            source-dir
              | String
              | doc "The source directory to use when building the project. Currently only affects the native builder (not the setuptools plugin)."
              | optional,
            targets
              | Array String
              | doc "DEPRECATED in 0.10; use build.targets instead."
              | optional,
            verbose
              | Bool
              | doc "DEPRECATED in 0.10, use build.verbose instead."
              | optional,
            version
              | String
              | doc "The versions of CMake to allow. If CMake is not present on the system or does not pass this specifier, it will be downloaded via PyPI if possible. An empty string will disable this check. The default on 0.10+ is \"CMakeLists.txt\", which will read it from the project's CMakeLists.txt file, or \">=3.15\" if unreadable or <0.10."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.editable" =
        {
            mode
              | std.enum.TagOrString
              | [| 'inplace, 'redirect |]
              | doc "Select the editable mode to use. Can be \"redirect\" (default) or \"inplace\"."
              | optional,
            rebuild
              | Bool
              | doc "Rebuild the project when the package is imported. The build-directory must be set."
              | optional,
            verbose
              | Bool
              | doc "Turn on verbose output for the editable mode rebuilds."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.experimental" = Bool,
      "properties.tool.properties.scikit-build.properties.fail" = Bool,
      "properties.tool.properties.scikit-build.properties.generate" =
        Array (
            js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          location =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'source, 'build, 'install |]
                                ],
                          path = js2n.string.MinLength 1,
                          template = js2n.string.MinLength 1,
                        },
                    required = { path = true, template = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          location =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'source, 'build, 'install |]
                                ],
                          path = js2n.string.MinLength 1,
                          template-path = js2n.string.MinLength 1,
                        },
                    required = { path = true, template-path = true, },
                  }
              ]
          ),
      "properties.tool.properties.scikit-build.properties.install" =
        {
            components
              | Array String
              | doc "The components to install. If empty, all default components are installed."
              | optional,
            strip
              | Bool
              | doc "Whether to strip the binaries. True for scikit-build-core 0.5+."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.logging" =
        {
            level
              | std.enum.TagOrString
              | [| 'CRITICAL, 'ERROR, 'WARNING, 'INFO, 'DEBUG, 'NOTSET |]
              | doc "The logging level to display, \"DEBUG\", \"INFO\", \"WARNING\", and \"ERROR\" are possible options."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.messages" =
        {
            after-failure
              | String
              | doc "A message to print after a build failure."
              | optional,
            after-success
              | String
              | doc "A message to print after a successful build."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.metadata" =
        {
            authors | js2n.Always | optional,
            classifiers | js2n.Always | optional,
            dependencies | js2n.Always | optional,
            description | js2n.Always | optional,
            entrypoints | js2n.Always | optional,
            gui-scripts | js2n.Always | optional,
            keywords | js2n.Always | optional,
            license | js2n.Always | optional,
            maintainers | js2n.Always | optional,
            optional-dependencies | js2n.Always | optional,
            readme | js2n.Always | optional,
            requires-python | js2n.Always | optional,
            scripts | js2n.Always | optional,
            urls | js2n.Always | optional,
            version | js2n.Always | optional,
          },
      "properties.tool.properties.scikit-build.properties.minimum-version" =
        String,
      "properties.tool.properties.scikit-build.properties.ninja" =
        {
            make-fallback
              | Bool
              | doc "If Ninja is not present on the system or is older than required, it will be downloaded via PyPI if this is false."
              | optional,
            minimum-version
              | String
              | doc "DEPRECATED in 0.8; use version instead."
              | optional,
            version
              | String
              | doc "The versions of Ninja to allow. If Ninja is not present on the system or does not pass this specifier, it will be downloaded via PyPI if possible. An empty string will disable this check."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.sdist" =
        {
            cmake
              | Bool
              | doc "If set to True, CMake will be run before building the SDist."
              | optional,
            exclude
              | Array String
              | doc "Files to exclude from the SDist even if they are included by default. Supports gitignore syntax."
              | optional,
            include
              | Array String
              | doc "Files to include in the SDist even if they are skipped by default. Supports gitignore syntax."
              | optional,
            reproducible
              | Bool
              | doc "If set to True, try to build a reproducible distribution (Unix and Python 3.9+ recommended).  ``SOURCE_DATE_EPOCH`` will be used for timestamps, or a fixed value if not set."
              | optional,
          },
      "properties.tool.properties.scikit-build.properties.strict-config" = Bool,
      "properties.tool.properties.scikit-build.properties.wheel" =
        {
            build-tag
              | String
              | doc "The build tag to use for the wheel. If empty, no build tag is used."
              | optional,
            cmake
              | Bool
              | doc "If set to True (the default), CMake will be run before building the wheel."
              | optional,
            exclude
              | Array String
              | doc "A set of patterns to exclude from the wheel. This is additive to the SDist exclude patterns. This applies to the final paths in the wheel, and can exclude files from CMake output as well.  Editable installs may not respect this exclusion."
              | optional,
            expand-macos-universal-tags
              | Bool
              | doc "Fill out extra tags that are not required. This adds \"x86_64\" and \"arm64\" to the list of platforms when \"universal2\" is used, which helps older Pip's (before 21.0.1) find the correct wheel."
              | optional,
            install-dir
              | String
              | doc "The install directory for the wheel. This is relative to the platlib root. You might set this to the package name. The original dir is still at SKBUILD_PLATLIB_DIR (also SKBUILD_DATA_DIR, etc. are available). EXPERIMENTAL: An absolute path will be one level higher than the platlib root, giving access to \"/platlib\", \"/data\", \"/headers\", and \"/scripts\"."
              | optional,
            license-files
              | Array String
              | doc "A list of license files to include in the wheel. Supports glob patterns."
              | optional,
            packages
              | std.contract.any_of
                [
                  Array String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".+" = String, },
                      properties = {},
                      required = {},
                    }
                ]
              | doc "A list of packages to auto-copy into the wheel. If this is not set, it will default to the first of ``src/<package>``, ``python/<package>``, or ``<package>`` if they exist.  The prefix(s) will be stripped from the package name inside the wheel. If a dict, provides a mapping of package name to source directory."
              | optional,
            platlib
              | Bool
              | doc "Target the platlib or the purelib. If not set, the default is to target the platlib if wheel.cmake is true, and the purelib otherwise."
              | optional,
            py-api
              | String
              | doc "The Python tags. The default (empty string) will use the default Python version. You can also set this to \"cp37\" to enable the CPython 3.7+ Stable ABI / Limited API (only on CPython and if the version is sufficient, otherwise this has no effect). Or you can set it to \"py3\" or \"py2.py3\" to ignore Python ABI compatibility. The ABI tag is inferred from this tag."
              | optional,
          },
      "properties.tool.properties.setuptools.definitions.attr-directive" =
        { attr | String, },
      "properties.tool.properties.setuptools.definitions.file-directive" =
        { file | std.contract.any_of [ String, Array String ], },
      "properties.tool.properties.setuptools.definitions.file-directive-for-dependencies" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.setuptools.definitions.file-directive",
              { _ | Dyn }
            ],
      "properties.tool.properties.setuptools.definitions.file-directive.properties.file" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.setuptools.definitions.find-directive" =
        {
            find
              | {
                exclude
                  | Array String
                  | doc "Exclude packages that match the values listed in this field. Can container shell-style wildcards (e.g. ``'pkg.*'``)"
                  | optional,
                include
                  | Array String
                  | doc "Restrict the found packages to just the ones listed in this field. Can container shell-style wildcards (e.g. ``'pkg.*'``)"
                  | optional,
                namespaces
                  | Bool
                  | doc "When ``True``, directories without a ``__init__.py`` file will also be scanned for :pep:`420`-style implicit namespaces"
                  | optional,
                where
                  | Array String
                  | doc "Directories to be searched for packages (Unix-style relative path)"
                  | optional,
              }
              | doc "Dynamic `package discovery <https://setuptools.pypa.io/en/latest/userguide/package_discovery.html>`_."
              | optional,
          },
      "properties.tool.properties.setuptools.definitions.package-name" = String,
      "properties.tool.properties.taskipy.definitions.Command" =
        js2n.string.MinLength 1,
      "properties.tool.properties.taskipy.definitions.Cwd" =
        js2n.string.MinLength 1,
      "properties.tool.properties.taskipy.definitions.Settings" =
        {
            cwd
              | refs."properties.tool.properties.taskipy.definitions.Cwd"
              | String
              | optional,
            use_vars
              | refs."properties.tool.properties.taskipy.definitions.UseVars"
              | Bool
              | optional,
          },
      "properties.tool.properties.taskipy.definitions.Task" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.taskipy.definitions.Command",
                  String
                ],
              {
                cmd
                  | refs."properties.tool.properties.taskipy.definitions.Command"
                  | String,
                cwd
                  | refs."properties.tool.properties.taskipy.definitions.Cwd"
                  | String
                  | optional,
                help | js2n.string.MinLength 1 | optional,
                use_vars
                  | refs."properties.tool.properties.taskipy.definitions.UseVars"
                  | Bool
                  | optional,
                ..
              }
            ],
      "properties.tool.properties.taskipy.definitions.UseVars" = Bool,
      "properties.tool.properties.taskipy.definitions.Variable" =
        {
            recursive | Bool | optional,
            var
              | refs."properties.tool.properties.taskipy.definitions.VariableValue"
              | String
              | optional,
            ..
          },
      "properties.tool.properties.taskipy.definitions.VariableValue" =
        js2n.string.MinLength 1,
      "properties.tool.properties.tombi.definitions.BoolDefaultTrue" = Bool,
      "properties.tool.properties.tombi.definitions.FormatOptions" = {},
      "properties.tool.properties.tombi.definitions.LintOptions" =
        {
            rules
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LintRules",
                    { _ | Dyn }
                  ])
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LintRules" =
        {
            key-empty
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.SeverityLevelDefaultWarn",
                    String
                  ])
              | doc m%"
                Check if the key is empty.
                 ```toml
                 "" = true
                 ```
              "%
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspCompletion" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc "Whether to enable completion."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspDiagnostics" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc "Whether to enable diagnostics."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspDocumentLink" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc "Whether to enable document link."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspFormatting" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc "Whether to enable formatting."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspGotoDefinition" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc "Whether to enable goto definition."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspHover" =
        {
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc "Whether to enable hover."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.LspOptions" =
        {
            completion
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspCompletion",
                    { _ | Dyn }
                  ])
              | optional,
            diagnostics
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspDiagnostics",
                    { _ | Dyn }
                  ])
              | optional,
            document-link
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspDocumentLink",
                    { _ | Dyn }
                  ])
              | optional,
            formatting
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspFormatting",
                    { _ | Dyn }
                  ])
              | optional,
            goto-declaration
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspGotoDefinition",
                    { _ | Dyn }
                  ])
              | optional,
            goto-definition
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspGotoDefinition",
                    { _ | Dyn }
                  ])
              | optional,
            goto-type-definition
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspGotoDefinition",
                    { _ | Dyn }
                  ])
              | optional,
            hover
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.LspHover",
                    { _ | Dyn }
                  ])
              | optional,
          },
      "properties.tool.properties.tombi.definitions.NewSchemaCatalog" =
        {
            paths
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.tombi.definitions.SchemaCatalogPath",
                      String
                    ]
                ))
              | doc "The catalog is evaluated after the schemas specified by [[schemas]]."
              | optional,
          },
      "properties.tool.properties.tombi.definitions.OldSubSchema" =
        {
            include
              | js2n.array.MinItems 1
              | Array String
              | doc m%"
                The file match pattern to include the target to apply the sub schema.
                 Supports glob pattern.
              "%,
            path | String,
            root-keys
              | js2n.Nullable (js2n.string.MinLength 1)
              | doc m%"
                **🚧 Deprecated 🚧**\
                 Please use `schemas[*].root` instead.
              "%
              | optional,
          },
      "properties.tool.properties.tombi.definitions.OneOrMany_for_SchemaCatalogPath" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.tombi.definitions.SchemaCatalogPath",
                  String
                ],
              Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.SchemaCatalogPath",
                    String
                  ]
              )
            ],
      "properties.tool.properties.tombi.definitions.RootSchema" =
        {
            include
              | js2n.array.MinItems 1
              | Array String
              | doc m%"
                The file match pattern to include the target to apply the schema.
                 Supports glob pattern.
              "%,
            path | String,
            toml-version
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.TomlVersion",
                    String
                  ])
              | optional,
          },
      "properties.tool.properties.tombi.definitions.Schema" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.tombi.definitions.RootSchema",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.tombi.definitions.SubSchema",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.tombi.definitions.OldSubSchema",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.tombi.definitions.SchemaCatalog" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.tombi.definitions.NewSchemaCatalog",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [
                  refs."properties.tool.properties.tombi.definitions.SchemaCatalogOld",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.tombi.definitions.SchemaCatalogOld" =
        {
            path
              | js2n.Nullable
                refs."properties.tool.properties.tombi.definitions.OneOrMany_for_SchemaCatalogPath"
              | doc m%"
                **🚧 Deprecated 🚧**\
                 Please use `schema.catalog.paths` instead.
              "%
              | optional,
          },
      "properties.tool.properties.tombi.definitions.SchemaCatalogPath" = String,
      "properties.tool.properties.tombi.definitions.SchemaOptions" =
        {
            catalog
              | js2n.Nullable
                refs."properties.tool.properties.tombi.definitions.SchemaCatalog"
              | optional,
            enabled
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | optional,
            strict
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.tombi.definitions.BoolDefaultTrue",
                    Bool
                  ])
              | doc m%"
                If `additionalProperties` is not specified in the JSON Schema,
                 the strict mode treats it as `additionalProperties: false`,
                 which is different from the JSON Schema specification.
              "%
              | optional,
          },
      "properties.tool.properties.tombi.definitions.SeverityLevel" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'error, 'warn, 'off |] ],
      "properties.tool.properties.tombi.definitions.SeverityLevelDefaultWarn" =
        std.contract.Sequence
            [
              refs."properties.tool.properties.tombi.definitions.SeverityLevel",
              String
            ],
      "properties.tool.properties.tombi.definitions.SubSchema" =
        {
            include
              | js2n.array.MinItems 1
              | Array String
              | doc m%"
                The file match pattern to include the target to apply the sub schema.
                 Supports glob pattern.
              "%,
            path | String,
            root | js2n.Nullable (js2n.string.MinLength 1) | optional,
          },
      "properties.tool.properties.tombi.definitions.TomlVersion" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| '"v1.1.0-preview", '"v1.0.0" |] ],
      "properties.tool.properties.ty.definitions.DiagnosticFormat" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'full |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'concise |] ]
            ],
      "properties.tool.properties.ty.definitions.EnvironmentOptions" =
        {
            extra-paths
              | js2n.Nullable (Array String)
              | doc "List of user-provided paths that should take first priority in the module resolution. Examples in other type checkers are mypy's `MYPYPATH` environment variable, or pyright's `stubPath` configuration setting."
              | optional,
            python
              | js2n.Nullable String
              | doc m%"
                Path to the Python installation from which ty resolves type information and third-party dependencies.
                
                ty will search in the path's `site-packages` directories for type information and third-party imports.
                
                This option is commonly used to specify the path to a virtual environment.
              "%
              | optional,
            python-platform
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ty.definitions.PythonPlatform",
                    String
                  ])
              | doc m%"
                Specifies the target platform that will be used to analyze the source code. If specified, ty will understand conditions based on comparisons with `sys.platform`, such as are commonly found in typeshed to reflect the differing contents of the standard library across platforms.
                
                If no platform is specified, ty will use the current platform: - `win32` for Windows - `darwin` for macOS - `android` for Android - `ios` for iOS - `linux` for everything else
              "%
              | optional,
            python-version
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.ty.definitions.PythonVersion",
                    String
                  ])
              | doc "Specifies the version of Python that will be used to analyze the source code. The version should be specified as a string in the format `M.m` where `M` is the major version and `m` is the minor (e.g. `\"3.0\"` or `\"3.6\"`). If a version is provided, ty will generate errors if the source code makes use of language features that are not supported in that version. It will also understand conditionals based on comparisons with `sys.version_info`, such as are commonly found in typeshed to reflect the differing contents of the standard library across Python versions."
              | optional,
            typeshed
              | js2n.Nullable String
              | doc "Optional path to a \"typeshed\" directory on disk for us to use for standard-library types. If this is not provided, we will fallback to our vendored typeshed stubs for the stdlib, bundled as a zip file in the binary"
              | optional,
          },
      "properties.tool.properties.ty.definitions.Level" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'ignore |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'warn |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'error |] ]
            ],
      "properties.tool.properties.ty.definitions.PythonPlatform" =
        std.contract.any_of
            [
              String,
              js2n.Const "all",
              js2n.Const "darwin",
              js2n.Const "linux",
              js2n.Const "win32"
            ],
      "properties.tool.properties.ty.definitions.PythonVersion" =
        std.contract.any_of
            [
              js2n.string.Matches "^\\d+\\.\\d+$",
              js2n.Const "3.7",
              js2n.Const "3.8",
              js2n.Const "3.9",
              js2n.Const "3.10",
              js2n.Const "3.11",
              js2n.Const "3.12",
              js2n.Const "3.13",
              js2n.Const "3.14"
            ],
      "properties.tool.properties.ty.definitions.Rules" =
        js2n.record.Record
            {
              additional =
                'Some refs."properties.tool.properties.ty.definitions.Level",
              patterns = {},
              properties =
                {
                    byte-string-type-annotation =
                      refs."properties.tool.properties.ty.definitions.Level",
                    call-non-callable =
                      refs."properties.tool.properties.ty.definitions.Level",
                    conflicting-argument-forms =
                      refs."properties.tool.properties.ty.definitions.Level",
                    conflicting-declarations =
                      refs."properties.tool.properties.ty.definitions.Level",
                    conflicting-metaclass =
                      refs."properties.tool.properties.ty.definitions.Level",
                    cyclic-class-definition =
                      refs."properties.tool.properties.ty.definitions.Level",
                    division-by-zero =
                      refs."properties.tool.properties.ty.definitions.Level",
                    duplicate-base =
                      refs."properties.tool.properties.ty.definitions.Level",
                    escape-character-in-forward-annotation =
                      refs."properties.tool.properties.ty.definitions.Level",
                    fstring-type-annotation =
                      refs."properties.tool.properties.ty.definitions.Level",
                    implicit-concatenated-string-type-annotation =
                      refs."properties.tool.properties.ty.definitions.Level",
                    incompatible-slots =
                      refs."properties.tool.properties.ty.definitions.Level",
                    inconsistent-mro =
                      refs."properties.tool.properties.ty.definitions.Level",
                    index-out-of-bounds =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-argument-type =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-assignment =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-attribute-access =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-base =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-context-manager =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-declaration =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-exception-caught =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-generic-class =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-ignore-comment =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-legacy-type-variable =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-metaclass =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-overload =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-parameter-default =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-protocol =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-raise =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-return-type =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-super-argument =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-syntax-in-forward-annotation =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-type-alias-type =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-type-checking-constant =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-type-form =
                      refs."properties.tool.properties.ty.definitions.Level",
                    invalid-type-variable-constraints =
                      refs."properties.tool.properties.ty.definitions.Level",
                    missing-argument =
                      refs."properties.tool.properties.ty.definitions.Level",
                    no-matching-overload =
                      refs."properties.tool.properties.ty.definitions.Level",
                    non-subscriptable =
                      refs."properties.tool.properties.ty.definitions.Level",
                    not-iterable =
                      refs."properties.tool.properties.ty.definitions.Level",
                    parameter-already-assigned =
                      refs."properties.tool.properties.ty.definitions.Level",
                    possibly-unbound-attribute =
                      refs."properties.tool.properties.ty.definitions.Level",
                    possibly-unbound-implicit-call =
                      refs."properties.tool.properties.ty.definitions.Level",
                    possibly-unbound-import =
                      refs."properties.tool.properties.ty.definitions.Level",
                    possibly-unresolved-reference =
                      refs."properties.tool.properties.ty.definitions.Level",
                    raw-string-type-annotation =
                      refs."properties.tool.properties.ty.definitions.Level",
                    redundant-cast =
                      refs."properties.tool.properties.ty.definitions.Level",
                    static-assert-error =
                      refs."properties.tool.properties.ty.definitions.Level",
                    subclass-of-final-class =
                      refs."properties.tool.properties.ty.definitions.Level",
                    too-many-positional-arguments =
                      refs."properties.tool.properties.ty.definitions.Level",
                    type-assertion-failure =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unavailable-implicit-super-arguments =
                      refs."properties.tool.properties.ty.definitions.Level",
                    undefined-reveal =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unknown-argument =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unknown-rule =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unresolved-attribute =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unresolved-import =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unresolved-reference =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unsupported-base =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unsupported-bool-conversion =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unsupported-operator =
                      refs."properties.tool.properties.ty.definitions.Level",
                    unused-ignore-comment =
                      refs."properties.tool.properties.ty.definitions.Level",
                    zero-stepsize-in-slice =
                      refs."properties.tool.properties.ty.definitions.Level",
                  },
              required = {},
            },
      "properties.tool.properties.ty.definitions.SrcOptions" =
        {
            respect-ignore-files
              | js2n.Nullable Bool
              | doc "Whether to automatically exclude files that are ignored by `.ignore`, `.gitignore`, `.git/info/exclude`, and global `gitignore` files. Enabled by default."
              | optional,
            root
              | js2n.Nullable String
              | doc m%"
                The root of the project, used for finding first-party modules.
                
                If left unspecified, ty will try to detect common project layouts and initialize `src.root` accordingly:
                
                * if a `./src` directory exists, include `.` and `./src` in the first party search path (src layout or flat) * if a `./<project-name>/<project-name>` directory exists, include `.` and `./<project-name>` in the first party search path * otherwise, default to `.` (flat layout)
                
                Besides, if a `./tests` directory exists and is not a package (i.e. it does not contain an `__init__.py` file), it will also be included in the first party search path.
              "%
              | optional,
          },
      "properties.tool.properties.ty.definitions.TerminalOptions" =
        {
            error-on-warning
              | js2n.Nullable Bool
              | doc m%"
                Use exit code 1 if there are any warning-level diagnostics.
                
                Defaults to `false`.
              "%
              | optional,
            output-format
              | js2n.Nullable
                refs."properties.tool.properties.ty.definitions.DiagnosticFormat"
              | doc m%"
                The format to use for printing diagnostic messages.
                
                Defaults to `full`.
              "%
              | optional,
          },
      "properties.tool.properties.uv.definitions.AnnotationStyle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'line |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'split |] ]
            ],
      "properties.tool.properties.uv.definitions.CacheKey" =
        std.contract.any_of
            [
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { file = String, },
                  required = { file = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        git =
                          refs."properties.tool.properties.uv.definitions.GitPattern",
                      },
                  required = { git = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { env = String, },
                  required = { env = true, },
                }
            ],
      "properties.tool.properties.uv.definitions.ConfigSettingValue" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.uv.definitions.ConfigSettings" =
        {
            _ | refs."properties.tool.properties.uv.definitions.ConfigSettingValue"
          },
      "properties.tool.properties.uv.definitions.ExcludeNewer" =
        js2n.string.Matches
            "^\\d{4}-\\d{2}-\\d{2}(T\\d{2}:\\d{2}:\\d{2}(Z|[+-]\\d{2}:\\d{2}))?$",
      "properties.tool.properties.uv.definitions.ExtraName" = String,
      "properties.tool.properties.uv.definitions.ForkStrategy" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'fewest |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'requires-python |] ]
            ],
      "properties.tool.properties.uv.definitions.GitPattern" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [
                  refs."properties.tool.properties.uv.definitions.GitSet",
                  { _ | Dyn }
                ]
            ],
      "properties.tool.properties.uv.definitions.GitSet" =
        {
            commit | js2n.Nullable Bool | optional,
            tags | js2n.Nullable Bool | optional,
          },
      "properties.tool.properties.uv.definitions.GroupName" = String,
      "properties.tool.properties.uv.definitions.Index" =
        {
            "default"
              | Bool
              | doc m%"
                Mark the index as the default index.
                
                By default, uv uses PyPI as the default index, such that even if additional indexes are defined via `[[tool.uv.index]]`, PyPI will still be used as a fallback for packages that aren't found elsewhere. To disable the PyPI default, set `default = true` on at least one other index.
                
                Marking an index as default will move it to the front of the list of indexes, such that it is given the highest priority when resolving packages.
              "%
              | optional,
            explicit
              | Bool
              | doc m%"
                Mark the index as explicit.
                
                Explicit indexes will _only_ be used when explicitly requested via a `[tool.uv.sources]` definition, as in:
                
                ```toml [[tool.uv.index]] name = "pytorch" url = "https://download.pytorch.org/whl/cu121" explicit = true
                
                [tool.uv.sources] torch = { index = "pytorch" } ```
              "%
              | optional,
            name
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.IndexName",
                    String
                  ])
              | doc m%"
                The name of the index.
                
                Index names can be used to reference indexes elsewhere in the configuration. For example, you can pin a package to a specific index by name:
                
                ```toml [[tool.uv.index]] name = "pytorch" url = "https://download.pytorch.org/whl/cu121"
                
                [tool.uv.sources] torch = { index = "pytorch" } ```
              "%
              | optional,
            publish-url
              | js2n.Nullable String
              | doc m%"
                The URL of the upload endpoint.
                
                When using `uv publish --index <name>`, this URL is used for publishing.
                
                A configuration for the default index PyPI would look as follows:
                
                ```toml [[tool.uv.index]] name = "pypi" url = "https://pypi.org/simple" publish-url = "https://upload.pypi.org/legacy/" ```
              "%
              | optional,
            url
              | refs."properties.tool.properties.uv.definitions.IndexUrl"
              | String
              | doc m%"
                The URL of the index.
                
                Expects to receive a URL (e.g., `https://pypi.org/simple`) or a local path.
              "%,
            ..
          },
      "properties.tool.properties.uv.definitions.IndexName" = String,
      "properties.tool.properties.uv.definitions.IndexStrategy" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'first-index |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'unsafe-first-match |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'unsafe-best-match |] ]
            ],
      "properties.tool.properties.uv.definitions.IndexUrl" = String,
      "properties.tool.properties.uv.definitions.KeyringProviderType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'disabled |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'subprocess |] ]
            ],
      "properties.tool.properties.uv.definitions.LinkMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'clone |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'copy |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'hardlink |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'symlink |] ]
            ],
      "properties.tool.properties.uv.definitions.MarkerTree" = String,
      "properties.tool.properties.uv.definitions.PackageName" = String,
      "properties.tool.properties.uv.definitions.PackageNameSpecifier" =
        js2n.string.Matches
            "^(:none:|:all:|([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]))$",
      "properties.tool.properties.uv.definitions.PipOptions" =
        {
            all-extras
              | js2n.Nullable Bool
              | doc m%"
                Include all optional dependencies.
                
                Only applies to `pyproject.toml`, `setup.py`, and `setup.cfg` sources.
              "%
              | optional,
            allow-empty-requirements
              | js2n.Nullable Bool
              | doc "Allow `uv pip sync` with empty requirements, which will clear the environment of all packages."
              | optional,
            annotation-style
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.AnnotationStyle"
              | doc "The style of the annotation comments included in the output file, used to indicate the source of each package."
              | optional,
            break-system-packages
              | js2n.Nullable Bool
              | doc m%"
                Allow uv to modify an `EXTERNALLY-MANAGED` Python installation.
                
                WARNING: `--break-system-packages` is intended for use in continuous integration (CI) environments, when installing into Python installations that are managed by an external package manager, like `apt`. It should be used with caution, as such Python installations explicitly recommend against modifications by other package managers (like uv or pip).
              "%
              | optional,
            compile-bytecode
              | js2n.Nullable Bool
              | doc m%"
                Compile Python files to bytecode after installation.
                
                By default, uv does not compile Python (`.py`) files to bytecode (`__pycache__/*.pyc`); instead, compilation is performed lazily the first time a module is imported. For use-cases in which start time is critical, such as CLI applications and Docker containers, this option can be enabled to trade longer installation times for faster start times.
                
                When enabled, uv will process the entire site-packages directory (including packages that are not being modified by the current operation) for consistency. Like pip, it will also ignore errors.
              "%
              | optional,
            config-settings
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ConfigSettings",
                    { _ | Dyn }
                  ])
              | doc "Settings to pass to the [PEP 517](https://peps.python.org/pep-0517/) build backend, specified as `KEY=VALUE` pairs."
              | optional,
            custom-compile-command
              | js2n.Nullable String
              | doc m%"
                The header comment to include at the top of the output file generated by `uv pip compile`.
                
                Used to reflect custom build scripts and commands that wrap `uv pip compile`.
              "%
              | optional,
            dependency-metadata
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.StaticMetadata",
                      { _ | Dyn }
                    ]
                ))
              | doc m%"
                Pre-defined static metadata for dependencies of the project (direct or transitive). When provided, enables the resolver to use the specified metadata instead of querying the registry or building the relevant package from source.
                
                Metadata should be provided in adherence with the [Metadata 2.3](https://packaging.python.org/en/latest/specifications/core-metadata/) standard, though only the following fields are respected:
                
                - `name`: The name of the package. - (Optional) `version`: The version of the package. If omitted, the metadata will be applied to all versions of the package. - (Optional) `requires-dist`: The dependencies of the package (e.g., `werkzeug>=0.14`). - (Optional) `requires-python`: The Python version required by the package (e.g., `>=3.10`). - (Optional) `provides-extras`: The extras provided by the package.
              "%
              | optional,
            emit-build-options
              | js2n.Nullable Bool
              | doc "Include `--no-binary` and `--only-binary` entries in the output file generated by `uv pip compile`."
              | optional,
            emit-find-links
              | js2n.Nullable Bool
              | doc "Include `--find-links` entries in the output file generated by `uv pip compile`."
              | optional,
            emit-index-annotation
              | js2n.Nullable Bool
              | doc "Include comment annotations indicating the index used to resolve each package (e.g., `# from https://pypi.org/simple`)."
              | optional,
            emit-index-url
              | js2n.Nullable Bool
              | doc "Include `--index-url` and `--extra-index-url` entries in the output file generated by `uv pip compile`."
              | optional,
            emit-marker-expression
              | js2n.Nullable Bool
              | doc m%"
                Whether to emit a marker string indicating the conditions under which the set of pinned dependencies is valid.
                
                The pinned dependencies may be valid even when the marker expression is false, but when the expression is true, the requirements are known to be correct.
              "%
              | optional,
            exclude-newer
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ExcludeNewer",
                    String
                  ])
              | doc m%"
                Limit candidate packages to those that were uploaded prior to a given point in time.
                
                Accepts a superset of [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339.html) (e.g., `2006-12-02T02:07:43Z`). A full timestamp is required to ensure that the resolver will behave consistently across timezones.
              "%
              | optional,
            extra
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.ExtraName",
                      String
                    ]
                ))
              | doc m%"
                Include optional dependencies from the specified extra; may be provided more than once.
                
                Only applies to `pyproject.toml`, `setup.py`, and `setup.cfg` sources.
              "%
              | optional,
            extra-index-url
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.IndexUrl",
                      String
                    ]
                ))
              | doc m%"
                Extra URLs of package indexes to use, in addition to `--index-url`.
                
                Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                
                All indexes provided via this flag take priority over the index specified by [`index_url`](#index-url). When multiple indexes are provided, earlier values take priority.
                
                To control uv's resolution strategy when multiple indexes are present, see [`index_strategy`](#index-strategy).
              "%
              | optional,
            find-links
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.IndexUrl",
                      String
                    ]
                ))
              | doc m%"
                Locations to search for candidate distributions, in addition to those found in the registry indexes.
                
                If a path, the target must be a directory that contains packages as wheel files (`.whl`) or source distributions (e.g., `.tar.gz` or `.zip`) at the top level.
                
                If a URL, the page must contain a flat list of links to package files adhering to the formats described above.
              "%
              | optional,
            fork-strategy
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.ForkStrategy"
              | doc m%"
                The strategy to use when selecting multiple versions of a given package across Python versions and platforms.
                
                By default, uv will optimize for selecting the latest version of each package for each supported Python version (`requires-python`), while minimizing the number of selected versions across platforms.
                
                Under `fewest`, uv will minimize the number of selected versions for each package, preferring older versions that are compatible with a wider range of supported Python versions or platforms.
              "%
              | optional,
            generate-hashes
              | js2n.Nullable Bool
              | doc "Include distribution hashes in the output file."
              | optional,
            index-strategy
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.IndexStrategy"
              | doc m%"
                The strategy to use when resolving against multiple index URLs.
                
                By default, uv will stop at the first index on which a given package is available, and limit resolutions to those present on that first index (`first-index`). This prevents "dependency confusion" attacks, whereby an attacker can upload a malicious package under the same name to an alternate index.
              "%
              | optional,
            index-url
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.IndexUrl",
                    String
                  ])
              | doc m%"
                The URL of the Python package index (by default: <https://pypi.org/simple>).
                
                Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                
                The index provided by this setting is given lower priority than any indexes specified via [`extra_index_url`](#extra-index-url).
              "%
              | optional,
            keyring-provider
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.KeyringProviderType"
              | doc m%"
                Attempt to use `keyring` for authentication for index URLs.
                
                At present, only `--keyring-provider subprocess` is supported, which configures uv to use the `keyring` CLI to handle authentication.
              "%
              | optional,
            link-mode
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.LinkMode"
              | doc m%"
                The method to use when installing packages from the global cache.
                
                Defaults to `clone` (also known as Copy-on-Write) on macOS, and `hardlink` on Linux and Windows.
              "%
              | optional,
            no-annotate
              | js2n.Nullable Bool
              | doc "Exclude comment annotations indicating the source of each package from the output file generated by `uv pip compile`."
              | optional,
            no-binary
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageNameSpecifier",
                      String
                    ]
                ))
              | doc m%"
                Don't install pre-built wheels.
                
                The given packages will be built and installed from source. The resolver will still use pre-built wheels to extract package metadata, if available.
                
                Multiple packages may be provided. Disable binaries for all packages with `:all:`. Clear previously specified packages with `:none:`.
              "%
              | optional,
            no-build
              | js2n.Nullable Bool
              | doc m%"
                Don't build source distributions.
                
                When enabled, resolving will not run arbitrary Python code. The cached wheels of already-built source distributions will be reused, but operations that require building distributions will exit with an error.
                
                Alias for `--only-binary :all:`.
              "%
              | optional,
            no-build-isolation
              | js2n.Nullable Bool
              | doc m%"
                Disable isolation when building source distributions.
                
                Assumes that build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
              "%
              | optional,
            no-build-isolation-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageName",
                      String
                    ]
                ))
              | doc m%"
                Disable isolation when building source distributions for a specific package.
                
                Assumes that the packages' build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
              "%
              | optional,
            no-deps
              | js2n.Nullable Bool
              | doc "Ignore package dependencies, instead only add those packages explicitly listed on the command line to the resulting requirements file."
              | optional,
            no-emit-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageName",
                      String
                    ]
                ))
              | doc "Specify a package to omit from the output resolution. Its dependencies will still be included in the resolution. Equivalent to pip-compile's `--unsafe-package` option."
              | optional,
            no-extra
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.ExtraName",
                      String
                    ]
                ))
              | doc "Exclude the specified optional dependencies if `all-extras` is supplied."
              | optional,
            no-header
              | js2n.Nullable Bool
              | doc "Exclude the comment header at the top of output file generated by `uv pip compile`."
              | optional,
            no-index
              | js2n.Nullable Bool
              | doc "Ignore all registry indexes (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`."
              | optional,
            no-sources
              | js2n.Nullable Bool
              | doc "Ignore the `tool.uv.sources` table when resolving dependencies. Used to lock against the standards-compliant, publishable package metadata, as opposed to using any local or Git sources."
              | optional,
            no-strip-extras
              | js2n.Nullable Bool
              | doc m%"
                Include extras in the output file.
                
                By default, uv strips extras, as any packages pulled in by the extras are already included as dependencies in the output file directly. Further, output files generated with `--no-strip-extras` cannot be used as constraints files in `install` and `sync` invocations.
              "%
              | optional,
            no-strip-markers
              | js2n.Nullable Bool
              | doc m%"
                Include environment markers in the output file generated by `uv pip compile`.
                
                By default, uv strips environment markers, as the resolution generated by `compile` is only guaranteed to be correct for the target environment.
              "%
              | optional,
            only-binary
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageNameSpecifier",
                      String
                    ]
                ))
              | doc m%"
                Only use pre-built wheels; don't build source distributions.
                
                When enabled, resolving will not run code from the given packages. The cached wheels of already-built source distributions will be reused, but operations that require building distributions will exit with an error.
                
                Multiple packages may be provided. Disable binaries for all packages with `:all:`. Clear previously specified packages with `:none:`.
              "%
              | optional,
            output-file
              | js2n.Nullable String
              | doc m%"
                Write the requirements generated by `uv pip compile` to the given `requirements.txt` file.
                
                If the file already exists, the existing versions will be preferred when resolving dependencies, unless `--upgrade` is also specified.
              "%
              | optional,
            prefix
              | js2n.Nullable String
              | doc m%"
                Install packages into `lib`, `bin`, and other top-level folders under the specified directory, as if a virtual environment were present at that location.
                
                In general, prefer the use of `--python` to install into an alternate environment, as scripts and other artifacts installed via `--prefix` will reference the installing interpreter, rather than any interpreter added to the `--prefix` directory, rendering them non-portable.
              "%
              | optional,
            prerelease
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.PrereleaseMode"
              | doc m%"
                The strategy to use when considering pre-release versions.
                
                By default, uv will accept pre-releases for packages that _only_ publish pre-releases, along with first-party requirements that contain an explicit pre-release marker in the declared specifiers (`if-necessary-or-explicit`).
              "%
              | optional,
            python
              | js2n.Nullable String
              | doc m%"
                The Python interpreter into which packages should be installed.
                
                By default, uv installs into the virtual environment in the current working directory or any parent directory. The `--python` option allows you to specify a different interpreter, which is intended for use in continuous integration (CI) environments or other automated workflows.
                
                Supported formats: - `3.10` looks for an installed Python 3.10 in the registry on Windows (see `py --list-paths`), or `python3.10` on Linux and macOS. - `python3.10` or `python.exe` looks for a binary with the given name in `PATH`. - `/home/ferris/.local/bin/python3.10` uses the exact Python at the given path.
              "%
              | optional,
            python-platform
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.TargetTriple"
              | doc m%"
                The platform for which requirements should be resolved.
                
                Represented as a "target triple", a string that describes the target platform in terms of its CPU, vendor, and operating system name, like `x86_64-unknown-linux-gnu` or `aarch64-apple-darwin`.
              "%
              | optional,
            python-version
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.PythonVersion",
                    String
                  ])
              | doc m%"
                The minimum Python version that should be supported by the resolved requirements (e.g., `3.8` or `3.8.17`).
                
                If a patch version is omitted, the minimum patch version is assumed. For example, `3.8` is mapped to `3.8.0`.
              "%
              | optional,
            reinstall
              | js2n.Nullable Bool
              | doc "Reinstall all packages, regardless of whether they're already installed. Implies `refresh`."
              | optional,
            reinstall-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.PackageName",
                      String
                    ]
                ))
              | doc "Reinstall a specific package, regardless of whether it's already installed. Implies `refresh-package`."
              | optional,
            require-hashes
              | js2n.Nullable Bool
              | doc m%"
                Require a matching hash for each requirement.
                
                Hash-checking mode is all or nothing. If enabled, _all_ requirements must be provided with a corresponding hash or set of hashes. Additionally, if enabled, _all_ requirements must either be pinned to exact versions (e.g., `==1.0.0`), or be specified via direct URL.
                
                Hash-checking mode introduces a number of additional constraints:
                
                - Git dependencies are not supported. - Editable installs are not supported. - Local dependencies are not supported, unless they point to a specific wheel (`.whl`) or source archive (`.zip`, `.tar.gz`), as opposed to a directory.
              "%
              | optional,
            resolution
              | js2n.Nullable
                refs."properties.tool.properties.uv.definitions.ResolutionMode"
              | doc m%"
                The strategy to use when selecting between the different compatible versions for a given package requirement.
                
                By default, uv will use the latest compatible version of each package (`highest`).
              "%
              | optional,
            strict
              | js2n.Nullable Bool
              | doc "Validate the Python environment, to detect packages with missing dependencies and other issues."
              | optional,
            system
              | js2n.Nullable Bool
              | doc m%"
                Install packages into the system Python environment.
                
                By default, uv installs into the virtual environment in the current working directory or any parent directory. The `--system` option instructs uv to instead use the first Python found in the system `PATH`.
                
                WARNING: `--system` is intended for use in continuous integration (CI) environments and should be used with caution, as it can modify the system Python installation.
              "%
              | optional,
            target
              | js2n.Nullable String
              | doc "Install packages into the specified directory, rather than into the virtual or system Python environment. The packages will be installed at the top-level of the directory."
              | optional,
            universal
              | js2n.Nullable Bool
              | doc m%"
                Perform a universal resolution, attempting to generate a single `requirements.txt` output file that is compatible with all operating systems, architectures, and Python implementations.
                
                In universal mode, the current Python version (or user-provided `--python-version`) will be treated as a lower bound. For example, `--universal --python-version 3.7` would produce a universal resolution for Python 3.7 and later.
              "%
              | optional,
            upgrade
              | js2n.Nullable Bool
              | doc "Allow package upgrades, ignoring pinned versions in any existing output file."
              | optional,
            upgrade-package
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.Requirement",
                      String
                    ]
                ))
              | doc m%"
                Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
                
                Accepts both standalone package names (`ruff`) and version specifiers (`ruff<0.5.0`).
              "%
              | optional,
            verify-hashes
              | js2n.Nullable Bool
              | doc m%"
                Validate any hashes provided in the requirements file.
                
                Unlike `--require-hashes`, `--verify-hashes` does not require that all requirements have hashes; instead, it will limit itself to verifying the hashes of those requirements that do include them.
              "%
              | optional,
          },
      "properties.tool.properties.uv.definitions.PrereleaseMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'disallow |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'allow |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'if-necessary |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'explicit |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'if-necessary-or-explicit |] ]
            ],
      "properties.tool.properties.uv.definitions.PythonDownloads" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'automatic |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'manual |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'never |] ]
            ],
      "properties.tool.properties.uv.definitions.PythonPreference" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'only-managed |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'managed |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'system |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'only-system |] ]
            ],
      "properties.tool.properties.uv.definitions.PythonVersion" =
        js2n.string.Matches "^3\\.\\d+(\\.\\d+)?$",
      "properties.tool.properties.uv.definitions.RequiredVersion" = String,
      "properties.tool.properties.uv.definitions.Requirement" = String,
      "properties.tool.properties.uv.definitions.ResolutionMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'highest |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lowest |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'lowest-direct |] ]
            ],
      "properties.tool.properties.uv.definitions.SchemaConflictItem" =
        {
            extra
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ExtraName",
                    String
                  ])
              | optional,
            group
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.GroupName",
                    String
                  ])
              | optional,
            package
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.PackageName",
                    String
                  ])
              | optional,
            ..
          },
      "properties.tool.properties.uv.definitions.SchemaConflictSet" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.uv.definitions.SchemaConflictItem",
                { _ | Dyn }
              ]
          ),
      "properties.tool.properties.uv.definitions.SchemaConflicts" =
        Array (
            std.contract.Sequence
              [
                refs."properties.tool.properties.uv.definitions.SchemaConflictSet",
                Array Dyn
              ]
          ),
      "properties.tool.properties.uv.definitions.Source" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        branch = js2n.Nullable String,
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        git = String,
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        rev = js2n.Nullable String,
                        subdirectory =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.String",
                                  String
                                ]),
                        tag = js2n.Nullable String,
                      },
                  required = { git = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        subdirectory =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.String",
                                  String
                                ]),
                        url = String,
                      },
                  required = { url = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        editable = js2n.Nullable Bool,
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        path =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.String",
                                String
                              ],
                      },
                  required = { path = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        index =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.IndexName",
                                String
                              ],
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                      },
                  required = { index = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        extra =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.ExtraName",
                                  String
                                ]),
                        group =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."properties.tool.properties.uv.definitions.GroupName",
                                  String
                                ]),
                        marker =
                          std.contract.Sequence
                              [
                                refs."properties.tool.properties.uv.definitions.MarkerTree",
                                String
                              ],
                        workspace = Bool,
                      },
                  required = { workspace = true, },
                }
            ],
      "properties.tool.properties.uv.definitions.SourcesWire" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."properties.tool.properties.uv.definitions.Source",
                  { _ | Dyn }
                ],
              Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.Source",
                    { _ | Dyn }
                  ]
              )
            ],
      "properties.tool.properties.uv.definitions.StaticMetadata" =
        {
            name
              | refs."properties.tool.properties.uv.definitions.PackageName"
              | String,
            provides-extras
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.ExtraName",
                    String
                  ]
              )
              | optional,
            requires-dist
              | Array (
                std.contract.Sequence
                  [
                    refs."properties.tool.properties.uv.definitions.Requirement",
                    String
                  ]
              )
              | optional,
            requires-python
              | js2n.Nullable String
              | doc "PEP 508-style Python requirement, e.g., `>=3.10`"
              | optional,
            version
              | js2n.Nullable String
              | doc "PEP 440-style package version, e.g., `1.2.3`"
              | optional,
            ..
          },
      "properties.tool.properties.uv.definitions.String" = String,
      "properties.tool.properties.uv.definitions.TargetTriple" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'windows |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'linux |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'macos |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-pc-windows-msvc |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'i686-pc-windows-msvc |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-unknown-linux-gnu |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-apple-darwin |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-apple-darwin |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-unknown-linux-gnu |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-unknown-linux-musl |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-unknown-linux-musl |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux2014 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_17 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_28 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_31 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_32 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_33 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_34 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_35 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_36 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_37 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_38 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_39 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'x86_64-manylinux_2_40 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux2014 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_17 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_28 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_31 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_32 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_33 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_34 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_35 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_36 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_37 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_38 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_39 |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'aarch64-manylinux_2_40 |] ]
            ],
      "properties.tool.properties.uv.definitions.ToolUvSources" =
        { _ | refs."properties.tool.properties.uv.definitions.SourcesWire" },
      "properties.tool.properties.uv.definitions.ToolUvWorkspace" =
        {
            exclude
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.String",
                      String
                    ]
                ))
              | doc m%"
                Packages to exclude as workspace members. If a package matches both `members` and `exclude`, it will be excluded.
                
                Supports both globs and explicit paths.
                
                For more information on the glob syntax, refer to the [`glob` documentation](https://docs.rs/glob/latest/glob/struct.Pattern.html).
              "%
              | optional,
            members
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."properties.tool.properties.uv.definitions.String",
                      String
                    ]
                ))
              | doc m%"
                Packages to include as workspace members.
                
                Supports both globs and explicit paths.
                
                For more information on the glob syntax, refer to the [`glob` documentation](https://docs.rs/glob/latest/glob/struct.Pattern.html).
              "%
              | optional,
          },
      "properties.tool.properties.uv.definitions.TrustedHost" = String,
      "properties.tool.properties.uv.definitions.TrustedPublishing" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'never, 'always |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'automatic |] ]
            ],
    }
    in
  {
      build-system | refs."definitions.BuildSystem" | optional,
      dependency-groups
        | {
          _ | Array (
            std.contract.any_of
              [
                String,
                {
                  include-group
                    | js2n.string.Matches
                      "^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9])$"
                    | optional,
                }
              ]
          )
        }
        | js2n.record.FieldsMatch
          "^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9])$"
        | doc "Named groups of dependencies, similar to `requirements.txt` files, which launchers, IDEs, and other tools can find and identify by name. Each item in `[dependency-groups]` is defined as mapping of group name to list of [dependency specifiers](https://packaging.python.org/en/latest/specifications/dependency-specifiers/)."
        | optional,
      project
        | js2n.record.DependentContracts
          {
            authors =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "authors"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            classifiers =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "classifiers"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            dependencies =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "dependencies"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            description =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "description"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            entry-points =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "entry-points"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            gui-scripts =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "gui-scripts"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            keywords =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "keywords"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            license =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "license"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            license-files =
              std.contract.Sequence
                  [
                    std.contract.not
                      (std.contract.any_of
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
                                    dynamic =
                                      js2n.array.Contains
                                          (js2n.Const "license-files"),
                                  },
                              required = { dynamic = true, },
                            },
                          Array Dyn
                        ]),
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { license | String | optional, .. },
                        Array Dyn
                      ]
                  ],
            maintainers =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "maintainers"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            optional-dependencies =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "optional-dependencies"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            readme =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "readme"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            requires-python =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains
                                      (js2n.Const "requires-python"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            scripts =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "scripts"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            urls =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "urls"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
            version =
              std.contract.not
                  (std.contract.any_of
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
                                dynamic =
                                  js2n.array.Contains (js2n.Const "version"),
                              },
                          required = { dynamic = true, },
                        },
                      Array Dyn
                    ]),
          }
        | js2n.OneOf
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
                      { dynamic = js2n.array.Contains (js2n.Const "version"), },
                    required = { dynamic = true, },
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
                    properties = { version = js2n.Always, },
                    required = { version = true, },
                  },
                Array Dyn
              ]
          ]
        | {
          authors
            | Array (
              std.contract.Sequence
                [ refs."definitions.projectAuthor", { _ | Dyn } ]
            )
            | doc "People or organizations considered as 'authors' of the project. Each author is a table with `name` key, `email` key, or both."
            | optional,
          classifiers
            | Array String
            | doc "List of [Trove classifiers](https://pypi.org/classifiers/) that describe the project. PyPI use the classifiers to categorize projects."
            | optional,
          dependencies
            | Array String
            | doc "An array of [dependency specifier](https://packaging.python.org/en/latest/specifications/dependency-specifiers/) strings, each representing a mandatory dependent package of the project."
            | optional,
          description
            | String
            | doc "Summary description of the project in one line. Tools may not accept multiple lines."
            | optional,
          dynamic
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'optional-dependencies,
                    'dependencies,
                    'entry-points,
                    'gui-scripts,
                    'scripts,
                    'urls,
                    'classifiers,
                    'keywords,
                    'maintainers,
                    'authors,
                    'license-files,
                    'license,
                    'requires-python,
                    'readme,
                    'description,
                    'version
                  |]
                ]
            )
            | doc m%"
              Specifies which keys are intentionally unspecified under `[project]` table so build backend can/will provide such metadata dynamically. Each key must be listed only once. It is an error to both list a key in `dynamic` and use the key directly in `[project]`.
              One of the most common usage is `version`, which allows build backend to retrieve project version from source code or version control system instead of hardcoding it in `pyproject.toml`.
            "%
            | optional,
          entry-points
            | js2n.record.PropertyNames
              (std.contract.not
                (std.contract.any_of
                  [ js2n.Const "console_scripts", js2n.Const "gui_scripts" ]))
            | { _ | { _ | String } }
            | js2n.record.FieldsMatch "^\\w+(\\.\\w+)*$"
            | doc "Extra [entry point groups](https://packaging.python.org/en/latest/specifications/entry-points/) that allow applications to load plugins. For example, Pygments (a syntax highlighting tool) can use additional styles from separately installed packages through `[project.entry-points.\"pygments.styles\"]`. Each key is the name of the entry-point group, and each value is a table of entry points."
            | optional,
          gui-scripts
            | { _ | String }
            | doc "Table of [entry points](https://packaging.python.org/en/latest/specifications/entry-points/) that allows package installers to create a GUI wrapper for. Each key is the name of the script to be created, and each value is the function or object to all, in form of either `importable.module` or `importable.module:object.attr`. Windows platform treats `gui_scripts` specially in that they are wrapped in a GUI executable, so they can be started without a console, but cannot use standard streams unless application code redirects them."
            | optional,
          keywords
            | Array String
            | doc "List of keywords or tags that describe the project. They could be used by search engines to categorize the project."
            | optional,
          license
            | js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { file = String, },
                    required = { file = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { text = String, },
                    required = { text = true, },
                  },
                String
              ]
            | doc m%"
              For now it is a table with either:
              - `file` key specifying a relative path to a license file, or
              - `text` key containing full license content
              
              Newer tool may accept a single [SPDX license expression](https://spdx.github.io/spdx-spec/v2.2.2/SPDX-license-expressions/) string instead of a table.
            "%
            | optional,
          license-files
            | Array String
            | doc "Relative paths or globs to paths of license files. Can be an empty list."
            | optional,
          maintainers
            | Array (
              std.contract.Sequence
                [ refs."definitions.projectAuthor", { _ | Dyn } ]
            )
            | doc "People or organizations considered as 'maintainers' of the project. Each maintainer is a table with `name` key, `email` key, or both."
            | optional,
          name
            | js2n.string.Matches
              "^([a-zA-Z\\d]|[a-zA-Z\\d][\\w.-]*[a-zA-Z\\d])$"
            | doc "Valid name consists only of ASCII letters and numbers, period, underscore and hyphen. It must start and end with a letter or number.",
          optional-dependencies
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9])$" =
                        Array String,
                    },
                properties = {},
                required = {},
              }
            | doc "Each entry is a key/value pair, with the key specifying [extra feature name](https://packaging.python.org/en/latest/specifications/core-metadata/#provides-extra-multiple-use) (such as `socks` in `requests[socks]`), and value is an array of [dependency specifier](https://packaging.python.org/en/latest/specifications/dependency-specifiers/) strings."
            | optional,
          readme
            | js2n.OneOf
              [
                String,
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { content-type = String, file = String, },
                    required = { file = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { content-type = String, text = String, },
                    required = { text = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { content-type = String, },
                    required = { content-type = true, },
                  }
              ]
            | doc m%"
              Value can be a relative path to text / markdown (`.md` suffix) / reStructuredText (`.rst` suffix) readme file, or a table with either:
              - `file` key containing path of aforementioned readme file, or
              - `text` key containing the full readme text embedded inside `pyproject.toml`.
            "%
            | optional,
          requires-python
            | String
            | doc "Specifies the Python version(s) that the distribution is compatible with. Must be in the format specified in [Version specifiers](https://packaging.python.org/en/latest/specifications/version-specifiers/)."
            | optional,
          scripts
            | { _ | String }
            | doc "Table of [entry points](https://packaging.python.org/en/latest/specifications/entry-points/) that allows package installers to create a command-line wrapper for. Each key is the name of the script to be created, and each value is the function or object to all, in form of either `importable.module` or `importable.module:object.attr`. Windows platform treats `console_scripts` specially in that they are wrapped in a console executable, so they are attached to a console and can use `sys.stdin`, `sys.stdout` and `sys.stderr` for I/O."
            | optional,
          urls
            | { _ | String }
            | doc "Table consisting one or multiple `label: URL` pairs. Common indexes like PyPI uses [well-known Project URLs](https://packaging.python.org/en/latest/specifications/well-known-project-urls/#well-known-labels) when presenting project pages."
            | optional,
          version
            | js2n.string.Matches
              "^v?((([0-9]+)!)?([0-9]+(\\.[0-9]+)*)([-_\\.]?(alpha|a|beta|b|preview|pre|c|rc)[-_\\.]?([0-9]+)?)?((-([0-9]+))|([-_\\.]?(post|rev|r)[-_\\.]?([0-9]+)?))?([-_\\.]?(dev)[-_\\.]?([0-9]+)?)?)(\\+([a-zA-Z0-9]+([-_\\.][a-zA-Z0-9]+)*))?$"
            | doc "Version of the project, as defined in the [Version specifier specification](https://packaging.python.org/en/latest/specifications/version-specifiers/), and preferably [already normalized](https://packaging.python.org/en/latest/specifications/version-specifiers/#normalization)."
            | optional,
        }
        | doc m%"
          There are two kinds of metadata: _static_ and _dynamic_.
          - Static metadata is listed in the `[project]` table directly and cannot be specified or changed by a tool.
          - Dynamic metadata key names are listed inside the `dynamic` key and represents metadata that a tool will later provide.
        "%
        | optional,
      tool
        | js2n.record.Record
          {
            additional = 'Some {  .. },
            patterns = {},
            properties =
              {
                  black =
                    {
                        check
                          | Bool
                          | doc "Don't write the files back, just return the status. Return code 0 means nothing would change. Return code 1 means some files would be reformatted. Return code 123 means there was an internal error."
                          | optional,
                        code
                          | String
                          | doc "Format the code passed in as a string."
                          | optional,
                        color
                          | Bool
                          | doc "Show (or do not show) colored diff. Only applies when --diff is given."
                          | optional,
                        diff
                          | Bool
                          | doc "Don't write the files back, just output a diff to indicate what changes Black would've made. They are printed to stdout so capturing them is simple."
                          | optional,
                        enable-unstable-feature
                          | Array String
                          | doc "Enable specific features included in the `--unstable` style. Requires `--preview`. No compatibility guarantees are provided on the behavior or existence of any unstable features."
                          | optional,
                        exclude
                          | String
                          | doc "A regular expression that matches files and directories that should be excluded on recursive searches. An empty value means no paths are excluded. Use forward slashes for directories on all platforms (Windows, too). By default, Black also ignores all paths listed in .gitignore. Changing this value will override all default exclusions. [default: /(\\.direnv|\\.eggs|\\.git|\\.hg|\\.ipynb_checkpoints|\\.mypy_cache|\\.nox|\\.pytest_cache|\\.ruff_cache|\\.tox|\\.svn|\\.venv|\\.vscode|__pypackages__|_build|buck-out|build|dist|venv)/]"
                          | optional,
                        extend-exclude
                          | String
                          | doc "Like --exclude, but adds additional files and directories on top of the default values instead of overriding them."
                          | optional,
                        fast
                          | Bool
                          | doc "By default, Black performs an AST safety check after formatting your code. The --fast flag turns off this check and the --safe flag explicitly enables it. [default: --safe]"
                          | optional,
                        force-exclude
                          | String
                          | doc "Like --exclude, but files and directories matching this regex will be excluded even when they are passed explicitly as arguments. This is useful when invoking Black programmatically on changed files, such as in a pre-commit hook or editor plugin."
                          | optional,
                        include
                          | String
                          | doc "A regular expression that matches files and directories that should be included on recursive searches. An empty value means all files are included regardless of the name. Use forward slashes for directories on all platforms (Windows, too). Overrides all exclusions, including from .gitignore and command line options."
                          | optional,
                        ipynb
                          | Bool
                          | doc "Format all input files like Jupyter Notebooks regardless of file extension. This is useful when piping source on standard input."
                          | optional,
                        line-length
                          | std.number.Integer
                          | doc "How many characters per line to allow."
                          | optional,
                        preview
                          | Bool
                          | doc "Enable potentially disruptive style changes that may be added to Black's main functionality in the next major release."
                          | optional,
                        pyi
                          | Bool
                          | doc "Format all input files like typing stubs regardless of file extension. This is useful when piping source on standard input."
                          | optional,
                        python-cell-magics
                          | Array String
                          | doc "When processing Jupyter Notebooks, add the given magic to the list of known python-magics (capture, prun, pypy, python, python3, time, timeit). Useful for formatting cells with custom python magics."
                          | optional,
                        quiet
                          | Bool
                          | doc "Stop emitting all non-critical output. Error messages will still be emitted (which can silenced by 2>/dev/null)."
                          | optional,
                        required-version
                          | String
                          | doc "Require a specific version of Black to be running. This is useful for ensuring that all contributors to your project are using the same version, because different versions of Black may format code a little differently. This option can be set in a configuration file for consistent results across environments."
                          | optional,
                        skip-magic-trailing-comma
                          | Bool
                          | doc "Don't use trailing commas as a reason to split lines."
                          | optional,
                        skip-source-first-line
                          | Bool
                          | doc "Skip the first line of the source code."
                          | optional,
                        skip-string-normalization
                          | Bool
                          | doc "Don't normalize string quotes or prefixes."
                          | optional,
                        target-version
                          | Array (
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'py313,
                                  'py312,
                                  'py311,
                                  'py310,
                                  'py39,
                                  'py38,
                                  'py37,
                                  'py36,
                                  'py35,
                                  'py34,
                                  'py33
                                |]
                              ]
                          )
                          | doc "Python versions that should be supported by Black's output. You should include all versions that your code supports. By default, Black will infer target versions from the project metadata in pyproject.toml. If this does not yield conclusive results, Black will use per-file auto-detection."
                          | optional,
                        unstable
                          | Bool
                          | doc "Enable potentially disruptive style changes that have known bugs or are not currently expected to make it into the stable style Black's next major release. Implies --preview."
                          | optional,
                        verbose
                          | Bool
                          | doc "Emit messages about files that were not changed or were ignored due to exclusion patterns. If Black is using a configuration file, a message detailing which one it is using will be emitted."
                          | optional,
                        workers
                          | std.number.Integer
                          | doc "When Black formats multiple files, it may use a process pool to speed up formatting. This option controls the number of parallel workers. This can also be specified via the BLACK_NUM_WORKERS environment variable. Defaults to the number of CPUs in the system."
                          | optional,
                      },
                  cibuildwheel =
                    {
                        archs
                          | std.contract.any_of [ String, Array String ]
                          | doc "Change the architectures built on your machine by default."
                          | optional,
                        before-all
                          | std.contract.any_of [ String, Array String ]
                          | doc "Execute a shell command on the build system before any wheels are built."
                          | optional,
                        before-build
                          | std.contract.any_of [ String, Array String ]
                          | doc "Execute a shell command preparing each wheel's build."
                          | optional,
                        before-test
                          | std.contract.any_of [ String, Array String ]
                          | doc "Execute a shell command before testing each wheel."
                          | optional,
                        build
                          | std.contract.any_of [ String, Array String ]
                          | doc "Choose the Python versions to build."
                          | optional,
                        build-frontend
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"default", '"build[uv]", 'build, 'pip |]
                                ],
                              js2n.string.Matches "^pip; ?args:",
                              js2n.string.Matches "^build; ?args:",
                              js2n.string.Matches "^build\\[uv\\]; ?args:",
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        args = js2n.array.ArrayOf String,
                                        name =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| '"build[uv]", 'build, 'pip |]
                                              ],
                                      },
                                  required = { name = true, },
                                }
                            ]
                          | doc "Set the tool to use to build, either \"pip\" (default for now), \"build\", or \"build[uv]\""
                          | optional,
                        build-verbosity
                          | std.number.Integer
                          | js2n.number.Maximum 3
                          | js2n.number.Minimum (-3)
                          | doc "Increase/decrease the output of pip wheel."
                          | optional,
                        config-settings
                          | std.contract.any_of
                            [
                              String,
                              std.contract.Sequence
                                [
                                  {
                                    _ | std.contract.any_of
                                      [ String, Array String ]
                                  },
                                  js2n.record.FieldsMatch ".+"
                                ]
                            ]
                          | doc "Specify config-settings for the build backend."
                          | optional,
                        container-engine
                          | js2n.OneOf
                            [
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'podman, 'docker |]
                                ],
                              js2n.string.Matches
                                "^docker; ?(create_args|disable_host_mount):",
                              js2n.string.Matches
                                "^podman; ?(create_args|disable_host_mount):",
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        create-args = js2n.array.ArrayOf String,
                                        disable-host-mount = Bool,
                                        name =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'podman, 'docker |]
                                              ],
                                      },
                                  required = { name = true, },
                                }
                            ]
                          | optional,
                        dependency-versions
                          | String
                          | doc "Specify how cibuildwheel controls the versions of the tools it uses"
                          | optional,
                        enable
                          | js2n.OneOf
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                              js2n.array.ArrayOf
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ])
                            ]
                          | doc "Enable or disable certain builds."
                          | optional,
                        environment
                          | std.contract.any_of
                            [
                              String,
                              std.contract.Sequence
                                [ { _ | String }, js2n.record.FieldsMatch ".+" ]
                            ]
                          | doc "Set environment variables needed during the build."
                          | optional,
                        environment-pass
                          | std.contract.any_of [ String, Array String ]
                          | doc "Set environment variables on the host to pass-through to the container during the build."
                          | optional,
                        free-threaded-support
                          | Bool
                          | doc "The project supports free-threaded builds of Python (PEP703)"
                          | optional,
                        linux
                          | {
                            archs
                              | refs."properties.tool.properties.cibuildwheel.properties.archs"
                              | optional,
                            before-all
                              | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                              | optional,
                            before-build
                              | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                              | optional,
                            before-test
                              | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                              | optional,
                            build-frontend
                              | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                              | optional,
                            build-verbosity
                              | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                              | Number
                              | optional,
                            config-settings
                              | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                              | optional,
                            container-engine
                              | refs."properties.tool.properties.cibuildwheel.properties.container-engine"
                              | optional,
                            environment
                              | refs."properties.tool.properties.cibuildwheel.properties.environment"
                              | optional,
                            environment-pass
                              | refs."properties.tool.properties.cibuildwheel.properties.environment-pass"
                              | optional,
                            manylinux-aarch64-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-aarch64-image"
                              | optional,
                            manylinux-armv7l-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-armv7l-image"
                              | optional,
                            manylinux-i686-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-i686-image"
                              | optional,
                            manylinux-ppc64le-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-ppc64le-image"
                              | optional,
                            manylinux-pypy_aarch64-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_aarch64-image"
                              | optional,
                            manylinux-pypy_i686-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_i686-image"
                              | optional,
                            manylinux-pypy_x86_64-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_x86_64-image"
                              | optional,
                            manylinux-s390x-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-s390x-image"
                              | optional,
                            manylinux-x86_64-image
                              | refs."properties.tool.properties.cibuildwheel.properties.manylinux-x86_64-image"
                              | optional,
                            musllinux-aarch64-image
                              | refs."properties.tool.properties.cibuildwheel.properties.musllinux-aarch64-image"
                              | optional,
                            musllinux-armv7l-image
                              | refs."properties.tool.properties.cibuildwheel.properties.musllinux-armv7l-image"
                              | optional,
                            musllinux-i686-image
                              | refs."properties.tool.properties.cibuildwheel.properties.musllinux-i686-image"
                              | optional,
                            musllinux-ppc64le-image
                              | refs."properties.tool.properties.cibuildwheel.properties.musllinux-ppc64le-image"
                              | optional,
                            musllinux-s390x-image
                              | refs."properties.tool.properties.cibuildwheel.properties.musllinux-s390x-image"
                              | optional,
                            musllinux-x86_64-image
                              | refs."properties.tool.properties.cibuildwheel.properties.musllinux-x86_64-image"
                              | optional,
                            repair-wheel-command
                              | std.contract.any_of [ String, Array String ]
                              | doc "Execute a shell command to repair each built wheel."
                              | optional,
                            test-command
                              | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                              | optional,
                            test-extras
                              | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                              | optional,
                            test-groups
                              | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                              | optional,
                            test-requires
                              | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                              | optional,
                          }
                          | optional,
                        macos
                          | {
                            archs
                              | refs."properties.tool.properties.cibuildwheel.properties.archs"
                              | optional,
                            before-all
                              | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                              | optional,
                            before-build
                              | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                              | optional,
                            before-test
                              | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                              | optional,
                            build-frontend
                              | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                              | optional,
                            build-verbosity
                              | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                              | Number
                              | optional,
                            config-settings
                              | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                              | optional,
                            dependency-versions
                              | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                              | optional,
                            environment
                              | refs."properties.tool.properties.cibuildwheel.properties.environment"
                              | optional,
                            repair-wheel-command
                              | std.contract.any_of [ String, Array String ]
                              | doc "Execute a shell command to repair each built wheel."
                              | optional,
                            test-command
                              | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                              | optional,
                            test-extras
                              | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                              | optional,
                            test-groups
                              | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                              | optional,
                            test-requires
                              | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                              | optional,
                          }
                          | optional,
                        manylinux-aarch64-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-armv7l-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-i686-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-ppc64le-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-pypy_aarch64-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-pypy_i686-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-pypy_x86_64-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-s390x-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        manylinux-x86_64-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        musllinux-aarch64-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        musllinux-armv7l-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        musllinux-i686-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        musllinux-ppc64le-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        musllinux-s390x-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        musllinux-x86_64-image
                          | String
                          | doc "Specify alternative manylinux / musllinux container images"
                          | optional,
                        overrides
                          | Array (
                            std.contract.Sequence
                              [
                                js2n.record.MinProperties 2,
                                {
                                  before-all
                                    | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                                    | optional,
                                  before-build
                                    | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                                    | optional,
                                  before-test
                                    | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                                    | optional,
                                  build-frontend
                                    | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                                    | optional,
                                  build-verbosity
                                    | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                                    | Number
                                    | optional,
                                  config-settings
                                    | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                                    | optional,
                                  container-engine
                                    | refs."properties.tool.properties.cibuildwheel.properties.container-engine"
                                    | optional,
                                  dependency-versions
                                    | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                                    | optional,
                                  environment
                                    | refs."properties.tool.properties.cibuildwheel.properties.environment"
                                    | optional,
                                  environment-pass
                                    | refs."properties.tool.properties.cibuildwheel.properties.environment-pass"
                                    | optional,
                                  inherit
                                    | {
                                      before-all
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      before-build
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      before-test
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      config-settings
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      container-engine
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      environment
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      environment-pass
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      repair-wheel-command
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      test-command
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      test-extras
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                      test-requires
                                        | std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ]
                                        | optional,
                                    }
                                    | optional,
                                  manylinux-aarch64-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-aarch64-image"
                                    | optional,
                                  manylinux-armv7l-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-armv7l-image"
                                    | optional,
                                  manylinux-i686-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-i686-image"
                                    | optional,
                                  manylinux-ppc64le-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-ppc64le-image"
                                    | optional,
                                  manylinux-pypy_aarch64-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_aarch64-image"
                                    | optional,
                                  manylinux-pypy_i686-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_i686-image"
                                    | optional,
                                  manylinux-pypy_x86_64-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_x86_64-image"
                                    | optional,
                                  manylinux-s390x-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-s390x-image"
                                    | optional,
                                  manylinux-x86_64-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-x86_64-image"
                                    | optional,
                                  musllinux-aarch64-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-aarch64-image"
                                    | optional,
                                  musllinux-armv7l-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-armv7l-image"
                                    | optional,
                                  musllinux-i686-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-i686-image"
                                    | optional,
                                  musllinux-ppc64le-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-ppc64le-image"
                                    | optional,
                                  musllinux-s390x-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-s390x-image"
                                    | optional,
                                  musllinux-x86_64-image
                                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-x86_64-image"
                                    | optional,
                                  repair-wheel-command
                                    | refs."properties.tool.properties.cibuildwheel.properties.repair-wheel-command"
                                    | optional,
                                  select
                                    | std.contract.any_of
                                      [ String, Array String ],
                                  test-command
                                    | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                                    | optional,
                                  test-extras
                                    | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                                    | optional,
                                  test-groups
                                    | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                                    | optional,
                                  test-requires
                                    | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                                    | optional,
                                }
                              ]
                          )
                          | doc "An overrides array"
                          | optional,
                        pyodide
                          | {
                            archs
                              | refs."properties.tool.properties.cibuildwheel.properties.archs"
                              | optional,
                            before-all
                              | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                              | optional,
                            before-build
                              | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                              | optional,
                            before-test
                              | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                              | optional,
                            build-frontend
                              | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                              | optional,
                            build-verbosity
                              | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                              | Number
                              | optional,
                            config-settings
                              | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                              | optional,
                            dependency-versions
                              | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                              | optional,
                            environment
                              | refs."properties.tool.properties.cibuildwheel.properties.environment"
                              | optional,
                            repair-wheel-command
                              | refs."properties.tool.properties.cibuildwheel.properties.repair-wheel-command"
                              | optional,
                            test-command
                              | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                              | optional,
                            test-extras
                              | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                              | optional,
                            test-groups
                              | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                              | optional,
                            test-requires
                              | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                              | optional,
                          }
                          | optional,
                        repair-wheel-command
                          | std.contract.any_of [ String, Array String ]
                          | doc "Execute a shell command to repair each built wheel."
                          | optional,
                        skip
                          | std.contract.any_of [ String, Array String ]
                          | doc "Choose the Python versions to skip."
                          | optional,
                        test-command
                          | std.contract.any_of [ String, Array String ]
                          | doc "Execute a shell command to test each built wheel."
                          | optional,
                        test-extras
                          | std.contract.any_of [ String, Array String ]
                          | doc "Install your wheel for testing using `extras_require`"
                          | optional,
                        test-groups
                          | std.contract.any_of [ String, Array String ]
                          | doc "Install extra groups when testing"
                          | optional,
                        test-requires
                          | std.contract.any_of [ String, Array String ]
                          | doc "Install Python dependencies before running the tests"
                          | optional,
                        test-skip
                          | std.contract.any_of [ String, Array String ]
                          | doc "Skip running tests on some builds."
                          | optional,
                        windows
                          | {
                            archs
                              | refs."properties.tool.properties.cibuildwheel.properties.archs"
                              | optional,
                            before-all
                              | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                              | optional,
                            before-build
                              | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                              | optional,
                            before-test
                              | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                              | optional,
                            build-frontend
                              | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                              | optional,
                            build-verbosity
                              | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                              | Number
                              | optional,
                            config-settings
                              | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                              | optional,
                            dependency-versions
                              | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                              | optional,
                            environment
                              | refs."properties.tool.properties.cibuildwheel.properties.environment"
                              | optional,
                            repair-wheel-command
                              | refs."properties.tool.properties.cibuildwheel.properties.repair-wheel-command"
                              | optional,
                            test-command
                              | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                              | optional,
                            test-extras
                              | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                              | optional,
                            test-groups
                              | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                              | optional,
                            test-requires
                              | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                              | optional,
                          }
                          | optional,
                      },
                  hatch =
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
                                                      {
                                                          path = String,
                                                          pattern = String,
                                                        },
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
                                                    properties =
                                                      { source = String, },
                                                    required =
                                                      { source = true, },
                                                  },
                                          },
                                      required = { version = true, },
                                    },
                                  Array Dyn
                                ]
                            ],
                          {
                            build
                              | refs."properties.tool.properties.hatch.definitions.Build"
                              | { _ | Dyn }
                              | optional,
                            env
                              | refs."properties.tool.properties.hatch.definitions.CollectorEnv"
                              | optional,
                            envs
                              | refs."properties.tool.properties.hatch.definitions.Envs"
                              | optional,
                            metadata
                              | refs."properties.tool.properties.hatch.definitions.Metadata"
                              | optional,
                            publish
                              | refs."properties.tool.properties.hatch.definitions.Publish"
                              | optional,
                            version
                              | refs."properties.tool.properties.hatch.definitions.Version"
                              | optional,
                          }
                        ],
                  maturin =
                    {
                        all-features
                          | js2n.Nullable Bool
                          | doc "Activate all available features"
                          | optional,
                        auditwheel
                          | js2n.Nullable
                            refs."properties.tool.properties.maturin.definitions.AuditWheelMode"
                          | doc "Audit wheel mode"
                          | optional,
                        bindings
                          | js2n.Nullable String
                          | doc "Bindings type"
                          | optional,
                        compatibility
                          | js2n.Nullable
                            refs."properties.tool.properties.maturin.definitions.PlatformTag"
                          | doc "Platform compatibility"
                          | optional,
                        config
                          | js2n.Nullable (Array String)
                          | doc "Override a configuration value (unstable)"
                          | optional,
                        data
                          | js2n.Nullable String
                          | doc "Path to the wheel directory, defaults to `<module_name>.data`"
                          | optional,
                        exclude
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.maturin.definitions.GlobPattern")
                          | doc "Exclude files matching the given glob pattern(s)"
                          | optional,
                        features
                          | js2n.Nullable (Array String)
                          | doc "Space or comma separated list of features to activate"
                          | optional,
                        frozen
                          | js2n.Nullable Bool
                          | doc "Require Cargo.lock and cache are up to date"
                          | optional,
                        include
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.maturin.definitions.GlobPattern")
                          | doc "Include files matching the given glob pattern(s)"
                          | optional,
                        locked
                          | js2n.Nullable Bool
                          | doc "Require Cargo.lock is up to date"
                          | optional,
                        manifest-path
                          | js2n.Nullable String
                          | doc "Path to Cargo.toml"
                          | optional,
                        module-name
                          | js2n.Nullable String
                          | doc "Module name, accepts setuptools style import name like `foo.bar`"
                          | optional,
                        no-default-features
                          | js2n.Nullable Bool
                          | doc "Do not activate the `default` feature"
                          | optional,
                        profile
                          | js2n.Nullable String
                          | doc "Build artifacts with the specified Cargo profile"
                          | optional,
                        python-packages
                          | js2n.Nullable (Array String)
                          | doc "Python packages to include"
                          | optional,
                        python-source
                          | js2n.Nullable String
                          | doc "The directory with python module, contains `<module_name>/__init__.py`"
                          | optional,
                        rustc-args
                          | js2n.Nullable (Array String)
                          | doc "Additional rustc arguments"
                          | optional,
                        sdist-generator
                          | refs."properties.tool.properties.maturin.definitions.SdistGenerator"
                          | doc "Source distribution generator"
                          | optional,
                        skip-auditwheel
                          | Bool
                          | doc "Skip audit wheel"
                          | optional,
                        strip | Bool | doc "Strip the final binary" | optional,
                        target
                          | {
                            _ | refs."properties.tool.properties.maturin.definitions.TargetConfig"
                          }
                          | doc "Target configuration"
                          | optional,
                        targets
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.maturin.definitions.CargoTarget")
                          | doc "Cargo compile targets"
                          | optional,
                        unstable-flags
                          | js2n.Nullable (Array String)
                          | doc "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
                          | optional,
                        ..
                      },
                  mypy =
                    {
                        allow_redefinition
                          | Bool
                          | doc "Allows variables to be redefined with an arbitrary type, as long as the redefinition is in the same block and nesting level as the original definition."
                          | optional,
                        allow_untyped_globals
                          | Bool
                          | doc "Causes mypy to suppress errors caused by not being able to fully infer the types of global and class variables."
                          | optional,
                        always_false
                          | std.contract.any_of [ String, Array String ]
                          | doc "Specifies a list of variables that mypy will treat as compile-time constants that are always false."
                          | optional,
                        always_true
                          | std.contract.any_of [ String, Array String ]
                          | doc "Specifies a list of variables that mypy will treat as compile-time constants that are always true."
                          | optional,
                        any_exprs_report
                          | String
                          | doc "Causes mypy to generate a text file report documenting how many expressions of type `Any` are present within your codebase."
                          | optional,
                        cache_dir
                          | String
                          | doc "Specifies the location where mypy stores incremental cache info. User home directory and environment variables will be expanded. This setting will be overridden by the `MYPY_CACHE_DIR` environment variable."
                          | optional,
                        cache_fine_grained
                          | Bool
                          | doc "Include fine-grained dependency information in the cache for the mypy daemon (https://mypy.readthedocs.io/en/stable/mypy_daemon.html)."
                          | optional,
                        check_untyped_defs
                          | Bool
                          | doc "Type-checks the interior of functions without type annotations."
                          | optional,
                        cobertura_xml_report
                          | String
                          | doc "Causes mypy to generate a Cobertura XML type checking coverage report."
                          | optional,
                        color_output
                          | Bool
                          | doc "Shows error messages with color enabled."
                          | optional,
                        custom_typeshed_dir
                          | String
                          | doc "This specifies the directory where mypy looks for standard library typeshed stubs, instead of the typeshed that ships with mypy. This is primarily intended to make it easier to test typeshed changes before submitting them upstream, but also allows you to use a forked version of typeshed."
                          | optional,
                        custom_typing_module
                          | String
                          | doc "Specifies a custom module to use as a substitute for the `typing` module."
                          | optional,
                        disable_bytearray_promotion
                          | Bool
                          | doc "UNDOCUMENTED. Disables automatic promotion of `bytearray` to `bytes` type. Is set to `true` in strict mode."
                          | optional,
                        disable_error_code
                          | std.contract.any_of [ String, Array String ]
                          | doc "Allows disabling one or multiple error codes globally."
                          | optional,
                        disable_memoryview_promotion
                          | Bool
                          | doc "UNDOCUMENTED. Disables automatic promotion of `memoryview` to `bytes` type. Is set to `true` in strict mode."
                          | optional,
                        disallow_any_decorated
                          | Bool
                          | doc "Disallows functions that have `Any` in their signature after decorator transformation."
                          | optional,
                        disallow_any_explicit
                          | Bool
                          | doc "Disallows explicit `Any` in type positions such as type annotations and generic type parameters."
                          | optional,
                        disallow_any_expr
                          | Bool
                          | doc "Disallows all expressions in the module that have type `Any`."
                          | optional,
                        disallow_any_generics
                          | Bool
                          | doc "Disallows usage of generic types that do not specify explicit type parameters."
                          | optional,
                        disallow_any_unimported
                          | Bool
                          | doc "Disallows usage of types that come from unfollowed imports (anything imported from an unfollowed import is automatically given a type of `Any`)."
                          | optional,
                        disallow_incomplete_defs
                          | Bool
                          | doc "Disallows defining functions with incomplete type annotations, while still allowing entirely unannotated definitions."
                          | optional,
                        disallow_subclassing_any
                          | Bool
                          | doc "Disallows subclassing a value of type `Any`."
                          | optional,
                        disallow_untyped_calls
                          | Bool
                          | doc "Disallows calling functions without type annotations from functions with type annotations. Note that when used in per-module options, it enables/disables this check INSIDE the module(s) specified, not for functions that come from that module(s)."
                          | optional,
                        disallow_untyped_decorators
                          | Bool
                          | doc "Reports an error whenever a function with type annotations is decorated with a decorator without annotations."
                          | optional,
                        disallow_untyped_defs
                          | Bool
                          | doc "Disallows defining functions without type annotations or with incomplete type annotations (a superset of `disallow_incomplete_defs`)."
                          | optional,
                        enable_error_code
                          | std.contract.any_of [ String, Array String ]
                          | doc "Allows enabling one or multiple error codes globally."
                          | optional,
                        enable_incomplete_feature
                          | std.contract.any_of [ String, Array String ]
                          | doc "Enable a preview of incomplete features that are not yet enabled by default by the current version of mypy. Note that it is not guaranteed that all features will be ultimately enabled by default."
                          | optional,
                        error_summary
                          | Bool
                          | doc "Shows a short summary line after error messages."
                          | optional,
                        exclude
                          | std.contract.any_of [ String, Array String ]
                          | doc "A regular expression that matches file names, directory names and paths which mypy should ignore while recursively discovering files to check. Use forward slashes (`/`) as directory separators on all platforms."
                          | optional,
                        explicit_package_bases
                          | Bool
                          | doc "This flag tells mypy that top-level packages will be based in either the current directory, or a member of the `MYPYPATH` environment variable or `mypy_path` config option. This option is only useful in the absence of `__init__.py`. See Mapping file paths to modules (https://mypy.readthedocs.io/en/stable/running_mypy.html#mapping-paths-to-modules) for details."
                          | optional,
                        extra_checks
                          | Bool
                          | doc "Enable additional checks that are technically correct but impractical."
                          | optional,
                        files
                          | std.contract.any_of [ String, Array String ]
                          | doc "A comma-separated list of paths which should be checked by mypy if none are given on the command line. Supports recursive file globbing using `glob`, where `*` (e.g. `*.py`) matches files in the current directory and `**/` (e.g. `**/*.py`) matches files in any directories below the current one. User home directory and environment variables will be expanded."
                          | optional,
                        follow_imports
                          | std.enum.TagOrString
                          | [| 'error, 'skip, 'silent, 'normal |]
                          | doc "Directs what to do with imports when the imported module is found as a `.py` file and not part of the files, modules and packages provided on the command line."
                          | optional,
                        follow_imports_for_stubs
                          | Bool
                          | doc "Determines whether to respect the `follow_imports` setting even for stub (`.pyi`) files."
                          | optional,
                        follow_untyped_imports
                          | Bool
                          | doc "Makes mypy analyze imports from installed packages even if missing a py.typed marker or stubs."
                          | optional,
                        force_union_syntax
                          | Bool
                          | doc "Always use `Union[]` and `Optional[]` for union types in error messages (instead of the `|` operator), even on Python 3.10+."
                          | optional,
                        force_uppercase_builtins
                          | Bool
                          | doc "Always use `List` instead of `list` in error messages, even on Python 3.9+."
                          | optional,
                        hide_error_codes
                          | Bool
                          | doc "Hides error codes (https://mypy.readthedocs.io/en/stable/error_codes.html#error-codes) in error messages."
                          | optional,
                        ignore_errors
                          | Bool
                          | doc "Ignores all non-fatal errors."
                          | optional,
                        ignore_missing_imports
                          | Bool
                          | doc "Suppresses error messages about imports that cannot be resolved."
                          | optional,
                        implicit_optional
                          | Bool
                          | doc "Causes mypy to treat arguments with a `None` default value as having an implicit `typing.Optional` type."
                          | optional,
                        implicit_reexport
                          | Bool
                          | doc "By default, imported values to a module are treated as exported and mypy allows other modules to import them. When false, mypy will not re-export unless the item is imported using from-as or is included in `__all__`. Note that mypy treats stub files as if this is always disabled."
                          | optional,
                        incremental
                          | Bool
                          | doc "Enables incremental mode (https://mypy.readthedocs.io/en/stable/command_line.html#incremental)."
                          | optional,
                        install_types
                          | Bool
                          | doc "Install detected missing library stub packages using pip"
                          | optional,
                        junit_xml
                          | String
                          | doc "Causes mypy to generate a JUnit XML test result document with type checking results. This can make it easier to integrate mypy with continuous integration (CI) tools."
                          | optional,
                        linecount_report
                          | String
                          | doc "Causes mypy to generate a text file report documenting the functions and lines that are typed and untyped within your codebase."
                          | optional,
                        linecoverage_report
                          | String
                          | doc "Causes mypy to generate a JSON file that maps each source file's absolute filename to a list of line numbers that belong to typed functions in that file."
                          | optional,
                        lineprecision_report
                          | String
                          | doc "Causes mypy to generate a flat text file report with per-module statistics of how many lines are typechecked etc."
                          | optional,
                        local_partial_types
                          | Bool
                          | doc "Disallows inferring variable type for `None` from two assignments in different scopes. This is always implicitly enabled when using the mypy daemon (https://mypy.readthedocs.io/en/stable/mypy_daemon.html)."
                          | optional,
                        modules
                          | std.contract.any_of [ String, Array String ]
                          | doc "A comma-separated list of packages which should be checked by mypy if none are given on the command line. Mypy WILL NOT recursively type check any submodules of the provided module."
                          | optional,
                        mypy_path
                          | std.contract.any_of [ String, Array String ]
                          | doc "Specifies the paths to use, after trying the paths from `MYPYPATH` environment variable. Useful if you'd like to keep stubs in your repo, along with the config file. Multiple paths are always separated with a `:` or `,` regardless of the platform. User home directory and environment variables will be expanded."
                          | optional,
                        namespace_packages
                          | Bool
                          | doc "Enables PEP 420 style namespace packages. See the corresponding flag `--no-namespace-packages` (https://mypy.readthedocs.io/en/stable/command_line.html#cmdoption-mypy-no-namespace-packages) for more information."
                          | optional,
                        no_implicit_optional
                          | Bool
                          | doc "Inverse of implicit_optional."
                          | optional,
                        no_implicit_reexport
                          | Bool
                          | doc "By default, imported values to a module are treated as exported and mypy allows other modules to import them. This flag changes the behavior to not re-export unless the item is imported using from-as or is included in `__all__`. Note this is always treated as enabled for stub files."
                          | optional,
                        no_silence_site_packages
                          | Bool
                          | doc "Enables reporting error messages generated within installed packages (see PEP 561 for more details on distributing type information). Those error messages are suppressed by default, since you are usually not able to control errors in 3rd party code."
                          | optional,
                        no_site_packages
                          | Bool
                          | doc "Disables using type information in installed packages (see PEP 561). This will also disable searching for a usable Python executable. This acts the same as :option:`--no-site-packages <mypy --no-site-packages>` command line flag."
                          | optional,
                        non_interactive
                          | Bool
                          | doc "Install stubs without asking for confirmation and hide errors, with --install-types"
                          | optional,
                        overrides
                          | Array (
                            std.contract.Sequence
                              [
                                js2n.record.MinProperties 2,
                                {
                                  allow_redefinition
                                    | refs."properties.tool.properties.mypy.properties.allow_redefinition"
                                    | optional,
                                  allow_untyped_globals
                                    | refs."properties.tool.properties.mypy.properties.allow_untyped_globals"
                                    | optional,
                                  always_false
                                    | refs."properties.tool.properties.mypy.properties.always_false"
                                    | optional,
                                  always_true
                                    | refs."properties.tool.properties.mypy.properties.always_true"
                                    | optional,
                                  any_exprs_report
                                    | refs."properties.tool.properties.mypy.properties.any_exprs_report"
                                    | optional,
                                  cache_dir
                                    | refs."properties.tool.properties.mypy.properties.cache_dir"
                                    | optional,
                                  cache_fine_grained
                                    | refs."properties.tool.properties.mypy.properties.cache_fine_grained"
                                    | optional,
                                  check_untyped_defs
                                    | refs."properties.tool.properties.mypy.properties.check_untyped_defs"
                                    | optional,
                                  cobertura_xml_report
                                    | refs."properties.tool.properties.mypy.properties.cobertura_xml_report"
                                    | optional,
                                  color_output
                                    | refs."properties.tool.properties.mypy.properties.color_output"
                                    | optional,
                                  custom_typeshed_dir
                                    | refs."properties.tool.properties.mypy.properties.custom_typeshed_dir"
                                    | optional,
                                  custom_typing_module
                                    | refs."properties.tool.properties.mypy.properties.custom_typing_module"
                                    | optional,
                                  disable_error_code
                                    | refs."properties.tool.properties.mypy.properties.disable_error_code"
                                    | optional,
                                  disallow_any_decorated
                                    | refs."properties.tool.properties.mypy.properties.disallow_any_decorated"
                                    | optional,
                                  disallow_any_explicit
                                    | refs."properties.tool.properties.mypy.properties.disallow_any_explicit"
                                    | optional,
                                  disallow_any_expr
                                    | refs."properties.tool.properties.mypy.properties.disallow_any_expr"
                                    | optional,
                                  disallow_any_generics
                                    | refs."properties.tool.properties.mypy.properties.disallow_any_generics"
                                    | optional,
                                  disallow_any_unimported
                                    | refs."properties.tool.properties.mypy.properties.disallow_any_unimported"
                                    | optional,
                                  disallow_incomplete_defs
                                    | refs."properties.tool.properties.mypy.properties.disallow_incomplete_defs"
                                    | optional,
                                  disallow_subclassing_any
                                    | refs."properties.tool.properties.mypy.properties.disallow_subclassing_any"
                                    | optional,
                                  disallow_untyped_calls
                                    | refs."properties.tool.properties.mypy.properties.disallow_untyped_calls"
                                    | optional,
                                  disallow_untyped_decorators
                                    | refs."properties.tool.properties.mypy.properties.disallow_untyped_decorators"
                                    | optional,
                                  disallow_untyped_defs
                                    | refs."properties.tool.properties.mypy.properties.disallow_untyped_defs"
                                    | optional,
                                  enable_error_code
                                    | refs."properties.tool.properties.mypy.properties.enable_error_code"
                                    | optional,
                                  error_summary
                                    | refs."properties.tool.properties.mypy.properties.error_summary"
                                    | optional,
                                  extra_checks
                                    | refs."properties.tool.properties.mypy.properties.extra_checks"
                                    | optional,
                                  follow_imports
                                    | refs."properties.tool.properties.mypy.properties.follow_imports"
                                    | optional,
                                  follow_imports_for_stubs
                                    | refs."properties.tool.properties.mypy.properties.follow_imports_for_stubs"
                                    | optional,
                                  follow_untyped_imports
                                    | refs."properties.tool.properties.mypy.properties.follow_untyped_imports"
                                    | optional,
                                  force_union_syntax
                                    | refs."properties.tool.properties.mypy.properties.force_union_syntax"
                                    | optional,
                                  force_uppercase_builtins
                                    | refs."properties.tool.properties.mypy.properties.force_uppercase_builtins"
                                    | optional,
                                  hide_error_codes
                                    | refs."properties.tool.properties.mypy.properties.hide_error_codes"
                                    | optional,
                                  ignore_errors
                                    | refs."properties.tool.properties.mypy.properties.ignore_errors"
                                    | optional,
                                  ignore_missing_imports
                                    | refs."properties.tool.properties.mypy.properties.ignore_missing_imports"
                                    | optional,
                                  implicit_optional
                                    | refs."properties.tool.properties.mypy.properties.implicit_optional"
                                    | optional,
                                  implicit_reexport
                                    | refs."properties.tool.properties.mypy.properties.implicit_reexport"
                                    | optional,
                                  incremental
                                    | refs."properties.tool.properties.mypy.properties.incremental"
                                    | optional,
                                  junit_xml
                                    | refs."properties.tool.properties.mypy.properties.junit_xml"
                                    | optional,
                                  linecount_report
                                    | refs."properties.tool.properties.mypy.properties.linecount_report"
                                    | optional,
                                  linecoverage_report
                                    | refs."properties.tool.properties.mypy.properties.linecoverage_report"
                                    | optional,
                                  lineprecision_report
                                    | refs."properties.tool.properties.mypy.properties.lineprecision_report"
                                    | optional,
                                  local_partial_types
                                    | refs."properties.tool.properties.mypy.properties.local_partial_types"
                                    | optional,
                                  module
                                    | std.contract.any_of
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            js2n.array.MinItems 1,
                                            Array String
                                          ]
                                      ],
                                  no_implicit_optional
                                    | refs."properties.tool.properties.mypy.properties.no_implicit_optional"
                                    | optional,
                                  no_implicit_reexport
                                    | refs."properties.tool.properties.mypy.properties.no_implicit_reexport"
                                    | optional,
                                  no_site_packages
                                    | refs."properties.tool.properties.mypy.properties.no_site_packages"
                                    | optional,
                                  pdb
                                    | refs."properties.tool.properties.mypy.properties.pdb"
                                    | optional,
                                  plugins
                                    | refs."properties.tool.properties.mypy.properties.plugins"
                                    | optional,
                                  pretty
                                    | refs."properties.tool.properties.mypy.properties.pretty"
                                    | optional,
                                  raise_exceptions
                                    | refs."properties.tool.properties.mypy.properties.raise_exceptions"
                                    | optional,
                                  scripts_are_modules
                                    | refs."properties.tool.properties.mypy.properties.scripts_are_modules"
                                    | optional,
                                  show_absolute_path
                                    | refs."properties.tool.properties.mypy.properties.show_absolute_path"
                                    | optional,
                                  show_column_numbers
                                    | refs."properties.tool.properties.mypy.properties.show_column_numbers"
                                    | optional,
                                  show_error_code_links
                                    | refs."properties.tool.properties.mypy.properties.show_error_code_links"
                                    | optional,
                                  show_error_context
                                    | refs."properties.tool.properties.mypy.properties.show_error_context"
                                    | optional,
                                  show_traceback
                                    | refs."properties.tool.properties.mypy.properties.show_traceback"
                                    | optional,
                                  skip_cache_mtime_checks
                                    | refs."properties.tool.properties.mypy.properties.skip_cache_mtime_checks"
                                    | optional,
                                  skip_version_check
                                    | refs."properties.tool.properties.mypy.properties.skip_version_check"
                                    | optional,
                                  sqlite_cache
                                    | refs."properties.tool.properties.mypy.properties.sqlite_cache"
                                    | optional,
                                  strict
                                    | refs."properties.tool.properties.mypy.properties.strict"
                                    | optional,
                                  strict_bytes
                                    | refs."properties.tool.properties.mypy.properties.strict_bytes"
                                    | optional,
                                  strict_concatenate
                                    | refs."properties.tool.properties.mypy.properties.strict_concatenate"
                                    | optional,
                                  strict_equality
                                    | refs."properties.tool.properties.mypy.properties.strict_equality"
                                    | optional,
                                  strict_optional
                                    | refs."properties.tool.properties.mypy.properties.strict_optional"
                                    | optional,
                                  untyped_calls_exclude
                                    | refs."properties.tool.properties.mypy.properties.untyped_calls_exclude"
                                    | optional,
                                  verbosity
                                    | refs."properties.tool.properties.mypy.properties.verbosity"
                                    | optional,
                                  warn_incomplete_stub
                                    | refs."properties.tool.properties.mypy.properties.warn_incomplete_stub"
                                    | optional,
                                  warn_no_return
                                    | refs."properties.tool.properties.mypy.properties.warn_no_return"
                                    | optional,
                                  warn_return_any
                                    | refs."properties.tool.properties.mypy.properties.warn_return_any"
                                    | optional,
                                  warn_unreachable
                                    | refs."properties.tool.properties.mypy.properties.warn_unreachable"
                                    | optional,
                                  warn_unused_configs
                                    | refs."properties.tool.properties.mypy.properties.warn_unused_configs"
                                    | optional,
                                  warn_unused_ignores
                                    | refs."properties.tool.properties.mypy.properties.warn_unused_ignores"
                                    | optional,
                                  xml_report
                                    | refs."properties.tool.properties.mypy.properties.xml_report"
                                    | optional,
                                }
                              ]
                          )
                          | optional,
                        packages
                          | std.contract.any_of [ String, Array String ]
                          | doc "A comma-separated list of packages which should be checked by mypy if none are given on the command line. Mypy WILL recursively type check any submodules of the provided package. This flag is identical to `modules` apart from this behavior."
                          | optional,
                        pdb
                          | Bool
                          | doc "Invokes `pdb` (https://docs.python.org/3/library/pdb.html) on fatal error."
                          | optional,
                        platform
                          | String
                          | doc "Specifies the OS platform for the target program, for example `darwin` or `win32` (meaning OS X or Windows, respectively). The default is the current platform as revealed by Python's `sys.platform` variable."
                          | optional,
                        plugins
                          | std.contract.any_of [ String, Array String ]
                          | doc "A comma-separated list of mypy plugins."
                          | optional,
                        pretty
                          | Bool
                          | doc "Use visually nicer output in error messages: use soft word wrap, show source code snippets, and show error location markers."
                          | optional,
                        python_executable
                          | String
                          | doc "Specifies the path to the Python executable to inspect to collect a list of available PEP 561 packages (https://mypy.readthedocs.io/en/stable/installed_packages.html#installed-packages). User home directory and environment variables will be expanded. Defaults to the executable used to run mypy."
                          | optional,
                        python_version
                          | String
                          | doc "Specifies the Python version used to parse and check the target program. The string should be in the format `MAJOR.MINOR` (for example, `2.7`). The default is the version of the Python interpreter used to run mypy."
                          | optional,
                        raise_exceptions
                          | Bool
                          | doc "Raise exception on fatal error."
                          | optional,
                        scripts_are_modules
                          | Bool
                          | doc "Makes script `x` become module `x` instead of `__main__`. This is useful when checking multiple scripts in a single run."
                          | optional,
                        show_absolute_path
                          | Bool
                          | doc "Show absolute paths to files."
                          | optional,
                        show_column_numbers
                          | Bool
                          | doc "Shows column numbers in error messages."
                          | optional,
                        show_error_code_links
                          | Bool
                          | doc "UNDOCUMENTED: show links for error codes."
                          | optional,
                        show_error_codes
                          | Bool
                          | doc "DEPRECATED and UNDOCUMENTED: Now defaults to true, use `hide_error_codes` if you need to disable error codes instead."
                          | optional,
                        show_error_context
                          | Bool
                          | doc "Prefixes each error with the relevant context."
                          | optional,
                        show_traceback
                          | Bool
                          | doc "Shows traceback on fatal error."
                          | optional,
                        skip_cache_mtime_checks
                          | Bool
                          | doc "Skip cache internal consistency checks based on mtime."
                          | optional,
                        skip_version_check
                          | Bool
                          | doc "Makes mypy use incremental cache data even if it was generated by a different version of mypy. (By default, mypy will perform a version check and regenerate the cache if it was written by older versions of mypy.)"
                          | optional,
                        sqlite_cache
                          | Bool
                          | doc "Use an SQLite database to store the cache."
                          | optional,
                        strict
                          | Bool
                          | doc "Enable all optional error checking flags. You can see the list of flags enabled by strict mode in the full `mypy --help` output. The exact list of flags enabled by `strict` may change over time."
                          | optional,
                        strict_bytes
                          | Bool
                          | doc "Disable treating `bytearray` and `memoryview` as subtypes of `bytes`. This will be enabled by default in mypy 2.0."
                          | optional,
                        strict_concatenate
                          | Bool
                          | doc "Make arguments prepended via `Concatenate` be truly positional-only."
                          | optional,
                        strict_equality
                          | Bool
                          | doc "Prohibit equality checks, identity checks, and container checks between non-overlapping types."
                          | optional,
                        strict_optional
                          | Bool
                          | doc "Enables or disables strict `Optional` checks. If `False`, mypy treats `None` as compatible with every type."
                          | optional,
                        untyped_calls_exclude
                          | std.contract.any_of [ String, Array String ]
                          | doc "Selectively excludes functions and methods defined in specific packages, modules, and classes from action of `disallow_untyped_calls`. This also applies to all submodules of packages (i.e. everything inside a given prefix). Note, this option does not support per-file configuration, the exclusions list is defined globally for all your code."
                          | optional,
                        verbosity
                          | std.number.Integer
                          | doc "Controls how much debug output will be generated. Higher numbers are more verbose."
                          | optional,
                        warn_incomplete_stub
                          | Bool
                          | doc "Warns about missing type annotations in typeshed. This is only relevant in combination with `disallow_untyped_defs` or `disallow_incomplete_defs`."
                          | optional,
                        warn_no_return
                          | Bool
                          | doc "Shows errors for missing return statements on some execution paths."
                          | optional,
                        warn_redundant_casts
                          | Bool
                          | doc "Warns about casting an expression to its inferred type."
                          | optional,
                        warn_return_any
                          | Bool
                          | doc "Shows a warning when returning a value with type `Any` from a function declared with a non-`Any` return type."
                          | optional,
                        warn_unreachable
                          | Bool
                          | doc "Shows a warning when encountering any code inferred to be unreachable or redundant after performing type analysis."
                          | optional,
                        warn_unused_configs
                          | Bool
                          | doc "Warns about per-module sections in the config file that do not match any files processed when invoking mypy. (This requires turning off incremental mode using `incremental = False`.)"
                          | optional,
                        warn_unused_ignores
                          | Bool
                          | doc "Warns about unneeded `# type: ignore` comments."
                          | optional,
                        xml_report
                          | String
                          | doc "Causes mypy to generate an XML type checking coverage report."
                          | optional,
                      },
                  pdm =
                    {
                        build
                          | {
                            custom-hook
                              | String
                              | doc "Python file that should be run before every build"
                              | optional,
                            editable-backend
                              | std.enum.TagOrString
                              | [| 'editables, 'path |]
                              | doc "Format of editable wheels"
                              | optional,
                            excludes
                              | Array String
                              | doc "Path patterns of files to be excluded from package"
                              | optional,
                            includes
                              | Array String
                              | doc "Path patterns of files to be included in the package"
                              | optional,
                            is-purelib
                              | Bool
                              | doc "Whether builds should be platform specific"
                              | optional,
                            package-dir
                              | String
                              | doc "Directory where packages are located. The default value is src if src/ is found and . otherwise"
                              | optional,
                            run-setuptools
                              | Bool
                              | doc "Whether to auto-generate setup.py and run setuptools with it. Useful for building C extensions"
                              | optional,
                            source-includes
                              | Array String
                              | doc "Path patterns of files that are needed for building but not meant to be copied to the site-packages directory"
                              | optional,
                            wheel-data
                              | {
                                data
                                  | refs."properties.tool.properties.pdm.definitions.wheel-data-array"
                                  | optional,
                                include
                                  | refs."properties.tool.properties.pdm.definitions.wheel-data-array"
                                  | optional,
                                platinclude
                                  | refs."properties.tool.properties.pdm.definitions.wheel-data-array"
                                  | optional,
                                platlib
                                  | refs."properties.tool.properties.pdm.definitions.wheel-data-array"
                                  | optional,
                                purelib
                                  | refs."properties.tool.properties.pdm.definitions.wheel-data-array"
                                  | optional,
                                scripts
                                  | refs."properties.tool.properties.pdm.definitions.wheel-data-array"
                                  | optional,
                              }
                              | doc "Configuration for additional files to be written to a user's site-packages directory"
                              | optional,
                          }
                          | doc "Configuration related to the build process with pdm-backend"
                          | optional,
                        dev-dependencies
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    refs."properties.tool.properties.pdm.definitions.dev-dependency-group",
                              patterns = {},
                              properties =
                                {
                                    dev =
                                      refs."properties.tool.properties.pdm.definitions.dev-dependency-group",
                                  },
                              required = {},
                            }
                          | doc "Development dependencies"
                          | optional,
                        distribution
                          | Bool
                          | doc "Whether the project needs to be distributed"
                          | optional,
                        dockerize
                          | {
                            env
                              | { _ | String }
                              | doc "Environment variables applied when running the script"
                              | optional,
                            env_file
                              | String
                              | doc "Path to a file with environment variables"
                              | optional,
                            exclude
                              | refs."properties.tool.properties.pdm.properties.dockerize.definitions.selector"
                              | doc "fnmatch filter patterns for excluded PDM scripts"
                              | optional,
                            exclude_bins
                              | refs."properties.tool.properties.pdm.properties.dockerize.definitions.selector"
                              | doc "fnmatch filter patterns for excluded binaries"
                              | optional,
                            include
                              | refs."properties.tool.properties.pdm.properties.dockerize.definitions.selector"
                              | doc "fnmatch filter patterns for included PDM scripts"
                              | optional,
                            include_bins
                              | refs."properties.tool.properties.pdm.properties.dockerize.definitions.selector"
                              | doc "fnmatch filter patterns for included binaries"
                              | optional,
                          }
                          | optional,
                        ignore_package_warnings
                          | Array String
                          | doc "Ignore package resolution warnings for packages matching the given patterns (PDM v2.10.0)"
                          | optional,
                        options
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    refs."properties.tool.properties.pdm.definitions.command-options",
                              patterns = {},
                              properties =
                                {
                                    add =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    build =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    cache =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    completion =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    config =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    export =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    fix =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    "import" =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    info =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    init =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    install =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    list =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    lock =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    publish =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    remove =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    run =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    search =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    self =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    show =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    sync =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    update =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    use =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                    venv =
                                      refs."properties.tool.properties.pdm.definitions.command-options",
                                  },
                              required = {},
                            }
                          | doc "Default options applied to a PDM command"
                          | optional,
                        plugins
                          | Array String
                          | doc "List of PDM plugins required for this project"
                          | optional,
                        resolution
                          | {
                            allow-prereleases
                              | Bool
                              | doc "Whether to allow the use of pre-releases when resolving packages"
                              | optional,
                            excludes
                              | Array String
                              | doc "Package names to be excluded from the resolution result"
                              | optional,
                            overrides
                              | { _ | String }
                              | doc "Resolution overrides for forcing specific dependency versions"
                              | optional,
                            respect-source-order
                              | Bool
                              | doc "Whether PDM prefers package sources by order"
                              | optional,
                          }
                          | doc "Configuration related to package resolution"
                          | optional,
                        scripts
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    refs."properties.tool.properties.pdm.definitions.pdm-script",
                              patterns = {},
                              properties =
                                {
                                    "_" =
                                      {
                                          env
                                            | refs."properties.tool.properties.pdm.definitions.env-vars"
                                            | optional,
                                          env_file
                                            | refs."properties.tool.properties.pdm.definitions.env-file"
                                            | optional,
                                        },
                                    post_build =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    post_init =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    post_install =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    post_lock =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    post_publish =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    post_run =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    post_script =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    pre_build =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    pre_install =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    pre_lock =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    pre_publish =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    pre_run =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                    pre_script =
                                      refs."properties.tool.properties.pdm.definitions.pdm-script",
                                  },
                              required = {},
                            }
                          | doc "Definition of PDM scripts"
                          | optional,
                        source
                          | Array
                            refs."properties.tool.properties.pdm.definitions.package-source"
                          | doc "Sources used for package resolution"
                          | optional,
                        version
                          | {
                            fallback_version
                              | String
                              | doc "Specify a default version to be used when building from a source tree where SCM is not available (since pdm-backend v2.2.0)"
                              | optional,
                            getter
                              | String
                              | doc "Python callable for reading version"
                              | optional,
                            path
                              | String
                              | doc "Path to python file to read version from (file source)"
                              | optional,
                            source
                              | std.enum.TagOrString
                              | [| 'call, 'scm, 'file |]
                              | doc "Dynamic version source",
                            tag_filter
                              | String
                              | doc "Filters the set of tags which are considered as candidates to capture your project's version (scm source)"
                              | optional,
                            tag_regex
                              | String
                              | doc "Regex for reading version from source control tag (scm source)"
                              | optional,
                            version_format
                              | js2n.string.Matches
                                "([\\w.]+):([\\w.]+)\\s*(\\([^)]+\\))?"
                              | doc "Used to customize the format of the version string (since pdm-backend v2.2.0)"
                              | optional,
                            write_template
                              | String
                              | doc "Template to use for generated version file"
                              | optional,
                            write_to
                              | String
                              | doc "File path a generated version should be written to"
                              | optional,
                          }
                          | doc "Dynamic version options for PDM-backend"
                          | optional,
                      },
                  poe =
                    {
                        default_array_item_task_type
                          | std.enum.TagOrString
                          | [| 'shell, 'script, 'ref, 'expr, 'cmd |]
                          | doc "When a task is declared as a string inside an array (e.g. inline in a sequence task), then it is interpreted as the default array item task type, which will be 'ref' unless otherwise specified."
                          | optional,
                        default_array_task_type
                          | String
                          | doc "When a task is declared as an array (instead of a table), then it is interpreted as the default array task type, which will be 'sequence' unless otherwise specified."
                          | optional,
                        default_task_type
                          | std.enum.TagOrString
                          | [| 'shell, 'script, 'ref, 'expr, 'cmd |]
                          | doc "Sets the default task type for tasks defined as strings. By default, tasks are interpreted as shell commands ('cmd'). This can be overridden to 'script' or other supported types."
                          | optional,
                        env
                          | {
                            _ | std.contract.any_of
                              [
                                String,
                                {
                                  "default"
                                    | String
                                    | doc "A default value for an environment variable that will be used only if the variable is not already set."
                                    | optional,
                                  ..
                                }
                              ]
                          }
                          | js2n.record.FieldsMatch "^.+$"
                          | doc "Define environment variables to be exposed to all tasks. Supports POSIX variable interpolation and setting default values with a '.default' suffix."
                          | optional,
                        envfile
                          | std.contract.any_of [ String, Array String ]
                          | doc "Link to one or more files defining environment variables to be exposed to all tasks."
                          | optional,
                        executor
                          | {
                            location
                              | String
                              | doc "Specifies the location of the virtualenv relative to the parent directory. Relevant when 'type' is set to 'virtualenv'."
                              | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'simple, 'virtualenv, 'uv, 'poetry, 'auto |]
                              | doc "Specifies the executor type. 'auto' uses the most appropriate executor, 'poetry' uses the poetry environment, 'uv' uses `uv run` to run tasks, 'virtualenv' specifies a virtual environment, and 'simple' runs tasks without any specific environment setup."
                              | optional,
                          }
                          | doc "Configure the executor type for running tasks. Can be 'auto', 'poetry', 'virtualenv', or 'simple', with 'auto' being the default."
                          | optional,
                        include
                          | std.contract.any_of
                            [ String, Array String, { _ | String } ]
                          | doc "Specify one or more other toml or json files to load tasks from."
                          | optional,
                        poetry_command
                          | String
                          | doc "Change the name of the task poe registers with poetry when used as a plugin."
                          | optional,
                        poetry_hooks
                          | { _ | String }
                          | doc "Register tasks to run automatically before or after other poetry CLI commands."
                          | optional,
                        shell_interpreter
                          | std.contract.any_of [ String, Array String ]
                          | doc "Change the default shell interpreter for executing shell tasks. Normally, tasks are executed using a posix shell, but this can be overridden here."
                          | optional,
                        tasks
                          | {
                            _ | js2n.OneOf
                              [
                                refs."properties.tool.properties.poe.definitions.one_of_tasks",
                                refs."properties.tool.properties.poe.definitions.tasks_array"
                              ]
                          }
                          | js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_:-]*$"
                          | optional,
                        verbosity
                          | std.number.Integer
                          | js2n.number.Maximum 1
                          | js2n.number.Minimum (-1)
                          | doc "Sets the default verbosity level for all commands. '-1' is quieter, '0' is the default level, and '1' is more verbose. The command line arguments are incremental, with '--quiet' or '-q' decreasing verbosity, and '--verbose' or '-v' increasing it."
                          | optional,
                      },
                  poetry =
                    {
                        authors
                          | refs."properties.tool.properties.poetry.definitions.poetry-authors"
                          | optional,
                        build
                          | refs."properties.tool.properties.poetry.definitions.poetry-build-section"
                          | optional,
                        classifiers
                          | Array String
                          | doc "A list of trove classifiers."
                          | optional,
                        dependencies
                          | js2n.record.Record
                            {
                              additional =
                                'Some
                                    refs."properties.tool.properties.poetry.definitions.poetry-dependency-any",
                              patterns = {},
                              properties =
                                {
                                    python =
                                      refs."properties.tool.properties.poetry.definitions.poetry-pep440-version",
                                  },
                              required = {},
                            }
                          | doc "This is a hash of package name (keys) and version constraints (values) that are required to run this package."
                          | optional,
                        description
                          | refs."properties.tool.properties.poetry.definitions.poetry-description"
                          | optional,
                        dev-dependencies
                          | {
                            _ | refs."properties.tool.properties.poetry.definitions.poetry-dependency-any"
                          }
                          | js2n.record.FieldsMatch "^[a-zA-Z-_.0-9]+$"
                          | doc "This is a hash of package name (keys) and version constraints (values) that this package requires for developing it (testing tools and such)."
                          | optional,
                        documentation
                          | String
                          | doc "Documentation URL for the project."
                          | optional,
                        exclude
                          | Array String
                          | doc "A list of files and folders to exclude."
                          | optional,
                        extras
                          | { _ | Array String }
                          | js2n.record.FieldsMatch "^[a-zA-Z-_.0-9]+$"
                          | optional,
                        group
                          | {
                            _ | {
                              dependencies
                                | {
                                  _ | refs."properties.tool.properties.poetry.definitions.poetry-dependency-any"
                                }
                                | js2n.record.FieldsMatch "^[a-zA-Z-_.0-9]+$"
                                | doc "The dependencies of this dependency group",
                              "optional"
                                | Bool
                                | doc "Whether the dependency group is optional or not"
                                | optional,
                            }
                          }
                          | js2n.record.FieldsMatch "^[a-zA-Z-_.0-9]+$"
                          | doc "This represents groups of dependencies"
                          | optional,
                        homepage
                          | String
                          | doc "Homepage URL for the project."
                          | optional,
                        include
                          | Array (
                            std.contract.any_of
                              [
                                refs."properties.tool.properties.poetry.definitions.poetry-include-path",
                                {
                                  format
                                    | refs."properties.tool.properties.poetry.definitions.poetry-package-formats"
                                    | optional,
                                  path
                                    | refs."properties.tool.properties.poetry.definitions.poetry-include-path",
                                }
                              ]
                          )
                          | doc "A list of files and folders to include."
                          | optional,
                        keywords | Array String | optional,
                        license | String | doc "License name." | optional,
                        maintainers
                          | refs."properties.tool.properties.poetry.definitions.poetry-maintainers"
                          | optional,
                        name
                          | refs."properties.tool.properties.poetry.definitions.poetry-name"
                          | optional,
                        package-mode
                          | Bool
                          | doc "Whether Poetry operates in package mode or not."
                          | optional,
                        packages
                          | Array
                            {
                              format
                                | refs."properties.tool.properties.poetry.definitions.poetry-package-formats"
                                | optional,
                              from
                                | String
                                | doc "Where the source directory of the package resides."
                                | optional,
                              include
                                | refs."properties.tool.properties.poetry.definitions.poetry-include-path",
                              to
                                | String
                                | doc "Where the package should be installed in the final distribution."
                                | optional,
                            }
                          | doc "A list of packages to include in the final distribution."
                          | optional,
                        plugins
                          | js2n.record.Record
                            {
                              additional = 'None,
                              patterns =
                                {
                                    "^[a-zA-Z-_.0-9]+$" =
                                      std.contract.Sequence
                                          [
                                            { _ | String },
                                            js2n.record.FieldsMatch
                                              "^[a-zA-Z-_.0-9]+$"
                                          ],
                                    "^dotenv$" =
                                      {
                                          ignore
                                            | String
                                            | doc "Flag that prevents the plugin from loading the dotenv file."
                                            | optional,
                                          location
                                            | String
                                            | doc "Path to the dotenv file. It can be both absolute or relative."
                                            | optional,
                                        },
                                  },
                              properties = {},
                              required = {},
                            }
                          | doc "A hash of hashes representing plugins"
                          | optional,
                        readme
                          | std.contract.any_of [ String, Array String ]
                          | optional,
                        repository
                          | String
                          | doc "Repository URL for the project."
                          | optional,
                        scripts
                          | {
                            _ | std.contract.any_of
                              [
                                refs."properties.tool.properties.poetry.definitions.poetry-script-legacy",
                                refs."properties.tool.properties.poetry.definitions.poetry-script-table"
                              ]
                          }
                          | js2n.record.FieldsMatch "^[a-zA-Z-_.0-9]+$"
                          | doc "A hash of scripts to be installed."
                          | optional,
                        source
                          | Array (
                            std.contract.any_of
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          name = js2n.Const "pypi",
                                          "priority" =
                                            refs."properties.tool.properties.poetry.definitions.poetry-priority",
                                        },
                                    required = { name = true, },
                                  },
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          name =
                                            std.contract.Sequence
                                                [
                                                  std.contract.not
                                                    (js2n.Const "pypi"),
                                                  String
                                                ],
                                          "priority" =
                                            refs."properties.tool.properties.poetry.definitions.poetry-priority",
                                          url = String,
                                        },
                                    required = { name = true, url = true, },
                                  }
                              ]
                          )
                          | optional,
                        urls
                          | { _ | String }
                          | js2n.record.FieldsMatch "^.+$"
                          | optional,
                        version
                          | refs."properties.tool.properties.poetry.definitions.poetry-version"
                          | optional,
                        ..
                      },
                  pyright =
                    {
                        analyzeUnannotatedFunctions
                          | refs."properties.tool.properties.pyright.definitions.analyzeUnannotatedFunctions"
                          | optional,
                        defineConstant
                          | { _ | std.contract.any_of [ Bool, String ] }
                          | doc "Set of identifiers that should be assumed to contain a constant value wherever used within this program. For example, `{ \"DEBUG\": true }` indicates that pyright should assume that the identifier `DEBUG` will always be equal to `True`. If this identifier is used within a conditional expression (such as `if not DEBUG:`) pyright will use the indicated value to determine whether the guarded block is reachable or not. Member expressions that reference one of these constants (e.g. `my_module.DEBUG`) are also supported."
                          | optional,
                        deprecateTypingAliases
                          | refs."properties.tool.properties.pyright.definitions.deprecateTypingAliases"
                          | optional,
                        disableBytesTypePromotions
                          | refs."properties.tool.properties.pyright.definitions.disableBytesTypePromotions"
                          | optional,
                        enableExperimentalFeatures
                          | refs."properties.tool.properties.pyright.definitions.enableExperimentalFeatures"
                          | optional,
                        enableReachabilityAnalysis
                          | refs."properties.tool.properties.pyright.definitions.enableReachabilityAnalysis"
                          | optional,
                        enableTypeIgnoreComments
                          | refs."properties.tool.properties.pyright.definitions.enableTypeIgnoreComments"
                          | optional,
                        exclude
                          | Array String
                          | doc "Paths of directories or files that should not be considered part of the project. These override the includes directories and files, allowing specific subdirectories to be excluded. Note that files in the exclude paths may still be included in the analysis if they are referenced (imported) by source files that are not excluded. Paths may contain wildcard characters: `**` (a directory or multiple levels of directories), `*` (a sequence of zero or more characters), or `?` (a single character). If no exclude paths are specified, Pyright automatically excludes the following: `**/node_modules`, `**/__pycache__`, `**/.*` and any virtual environment directories."
                          | optional,
                        executionEnvironments
                          | Array
                            {
                              analyzeUnannotatedFunctions
                                | refs."properties.tool.properties.pyright.definitions.analyzeUnannotatedFunctions"
                                | optional,
                              deprecateTypingAliases
                                | refs."properties.tool.properties.pyright.definitions.deprecateTypingAliases"
                                | optional,
                              disableBytesTypePromotions
                                | refs."properties.tool.properties.pyright.definitions.disableBytesTypePromotions"
                                | optional,
                              enableExperimentalFeatures
                                | refs."properties.tool.properties.pyright.definitions.enableExperimentalFeatures"
                                | optional,
                              enableReachabilityAnalysis
                                | refs."properties.tool.properties.pyright.definitions.enableReachabilityAnalysis"
                                | optional,
                              enableTypeIgnoreComments
                                | refs."properties.tool.properties.pyright.definitions.enableTypeIgnoreComments"
                                | optional,
                              extraPaths
                                | refs."properties.tool.properties.pyright.definitions.extraPaths"
                                | optional,
                              pythonPlatform
                                | refs."properties.tool.properties.pyright.definitions.pythonPlatform"
                                | optional,
                              pythonVersion
                                | refs."properties.tool.properties.pyright.definitions.pythonVersion"
                                | optional,
                              reportAbstractUsage
                                | refs."properties.tool.properties.pyright.definitions.reportAbstractUsage"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportArgumentType
                                | refs."properties.tool.properties.pyright.definitions.reportArgumentType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportAssertAlwaysTrue
                                | refs."properties.tool.properties.pyright.definitions.reportAssertAlwaysTrue"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportAssertTypeFailure
                                | refs."properties.tool.properties.pyright.definitions.reportAssertTypeFailure"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportAssignmentType
                                | refs."properties.tool.properties.pyright.definitions.reportAssignmentType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportAttributeAccessIssue
                                | refs."properties.tool.properties.pyright.definitions.reportAttributeAccessIssue"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportCallInDefaultInitializer
                                | refs."properties.tool.properties.pyright.definitions.reportCallInDefaultInitializer"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportCallIssue
                                | refs."properties.tool.properties.pyright.definitions.reportCallIssue"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportConstantRedefinition
                                | refs."properties.tool.properties.pyright.definitions.reportConstantRedefinition"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportDeprecated
                                | refs."properties.tool.properties.pyright.definitions.reportDeprecated"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportDuplicateImport
                                | refs."properties.tool.properties.pyright.definitions.reportDuplicateImport"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportFunctionMemberAccess
                                | refs."properties.tool.properties.pyright.definitions.reportFunctionMemberAccess"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportGeneralTypeIssues
                                | refs."properties.tool.properties.pyright.definitions.reportGeneralTypeIssues"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportImplicitOverride
                                | refs."properties.tool.properties.pyright.definitions.reportImplicitOverride"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportImplicitStringConcatenation
                                | refs."properties.tool.properties.pyright.definitions.reportImplicitStringConcatenation"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportImportCycles
                                | refs."properties.tool.properties.pyright.definitions.reportImportCycles"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportIncompatibleMethodOverride
                                | refs."properties.tool.properties.pyright.definitions.reportIncompatibleMethodOverride"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportIncompatibleVariableOverride
                                | refs."properties.tool.properties.pyright.definitions.reportIncompatibleVariableOverride"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportIncompleteStub
                                | refs."properties.tool.properties.pyright.definitions.reportIncompleteStub"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInconsistentConstructor
                                | refs."properties.tool.properties.pyright.definitions.reportInconsistentConstructor"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInconsistentOverload
                                | refs."properties.tool.properties.pyright.definitions.reportInconsistentOverload"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportIndexIssue
                                | refs."properties.tool.properties.pyright.definitions.reportIndexIssue"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInvalidStringEscapeSequence
                                | refs."properties.tool.properties.pyright.definitions.reportInvalidStringEscapeSequence"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInvalidStubStatement
                                | refs."properties.tool.properties.pyright.definitions.reportInvalidStubStatement"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInvalidTypeArguments
                                | refs."properties.tool.properties.pyright.definitions.reportInvalidTypeArguments"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInvalidTypeForm
                                | refs."properties.tool.properties.pyright.definitions.reportInvalidTypeForm"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportInvalidTypeVarUse
                                | refs."properties.tool.properties.pyright.definitions.reportInvalidTypeVarUse"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMatchNotExhaustive
                                | refs."properties.tool.properties.pyright.definitions.reportMatchNotExhaustive"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMissingImports
                                | refs."properties.tool.properties.pyright.definitions.reportMissingImports"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMissingModuleSource
                                | refs."properties.tool.properties.pyright.definitions.reportMissingModuleSource"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMissingParameterType
                                | refs."properties.tool.properties.pyright.definitions.reportMissingParameterType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMissingSuperCall
                                | refs."properties.tool.properties.pyright.definitions.reportMissingSuperCall"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMissingTypeArgument
                                | refs."properties.tool.properties.pyright.definitions.reportMissingTypeArgument"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportMissingTypeStubs
                                | refs."properties.tool.properties.pyright.definitions.reportMissingTypeStubs"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportNoOverloadImplementation
                                | refs."properties.tool.properties.pyright.definitions.reportNoOverloadImplementation"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOperatorIssue
                                | refs."properties.tool.properties.pyright.definitions.reportOperatorIssue"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOptionalCall
                                | refs."properties.tool.properties.pyright.definitions.reportOptionalCall"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOptionalContextManager
                                | refs."properties.tool.properties.pyright.definitions.reportOptionalContextManager"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOptionalIterable
                                | refs."properties.tool.properties.pyright.definitions.reportOptionalIterable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOptionalMemberAccess
                                | refs."properties.tool.properties.pyright.definitions.reportOptionalMemberAccess"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOptionalOperand
                                | refs."properties.tool.properties.pyright.definitions.reportOptionalOperand"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOptionalSubscript
                                | refs."properties.tool.properties.pyright.definitions.reportOptionalSubscript"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportOverlappingOverload
                                | refs."properties.tool.properties.pyright.definitions.reportOverlappingOverload"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportPossiblyUnboundVariable
                                | refs."properties.tool.properties.pyright.definitions.reportPossiblyUnboundVariable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportPrivateImportUsage
                                | refs."properties.tool.properties.pyright.definitions.reportPrivateImportUsage"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportPrivateUsage
                                | refs."properties.tool.properties.pyright.definitions.reportPrivateUsage"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportPropertyTypeMismatch
                                | refs."properties.tool.properties.pyright.definitions.reportPropertyTypeMismatch"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportRedeclaration
                                | refs."properties.tool.properties.pyright.definitions.reportRedeclaration"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportReturnType
                                | refs."properties.tool.properties.pyright.definitions.reportReturnType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportSelfClsParameterName
                                | refs."properties.tool.properties.pyright.definitions.reportSelfClsParameterName"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportShadowedImports
                                | refs."properties.tool.properties.pyright.definitions.reportShadowedImports"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportTypeCommentUsage
                                | refs."properties.tool.properties.pyright.definitions.reportTypeCommentUsage"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportTypedDictNotRequiredAccess
                                | refs."properties.tool.properties.pyright.definitions.reportTypedDictNotRequiredAccess"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnboundVariable
                                | refs."properties.tool.properties.pyright.definitions.reportUnboundVariable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUndefinedVariable
                                | refs."properties.tool.properties.pyright.definitions.reportUndefinedVariable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnhashable
                                | refs."properties.tool.properties.pyright.definitions.reportUnhashable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUninitializedInstanceVariable
                                | refs."properties.tool.properties.pyright.definitions.reportUninitializedInstanceVariable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnknownArgumentType
                                | refs."properties.tool.properties.pyright.definitions.reportUnknownArgumentType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnknownLambdaType
                                | refs."properties.tool.properties.pyright.definitions.reportUnknownLambdaType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnknownMemberType
                                | refs."properties.tool.properties.pyright.definitions.reportUnknownMemberType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnknownParameterType
                                | refs."properties.tool.properties.pyright.definitions.reportUnknownParameterType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnknownVariableType
                                | refs."properties.tool.properties.pyright.definitions.reportUnknownVariableType"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnnecessaryCast
                                | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryCast"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnnecessaryComparison
                                | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryComparison"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnnecessaryContains
                                | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryContains"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnnecessaryIsInstance
                                | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryIsInstance"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnnecessaryTypeIgnoreComment
                                | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryTypeIgnoreComment"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnsupportedDunderAll
                                | refs."properties.tool.properties.pyright.definitions.reportUnsupportedDunderAll"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUntypedBaseClass
                                | refs."properties.tool.properties.pyright.definitions.reportUntypedBaseClass"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUntypedClassDecorator
                                | refs."properties.tool.properties.pyright.definitions.reportUntypedClassDecorator"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUntypedFunctionDecorator
                                | refs."properties.tool.properties.pyright.definitions.reportUntypedFunctionDecorator"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUntypedNamedTuple
                                | refs."properties.tool.properties.pyright.definitions.reportUntypedNamedTuple"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedCallResult
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedCallResult"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedClass
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedClass"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedCoroutine
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedCoroutine"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedExcept
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedExcept"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedExpression
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedExpression"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedFunction
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedFunction"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedImport
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedImport"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportUnusedVariable
                                | refs."properties.tool.properties.pyright.definitions.reportUnusedVariable"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              reportWildcardImportFromLibrary
                                | refs."properties.tool.properties.pyright.definitions.reportWildcardImportFromLibrary"
                                | std.contract.any_of [ Bool, String ]
                                | optional,
                              root
                                | String
                                | doc "Root path for the code that will execute within this execution environment.",
                              strictDictionaryInference
                                | refs."properties.tool.properties.pyright.definitions.strictDictionaryInference"
                                | optional,
                              strictListInference
                                | refs."properties.tool.properties.pyright.definitions.strictListInference"
                                | optional,
                              strictParameterNoneValue
                                | refs."properties.tool.properties.pyright.definitions.strictParameterNoneValue"
                                | optional,
                              strictSetInference
                                | refs."properties.tool.properties.pyright.definitions.strictSetInference"
                                | optional,
                              ..
                            }
                          | doc "Specifies a list of execution environments. Execution environments are searched from start to finish by comparing the path of a source file with the root path specified in the execution environment."
                          | optional,
                        extends
                          | String
                          | doc "Path to another `.json` or `.toml` file that is used as a \"base configuration\", allowing this configuration to inherit configuration settings. Top-level keys within this configuration overwrite top-level keys in the base configuration. Multiple levels of inheritance are supported. Relative paths specified in a configuration file are resolved relative to the location of that configuration file."
                          | optional,
                        extraPaths
                          | refs."properties.tool.properties.pyright.definitions.extraPaths"
                          | optional,
                        ignore
                          | Array String
                          | doc "Paths of directories or files whose diagnostic output (errors and warnings) should be suppressed even if they are an included file or within the transitive closure of an included file. Paths may contain wildcard characters: `**` (a directory or multiple levels of directories), `*` (a sequence of zero or more characters), or `?` (a single character)."
                          | optional,
                        include
                          | Array String
                          | doc "Paths of directories or files that should be considered part of the project. If no paths are specified, pyright defaults to the directory that contains the config file. Paths may contain wildcard characters: `**` (a directory or multiple levels of directories), `*` (a sequence of zero or more characters), or `?` (a single character). If no include paths are specified, the root path for the workspace is assumed."
                          | optional,
                        pythonPlatform
                          | refs."properties.tool.properties.pyright.definitions.pythonPlatform"
                          | optional,
                        pythonVersion
                          | refs."properties.tool.properties.pyright.definitions.pythonVersion"
                          | optional,
                        reportAbstractUsage
                          | refs."properties.tool.properties.pyright.definitions.reportAbstractUsage"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportArgumentType
                          | refs."properties.tool.properties.pyright.definitions.reportArgumentType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportAssertAlwaysTrue
                          | refs."properties.tool.properties.pyright.definitions.reportAssertAlwaysTrue"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportAssertTypeFailure
                          | refs."properties.tool.properties.pyright.definitions.reportAssertTypeFailure"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportAssignmentType
                          | refs."properties.tool.properties.pyright.definitions.reportAssignmentType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportAttributeAccessIssue
                          | refs."properties.tool.properties.pyright.definitions.reportAttributeAccessIssue"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportCallInDefaultInitializer
                          | refs."properties.tool.properties.pyright.definitions.reportCallInDefaultInitializer"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportCallIssue
                          | refs."properties.tool.properties.pyright.definitions.reportCallIssue"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportConstantRedefinition
                          | refs."properties.tool.properties.pyright.definitions.reportConstantRedefinition"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportDeprecated
                          | refs."properties.tool.properties.pyright.definitions.reportDeprecated"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportDuplicateImport
                          | refs."properties.tool.properties.pyright.definitions.reportDuplicateImport"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportFunctionMemberAccess
                          | refs."properties.tool.properties.pyright.definitions.reportFunctionMemberAccess"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportGeneralTypeIssues
                          | refs."properties.tool.properties.pyright.definitions.reportGeneralTypeIssues"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportImplicitOverride
                          | refs."properties.tool.properties.pyright.definitions.reportImplicitOverride"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportImplicitStringConcatenation
                          | refs."properties.tool.properties.pyright.definitions.reportImplicitStringConcatenation"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportImportCycles
                          | refs."properties.tool.properties.pyright.definitions.reportImportCycles"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportIncompatibleMethodOverride
                          | refs."properties.tool.properties.pyright.definitions.reportIncompatibleMethodOverride"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportIncompatibleVariableOverride
                          | refs."properties.tool.properties.pyright.definitions.reportIncompatibleVariableOverride"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportIncompleteStub
                          | refs."properties.tool.properties.pyright.definitions.reportIncompleteStub"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInconsistentConstructor
                          | refs."properties.tool.properties.pyright.definitions.reportInconsistentConstructor"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInconsistentOverload
                          | refs."properties.tool.properties.pyright.definitions.reportInconsistentOverload"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportIndexIssue
                          | refs."properties.tool.properties.pyright.definitions.reportIndexIssue"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInvalidStringEscapeSequence
                          | refs."properties.tool.properties.pyright.definitions.reportInvalidStringEscapeSequence"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInvalidStubStatement
                          | refs."properties.tool.properties.pyright.definitions.reportInvalidStubStatement"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInvalidTypeArguments
                          | refs."properties.tool.properties.pyright.definitions.reportInvalidTypeArguments"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInvalidTypeForm
                          | refs."properties.tool.properties.pyright.definitions.reportInvalidTypeForm"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportInvalidTypeVarUse
                          | refs."properties.tool.properties.pyright.definitions.reportInvalidTypeVarUse"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMatchNotExhaustive
                          | refs."properties.tool.properties.pyright.definitions.reportMatchNotExhaustive"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMissingImports
                          | refs."properties.tool.properties.pyright.definitions.reportMissingImports"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMissingModuleSource
                          | refs."properties.tool.properties.pyright.definitions.reportMissingModuleSource"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMissingParameterType
                          | refs."properties.tool.properties.pyright.definitions.reportMissingParameterType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMissingSuperCall
                          | refs."properties.tool.properties.pyright.definitions.reportMissingSuperCall"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMissingTypeArgument
                          | refs."properties.tool.properties.pyright.definitions.reportMissingTypeArgument"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportMissingTypeStubs
                          | refs."properties.tool.properties.pyright.definitions.reportMissingTypeStubs"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportNoOverloadImplementation
                          | refs."properties.tool.properties.pyright.definitions.reportNoOverloadImplementation"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOperatorIssue
                          | refs."properties.tool.properties.pyright.definitions.reportOperatorIssue"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOptionalCall
                          | refs."properties.tool.properties.pyright.definitions.reportOptionalCall"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOptionalContextManager
                          | refs."properties.tool.properties.pyright.definitions.reportOptionalContextManager"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOptionalIterable
                          | refs."properties.tool.properties.pyright.definitions.reportOptionalIterable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOptionalMemberAccess
                          | refs."properties.tool.properties.pyright.definitions.reportOptionalMemberAccess"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOptionalOperand
                          | refs."properties.tool.properties.pyright.definitions.reportOptionalOperand"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOptionalSubscript
                          | refs."properties.tool.properties.pyright.definitions.reportOptionalSubscript"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportOverlappingOverload
                          | refs."properties.tool.properties.pyright.definitions.reportOverlappingOverload"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportPossiblyUnboundVariable
                          | refs."properties.tool.properties.pyright.definitions.reportPossiblyUnboundVariable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportPrivateImportUsage
                          | refs."properties.tool.properties.pyright.definitions.reportPrivateImportUsage"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportPrivateUsage
                          | refs."properties.tool.properties.pyright.definitions.reportPrivateUsage"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportPropertyTypeMismatch
                          | refs."properties.tool.properties.pyright.definitions.reportPropertyTypeMismatch"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportRedeclaration
                          | refs."properties.tool.properties.pyright.definitions.reportRedeclaration"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportReturnType
                          | refs."properties.tool.properties.pyright.definitions.reportReturnType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportSelfClsParameterName
                          | refs."properties.tool.properties.pyright.definitions.reportSelfClsParameterName"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportShadowedImports
                          | refs."properties.tool.properties.pyright.definitions.reportShadowedImports"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportTypeCommentUsage
                          | refs."properties.tool.properties.pyright.definitions.reportTypeCommentUsage"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportTypedDictNotRequiredAccess
                          | refs."properties.tool.properties.pyright.definitions.reportTypedDictNotRequiredAccess"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnboundVariable
                          | refs."properties.tool.properties.pyright.definitions.reportUnboundVariable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUndefinedVariable
                          | refs."properties.tool.properties.pyright.definitions.reportUndefinedVariable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnhashable
                          | refs."properties.tool.properties.pyright.definitions.reportUnhashable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUninitializedInstanceVariable
                          | refs."properties.tool.properties.pyright.definitions.reportUninitializedInstanceVariable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnknownArgumentType
                          | refs."properties.tool.properties.pyright.definitions.reportUnknownArgumentType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnknownLambdaType
                          | refs."properties.tool.properties.pyright.definitions.reportUnknownLambdaType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnknownMemberType
                          | refs."properties.tool.properties.pyright.definitions.reportUnknownMemberType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnknownParameterType
                          | refs."properties.tool.properties.pyright.definitions.reportUnknownParameterType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnknownVariableType
                          | refs."properties.tool.properties.pyright.definitions.reportUnknownVariableType"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnnecessaryCast
                          | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryCast"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnnecessaryComparison
                          | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryComparison"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnnecessaryContains
                          | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryContains"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnnecessaryIsInstance
                          | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryIsInstance"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnnecessaryTypeIgnoreComment
                          | refs."properties.tool.properties.pyright.definitions.reportUnnecessaryTypeIgnoreComment"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnsupportedDunderAll
                          | refs."properties.tool.properties.pyright.definitions.reportUnsupportedDunderAll"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUntypedBaseClass
                          | refs."properties.tool.properties.pyright.definitions.reportUntypedBaseClass"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUntypedClassDecorator
                          | refs."properties.tool.properties.pyright.definitions.reportUntypedClassDecorator"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUntypedFunctionDecorator
                          | refs."properties.tool.properties.pyright.definitions.reportUntypedFunctionDecorator"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUntypedNamedTuple
                          | refs."properties.tool.properties.pyright.definitions.reportUntypedNamedTuple"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedCallResult
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedCallResult"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedClass
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedClass"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedCoroutine
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedCoroutine"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedExcept
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedExcept"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedExpression
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedExpression"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedFunction
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedFunction"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedImport
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedImport"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportUnusedVariable
                          | refs."properties.tool.properties.pyright.definitions.reportUnusedVariable"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        reportWildcardImportFromLibrary
                          | refs."properties.tool.properties.pyright.definitions.reportWildcardImportFromLibrary"
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        strict
                          | Array String
                          | doc "Paths of directories or files that should use \"strict\" analysis if they are included. This is the same as manually adding a `# pyright: strict` comment. In strict mode, most type-checking rules are enabled. Paths may contain wildcard characters: `**` (a directory or multiple levels of directories), `*` (a sequence of zero or more characters), or `?` (a single character)."
                          | optional,
                        strictDictionaryInference
                          | refs."properties.tool.properties.pyright.definitions.strictDictionaryInference"
                          | optional,
                        strictListInference
                          | refs."properties.tool.properties.pyright.definitions.strictListInference"
                          | optional,
                        strictParameterNoneValue
                          | refs."properties.tool.properties.pyright.definitions.strictParameterNoneValue"
                          | optional,
                        strictSetInference
                          | refs."properties.tool.properties.pyright.definitions.strictSetInference"
                          | optional,
                        stubPath
                          | String
                          | doc "Path to a directory that contains custom type stubs. Each package's type stub file(s) are expected to be in its own subdirectory."
                          | optional,
                        typeCheckingMode
                          | std.enum.TagOrString
                          | [| 'strict, 'standard, 'basic, 'off |]
                          | doc "Specifies the default rule set to use. Some rules can be overridden using additional configuration flags documented below. If set to `off`, all type-checking rules are disabled, but Python syntax and semantic errors are still reported."
                          | optional,
                        typeshedPath
                          | String
                          | doc "Path to a directory that contains `typeshed` type stub files. Pyright ships with a bundled copy of `typeshed` type stubs. If you want to use a different version of `typeshed` stubs, you can clone the `typeshed` GitHub repo (https://github.com/python/typeshed) to a local directory and reference the location with this path. This option is useful if you're actively contributing updates to `typeshed`."
                          | optional,
                        useLibraryCodeForTypes
                          | Bool
                          | doc "Determines whether pyright reads, parses and analyzes library code to extract type information in the absence of type stub files. Type information will typically be incomplete. We recommend using type stubs where possible."
                          | optional,
                        venv
                          | String
                          | doc "Used in conjunction with the `venvPath`, specifies the virtual environment to use."
                          | optional,
                        venvPath
                          | String
                          | doc "Path to a directory containing one or more subdirectories, each of which contains a virtual environment. When used in conjunction with a `venv` setting, pyright will search for imports in the virtual environment's site-packages directory rather than the paths specified by the default Python interpreter. If you are working on a project with other developers, it is best not to specify this setting in the config file, since this path will typically differ for each developer. Instead, it can be specified on the command line or in a per-user setting."
                          | optional,
                        verboseOutput
                          | Bool
                          | doc "Specifies whether output logs should be verbose. This is useful when diagnosing certain problems like import resolution issues."
                          | optional,
                        ..
                      },
                  pytest =
                    {
                        ini_options
                          | refs."properties.tool.properties.pytest.definitions.IniOptions"
                          | refs."properties.tool.properties.pytest.definitions.IniOptionsAsyncio"
                          | doc "The `ini_options` table is used as a bridge between the existing `pytest.ini` configuration system and future configuration formats. `pytest.ini` takes precedence over `[tool.pytest.ini_options]` in `pyproject.toml`."
                          | optional,
                      },
                  repo-review =
                    {
                        ignore
                          | js2n.OneOf
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = { "^[A-Z]+[0-9]*$" = String, },
                                  properties = {},
                                  required = {},
                                }
                            ]
                          | optional,
                        select
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                      },
                  ruff =
                    {
                        allowed-confusables
                          | js2n.Nullable
                            (Array (
                              std.contract.Sequence
                                [
                                  js2n.string.MaxLength 1,
                                  js2n.string.MinLength 1
                                ]
                            ))
                          | doc "A list of allowed \"confusable\" Unicode characters to ignore when enforcing `RUF001`, `RUF002`, and `RUF003`."
                          | optional,
                        analyze
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.AnalyzeOptions"
                          | doc "Options to configure import map generation."
                          | optional,
                        builtins
                          | js2n.Nullable (Array String)
                          | doc "A list of builtins to treat as defined references, in addition to the system builtins."
                          | optional,
                        cache-dir
                          | js2n.Nullable String
                          | doc m%"
                            A path to the cache directory.
                            
                            By default, Ruff stores cache results in a `.ruff_cache` directory in the current project root.
                            
                            However, Ruff will also respect the `RUFF_CACHE_DIR` environment variable, which takes precedence over that default.
                            
                            This setting will override even the `RUFF_CACHE_DIR` environment variable, if set.
                          "%
                          | optional,
                        dummy-variable-rgx
                          | js2n.Nullable String
                          | doc "A regular expression used to identify \"dummy\" variables, or those which should be ignored when enforcing (e.g.) unused-variable rules. The default expression matches `_`, `__`, and `_var`, but not `_var_`."
                          | optional,
                        exclude
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of file patterns to exclude from formatting and linting.
                            
                            Exclusions are based on globs, and can be either:
                            
                            - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                            
                            For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
                            
                            Note that you'll typically want to use [`extend-exclude`](#extend-exclude) to modify the excluded paths.
                          "%
                          | optional,
                        explicit-preview-rules
                          | js2n.Nullable Bool
                          | doc "Whether to require exact codes to select preview rules. When enabled, preview rules will not be selected by prefixes — the full code of each preview rule will be required to enable the rule."
                          | optional,
                        extend
                          | js2n.Nullable String
                          | doc m%"
                            A path to a local `pyproject.toml` file to merge into this configuration. User home directory and environment variables will be expanded.
                            
                            To resolve the current `pyproject.toml` file, Ruff will first resolve this base configuration file, then merge in any properties defined in the current configuration file.
                          "%
                          | optional,
                        extend-exclude
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of file patterns to omit from formatting and linting, in addition to those specified by [`exclude`](#exclude).
                            
                            Exclusions are based on globs, and can be either:
                            
                            - Single-path patterns, like `.mypy_cache` (to exclude any directory named `.mypy_cache` in the tree), `foo.py` (to exclude any file named `foo.py`), or `foo_*.py` (to exclude any file matching `foo_*.py` ). - Relative patterns, like `directory/foo.py` (to exclude that specific file) or `directory/*.py` (to exclude any Python files in `directory`). Note that these paths are relative to the project root (e.g., the directory containing your `pyproject.toml`).
                            
                            For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
                          "%
                          | optional,
                        extend-fixable
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes to consider fixable, in addition to those specified by [`fixable`](#lint_fixable)."
                          | optional,
                        extend-ignore
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes to ignore, in addition to those specified by `ignore`."
                          | optional,
                        extend-include
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of file patterns to include when linting, in addition to those specified by [`include`](#include).
                            
                            Inclusion are based on globs, and should be single-path patterns, like `*.pyw`, to include any file with the `.pyw` extension.
                            
                            For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
                          "%
                          | optional,
                        extend-per-file-ignores
                          | js2n.Nullable
                            ({
                              _ | Array
                                refs."properties.tool.properties.ruff.definitions.RuleSelector"
                            })
                          | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, in addition to any rules excluded by [`per-file-ignores`](#lint_per-file-ignores)."
                          | optional,
                        extend-safe-fixes
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes for which unsafe fixes should be considered safe."
                          | optional,
                        extend-select
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes to enable, in addition to those specified by [`select`](#lint_select)."
                          | optional,
                        extend-unfixable
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes to consider non-auto-fixable, in addition to those specified by [`unfixable`](#lint_unfixable)."
                          | optional,
                        extend-unsafe-fixes
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes for which safe fixes should be considered unsafe."
                          | optional,
                        external
                          | js2n.Nullable (Array String)
                          | doc "A list of rule codes or prefixes that are unsupported by Ruff, but should be preserved when (e.g.) validating `# noqa` directives. Useful for retaining `# noqa` directives that cover plugins not yet implemented by Ruff."
                          | optional,
                        fix
                          | js2n.Nullable Bool
                          | doc "Enable fix behavior by-default when running `ruff` (overridden by the `--fix` and `--no-fix` command-line flags). Only includes automatic fixes unless `--unsafe-fixes` is provided."
                          | optional,
                        fix-only
                          | js2n.Nullable Bool
                          | doc "Like [`fix`](#fix), but disables reporting on leftover violation. Implies [`fix`](#fix)."
                          | optional,
                        fixable
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes to consider fixable. By default, all rules are considered fixable."
                          | optional,
                        flake8-annotations
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8AnnotationsOptions"
                          | doc "Options for the `flake8-annotations` plugin."
                          | optional,
                        flake8-bandit
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8BanditOptions"
                          | doc "Options for the `flake8-bandit` plugin."
                          | optional,
                        flake8-boolean-trap
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8BooleanTrapOptions"
                          | doc "Options for the `flake8-boolean-trap` plugin."
                          | optional,
                        flake8-bugbear
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8BugbearOptions"
                          | doc "Options for the `flake8-bugbear` plugin."
                          | optional,
                        flake8-builtins
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8BuiltinsOptions"
                          | doc "Options for the `flake8-builtins` plugin."
                          | optional,
                        flake8-comprehensions
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8ComprehensionsOptions"
                          | doc "Options for the `flake8-comprehensions` plugin."
                          | optional,
                        flake8-copyright
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8CopyrightOptions"
                          | doc "Options for the `flake8-copyright` plugin."
                          | optional,
                        flake8-errmsg
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8ErrMsgOptions"
                          | doc "Options for the `flake8-errmsg` plugin."
                          | optional,
                        flake8-gettext
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8GetTextOptions"
                          | doc "Options for the `flake8-gettext` plugin."
                          | optional,
                        flake8-implicit-str-concat
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8ImplicitStrConcatOptions"
                          | doc "Options for the `flake8-implicit-str-concat` plugin."
                          | optional,
                        flake8-import-conventions
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8ImportConventionsOptions"
                          | doc "Options for the `flake8-import-conventions` plugin."
                          | optional,
                        flake8-pytest-style
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8PytestStyleOptions"
                          | doc "Options for the `flake8-pytest-style` plugin."
                          | optional,
                        flake8-quotes
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8QuotesOptions"
                          | doc "Options for the `flake8-quotes` plugin."
                          | optional,
                        flake8-self
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8SelfOptions"
                          | doc "Options for the `flake8_self` plugin."
                          | optional,
                        flake8-tidy-imports
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8TidyImportsOptions"
                          | doc "Options for the `flake8-tidy-imports` plugin."
                          | optional,
                        flake8-type-checking
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8TypeCheckingOptions"
                          | doc "Options for the `flake8-type-checking` plugin."
                          | optional,
                        flake8-unused-arguments
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Flake8UnusedArgumentsOptions"
                          | doc "Options for the `flake8-unused-arguments` plugin."
                          | optional,
                        force-exclude
                          | js2n.Nullable Bool
                          | doc m%"
                            Whether to enforce [`exclude`](#exclude) and [`extend-exclude`](#extend-exclude) patterns, even for paths that are passed to Ruff explicitly. Typically, Ruff will lint any paths passed in directly, even if they would typically be excluded. Setting `force-exclude = true` will cause Ruff to respect these exclusions unequivocally.
                            
                            This is useful for [`pre-commit`](https://pre-commit.com/), which explicitly passes all changed files to the [`ruff-pre-commit`](https://github.com/astral-sh/ruff-pre-commit) plugin, regardless of whether they're marked as excluded by Ruff's own settings.
                          "%
                          | optional,
                        format
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.FormatOptions"
                          | doc "Options to configure code formatting."
                          | optional,
                        ignore
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc m%"
                            A list of rule codes or prefixes to ignore. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
                            
                            When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
                          "%
                          | optional,
                        ignore-init-module-imports
                          | js2n.Nullable Bool
                          | doc m%"
                            Avoid automatically removing unused imports in `__init__.py` files. Such imports will still be flagged, but with a dedicated message suggesting that the import is either added to the module's `__all__` symbol, or re-exported with a redundant alias (e.g., `import os as os`).
                            
                            This option is enabled by default, but you can opt-in to removal of imports via an unsafe fix.
                          "%
                          | optional,
                        include
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of file patterns to include when linting.
                            
                            Inclusion are based on globs, and should be single-path patterns, like `*.pyw`, to include any file with the `.pyw` extension. `pyproject.toml` is included here not for configuration but because we lint whether e.g. the `[project]` matches the schema.
                            
                            Notebook files (`.ipynb` extension) are included by default on Ruff 0.6.0+.
                            
                            For more information on the glob syntax, refer to the [`globset` documentation](https://docs.rs/globset/latest/globset/#syntax).
                          "%
                          | optional,
                        indent-width
                          | js2n.Nullable
                            (std.contract.Sequence
                              [
                                refs."properties.tool.properties.ruff.definitions.IndentWidth",
                                Number
                              ])
                          | doc m%"
                            The number of spaces per indentation level (tab).
                            
                            Used by the formatter and when enforcing long-line violations (like `E501`) to determine the visual width of a tab.
                            
                            This option changes the number of spaces the formatter inserts when using soft-tabs (`indent-style = space`).
                            
                            PEP 8 recommends using 4 spaces per [indentation level](https://peps.python.org/pep-0008/#indentation).
                          "%
                          | optional,
                        isort
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.IsortOptions"
                          | doc "Options for the `isort` plugin."
                          | optional,
                        line-length
                          | js2n.Nullable
                            (std.contract.Sequence
                              [
                                refs."properties.tool.properties.ruff.definitions.LineLength",
                                Number
                              ])
                          | doc m%"
                            The line length to use when enforcing long-lines violations (like `E501`) and at which `isort` and the formatter prefers to wrap lines.
                            
                            The length is determined by the number of characters per line, except for lines containing East Asian characters or emojis. For these lines, the [unicode width](https://unicode.org/reports/tr11/) of each character is added up to determine the length.
                            
                            The value must be greater than `0` and less than or equal to `320`.
                            
                            Note: While the formatter will attempt to format lines such that they remain within the `line-length`, it isn't a hard upper bound, and formatted lines may exceed the `line-length`.
                            
                            See [`pycodestyle.max-line-length`](#lint_pycodestyle_max-line-length) to configure different lengths for `E501` and the formatter.
                          "%
                          | optional,
                        lint
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.LintOptions"
                          | optional,
                        logger-objects
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of objects that should be treated equivalently to a `logging.Logger` object.
                            
                            This is useful for ensuring proper diagnostics (e.g., to identify `logging` deprecations and other best-practices) for projects that re-export a `logging.Logger` object from a common module.
                            
                            For example, if you have a module `logging_setup.py` with the following contents: ```python import logging
                            
                            logger = logging.getLogger(__name__) ```
                            
                            Adding `"logging_setup.logger"` to `logger-objects` will ensure that `logging_setup.logger` is treated as a `logging.Logger` object when imported from other modules (e.g., `from logging_setup import logger`).
                          "%
                          | optional,
                        mccabe
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.McCabeOptions"
                          | doc "Options for the `mccabe` plugin."
                          | optional,
                        namespace-packages
                          | js2n.Nullable (Array String)
                          | doc "Mark the specified directories as namespace packages. For the purpose of module resolution, Ruff will treat those directories and all their subdirectories as if they contained an `__init__.py` file."
                          | optional,
                        output-format
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.OutputFormat"
                          | doc "The style in which violation messages should be formatted: `\"full\"` (default) (shows source), `\"concise\"`, `\"grouped\"` (group messages by file), `\"json\"` (machine-readable), `\"junit\"` (machine-readable XML), `\"github\"` (GitHub Actions annotations), `\"gitlab\"` (GitLab CI code quality report), `\"pylint\"` (Pylint text format) or `\"azure\"` (Azure Pipeline logging commands)."
                          | optional,
                        pep8-naming
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.Pep8NamingOptions"
                          | doc "Options for the `pep8-naming` plugin."
                          | optional,
                        per-file-ignores
                          | js2n.Nullable
                            ({
                              _ | Array
                                refs."properties.tool.properties.ruff.definitions.RuleSelector"
                            })
                          | doc "A list of mappings from file pattern to rule codes or prefixes to exclude, when considering any matching files. An initial '!' negates the file pattern."
                          | optional,
                        per-file-target-version
                          | js2n.Nullable
                            ({
                              _ | refs."properties.tool.properties.ruff.definitions.PythonVersion"
                            })
                          | doc m%"
                            A list of mappings from glob-style file pattern to Python version to use when checking the corresponding file(s).
                            
                            This may be useful for overriding the global Python version settings in `target-version` or `requires-python` for a subset of files. For example, if you have a project with a minimum supported Python version of 3.9 but a subdirectory of developer scripts that want to use a newer feature like the `match` statement from Python 3.10, you can use `per-file-target-version` to specify `"developer_scripts/*.py" = "py310"`.
                            
                            This setting is used by the linter to enforce any enabled version-specific lint rules, as well as by the formatter for any version-specific formatting options, such as parenthesizing context managers on Python 3.10+.
                          "%
                          | optional,
                        preview
                          | js2n.Nullable Bool
                          | doc "Whether to enable preview mode. When preview mode is enabled, Ruff will use unstable rules, fixes, and formatting."
                          | optional,
                        pycodestyle
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.PycodestyleOptions"
                          | doc "Options for the `pycodestyle` plugin."
                          | optional,
                        pydocstyle
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.PydocstyleOptions"
                          | doc "Options for the `pydocstyle` plugin."
                          | optional,
                        pyflakes
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.PyflakesOptions"
                          | doc "Options for the `pyflakes` plugin."
                          | optional,
                        pylint
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.PylintOptions"
                          | doc "Options for the `pylint` plugin."
                          | optional,
                        pyupgrade
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.PyUpgradeOptions"
                          | doc "Options for the `pyupgrade` plugin."
                          | optional,
                        required-version
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.RequiredVersion"
                          | doc m%"
                            Enforce a requirement on the version of Ruff, to enforce at runtime. If the version of Ruff does not meet the requirement, Ruff will exit with an error.
                            
                            Useful for unifying results across many environments, e.g., with a `pyproject.toml` file.
                            
                            Accepts a [PEP 440](https://peps.python.org/pep-0440/) specifier, like `==0.3.1` or `>=0.3.1`.
                          "%
                          | optional,
                        respect-gitignore
                          | js2n.Nullable Bool
                          | doc "Whether to automatically exclude files that are ignored by `.ignore`, `.gitignore`, `.git/info/exclude`, and global `gitignore` files. Enabled by default."
                          | optional,
                        select
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc m%"
                            A list of rule codes or prefixes to enable. Prefixes can specify exact rules (like `F841`), entire categories (like `F`), or anything in between.
                            
                            When breaking ties between enabled and disabled rules (via `select` and `ignore`, respectively), more specific prefixes override less specific prefixes. `ignore` takes precedence over `select` if the same prefix appears in both.
                          "%
                          | optional,
                        show-fixes
                          | js2n.Nullable Bool
                          | doc "Whether to show an enumeration of all fixed lint violations (overridden by the `--show-fixes` command-line flag)."
                          | optional,
                        src
                          | js2n.Nullable (Array String)
                          | doc m%"
                            The directories to consider when resolving first- vs. third-party imports.
                            
                            When omitted, the `src` directory will typically default to including both:
                            
                            1. The directory containing the nearest `pyproject.toml`, `ruff.toml`, or `.ruff.toml` file (the "project root"). 2. The `"src"` subdirectory of the project root.
                            
                            These defaults ensure that Ruff supports both flat layouts and `src` layouts out-of-the-box. (If a configuration file is explicitly provided (e.g., via the `--config` command-line flag), the current working directory will be considered the project root.)
                            
                            As an example, consider an alternative project structure, like:
                            
                            ```text my_project ├── pyproject.toml └── lib └── my_package ├── __init__.py ├── foo.py └── bar.py ```
                            
                            In this case, the `./lib` directory should be included in the `src` option (e.g., `src = ["lib"]`), such that when resolving imports, `my_package.foo` is considered first-party.
                            
                            This field supports globs. For example, if you have a series of Python packages in a `python_modules` directory, `src = ["python_modules/*"]` would expand to incorporate all packages in that directory. User home directory and environment variables will also be expanded.
                          "%
                          | optional,
                        target-version
                          | js2n.Nullable
                            refs."properties.tool.properties.ruff.definitions.PythonVersion"
                          | doc m%"
                            The minimum Python version to target, e.g., when considering automatic code upgrades, like rewriting type annotations. Ruff will not propose changes using features that are not available in the given version.
                            
                            For example, to represent supporting Python >=3.10 or ==3.10 specify `target-version = "py310"`.
                            
                            If you're already using a `pyproject.toml` file, we recommend `project.requires-python` instead, as it's based on Python packaging standards, and will be respected by other tools. For example, Ruff treats the following as identical to `target-version = "py38"`:
                            
                            ```toml [project] requires-python = ">=3.8" ```
                            
                            If both are specified, `target-version` takes precedence over `requires-python`. See [_Inferring the Python version_](https://docs.astral.sh/ruff/configuration/#inferring-the-python-version) for a complete description of how the `target-version` is determined when left unspecified.
                            
                            Note that a stub file can [sometimes make use of a typing feature](https://typing.python.org/en/latest/spec/distributing.html#syntax) before it is available at runtime, as long as the stub does not make use of new *syntax*. For example, a type checker will understand `int | str` in a stub as being a `Union` type annotation, even if the type checker is run using Python 3.9, despite the fact that the `|` operator can only be used to create union types at runtime on Python 3.10+. As such, Ruff will often recommend newer features in a stub file than it would for an equivalent runtime file with the same target version.
                          "%
                          | optional,
                        task-tags
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of task tags to recognize (e.g., "TODO", "FIXME", "XXX").
                            
                            Comments starting with these tags will be ignored by commented-out code detection (`ERA`), and skipped by line-length rules (`E501`) if [`ignore-overlong-task-comments`](#lint_pycodestyle_ignore-overlong-task-comments) is set to `true`.
                          "%
                          | optional,
                        typing-modules
                          | js2n.Nullable (Array String)
                          | doc m%"
                            A list of modules whose exports should be treated equivalently to members of the `typing` module.
                            
                            This is useful for ensuring proper type annotation inference for projects that re-export `typing` and `typing_extensions` members from a compatibility module. If omitted, any members imported from modules apart from `typing` and `typing_extensions` will be treated as ordinary Python objects.
                          "%
                          | optional,
                        unfixable
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.ruff.definitions.RuleSelector")
                          | doc "A list of rule codes or prefixes to consider non-fixable."
                          | optional,
                        unsafe-fixes
                          | js2n.Nullable Bool
                          | doc "Enable application of unsafe fixes. If excluded, a hint will be displayed when unsafe fixes are available. If set to false, the hint will be hidden."
                          | optional,
                      },
                  scikit-build =
                    {
                        backport
                          | {
                            find-python
                              | String
                              | doc "If CMake is less than this value, backport a copy of FindPython. Set to 0 disable this, or the empty string."
                              | optional,
                          }
                          | optional,
                        build
                          | {
                            targets
                              | Array String
                              | doc "The build targets to use when building the project. Empty builds the default target."
                              | optional,
                            tool-args
                              | Array String
                              | doc "Extra args to pass directly to the builder in the build step."
                              | optional,
                            verbose
                              | Bool
                              | doc "Verbose printout when building."
                              | optional,
                          }
                          | optional,
                        build-dir
                          | String
                          | doc "The build directory. Defaults to a temporary directory, but can be set."
                          | optional,
                        cmake
                          | {
                            args
                              | Array String
                              | doc "A list of args to pass to CMake when configuring the project. Setting this in config or envvar will override toml. See also ``cmake.define``."
                              | optional,
                            build-type
                              | String
                              | doc "The build type to use when building the project. Valid options are: \"Debug\", \"Release\", \"RelWithDebInfo\", \"MinSizeRel\", \"\", etc."
                              | optional,
                            define
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns =
                                    {
                                        ".+" =
                                          js2n.OneOf
                                              [
                                                std.contract.any_of
                                                  [ Bool, String ],
                                                js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          "default" =
                                                            std.contract.any_of
                                                                [
                                                                  Bool,
                                                                  String
                                                                ],
                                                          env =
                                                            js2n.string.MinLength
                                                                1,
                                                        },
                                                    required = { env = true, },
                                                  }
                                              ],
                                      },
                                  properties = {},
                                  required = {},
                                }
                              | doc "A table of defines to pass to CMake when configuring the project. Additive."
                              | optional,
                            minimum-version
                              | String
                              | doc "DEPRECATED in 0.8; use version instead."
                              | optional,
                            source-dir
                              | String
                              | doc "The source directory to use when building the project. Currently only affects the native builder (not the setuptools plugin)."
                              | optional,
                            targets
                              | Array String
                              | doc "DEPRECATED in 0.10; use build.targets instead."
                              | optional,
                            verbose
                              | Bool
                              | doc "DEPRECATED in 0.10, use build.verbose instead."
                              | optional,
                            version
                              | String
                              | doc "The versions of CMake to allow. If CMake is not present on the system or does not pass this specifier, it will be downloaded via PyPI if possible. An empty string will disable this check. The default on 0.10+ is \"CMakeLists.txt\", which will read it from the project's CMakeLists.txt file, or \">=3.15\" if unreadable or <0.10."
                              | optional,
                          }
                          | optional,
                        editable
                          | {
                            mode
                              | std.enum.TagOrString
                              | [| 'inplace, 'redirect |]
                              | doc "Select the editable mode to use. Can be \"redirect\" (default) or \"inplace\"."
                              | optional,
                            rebuild
                              | Bool
                              | doc "Rebuild the project when the package is imported. The build-directory must be set."
                              | optional,
                            verbose
                              | Bool
                              | doc "Turn on verbose output for the editable mode rebuilds."
                              | optional,
                          }
                          | optional,
                        experimental
                          | Bool
                          | doc "Enable early previews of features not finalized yet."
                          | optional,
                        fail
                          | Bool
                          | doc "Immediately fail the build. This is only useful in overrides."
                          | optional,
                        generate
                          | Array (
                            js2n.OneOf
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          location =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [|
                                                    'source,
                                                    'build,
                                                    'install
                                                  |]
                                                ],
                                          path = js2n.string.MinLength 1,
                                          template = js2n.string.MinLength 1,
                                        },
                                    required =
                                      { path = true, template = true, },
                                  },
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          location =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [|
                                                    'source,
                                                    'build,
                                                    'install
                                                  |]
                                                ],
                                          path = js2n.string.MinLength 1,
                                          template-path =
                                            js2n.string.MinLength 1,
                                        },
                                    required =
                                      { path = true, template-path = true, },
                                  }
                              ]
                          )
                          | optional,
                        install
                          | {
                            components
                              | Array String
                              | doc "The components to install. If empty, all default components are installed."
                              | optional,
                            strip
                              | Bool
                              | doc "Whether to strip the binaries. True for scikit-build-core 0.5+."
                              | optional,
                          }
                          | optional,
                        logging
                          | {
                            level
                              | std.enum.TagOrString
                              | [|
                                'CRITICAL,
                                'ERROR,
                                'WARNING,
                                'INFO,
                                'DEBUG,
                                'NOTSET
                              |]
                              | doc "The logging level to display, \"DEBUG\", \"INFO\", \"WARNING\", and \"ERROR\" are possible options."
                              | optional,
                          }
                          | optional,
                        messages
                          | {
                            after-failure
                              | String
                              | doc "A message to print after a build failure."
                              | optional,
                            after-success
                              | String
                              | doc "A message to print after a successful build."
                              | optional,
                          }
                          | optional,
                        metadata
                          | {
                            authors
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            classifiers
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            dependencies
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            description
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            entrypoints
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            gui-scripts
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            keywords
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            license
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            maintainers
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            optional-dependencies
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            readme
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            requires-python
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            scripts
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            urls
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            version
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                          }
                          | doc "List dynamic metadata fields and hook locations in this table."
                          | optional,
                        minimum-version
                          | String
                          | doc "If set, this will provide a method for backward compatibility."
                          | optional,
                        ninja
                          | {
                            make-fallback
                              | Bool
                              | doc "If Ninja is not present on the system or is older than required, it will be downloaded via PyPI if this is false."
                              | optional,
                            minimum-version
                              | String
                              | doc "DEPRECATED in 0.8; use version instead."
                              | optional,
                            version
                              | String
                              | doc "The versions of Ninja to allow. If Ninja is not present on the system or does not pass this specifier, it will be downloaded via PyPI if possible. An empty string will disable this check."
                              | optional,
                          }
                          | optional,
                        overrides
                          | Array (
                            std.contract.Sequence
                              [
                                js2n.record.MinProperties 2,
                                {
                                  backport
                                    | refs."properties.tool.properties.scikit-build.properties.backport"
                                    | optional,
                                  build
                                    | refs."properties.tool.properties.scikit-build.properties.build"
                                    | optional,
                                  build-dir
                                    | refs."properties.tool.properties.scikit-build.properties.build-dir"
                                    | optional,
                                  cmake
                                    | refs."properties.tool.properties.scikit-build.properties.cmake"
                                    | optional,
                                  editable
                                    | refs."properties.tool.properties.scikit-build.properties.editable"
                                    | optional,
                                  experimental
                                    | refs."properties.tool.properties.scikit-build.properties.experimental"
                                    | optional,
                                  fail
                                    | refs."properties.tool.properties.scikit-build.properties.fail"
                                    | optional,
                                  generate
                                    | refs."properties.tool.properties.scikit-build.properties.generate"
                                    | optional,
                                  "if"
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String,
                                        js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = {},
                                            properties =
                                              {
                                                  any =
                                                    std.contract.any_of
                                                        [
                                                          js2n.Null,
                                                          Bool,
                                                          { _ | Dyn },
                                                          Array Dyn,
                                                          Number,
                                                          String
                                                        ],
                                                },
                                            required = { any = true, },
                                          }
                                      ],
                                  inherit
                                    | {
                                      build
                                        | {
                                          targets
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                          tool-args
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                        }
                                        | optional,
                                      cmake
                                        | {
                                          args
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                          define
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                          targets
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                        }
                                        | optional,
                                      install
                                        | {
                                          components
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                        }
                                        | optional,
                                      sdist
                                        | {
                                          exclude
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                          include
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                        }
                                        | optional,
                                      wheel
                                        | {
                                          exclude
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                          license-files
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                          packages
                                            | std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                { _ | Dyn },
                                                Array Dyn,
                                                Number,
                                                String
                                              ]
                                            | optional,
                                        }
                                        | optional,
                                    }
                                    | optional,
                                  install
                                    | refs."properties.tool.properties.scikit-build.properties.install"
                                    | optional,
                                  logging
                                    | refs."properties.tool.properties.scikit-build.properties.logging"
                                    | optional,
                                  messages
                                    | refs."properties.tool.properties.scikit-build.properties.messages"
                                    | optional,
                                  metadata
                                    | refs."properties.tool.properties.scikit-build.properties.metadata"
                                    | optional,
                                  minimum-version
                                    | refs."properties.tool.properties.scikit-build.properties.minimum-version"
                                    | optional,
                                  ninja
                                    | refs."properties.tool.properties.scikit-build.properties.ninja"
                                    | optional,
                                  sdist
                                    | refs."properties.tool.properties.scikit-build.properties.sdist"
                                    | optional,
                                  strict-config
                                    | refs."properties.tool.properties.scikit-build.properties.strict-config"
                                    | optional,
                                  wheel
                                    | refs."properties.tool.properties.scikit-build.properties.wheel"
                                    | optional,
                                }
                              ]
                          )
                          | doc "A list of overrides to apply to the settings, based on the `if` selector."
                          | optional,
                        sdist
                          | {
                            cmake
                              | Bool
                              | doc "If set to True, CMake will be run before building the SDist."
                              | optional,
                            exclude
                              | Array String
                              | doc "Files to exclude from the SDist even if they are included by default. Supports gitignore syntax."
                              | optional,
                            include
                              | Array String
                              | doc "Files to include in the SDist even if they are skipped by default. Supports gitignore syntax."
                              | optional,
                            reproducible
                              | Bool
                              | doc "If set to True, try to build a reproducible distribution (Unix and Python 3.9+ recommended).  ``SOURCE_DATE_EPOCH`` will be used for timestamps, or a fixed value if not set."
                              | optional,
                          }
                          | optional,
                        strict-config
                          | Bool
                          | doc "Strictly check all config options. If False, warnings will be printed for unknown options. If True, an error will be raised."
                          | optional,
                        wheel
                          | {
                            build-tag
                              | String
                              | doc "The build tag to use for the wheel. If empty, no build tag is used."
                              | optional,
                            cmake
                              | Bool
                              | doc "If set to True (the default), CMake will be run before building the wheel."
                              | optional,
                            exclude
                              | Array String
                              | doc "A set of patterns to exclude from the wheel. This is additive to the SDist exclude patterns. This applies to the final paths in the wheel, and can exclude files from CMake output as well.  Editable installs may not respect this exclusion."
                              | optional,
                            expand-macos-universal-tags
                              | Bool
                              | doc "Fill out extra tags that are not required. This adds \"x86_64\" and \"arm64\" to the list of platforms when \"universal2\" is used, which helps older Pip's (before 21.0.1) find the correct wheel."
                              | optional,
                            install-dir
                              | String
                              | doc "The install directory for the wheel. This is relative to the platlib root. You might set this to the package name. The original dir is still at SKBUILD_PLATLIB_DIR (also SKBUILD_DATA_DIR, etc. are available). EXPERIMENTAL: An absolute path will be one level higher than the platlib root, giving access to \"/platlib\", \"/data\", \"/headers\", and \"/scripts\"."
                              | optional,
                            license-files
                              | Array String
                              | doc "A list of license files to include in the wheel. Supports glob patterns."
                              | optional,
                            packages
                              | std.contract.any_of
                                [
                                  Array String,
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = { ".+" = String, },
                                      properties = {},
                                      required = {},
                                    }
                                ]
                              | doc "A list of packages to auto-copy into the wheel. If this is not set, it will default to the first of ``src/<package>``, ``python/<package>``, or ``<package>`` if they exist.  The prefix(s) will be stripped from the package name inside the wheel. If a dict, provides a mapping of package name to source directory."
                              | optional,
                            platlib
                              | Bool
                              | doc "Target the platlib or the purelib. If not set, the default is to target the platlib if wheel.cmake is true, and the purelib otherwise."
                              | optional,
                            py-api
                              | String
                              | doc "The Python tags. The default (empty string) will use the default Python version. You can also set this to \"cp37\" to enable the CPython 3.7+ Stable ABI / Limited API (only on CPython and if the version is sufficient, otherwise this has no effect). Or you can set it to \"py3\" or \"py2.py3\" to ignore Python ABI compatibility. The ABI tag is inferred from this tag."
                              | optional,
                          }
                          | optional,
                      },
                  setuptools =
                    {
                        cmdclass
                          | js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = { "^.*$" = String, },
                              properties = {},
                              required = {},
                            }
                          | doc m%"
                            Mapping of distutils-style command names to ``setuptools.Command`` subclasses which in turn should be represented by strings with a qualified class name (i.e., "dotted" form with module), e.g.::
                            
                                 cmdclass = {mycmd = "pkg.subpkg.module.CommandClass"}
                            
                             The command class should be a directly defined at the top-level of the containing module (no class nesting).
                          "%
                          | optional,
                        data-files
                          | js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = { "^.*$" = Array String, },
                              properties = {},
                              required = {},
                            }
                          | doc "``dict``-like structure where each key represents a directory and the value is a list of glob patterns that should be installed in them. **DISCOURAGED**: please notice this might not work as expected with wheels. Whenever possible, consider using data files inside the package directories (or create a new namespace package that only contains data files). See `data files support <https://setuptools.pypa.io/en/latest/userguide/datafiles.html>`_."
                          | optional,
                        dynamic
                          | {
                            classifiers
                              | refs."properties.tool.properties.setuptools.definitions.file-directive"
                              | optional,
                            dependencies
                              | refs."properties.tool.properties.setuptools.definitions.file-directive-for-dependencies"
                              | { _ | Dyn }
                              | optional,
                            description
                              | refs."properties.tool.properties.setuptools.definitions.file-directive"
                              | optional,
                            entry-points
                              | refs."properties.tool.properties.setuptools.definitions.file-directive"
                              | optional,
                            optional-dependencies
                              | js2n.record.PropertyNames String
                              | {
                                _ | std.contract.Sequence
                                  [
                                    refs."properties.tool.properties.setuptools.definitions.file-directive-for-dependencies",
                                    { _ | Dyn }
                                  ]
                              }
                              | js2n.record.FieldsMatch ".+"
                              | optional,
                            readme
                              | std.contract.any_of
                                [
                                  refs."properties.tool.properties.setuptools.definitions.file-directive",
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            content-type = String,
                                            file =
                                              refs."properties.tool.properties.setuptools.definitions.file-directive.properties.file",
                                          },
                                      required = {},
                                    }
                                ]
                              | js2n.record.Required [ "file" ]
                              | optional,
                            version
                              | js2n.OneOf
                                [
                                  refs."properties.tool.properties.setuptools.definitions.attr-directive",
                                  refs."properties.tool.properties.setuptools.definitions.file-directive"
                                ]
                              | doc "A version dynamically loaded via either the ``attr:`` or ``file:`` directives. Please make sure the given file or attribute respects :pep:`440`. Also ensure to set ``project.dynamic`` accordingly."
                              | optional,
                          }
                          | doc "Instructions for loading :pep:`621`-related metadata dynamically"
                          | optional,
                        eager-resources
                          | Array String
                          | doc "Resources that should be extracted together, if any of them is needed, or if any C extensions included in the project are imported. **OBSOLETE**: only relevant for ``pkg_resources``, ``easy_install`` and ``setup.py install`` in the context of ``eggs`` (**DEPRECATED**)."
                          | optional,
                        exclude-package-data
                          | js2n.record.PropertyNames
                            (std.contract.any_of [ String, js2n.Const "*" ])
                          | { _ | Array String }
                          | js2n.record.FieldsMatch "^.*$"
                          | doc "Mapping from package names to lists of glob patterns that should be excluded For more information on how to include data files, check ``setuptools`` `docs <https://setuptools.pypa.io/en/latest/userguide/datafiles.html>`_."
                          | optional,
                        include-package-data
                          | Bool
                          | doc "Automatically include any data files inside the package directories that are specified by ``MANIFEST.in`` For more information on how to include data files, check ``setuptools`` `docs <https://setuptools.pypa.io/en/latest/userguide/datafiles.html>`_."
                          | optional,
                        license-files
                          | Array String
                          | doc "**PROVISIONAL**: list of glob patterns for all license files being distributed. (likely to become standard with :pep:`639`). By default: ``['LICEN[CS]E*', 'COPYING*', 'NOTICE*', 'AUTHORS*']``"
                          | optional,
                        namespace-packages
                          | Array String
                          | doc "**DEPRECATED**: use implicit namespaces instead (:pep:`420`)."
                          | optional,
                        obsoletes
                          | Array String
                          | doc "Packages which this package renders obsolete **(not supported by pip)**"
                          | optional,
                        package-data
                          | js2n.record.PropertyNames
                            (std.contract.any_of [ String, js2n.Const "*" ])
                          | { _ | Array String }
                          | js2n.record.FieldsMatch "^.*$"
                          | doc "Mapping from package names to lists of glob patterns. Usually this option is not needed when using ``include-package-data = true`` For more information on how to include data files, check ``setuptools`` `docs <https://setuptools.pypa.io/en/latest/userguide/datafiles.html>`_."
                          | optional,
                        package-dir
                          | js2n.record.PropertyNames
                            (std.contract.any_of
                              [
                                js2n.Const "",
                                refs."properties.tool.properties.setuptools.definitions.package-name"
                              ])
                          | { _ | String }
                          | js2n.record.FieldsMatch "^.*$"
                          | doc ":class:`dict`-like structure mapping from package names to directories where their code can be found. The empty string (as key) means that all packages are contained inside the given directory will be included in the distribution."
                          | optional,
                        packages
                          | std.contract.any_of
                            [
                              Array
                                refs."properties.tool.properties.setuptools.definitions.package-name",
                              refs."properties.tool.properties.setuptools.definitions.find-directive"
                            ]
                          | doc "Packages that should be included in the distribution. It can be given either as a list of package identifiers or as a ``dict``-like structure with a single key ``find`` which corresponds to a dynamic call to ``setuptools.config.expand.find_packages`` function. The ``find`` key is associated with a nested ``dict``-like structure that can contain ``where``, ``include``, ``exclude`` and ``namespaces`` keys, mimicking the keyword arguments of the associated function."
                          | optional,
                        platforms | Array String | optional,
                        provides
                          | Array String
                          | doc "Package and virtual package names contained within this package **(not supported by pip)**"
                          | optional,
                        py-modules
                          | Array String
                          | doc "Modules that setuptools will manipulate"
                          | optional,
                        script-files
                          | Array String
                          | doc "Legacy way of defining scripts (entry-points are preferred). Equivalent to the ``script`` keyword in ``setup.py`` (it was renamed to avoid confusion with entry-point based ``project.scripts`` defined in :pep:`621`). **DISCOURAGED**: generic script wrappers are tricky and may not work properly. Whenever possible, please use ``project.scripts`` instead."
                          | optional,
                        zip-safe
                          | Bool
                          | doc "Whether the project can be safely installed and run from a zip file. **OBSOLETE**: only relevant for ``pkg_resources``, ``easy_install`` and ``setup.py install`` in the context of ``eggs`` (**DEPRECATED**)."
                          | optional,
                      },
                  setuptools_scm =
                    {
                        fallback_version
                          | String
                          | doc "A version string that will be used if no other method for detecting the version worked (e.g., when using a tarball with no metadata). If this is unset (the default), `setuptools-scm` will error if it fails to detect the version."
                          | optional,
                        git_describe_command
                          | Array String
                          | doc "This command will be used instead the default `git describe --long` command."
                          | optional,
                        local_scheme
                          | String
                          | doc "An entrypoint name; configures how the local component of the version is constructed."
                          | optional,
                        normalize
                          | Bool
                          | doc "A boolean flag indicating if the version string should be normalized."
                          | optional,
                        parentdir_prefix_version
                          | String
                          | doc m%"
                            If the normal methods for detecting the version (SCM version, sdist metadata) fail, and the parent directory name starts with `parentdir_prefix_version`, then this prefix is stripped and the rest of the parent directory name is matched with `tag_regex` to get a version string.  If this parameter is unset (the default), then this fallback is not used.
                            
                            This was intended to cover GitHub's "release tarballs", which extract into directories named `projectname-tag/` (in which case `parentdir_prefix_version` can be set e.g. to `projectname-`).
                          "%
                          | optional,
                        relative_to
                          | String
                          | doc "A file/directory from which the root can be resolved. Typically called by a script or module that is not in the root of the repository to point `setuptools_scm` at the root of the repository by supplying `__file__`."
                          | optional,
                        root
                          | String
                          | doc "Relative path to the SCM root, defaults to `.` and is relative to the file path passed in `relative_to`."
                          | optional,
                        tag_regex
                          | String
                          | doc "A Python regex string to extract the version part from any SCM tag. The regex needs to contain either a single match group, or a group named `version`, that captures the actual version information."
                          | optional,
                        version_cls
                          | String
                          | doc "Qualified name of an optional class used to parse, verify and possibly normalize the version string. Its constructor should receive a single string argument, and its `str` should return the normalized version string to use."
                          | optional,
                        version_file
                          | String
                          | doc "A path to a file that gets replaced with a file containing the current version. It is ideal for creating a `_version.py` file within the package, typically used to avoid using `pkg_resources.get_distribution` (which adds some overhead). Only files with `.py` and `.txt` extensions have builtin templates, for other file types it is necessary to provide version_file_template."
                          | optional,
                        version_file_template
                          | String
                          | doc "A new-style format string taking `version`, `scm_version` and `version_tuple` as parameters. `version` is the generated next_version as string, `version_tuple` is a tuple of split numbers/strings and `scm_version` is the `ScmVersion` instance the current `version` was rendered from."
                          | optional,
                        version_scheme
                          | String
                          | doc "An entrypoint name; configures how the local version number is constructed."
                          | optional,
                        write_to
                          | String
                          | doc "Create a version file relative to the scm root; deprecated in favor of use `version_file` instead."
                          | optional,
                      },
                  taskipy =
                    {
                        settings
                          | refs."properties.tool.properties.taskipy.definitions.Settings"
                          | optional,
                        tasks
                          | {
                            _ | refs."properties.tool.properties.taskipy.definitions.Task"
                          }
                          | js2n.record.FieldsMatch "^.+$"
                          | doc "task definitions"
                          | optional,
                        variables
                          | {
                            _ | std.contract.any_of
                              [
                                refs."properties.tool.properties.taskipy.definitions.VariableValue",
                                refs."properties.tool.properties.taskipy.definitions.Variable"
                              ]
                          }
                          | js2n.record.FieldsMatch "^[0-9a-zA-Z]+$"
                          | doc "variables used in your tasks"
                          | optional,
                      },
                  tombi =
                    {
                        exclude
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ js2n.array.MinItems 1, Array String ])
                          | doc m%"
                            The file match pattern to exclude from formatting and linting.
                             Supports glob pattern.
                          "%
                          | optional,
                        format
                          | js2n.Nullable
                            refs."properties.tool.properties.tombi.definitions.FormatOptions"
                          | optional,
                        include
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ js2n.array.MinItems 1, Array String ])
                          | doc m%"
                            The file match pattern to include in formatting and linting.
                             Supports glob pattern.
                          "%
                          | optional,
                        lint
                          | js2n.Nullable
                            refs."properties.tool.properties.tombi.definitions.LintOptions"
                          | optional,
                        lsp
                          | js2n.Nullable
                            refs."properties.tool.properties.tombi.definitions.LspOptions"
                          | optional,
                        schema
                          | js2n.Nullable
                            refs."properties.tool.properties.tombi.definitions.SchemaOptions"
                          | optional,
                        schemas
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.tombi.definitions.Schema")
                          | optional,
                        server
                          | js2n.Nullable
                            refs."properties.tool.properties.tombi.definitions.LspOptions"
                          | optional,
                        toml-version
                          | js2n.Nullable
                            refs."properties.tool.properties.tombi.definitions.TomlVersion"
                          | doc "TOML version to use if not specified in the schema."
                          | optional,
                      },
                  tox =
                    {
                        legacy_tox_ini
                          | String
                          | doc "This is equivalent to tox.ini format, with the difference that the text is stored instead inside the pyproject.toml file under the tool.tox table and legacy_tox_ini key."
                          | optional,
                        ..
                      },
                  ty =
                    {
                        environment
                          | js2n.Nullable
                            refs."properties.tool.properties.ty.definitions.EnvironmentOptions"
                          | doc "Configures the type checking environment."
                          | optional,
                        rules
                          | js2n.Nullable
                            refs."properties.tool.properties.ty.definitions.Rules"
                          | doc m%"
                            Configures the enabled rules and their severity.
                            
                            See [the rules documentation](https://ty.dev/rules) for a list of all available rules.
                            
                            Valid severities are:
                            
                            * `ignore`: Disable the rule. * `warn`: Enable the rule and create a warning diagnostic. * `error`: Enable the rule and create an error diagnostic. ty will exit with a non-zero code if any error diagnostics are emitted.
                          "%
                          | optional,
                        src
                          | js2n.Nullable
                            refs."properties.tool.properties.ty.definitions.SrcOptions"
                          | optional,
                        terminal
                          | js2n.Nullable
                            refs."properties.tool.properties.ty.definitions.TerminalOptions"
                          | optional,
                      },
                  uv =
                    {
                        allow-insecure-host
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.TrustedHost")
                          | doc m%"
                            Allow insecure connections to host.
                            
                            Expects to receive either a hostname (e.g., `localhost`), a host-port pair (e.g., `localhost:8080`), or a URL (e.g., `https://localhost`).
                            
                            WARNING: Hosts included in this list will not be verified against the system's certificate store. Only use `--allow-insecure-host` in a secure network with verified sources, as it bypasses SSL verification and could expose you to MITM attacks.
                          "%
                          | optional,
                        cache-dir
                          | js2n.Nullable String
                          | doc m%"
                            Path to the cache directory.
                            
                            Defaults to `$HOME/Library/Caches/uv` on macOS, `$XDG_CACHE_HOME/uv` or `$HOME/.cache/uv` on Linux, and `%LOCALAPPDATA%\uv\cache` on Windows.
                          "%
                          | optional,
                        cache-keys
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.CacheKey")
                          | doc m%"
                            The keys to consider when caching builds for the project.
                            
                            Cache keys enable you to specify the files or directories that should trigger a rebuild when modified. By default, uv will rebuild a project whenever the `pyproject.toml`, `setup.py`, or `setup.cfg` files in the project directory are modified, i.e.:
                            
                            ```toml cache-keys = [{ file = "pyproject.toml" }, { file = "setup.py" }, { file = "setup.cfg" }] ```
                            
                            As an example: if a project uses dynamic metadata to read its dependencies from a `requirements.txt` file, you can specify `cache-keys = [{ file = "requirements.txt" }, { file = "pyproject.toml" }]` to ensure that the project is rebuilt whenever the `requirements.txt` file is modified (in addition to watching the `pyproject.toml`).
                            
                            Globs are supported, following the syntax of the [`glob`](https://docs.rs/glob/0.3.1/glob/struct.Pattern.html) crate. For example, to invalidate the cache whenever a `.toml` file in the project directory or any of its subdirectories is modified, you can specify `cache-keys = [{ file = "**/*.toml" }]`. Note that the use of globs can be expensive, as uv may need to walk the filesystem to determine whether any files have changed.
                            
                            Cache keys can also include version control information. For example, if a project uses `setuptools_scm` to read its version from a Git commit, you can specify `cache-keys = [{ git = { commit = true }, { file = "pyproject.toml" }]` to include the current Git commit hash in the cache key (in addition to the `pyproject.toml`). Git tags are also supported via `cache-keys = [{ git = { commit = true, tags = true } }]`.
                            
                            Cache keys can also include environment variables. For example, if a project relies on `MACOSX_DEPLOYMENT_TARGET` or other environment variables to determine its behavior, you can specify `cache-keys = [{ env = "MACOSX_DEPLOYMENT_TARGET" }]` to invalidate the cache whenever the environment variable changes.
                            
                            Cache keys only affect the project defined by the `pyproject.toml` in which they're specified (as opposed to, e.g., affecting all members in a workspace), and all paths and globs are interpreted as relative to the project directory.
                          "%
                          | optional,
                        check-url
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.IndexUrl"
                          | doc m%"
                            Check an index URL for existing files to skip duplicate uploads.
                            
                            This option allows retrying publishing that failed after only some, but not all files have been uploaded, and handles error due to parallel uploads of the same file.
                            
                            Before uploading, the index is checked. If the exact same file already exists in the index, the file will not be uploaded. If an error occurred during the upload, the index is checked again, to handle cases where the identical file was uploaded twice in parallel.
                            
                            The exact behavior will vary based on the index. When uploading to PyPI, uploading the same file succeeds even without `--check-url`, while most other indexes error.
                            
                            The index must provide one of the supported hashes (SHA-256, SHA-384, or SHA-512).
                          "%
                          | optional,
                        compile-bytecode
                          | js2n.Nullable Bool
                          | doc m%"
                            Compile Python files to bytecode after installation.
                            
                            By default, uv does not compile Python (`.py`) files to bytecode (`__pycache__/*.pyc`); instead, compilation is performed lazily the first time a module is imported. For use-cases in which start time is critical, such as CLI applications and Docker containers, this option can be enabled to trade longer installation times for faster start times.
                            
                            When enabled, uv will process the entire site-packages directory (including packages that are not being modified by the current operation) for consistency. Like pip, it will also ignore errors.
                          "%
                          | optional,
                        concurrent-builds
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ])
                          | doc m%"
                            The maximum number of source distributions that uv will build concurrently at any given time.
                            
                            Defaults to the number of available CPU cores.
                          "%
                          | optional,
                        concurrent-downloads
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ])
                          | doc "The maximum number of in-flight concurrent downloads that uv will perform at any given time."
                          | optional,
                        concurrent-installs
                          | js2n.Nullable
                            (std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 1 ])
                          | doc m%"
                            The number of threads used when installing and unzipping packages.
                            
                            Defaults to the number of available CPU cores.
                          "%
                          | optional,
                        config-settings
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ConfigSettings"
                          | doc "Settings to pass to the [PEP 517](https://peps.python.org/pep-0517/) build backend, specified as `KEY=VALUE` pairs."
                          | optional,
                        conflicts
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.SchemaConflicts"
                          | doc "A list of sets of conflicting groups or extras."
                          | optional,
                        constraint-dependencies
                          | js2n.Nullable (Array String)
                          | doc "PEP 508-style requirements, e.g., `ruff==0.5.0`, or `ruff @ https://...`."
                          | optional,
                        default-groups
                          | std.contract.any_of
                            [
                              Array
                                refs."properties.tool.properties.uv.definitions.GroupName",
                              std.contract.Equal "all",
                              js2n.Null
                            ]
                          | doc "The list of `dependency-groups` to install by default."
                          | optional,
                        dependency-metadata
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.StaticMetadata")
                          | doc m%"
                            Pre-defined static metadata for dependencies of the project (direct or transitive). When provided, enables the resolver to use the specified metadata instead of querying the registry or building the relevant package from source.
                            
                            Metadata should be provided in adherence with the [Metadata 2.3](https://packaging.python.org/en/latest/specifications/core-metadata/) standard, though only the following fields are respected:
                            
                            - `name`: The name of the package. - (Optional) `version`: The version of the package. If omitted, the metadata will be applied to all versions of the package. - (Optional) `requires-dist`: The dependencies of the package (e.g., `werkzeug>=0.14`). - (Optional) `requires-python`: The Python version required by the package (e.g., `>=3.10`). - (Optional) `provides-extras`: The extras provided by the package.
                          "%
                          | optional,
                        dev-dependencies
                          | js2n.Nullable (Array String)
                          | doc "PEP 508-style requirements, e.g., `ruff==0.5.0`, or `ruff @ https://...`."
                          | optional,
                        environments
                          | js2n.Nullable (Array String)
                          | doc "A list of environment markers, e.g., `python_version >= '3.6'`."
                          | optional,
                        exclude-newer
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ExcludeNewer"
                          | doc m%"
                            Limit candidate packages to those that were uploaded prior to the given date.
                            
                            Accepts both [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339.html) timestamps (e.g., `2006-12-02T02:07:43Z`) and local dates in the same format (e.g., `2006-12-02`) in your system's configured time zone.
                          "%
                          | optional,
                        extra-index-url
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.IndexUrl")
                          | doc m%"
                            Extra URLs of package indexes to use, in addition to `--index-url`.
                            
                            Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                            
                            All indexes provided via this flag take priority over the index specified by [`index_url`](#index-url) or [`index`](#index) with `default = true`. When multiple indexes are provided, earlier values take priority.
                            
                            To control uv's resolution strategy when multiple indexes are present, see [`index_strategy`](#index-strategy).
                            
                            (Deprecated: use `index` instead.)
                          "%
                          | optional,
                        find-links
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.IndexUrl")
                          | doc m%"
                            Locations to search for candidate distributions, in addition to those found in the registry indexes.
                            
                            If a path, the target must be a directory that contains packages as wheel files (`.whl`) or source distributions (e.g., `.tar.gz` or `.zip`) at the top level.
                            
                            If a URL, the page must contain a flat list of links to package files adhering to the formats described above.
                          "%
                          | optional,
                        fork-strategy
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ForkStrategy"
                          | doc m%"
                            The strategy to use when selecting multiple versions of a given package across Python versions and platforms.
                            
                            By default, uv will optimize for selecting the latest version of each package for each supported Python version (`requires-python`), while minimizing the number of selected versions across platforms.
                            
                            Under `fewest`, uv will minimize the number of selected versions for each package, preferring older versions that are compatible with a wider range of supported Python versions or platforms.
                          "%
                          | optional,
                        index
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.Index")
                          | doc m%"
                            The indexes to use when resolving dependencies.
                            
                            Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                            
                            Indexes are considered in the order in which they're defined, such that the first-defined index has the highest priority. Further, the indexes provided by this setting are given higher priority than any indexes specified via [`index_url`](#index-url) or [`extra_index_url`](#extra-index-url). uv will only consider the first index that contains a given package, unless an alternative [index strategy](#index-strategy) is specified.
                            
                            If an index is marked as `explicit = true`, it will be used exclusively for the dependencies that select it explicitly via `[tool.uv.sources]`, as in:
                            
                            ```toml [[tool.uv.index]] name = "pytorch" url = "https://download.pytorch.org/whl/cu121" explicit = true
                            
                            [tool.uv.sources] torch = { index = "pytorch" } ```
                            
                            If an index is marked as `default = true`, it will be moved to the end of the prioritized list, such that it is given the lowest priority when resolving packages. Additionally, marking an index as default will disable the PyPI default index.
                          "%
                          | optional,
                        index-strategy
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.IndexStrategy"
                          | doc m%"
                            The strategy to use when resolving against multiple index URLs.
                            
                            By default, uv will stop at the first index on which a given package is available, and limit resolutions to those present on that first index (`first-index`). This prevents "dependency confusion" attacks, whereby an attacker can upload a malicious package under the same name to an alternate index.
                          "%
                          | optional,
                        index-url
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.IndexUrl"
                          | doc m%"
                            The URL of the Python package index (by default: <https://pypi.org/simple>).
                            
                            Accepts either a repository compliant with [PEP 503](https://peps.python.org/pep-0503/) (the simple repository API), or a local directory laid out in the same format.
                            
                            The index provided by this setting is given lower priority than any indexes specified via [`extra_index_url`](#extra-index-url) or [`index`](#index).
                            
                            (Deprecated: use `index` instead.)
                          "%
                          | optional,
                        keyring-provider
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.KeyringProviderType"
                          | doc m%"
                            Attempt to use `keyring` for authentication for index URLs.
                            
                            At present, only `--keyring-provider subprocess` is supported, which configures uv to use the `keyring` CLI to handle authentication.
                          "%
                          | optional,
                        link-mode
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.LinkMode"
                          | doc m%"
                            The method to use when installing packages from the global cache.
                            
                            Defaults to `clone` (also known as Copy-on-Write) on macOS, and `hardlink` on Linux and Windows.
                          "%
                          | optional,
                        managed
                          | js2n.Nullable Bool
                          | doc "Whether the project is managed by uv. If `false`, uv will ignore the project when `uv run` is invoked."
                          | optional,
                        native-tls
                          | js2n.Nullable Bool
                          | doc m%"
                            Whether to load TLS certificates from the platform's native certificate store.
                            
                            By default, uv loads certificates from the bundled `webpki-roots` crate. The `webpki-roots` are a reliable set of trust roots from Mozilla, and including them in uv improves portability and performance (especially on macOS).
                            
                            However, in some cases, you may want to use the platform's native certificate store, especially if you're relying on a corporate trust root (e.g., for a mandatory proxy) that's included in your system's certificate store.
                          "%
                          | optional,
                        no-binary
                          | js2n.Nullable Bool
                          | doc m%"
                            Don't install pre-built wheels.
                            
                            The given packages will be built and installed from source. The resolver will still use pre-built wheels to extract package metadata, if available.
                          "%
                          | optional,
                        no-binary-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc "Don't install pre-built wheels for a specific package."
                          | optional,
                        no-build
                          | js2n.Nullable Bool
                          | doc m%"
                            Don't build source distributions.
                            
                            When enabled, resolving will not run arbitrary Python code. The cached wheels of already-built source distributions will be reused, but operations that require building distributions will exit with an error.
                          "%
                          | optional,
                        no-build-isolation
                          | js2n.Nullable Bool
                          | doc m%"
                            Disable isolation when building source distributions.
                            
                            Assumes that build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
                          "%
                          | optional,
                        no-build-isolation-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc m%"
                            Disable isolation when building source distributions for a specific package.
                            
                            Assumes that the packages' build dependencies specified by [PEP 518](https://peps.python.org/pep-0518/) are already installed.
                          "%
                          | optional,
                        no-build-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc "Don't build source distributions for a specific package."
                          | optional,
                        no-cache
                          | js2n.Nullable Bool
                          | doc "Avoid reading from or writing to the cache, instead using a temporary directory for the duration of the operation."
                          | optional,
                        no-index
                          | js2n.Nullable Bool
                          | doc "Ignore all registry indexes (e.g., PyPI), instead relying on direct URL dependencies and those provided via `--find-links`."
                          | optional,
                        no-sources
                          | js2n.Nullable Bool
                          | doc "Ignore the `tool.uv.sources` table when resolving dependencies. Used to lock against the standards-compliant, publishable package metadata, as opposed to using any local or Git sources."
                          | optional,
                        offline
                          | js2n.Nullable Bool
                          | doc "Disable network access, relying only on locally cached data and locally available files."
                          | optional,
                        override-dependencies
                          | js2n.Nullable (Array String)
                          | doc "PEP 508-style requirements, e.g., `ruff==0.5.0`, or `ruff @ https://...`."
                          | optional,
                        package
                          | js2n.Nullable Bool
                          | doc m%"
                            Whether the project should be considered a Python package, or a non-package ("virtual") project.
                            
                            Packages are built and installed into the virtual environment in editable mode and thus require a build backend, while virtual projects are _not_ built or installed; instead, only their dependencies are included in the virtual environment.
                            
                            Creating a package requires that a `build-system` is present in the `pyproject.toml`, and that the project adheres to a structure that adheres to the build backend's expectations (e.g., a `src` layout).
                          "%
                          | optional,
                        pip
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PipOptions"
                          | optional,
                        prerelease
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PrereleaseMode"
                          | doc m%"
                            The strategy to use when considering pre-release versions.
                            
                            By default, uv will accept pre-releases for packages that _only_ publish pre-releases, along with first-party requirements that contain an explicit pre-release marker in the declared specifiers (`if-necessary-or-explicit`).
                          "%
                          | optional,
                        preview
                          | js2n.Nullable Bool
                          | doc "Whether to enable experimental, preview features."
                          | optional,
                        publish-url
                          | js2n.Nullable String
                          | doc "The URL for publishing packages to the Python package index (by default: <https://upload.pypi.org/legacy/>)."
                          | optional,
                        pypy-install-mirror
                          | js2n.Nullable String
                          | doc m%"
                            Mirror URL to use for downloading managed PyPy installations.
                            
                            By default, managed PyPy installations are downloaded from [downloads.python.org](https://downloads.python.org/). This variable can be set to a mirror URL to use a different source for PyPy installations. The provided URL will replace `https://downloads.python.org/pypy` in, e.g., `https://downloads.python.org/pypy/pypy3.8-v7.3.7-osx64.tar.bz2`.
                            
                            Distributions can be read from a local directory by using the `file://` URL scheme.
                          "%
                          | optional,
                        python-downloads
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PythonDownloads"
                          | doc "Whether to allow Python downloads."
                          | optional,
                        python-install-mirror
                          | js2n.Nullable String
                          | doc m%"
                            Mirror URL for downloading managed Python installations.
                            
                            By default, managed Python installations are downloaded from [`python-build-standalone`](https://github.com/astral-sh/python-build-standalone). This variable can be set to a mirror URL to use a different source for Python installations. The provided URL will replace `https://github.com/astral-sh/python-build-standalone/releases/download` in, e.g., `https://github.com/astral-sh/python-build-standalone/releases/download/20240713/cpython-3.12.4%2B20240713-aarch64-apple-darwin-install_only.tar.gz`.
                            
                            Distributions can be read from a local directory by using the `file://` URL scheme.
                          "%
                          | optional,
                        python-preference
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.PythonPreference"
                          | doc "Whether to prefer using Python installations that are already present on the system, or those that are downloaded and installed by uv."
                          | optional,
                        reinstall
                          | js2n.Nullable Bool
                          | doc "Reinstall all packages, regardless of whether they're already installed. Implies `refresh`."
                          | optional,
                        reinstall-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.PackageName")
                          | doc "Reinstall a specific package, regardless of whether it's already installed. Implies `refresh-package`."
                          | optional,
                        required-version
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.RequiredVersion"
                          | doc m%"
                            Enforce a requirement on the version of uv.
                            
                            If the version of uv does not meet the requirement at runtime, uv will exit with an error.
                            
                            Accepts a [PEP 440](https://peps.python.org/pep-0440/) specifier, like `==0.5.0` or `>=0.5.0`.
                          "%
                          | optional,
                        resolution
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ResolutionMode"
                          | doc m%"
                            The strategy to use when selecting between the different compatible versions for a given package requirement.
                            
                            By default, uv will use the latest compatible version of each package (`highest`).
                          "%
                          | optional,
                        sources
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ToolUvSources"
                          | doc m%"
                            The sources to use when resolving dependencies.
                            
                            `tool.uv.sources` enriches the dependency metadata with additional sources, incorporated during development. A dependency source can be a Git repository, a URL, a local path, or an alternative registry.
                            
                            See [Dependencies](https://docs.astral.sh/uv/concepts/projects/dependencies/) for more.
                          "%
                          | optional,
                        trusted-publishing
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.TrustedPublishing"
                          | doc m%"
                            Configure trusted publishing via GitHub Actions.
                            
                            By default, uv checks for trusted publishing when running in GitHub Actions, but ignores it if it isn't configured or the workflow doesn't have enough permissions (e.g., a pull request from a fork).
                          "%
                          | optional,
                        upgrade
                          | js2n.Nullable Bool
                          | doc "Allow package upgrades, ignoring pinned versions in any existing output file."
                          | optional,
                        upgrade-package
                          | js2n.Nullable
                            (Array
                              refs."properties.tool.properties.uv.definitions.Requirement")
                          | doc m%"
                            Allow upgrades for a specific package, ignoring pinned versions in any existing output file.
                            
                            Accepts both standalone package names (`ruff`) and version specifiers (`ruff<0.5.0`).
                          "%
                          | optional,
                        workspace
                          | js2n.Nullable
                            refs."properties.tool.properties.uv.definitions.ToolUvWorkspace"
                          | doc "The workspace definition for the project, if any."
                          | optional,
                        ..
                      },
                },
            required = {},
          }
        | doc "Every tool that is used by the project can have users specify configuration data as long as they use a sub-table within `[tool]`. Generally a project can use the subtable `tool.$NAME` if, and only if, they own the entry for `$NAME` in the Cheeseshop/PyPI."
        | optional,
    }