# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      nodeOptions
        | {
          addons | Bool | optional,
          allow-addons | Bool | optional,
          allow-child-process | Bool | optional,
          allow-fs-read
            | std.contract.any_of [ String, Array String ]
            | optional,
          allow-fs-write
            | std.contract.any_of [ String, Array String ]
            | optional,
          allow-wasi | Bool | optional,
          allow-worker | Bool | optional,
          async-context-frame | Bool | optional,
          conditions | std.contract.any_of [ String, Array String ] | optional,
          cpu-prof | Bool | optional,
          cpu-prof-dir | String | optional,
          cpu-prof-interval | Number | optional,
          cpu-prof-name | String | optional,
          debug-arraybuffer-allocations | Bool | optional,
          deprecation | Bool | optional,
          diagnostic-dir | String | optional,
          disable-proto | String | optional,
          disable-sigusr1 | Bool | optional,
          disable-warning
            | std.contract.any_of [ String, Array String ]
            | optional,
          disable-wasm-trap-handler | Bool | optional,
          dns-result-order | String | optional,
          enable-fips | Bool | optional,
          enable-source-maps | Bool | optional,
          entry-url | Bool | optional,
          experimental-addon-modules | Bool | optional,
          experimental-detect-module | Bool | optional,
          experimental-eventsource | Bool | optional,
          experimental-global-navigator | Bool | optional,
          experimental-import-meta-resolve | Bool | optional,
          experimental-loader
            | std.contract.any_of [ String, Array String ]
            | optional,
          experimental-print-required-tla | Bool | optional,
          experimental-repl-await | Bool | optional,
          experimental-require-module | Bool | optional,
          experimental-shadow-realm | Bool | optional,
          experimental-sqlite | Bool | optional,
          experimental-strip-types | Bool | optional,
          experimental-transform-types | Bool | optional,
          experimental-vm-modules | Bool | optional,
          experimental-wasm-modules | Bool | optional,
          experimental-websocket | Bool | optional,
          experimental-webstorage | Bool | optional,
          extra-info-on-fatal-exception | Bool | optional,
          force-async-hooks-checks | Bool | optional,
          force-context-aware | Bool | optional,
          force-fips | Bool | optional,
          force-node-api-uncaught-exceptions-policy | Bool | optional,
          frozen-intrinsics | Bool | optional,
          global-search-paths | Bool | optional,
          heap-prof | Bool | optional,
          heap-prof-dir | String | optional,
          heap-prof-interval | Number | optional,
          heap-prof-name | String | optional,
          heapsnapshot-near-heap-limit | Number | optional,
          heapsnapshot-signal | String | optional,
          icu-data-dir | String | optional,
          "import" | std.contract.any_of [ String, Array String ] | optional,
          input-type | String | optional,
          insecure-http-parser | Bool | optional,
          inspect | Bool | optional,
          inspect-brk | Bool | optional,
          inspect-port | Number | optional,
          inspect-publish-uid | String | optional,
          inspect-wait | Bool | optional,
          localstorage-file | String | optional,
          max-http-header-size | Number | optional,
          network-family-autoselection | Bool | optional,
          network-family-autoselection-attempt-timeout | Number | optional,
          node-snapshot | Bool | optional,
          openssl-config | String | optional,
          openssl-legacy-provider | Bool | optional,
          openssl-shared-config | Bool | optional,
          pending-deprecation | Bool | optional,
          permission | Bool | optional,
          preserve-symlinks | Bool | optional,
          preserve-symlinks-main | Bool | optional,
          redirect-warnings | String | optional,
          report-compact | Bool | optional,
          report-dir | String | optional,
          report-exclude-env | Bool | optional,
          report-exclude-network | Bool | optional,
          report-filename | String | optional,
          report-on-fatalerror | Bool | optional,
          report-on-signal | Bool | optional,
          report-signal | String | optional,
          report-uncaught-exception | Bool | optional,
          require | std.contract.any_of [ String, Array String ] | optional,
          secure-heap | Number | optional,
          secure-heap-min | Number | optional,
          snapshot-blob | String | optional,
          stack-trace-limit | Number | optional,
          test-coverage-branches | Number | optional,
          test-coverage-exclude
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-coverage-functions | Number | optional,
          test-coverage-include
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-coverage-lines | Number | optional,
          test-global-setup | String | optional,
          test-isolation | String | optional,
          test-name-pattern
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-only | Bool | optional,
          test-reporter
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-reporter-destination
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-shard | String | optional,
          test-skip-pattern
            | std.contract.any_of [ String, Array String ]
            | optional,
          throw-deprecation | Bool | optional,
          title | String | optional,
          tls-cipher-list | String | optional,
          tls-keylog | String | optional,
          "tls-max-v1.2" | Bool | optional,
          "tls-max-v1.3" | Bool | optional,
          "tls-min-v1.0" | Bool | optional,
          "tls-min-v1.1" | Bool | optional,
          "tls-min-v1.2" | Bool | optional,
          "tls-min-v1.3" | Bool | optional,
          trace-deprecation | Bool | optional,
          trace-env | Bool | optional,
          trace-env-js-stack | Bool | optional,
          trace-env-native-stack | Bool | optional,
          trace-event-categories | String | optional,
          trace-event-file-pattern | String | optional,
          trace-exit | Bool | optional,
          trace-promises | Bool | optional,
          trace-require-module | String | optional,
          trace-sigint | Bool | optional,
          trace-sync-io | Bool | optional,
          trace-tls | Bool | optional,
          trace-uncaught | Bool | optional,
          trace-warnings | Bool | optional,
          track-heap-objects | Bool | optional,
          unhandled-rejections | String | optional,
          use-bundled-ca | Bool | optional,
          use-largepages | String | optional,
          use-openssl-ca | Bool | optional,
          use-system-ca | Bool | optional,
          v8-pool-size | Number | optional,
          verify-base-objects | Bool | optional,
          warnings | Bool | optional,
          watch | Bool | optional,
          watch-path | std.contract.any_of [ String, Array String ] | optional,
          watch-preserve-output | Bool | optional,
          zero-fill-buffers | Bool | optional,
        }
        | optional,
      testRunner
        | {
          experimental-test-coverage | Bool | optional,
          experimental-test-module-mocks | Bool | optional,
          test-concurrency | Number | optional,
          test-coverage-branches | Number | optional,
          test-coverage-exclude
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-coverage-functions | Number | optional,
          test-coverage-include
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-coverage-lines | Number | optional,
          test-force-exit | Bool | optional,
          test-global-setup | String | optional,
          test-isolation | String | optional,
          test-name-pattern
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-only | Bool | optional,
          test-reporter
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-reporter-destination
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-shard | String | optional,
          test-skip-pattern
            | std.contract.any_of [ String, Array String ]
            | optional,
          test-timeout | Number | optional,
          test-update-snapshots | Bool | optional,
        }
        | optional,
    }