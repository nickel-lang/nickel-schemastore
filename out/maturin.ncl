# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AuditWheelMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'repair |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'check |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'skip |] ]
            ],
      "definitions.CargoCrateType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'bin |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'cdylib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'dylib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'rlib |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'staticlib |] ]
            ],
      "definitions.CargoTarget" =
        {
            kind
              | js2n.Nullable refs."definitions.CargoCrateType"
              | doc "Kind of target (\"bin\", \"cdylib\")"
              | optional,
            name
              | String
              | doc "Name as given in the `Cargo.toml` or generated from the file name",
            ..
          },
      "definitions.Format" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'sdist |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'wheel |] ]
            ],
      "definitions.Formats" =
        std.contract.any_of
            [
              refs."definitions.Format",
              js2n.array.ArrayOf refs."definitions.Format"
            ],
      "definitions.GlobPattern" =
        std.contract.any_of
            [
              String,
              {
                format
                  | refs."definitions.Formats"
                  | doc "One or more [Format] values",
                path | String | doc "A glob",
                ..
              }
            ],
      "definitions.PlatformTag" =
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
      "definitions.SdistGenerator" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'cargo |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'git |] ]
            ],
      "definitions.TargetConfig" =
        {
            macos-deployment-target
              | js2n.Nullable String
              | doc "macOS deployment target version"
              | optional,
            ..
          },
    }
    in
  {
      all-features
        | js2n.Nullable Bool
        | doc "Activate all available features"
        | optional,
      auditwheel
        | js2n.Nullable refs."definitions.AuditWheelMode"
        | doc "Audit wheel mode"
        | optional,
      bindings | js2n.Nullable String | doc "Bindings type" | optional,
      compatibility
        | js2n.Nullable refs."definitions.PlatformTag"
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
        | js2n.Nullable (Array refs."definitions.GlobPattern")
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
        | js2n.Nullable (Array refs."definitions.GlobPattern")
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
        | refs."definitions.SdistGenerator"
        | doc "Source distribution generator"
        | optional,
      skip-auditwheel | Bool | doc "Skip audit wheel" | optional,
      strip | Bool | doc "Strip the final binary" | optional,
      target
        | { _ | refs."definitions.TargetConfig" }
        | doc "Target configuration"
        | optional,
      targets
        | js2n.Nullable (Array refs."definitions.CargoTarget")
        | doc "Cargo compile targets"
        | optional,
      unstable-flags
        | js2n.Nullable (Array String)
        | doc "Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details"
        | optional,
      ..
    }