# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      afl
        | {
          afl_workspace_in
            | String
            | doc "Input directory for AFL test cases"
            | optional,
          afl_workspace_out
            | String
            | doc "Output directory for AFL findings"
            | optional,
          cargo_target_dir
            | String
            | doc "Target directory for AFL builds"
            | optional,
          iterations
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Number of executions to perform"
            | optional,
          run_time
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Number of seconds to run for"
            | optional,
          seeds
            | Array
              {
                bytes_count
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Number of bytes for the seed"
                  | optional,
                file_name | String | doc "Name of the seed file",
                override_file
                  | Bool
                  | doc "Whether to override existing file"
                  | optional,
                seed | String | doc "Seed content" | optional,
                ..
              }
            | doc "Initial seeds for AFL fuzzing"
            | optional,
          ..
        }
        | doc "AFL-specific configuration options"
        | optional,
      fuzz
        | {
          accounts
            | Array
              {
                address
                  | String
                  | doc "Account address (as base-58 encoded string)",
                filename | String | doc "Path to account data file",
                ..
              }
            | doc "List of accounts to use in fuzzing"
            | optional,
          allow_duplicate_txs
            | Bool
            | doc "Allow duplicate transactions"
            | optional,
          fuzzing_with_stats
            | Bool
            | doc "Enable statistics collection during fuzzing"
            | optional,
          programs
            | Array
              {
                address
                  | String
                  | doc "Program address (as base-58 encoded string)",
                program | String | doc "Path to program binary",
                ..
              }
            | doc "List of programs to fuzz"
            | optional,
          ..
        }
        | doc "General fuzzing configuration"
        | optional,
      honggfuzz
        | {
          cargo_target_dir
            | String
            | doc "Target compilation directory"
            | optional,
          crashdir
            | String
            | doc "Directory where crashes are saved to"
            | optional,
          exit_upon_crash
            | Bool
            | doc "Exit upon seeing the first crash"
            | optional,
          extension | String | doc "Input file extension" | optional,
          hfuzz_workspace
            | String
            | doc "Honggfuzz working directory"
            | optional,
          iterations
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Number of fuzzing iterations (0 means no limit)"
            | optional,
          keep_output
            | Bool
            | doc "Don't close children's stdin, stdout, stderr; can be noisy"
            | optional,
          max_file_size
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Maximal size of files processed by the fuzzer in bytes"
            | optional,
          mutations_per_run
            | std.number.Integer
            | js2n.number.Maximum 65535
            | js2n.number.Minimum 0
            | doc "Maximal number of mutations per one run"
            | optional,
          run_time
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Number of seconds this fuzzing session will last (0 means no limit)"
            | optional,
          save_all
            | Bool
            | doc "Save all test-cases by appending timestamp to filenames"
            | optional,
          threads
            | std.number.Integer
            | js2n.number.Maximum 65535
            | js2n.number.Minimum 0
            | doc "Number of concurrent fuzzing threads"
            | optional,
          timeout
            | std.number.Integer
            | js2n.number.Maximum 65535
            | js2n.number.Minimum 0
            | doc "Timeout in seconds"
            | optional,
          verbose
            | Bool
            | doc "Disable ANSI console; use simple log output"
            | optional,
          ..
        }
        | doc "Honggfuzz-specific configuration options"
        | optional,
      ..
    }