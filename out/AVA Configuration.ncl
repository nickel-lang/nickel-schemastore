# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.array-of-paths" =
        Array (std.contract.Sequence [ refs."definitions.path", String ]),
      "definitions.array-of-strings" = Array String,
      "definitions.path" = js2n.string.MinLength 1,
    }
    in
  {
      cache
        | Bool
        | doc "Defaults to `true` to cache compiled files under `node_modules/.cache/ava.` If `false`, files are cached in a temporary directory instead"
        | optional,
      concurrency
        | Number
        | doc "Max number of test files running at the same time (default: CPU cores)"
        | optional,
      environmentVariables
        | { _ | String }
        | doc "Specifies environment variables to be made available to the tests. The environment variables defined here override the ones from `process.env`"
        | optional,
      extensions
        | std.contract.any_of
          [
            refs."definitions.array-of-strings",
            js2n.record.Record
              {
                additional =
                  'Some
                      (std.contract.Sequence
                        [ std.enum.TagOrString, [| 'module, 'commonjs |] ]),
                patterns = { "^(c|m)?js$" = js2n.Enum [ true ], },
                properties = {},
                required = {},
              }
          ]
        | doc "Extensions of test files. Setting this overrides the default `[\"cjs\", \"mjs\", \"js\"]` value, so make sure to include those extensions in the list. Experimentally you can configure how files are loaded"
        | optional,
      failFast
        | Bool
        | doc "Stop running further tests once a test fails"
        | optional,
      failWithoutAssertions
        | Bool
        | doc "If `false`, does not fail a test if it doesn't run assertions"
        | optional,
      files
        | refs."definitions.array-of-paths"
        | doc "An array of glob patterns to select test files. Files with an underscore prefix are ignored. By default only selects files with `cjs`, `mjs` & `js` extensions, even if the pattern matches other files. Specify `extensions` to allow other file extensions"
        | optional,
      ignoredByWatcher
        | refs."definitions.array-of-paths"
        | doc "An array of glob patterns to match files that, even if changed, are ignored by the watcher"
        | optional,
      "match"
        | refs."definitions.array-of-paths"
        | doc "Not typically useful in the `package.json` configuration, but equivalent to specifying `--match` on the CLI"
        | optional,
      nodeArguments
        | refs."definitions.array-of-strings"
        | doc "Configure Node.js arguments used to launch worker processes"
        | optional,
      require
        | refs."definitions.array-of-paths"
        | doc "Extra modules to require before tests are run. Modules are required in the worker processes"
        | optional,
      serial
        | Bool
        | doc "if `true`, prevents parallel execution of tests within a file"
        | optional,
      snapshotDir
        | refs."definitions.path"
        | doc "Specifies a fixed location for storing snapshot files. Use this if your snapshots are ending up in the wrong location"
        | optional,
      tap | Bool | doc "If `true`, enables the TAP reporter" | optional,
      timeout
        | std.contract.any_of
          [ js2n.number.Minimum 0, js2n.string.Matches "^(\\d+)(s|m)$" ]
        | doc "Timeouts in AVA behave differently than in other test frameworks. AVA resets a timer after each test, forcing tests to quit if no new test results were received within the specified timeout. This can be used to handle stalled tests. See our timeout documentation for more options"
        | optional,
      typescript
        | {
          compile
            | js2n.Enum [ false, "tsc" ]
            | doc "If `false`, AVA will assume you have already compiled your project. If set to `'tsc'`, AVA will run the TypeScript compiler before running your tests. This can be inefficient when using AVA in watch mode"
            | optional,
          extensions
            | refs."definitions.array-of-paths"
            | doc "You can configure AVA to recognize additional file extensions as TypeScript (e.g., `[\"ts\", \"tsx\"]` to add partial JSX support). Note that the preserve mode for JSX is not (yet) supported. See also AVA's `extensions` object"
            | optional,
          rewritePaths
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = { "/$" = js2n.string.Matches "/$", },
                properties = {},
                required = {},
              }
            | doc "AVA searches your entire project for `*.js`, `*.cjs`, `*.mjs` and `*.ts` files (or other extensions you've configured). It will ignore such files found in the `rewritePaths` targets (e.g. `build/`). If you use more specific paths, for instance `build/main/`, you may need to change AVA's `files` configuration to ignore other directories. Paths are relative to your project directory"
            | optional,
          ..
        }
        | doc "Configures @ava/typescript for projects that precompile TypeScript. Alternatively, you can use `ts-node` to do live testing without transpiling, in which case you shouldn't use the `typescript` property"
        | optional,
      utilizeParallelBuilds
        | Bool
        | doc "If `false`, disable parallel builds (default: `true`)"
        | optional,
      verbose
        | Bool
        | doc "If `true`, enables verbose output (though currently non-verbose output is not supported)"
        | optional,
      workerThreads
        | Bool
        | doc "Use worker threads to run tests (enabled by default). If `false`, tests will run in child processes"
        | optional,
    }