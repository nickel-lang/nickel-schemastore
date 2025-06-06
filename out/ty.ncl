# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DiagnosticFormat" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'full |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'concise |] ]
            ],
      "definitions.EnvironmentOptions" =
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
                  [ refs."definitions.PythonPlatform", String ])
              | doc m%"
                Specifies the target platform that will be used to analyze the source code. If specified, ty will understand conditions based on comparisons with `sys.platform`, such as are commonly found in typeshed to reflect the differing contents of the standard library across platforms.
                
                If no platform is specified, ty will use the current platform: - `win32` for Windows - `darwin` for macOS - `android` for Android - `ios` for iOS - `linux` for everything else
              "%
              | optional,
            python-version
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.PythonVersion", String ])
              | doc "Specifies the version of Python that will be used to analyze the source code. The version should be specified as a string in the format `M.m` where `M` is the major version and `m` is the minor (e.g. `\"3.0\"` or `\"3.6\"`). If a version is provided, ty will generate errors if the source code makes use of language features that are not supported in that version. It will also understand conditionals based on comparisons with `sys.version_info`, such as are commonly found in typeshed to reflect the differing contents of the standard library across Python versions."
              | optional,
            typeshed
              | js2n.Nullable String
              | doc "Optional path to a \"typeshed\" directory on disk for us to use for standard-library types. If this is not provided, we will fallback to our vendored typeshed stubs for the stdlib, bundled as a zip file in the binary"
              | optional,
          },
      "definitions.Level" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'ignore |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'warn |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'error |] ]
            ],
      "definitions.PythonPlatform" =
        std.contract.any_of
            [
              String,
              js2n.Const "all",
              js2n.Const "darwin",
              js2n.Const "linux",
              js2n.Const "win32"
            ],
      "definitions.PythonVersion" =
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
      "definitions.Rules" =
        js2n.record.Record
            {
              additional = 'Some refs."definitions.Level",
              patterns = {},
              properties =
                {
                    byte-string-type-annotation = refs."definitions.Level",
                    call-non-callable = refs."definitions.Level",
                    conflicting-argument-forms = refs."definitions.Level",
                    conflicting-declarations = refs."definitions.Level",
                    conflicting-metaclass = refs."definitions.Level",
                    cyclic-class-definition = refs."definitions.Level",
                    division-by-zero = refs."definitions.Level",
                    duplicate-base = refs."definitions.Level",
                    escape-character-in-forward-annotation =
                      refs."definitions.Level",
                    fstring-type-annotation = refs."definitions.Level",
                    implicit-concatenated-string-type-annotation =
                      refs."definitions.Level",
                    incompatible-slots = refs."definitions.Level",
                    inconsistent-mro = refs."definitions.Level",
                    index-out-of-bounds = refs."definitions.Level",
                    invalid-argument-type = refs."definitions.Level",
                    invalid-assignment = refs."definitions.Level",
                    invalid-attribute-access = refs."definitions.Level",
                    invalid-base = refs."definitions.Level",
                    invalid-context-manager = refs."definitions.Level",
                    invalid-declaration = refs."definitions.Level",
                    invalid-exception-caught = refs."definitions.Level",
                    invalid-generic-class = refs."definitions.Level",
                    invalid-ignore-comment = refs."definitions.Level",
                    invalid-legacy-type-variable = refs."definitions.Level",
                    invalid-metaclass = refs."definitions.Level",
                    invalid-overload = refs."definitions.Level",
                    invalid-parameter-default = refs."definitions.Level",
                    invalid-protocol = refs."definitions.Level",
                    invalid-raise = refs."definitions.Level",
                    invalid-return-type = refs."definitions.Level",
                    invalid-super-argument = refs."definitions.Level",
                    invalid-syntax-in-forward-annotation =
                      refs."definitions.Level",
                    invalid-type-alias-type = refs."definitions.Level",
                    invalid-type-checking-constant = refs."definitions.Level",
                    invalid-type-form = refs."definitions.Level",
                    invalid-type-variable-constraints =
                      refs."definitions.Level",
                    missing-argument = refs."definitions.Level",
                    no-matching-overload = refs."definitions.Level",
                    non-subscriptable = refs."definitions.Level",
                    not-iterable = refs."definitions.Level",
                    parameter-already-assigned = refs."definitions.Level",
                    possibly-unbound-attribute = refs."definitions.Level",
                    possibly-unbound-implicit-call = refs."definitions.Level",
                    possibly-unbound-import = refs."definitions.Level",
                    possibly-unresolved-reference = refs."definitions.Level",
                    raw-string-type-annotation = refs."definitions.Level",
                    redundant-cast = refs."definitions.Level",
                    static-assert-error = refs."definitions.Level",
                    subclass-of-final-class = refs."definitions.Level",
                    too-many-positional-arguments = refs."definitions.Level",
                    type-assertion-failure = refs."definitions.Level",
                    unavailable-implicit-super-arguments =
                      refs."definitions.Level",
                    undefined-reveal = refs."definitions.Level",
                    unknown-argument = refs."definitions.Level",
                    unknown-rule = refs."definitions.Level",
                    unresolved-attribute = refs."definitions.Level",
                    unresolved-import = refs."definitions.Level",
                    unresolved-reference = refs."definitions.Level",
                    unsupported-base = refs."definitions.Level",
                    unsupported-bool-conversion = refs."definitions.Level",
                    unsupported-operator = refs."definitions.Level",
                    unused-ignore-comment = refs."definitions.Level",
                    zero-stepsize-in-slice = refs."definitions.Level",
                  },
              required = {},
            },
      "definitions.SrcOptions" =
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
      "definitions.TerminalOptions" =
        {
            error-on-warning
              | js2n.Nullable Bool
              | doc m%"
                Use exit code 1 if there are any warning-level diagnostics.
                
                Defaults to `false`.
              "%
              | optional,
            output-format
              | js2n.Nullable refs."definitions.DiagnosticFormat"
              | doc m%"
                The format to use for printing diagnostic messages.
                
                Defaults to `full`.
              "%
              | optional,
          },
    }
    in
  {
      environment
        | js2n.Nullable refs."definitions.EnvironmentOptions"
        | doc "Configures the type checking environment."
        | optional,
      rules
        | js2n.Nullable refs."definitions.Rules"
        | doc m%"
          Configures the enabled rules and their severity.
          
          See [the rules documentation](https://ty.dev/rules) for a list of all available rules.
          
          Valid severities are:
          
          * `ignore`: Disable the rule. * `warn`: Enable the rule and create a warning diagnostic. * `error`: Enable the rule and create an error diagnostic. ty will exit with a non-zero code if any error diagnostics are emitted.
        "%
        | optional,
      src | js2n.Nullable refs."definitions.SrcOptions" | optional,
      terminal | js2n.Nullable refs."definitions.TerminalOptions" | optional,
    }