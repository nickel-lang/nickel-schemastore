# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.TestTool" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'cargo |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'nextest |] ]
            ],
    }
    in
  {
      additional_cargo_args
        | Array String
        | doc "Pass extra args to every cargo invocation."
        | optional,
      additional_cargo_test_args
        | Array String
        | doc "Pass extra args to cargo test."
        | optional,
      build_timeout_multiplier
        | js2n.Nullable Number
        | doc "Build timeout multiplier, relative to the baseline 'cargo build'."
        | optional,
      cap_lints | Bool | doc "Pass `--cap-lints` to rustc." | optional,
      copy_vcs
        | js2n.Nullable Bool
        | doc "Copy `.git` and other VCS directories to the build directory."
        | optional,
      error_values
        | Array String
        | doc "Generate these error values from functions returning Result."
        | optional,
      examine_globs
        | Array String
        | doc "Generate mutants from source files matching these globs."
        | optional,
      examine_re
        | Array String
        | doc "Examine only mutants matching these regexps."
        | optional,
      exclude_globs
        | Array String
        | doc "Exclude mutants from source files matching these globs."
        | optional,
      exclude_re
        | Array String
        | doc "Exclude mutants from source files matches these regexps."
        | optional,
      minimum_test_timeout
        | js2n.Nullable Number
        | doc "Minimum test timeout, in seconds, as a floor on the autoset value."
        | optional,
      output | js2n.Nullable String | doc "Output directory." | optional,
      profile | js2n.Nullable String | doc "Cargo profile." | optional,
      skip_calls
        | Array String
        | doc m%"
          Skip calls to functions or methods with these names.
          
          This is combined with values from the --skip-calls argument.
        "%
        | optional,
      skip_calls_defaults
        | js2n.Nullable Bool
        | doc "Use built-in defaults for `skip_calls` in addition to any explicit values."
        | optional,
      test_package
        | Array String
        | doc "Run tests from these packages for all mutants."
        | optional,
      test_tool
        | js2n.Nullable refs."definitions.TestTool"
        | doc "Choice of test tool: cargo or nextest."
        | optional,
      test_workspace
        | js2n.Nullable Bool
        | doc m%"
          Run tests from all packages in the workspace, not just the mutated package.
          
          Overrides `test_package`.
        "%
        | optional,
      timeout_multiplier
        | js2n.Nullable Number
        | doc "Timeout multiplier, relative to the baseline 'cargo test'."
        | optional,
      ..
    }