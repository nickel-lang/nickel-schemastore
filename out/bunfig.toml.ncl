# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      define
        | {  .. }
        | doc m%"
          The `define` field allows you to replace certain global identifiers with constant expressions. Bun will replace any usage of the identifier with the expression. The expression should be a JSON string
          https://bun.sh/docs/runtime/bunfig#define
        "%
        | optional,
      install
        | {
          auto
            | std.enum.TagOrString
            | [| 'fallback, 'disable, '"force", 'auto |]
            | doc m%"
              To configure Bun's package auto-install behavior. Default `"auto"` — when no `node_modules` folder is found, Bun will automatically install dependencies on the fly during execution
              https://bun.sh/docs/runtime/bunfig#install-auto
            "%
            | optional,
          ca
            | String
            | doc m%"
              The CA certificate as a string
              https://bun.sh/docs/runtime/bunfig#install-ca-and-install-cafile
            "%
            | optional,
          cache
            | {
              dir
                | String
                | doc m%"
                  The directory to use for the cache
                  https://bun.sh/docs/runtime/bunfig#install-cache
                "%
                | optional,
              disable
                | Bool
                | doc m%"
                  When true, don't load from the global cache.
                  
                  Bun may still write to `node_modules/.cache`
                  https://bun.sh/docs/runtime/bunfig#install-cache
                "%
                | optional,
              disableManifest
                | Bool
                | doc m%"
                  When true, always resolve the latest versions from the registry
                  https://bun.sh/docs/runtime/bunfig#install-cache
                "%
                | optional,
            }
            | doc m%"
              To configure the cache behavior
              https://bun.sh/docs/runtime/bunfig#install-cache
            "%
            | optional,
          cafile
            | String
            | doc m%"
              A path to a CA certificate file. The file can contain multiple certificates.
              https://bun.sh/docs/runtime/bunfig#install-ca-and-install-cafile
            "%
            | optional,
          dev
            | Bool
            | doc m%"
              Whether to install development dependencies. Default `true`
              https://bun.sh/docs/runtime/bunfig#install-dev
            "%
            | optional,
          dryRun
            | Bool
            | doc m%"
              Whether `bun install` will actually install dependencies. Default `false`. When true, it's equivalent to setting `--dry-run` on all `bun install` commands
              https://bun.sh/docs/runtime/bunfig#install-dryrun
            "%
            | optional,
          exact
            | Bool
            | doc m%"
              Whether to set an exact version in package.json. Default `false`
              
              By default Bun uses caret ranges; if the `latest` version of a package is `2.4.1`, the version range in your `package.json` will be `^2.4.1`. This indicates that any version from `2.4.1` up to (but not including) `3.0.0` is acceptable
              https://bun.sh/docs/runtime/bunfig#install-exact
            "%
            | optional,
          frozenLockfile
            | Bool
            | doc m%"
              When true, `bun install` will not update `bun.lock`. Default `false`. If `package.json` and the existing `bun.lock` are not in agreement, this will error
              https://bun.sh/docs/runtime/bunfig#install-frozenlockfile
            "%
            | optional,
          globalBinDir
            | String
            | doc m%"
              To configure the directory where Bun installs globally installed binaries and CLIs
              https://bun.sh/docs/runtime/bunfig#install-globalbindir
            "%
            | optional,
          globalDir
            | String
            | doc m%"
              To configure the directory where Bun puts globally installed packages
              https://bun.sh/docs/runtime/bunfig#install-globaldir
            "%
            | optional,
          lockfile
            | {
              print
                | std.contract.Equal "yarn"
                | doc m%"
                  Whether to generate a non-Bun lockfile alongside `bun.lock`. (A `bun.lock` will always be created.) Currently `"yarn"` is the only supported value
                  https://bun.sh/docs/runtime/bunfig#install-lockfile
                "%
                | optional,
              save
                | Bool
                | doc m%"
                  Whether to generate a lockfile on `bun install`. Default `true`
                  https://bun.sh/docs/runtime/bunfig#install-lockfile
                "%
                | optional,
            }
            | doc m%"
              To configure lockfile behavior, use the `install.lockfile` section
              https://bun.sh/docs/runtime/bunfig#install-lockfile
            "%
            | optional,
          "optional"
            | Bool
            | doc m%"
              Whether to install optional dependencies. Default `true`
              https://bun.sh/docs/runtime/bunfig#install-optional
            "%
            | optional,
          peer
            | Bool
            | doc m%"
              Whether to install peer dependencies. Default `true`
              https://bun.sh/docs/runtime/bunfig#install-peer
            "%
            | optional,
          production
            | Bool
            | doc m%"
              Whether bun install will run in "production mode". Default `false`
              
              In production mode, `"devDependencies"` are not installed. You can use `--production` in the CLI to override this setting
              https://bun.sh/docs/runtime/bunfig#install-production
            "%
            | optional,
          registry
            | std.contract.any_of
              [
                String,
                {
                  token
                    | String
                    | doc m%"
                      The token to use for authentication
                      https://bun.sh/docs/runtime/bunfig#install-registry
                    "%
                    | optional,
                  url
                    | String
                    | doc m%"
                      The URL of the registry
                      https://bun.sh/docs/runtime/bunfig#install-registry
                    "%
                    | optional,
                }
              ]
            | doc m%"
              The default registry is `https://registry.npmjs.org/`. This can be globally configured in `bunfig.toml`
              https://bun.sh/docs/runtime/bunfig#install-registry
            "%
            | optional,
          saveTextLockfile
            | Bool
            | doc m%"
              If false, generate a binary `bun.lockb` instead of a text-based `bun.lock` file when running `bun install` and no lockfile is present
              Default `true` (since Bun v1.2)
              https://bun.sh/docs/runtime/bunfig#install-savetextlockfile
            "%
            | optional,
          scopes
            | {  .. }
            | doc m%"
              To configure a registry for a particular scope (e.g. `@myorg/<package>`) use `install.scopes`. You can reference environment variables with `$variable` notation
              https://bun.sh/docs/runtime/bunfig#install-scopes
            "%
            | optional,
        }
        | doc m%"
          Package management is a complex issue; to support a range of use cases, the behavior of `bun install` can be configured under the `[install]` section
          https://bun.sh/docs/runtime/bunfig#package-manager
        "%
        | optional,
      jsx
        | String
        | doc m%"
          Configure how Bun handles JSX. You can also set these fields in the `compilerOptions` of your `tsconfig.json`, but they are supported here as well for non-TypeScript projects
          https://bun.sh/docs/runtime/bunfig#jsx
          https://www.typescriptlang.org/tsconfig/#jsx
        "%
        | optional,
      jsxFactory
        | String
        | doc m%"
          Specify the function that is used to create JSX elements
          https://www.typescriptlang.org/tsconfig#jsxFactory
        "%
        | optional,
      jsxFragment
        | String
        | doc m%"
          Specify the function that is used for JSX fragments
          https://www.typescriptlang.org/tsconfig#jsxFragment
        "%
        | optional,
      jsxImportSource
        | String
        | doc m%"
          Specify the module specifier to be used for importing the JSX factory functions
          https://www.typescriptlang.org/tsconfig#jsxImportSource
        "%
        | optional,
      loader
        | {
          _ | std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'text,
                'dataurl,
                'base64,
                'napi,
                'wasm,
                'toml,
                'json,
                'file,
                'css,
                'tsx,
                'ts,
                'js,
                'jsx
              |]
            ]
        }
        | doc m%"
          Configure how Bun maps file extensions to loaders. This is useful for loading files that aren't natively supported by Bun
          https://bun.sh/docs/runtime/bunfig#loader
        "%
        | optional,
      logLevel
        | std.enum.TagOrString
        | [| 'error, 'warn, 'debug |]
        | doc m%"
          Set the log level. This can be one of `"debug"`, `"warn"`, or `"error"`
          https://bun.sh/docs/runtime/bunfig#loglevel
        "%
        | optional,
      preload
        | std.contract.any_of [ Array String, String ]
        | doc m%"
          An array or string of scripts/plugins to run before running the file or script
          https://bun.sh/docs/runtime/bunfig#preload
        "%
        | optional,
      run
        | {
          bun
            | Bool
            | doc m%"
              Auto alias `node` to `bun`
              
              When `true`, this prepends `$PATH` with a `node` symlink that points to the `bun` binary for all scripts or executables invoked by `bun run` or `bun`
              This means that if you have a script that runs `node`, it will actually run `bun` instead, without needing to change your script. This works recursively, so if your script runs another script that runs `node`, it will also run `bun` instead. This applies to shebangs as well, so if you have a script with a shebang that points to `node`, it will actually run `bun` instead.
              By default, this is enabled if `node` is not already in your `$PATH`
              https://bun.sh/docs/runtime/bunfig#run-bun-auto-alias-node-to-bun
            "%
            | optional,
          shell
            | std.enum.TagOrString
            | [| 'bun, 'system |]
            | doc m%"
              The shell to use when running package.json scripts via `bun run` or `bun`. On Windows, this defaults to `"bun"` and on other platforms it defaults to `"system"`
              https://bun.sh/docs/runtime/bunfig#run-shell-use-the-system-shell-or-bun-s-shell
            "%
            | optional,
          silent
            | Bool
            | doc m%"
              When `true`, suppresses the output of the command being run by `bun run` or `bun`
              https://bun.sh/docs/runtime/bunfig#run-silent-suppress-reporting-the-command-being-run
            "%
            | optional,
        }
        | doc m%"
          The `bun run` command can be configured under the `[run]` section. These apply to the `bun run` command and the `bun` command when running a file or executable or script.
          
          Currently, `bunfig.toml` isn't always automatically loaded for `bun run` in a local project (it does check for a global `bunfig.toml`), so you might still need to pass `-c` or `-c=bunfig.toml` to use these settings
          https://bun.sh/docs/runtime/bunfig#bun-run
        "%
        | optional,
      smol
        | Bool
        | doc m%"
          Enable `smol` mode. This reduces memory usage at the cost of performance
          https://bun.sh/docs/runtime/bunfig#smol
        "%
        | optional,
      telemetry
        | Bool
        | doc m%"
          The `telemetry` field permit to enable/disable the analytics records. Bun records bundle timings (so we can answer with data, "is Bun getting faster?") and feature usage (e.g., "are people actually using macros?"). The request body size is about 60 bytes, so it's not a lot of data. By default the telemetry is enabled.
          https://bun.sh/docs/runtime/bunfig#telemetry
        "%
        | optional,
      test
        | {
          coverage
            | Bool
            | doc m%"
              Enables coverage reporting. Default `false`. Use `--coverage` to override
              https://bun.sh/docs/runtime/bunfig#test-coverage
            "%
            | optional,
          coverageDir
            | String
            | doc m%"
              Set path where coverage reports will be saved. Please notice, that it works only for persistent `coverageReporter` like `lcov`
              https://bun.sh/docs/runtime/bunfig#test-coveragedir
            "%
            | optional,
          coverageReporter
            | Array (
              std.contract.Sequence [ std.enum.TagOrString, [| 'lcov, 'text |] ]
            )
            | doc m%"
              By default, coverage reports will be printed to the console. For persistent code coverage reports in CI environments and for other tools use `lcov`
              https://bun.sh/docs/runtime/bunfig#test-coveragereporter
            "%
            | optional,
          coverageSkipTestFiles
            | Bool
            | doc m%"
              Whether to skip test files when computing coverage statistics. Default false
              https://bun.sh/docs/runtime/bunfig#test-coverageskiptestfiles
            "%
            | optional,
          coverageThreshold
            | js2n.OneOf [ std.number.Integer, Number, { _ | js2n.Always } ]
            | doc m%"
              To specify a coverage threshold. By default, no threshold is set. If your test suite does not meet or exceed this threshold, `bun test` will exit with a non-zero exit code to indicate the failure
              https://bun.sh/docs/runtime/bunfig#test-coveragethreshold
            "%
            | optional,
          preload
            | std.contract.any_of [ Array String, String ]
            | doc m%"
              Same as the top-level `preload` field, but only applies to `bun test`
              https://bun.sh/docs/runtime/bunfig#test-preload
            "%
            | optional,
          root
            | String
            | doc m%"
              The root directory to run tests from. Default `.`
              https://bun.sh/docs/runtime/bunfig#test-root
            "%
            | optional,
          smol
            | Bool
            | doc m%"
              Same as the top-level `smol` field, but only applies to `bun test`
              https://bun.sh/docs/runtime/bunfig#test-smol
            "%
            | optional,
        }
        | doc m%"
          Test runner
          https://bun.sh/docs/runtime/bunfig#test-runner
        "%
        | optional,
      ..
    }