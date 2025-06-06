# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.env-items" =
        {
            autoCleanClosure
              | Bool
              | doc "Clean closures when a suite is done running (done by clearing the stored function reference). This prevents memory leaks, but you won't be able to run jasmine multiple times."
              | optional,
            failSpecWithNoExpectations
              | Bool
              | doc "Whether to fail the spec if it ran no expectations. By default a spec that ran no expectations is reported as passed. Setting this to true will report such spec as a failure."
              | optional,
            hideDisbaled
              | Bool
              | doc "Whether or not reporters should hide disabled specs from their output. Currently only supported by Jasmine's HTMLReporter."
              | optional,
            random
              | Bool
              | doc "Whether to randomize spec execution order."
              | optional,
            seed
              | std.contract.any_of [ js2n.Null, Number, String ]
              | doc "Seed to use as the basis of randomization. Null causes the seed to be determined randomly at the start of execution."
              | optional,
            stopOnSpecFailure
              | Bool
              | doc "Whether to stop execution of the suite after the first spec failure."
              | optional,
            stopSpecOnExpectationFailure
              | Bool
              | doc "Whether to cause specs to only have one expectation failure."
              | optional,
            verboseDeprication
              | Bool
              | doc "Whether or not to issue warnings for certain deprecated functionality every time it's used. If not set or set to false, deprecation warnings for methods that tend to be called frequently will be issued only once or otherwise throttled to to prevent the suite output from being flooded with warnings."
              | optional,
            ..
          },
      "definitions.root-items" =
        {
            helpers
              | Array String
              | doc "Array of filepaths (and globs) relative to spec_dir to include before jasmine specs"
              | optional,
            spec_dir
              | String
              | doc "Spec directory path relative to the current working dir when jasmine is executed.",
            spec_files
              | Array String
              | doc "Array of filepaths (and globs) relative to spec_dir to include and exclude.",
            ..
          },
    }
    in
  std.contract.Sequence
      [
        refs."definitions.root-items",
        refs."definitions.env-items",
        { env | refs."definitions.env-items" | optional, .. }
      ]