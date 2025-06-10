# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "//" | String | doc "Comment" | optional,
      automock
        | Bool
        | doc "Whether all imported modules in your tests should be mocked automatically. All modules used in your tests will have a replacement implementation, keeping the API surface."
        | optional,
      bail
        | std.contract.any_of [ Bool, Number ]
        | doc "How many failures until jest stops running. Value of `true` is equivalent to 1."
        | optional,
      cacheDirectory
        | String
        | doc "The directory where Jest should store its cached dependency information."
        | optional,
      clearMocks
        | Bool
        | doc "Whether to automatically clear mock calls and instances between every test."
        | optional,
      collectCoverage
        | Bool
        | doc "Whether to collect coverage information while executing the test"
        | optional,
      collectCoverageFrom
        | Array String
        | doc "An array of glob patterns indicating a set of files for which coverage information should be collected."
        | optional,
      coverageDirectory
        | String
        | doc "The directory where Jest should output its coverage files."
        | optional,
      coveragePathIgnorePatterns
        | Array String
        | doc "An array of regexp pattern strings that will be ignored when calculating coverage"
        | optional,
      coverageProvider
        | std.enum.TagOrString
        | [| 'v8, 'babel |]
        | doc "Indicates which provider should be used to instrument code for coverage."
        | optional,
      coverageReporters
        | Array (
          std.contract.any_of
            [ String, js2n.array.Items [ String, { _ | Dyn } ] js2n.Always ]
        )
        | doc "A list of reporter names that Jest uses when writing coverage reports."
        | optional,
      coverageThreshold
        | { _ | Dyn }
        | doc "An object that configures minimum threshold enforcement for coverage results."
        | optional,
      dependencyExtractor
        | String
        | doc "Enable the use of a custom dependency extractor."
        | optional,
      displayName
        | std.contract.any_of [ String, { _ | String } ]
        | doc "A custom label that is printed alongside a test while it is running."
        | optional,
      errorOnDeprecated
        | Bool
        | doc "Whether calling deprecated APIs should throw an error."
        | optional,
      extensionsToTreatAsEsm
        | Array String
        | doc "Files extensions that Jest should treat as ESM."
        | optional,
      extraGlobals
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "DEPRECATED. Renamed to `sandboxInjectedGlobals` in Jest 28"
        | optional,
      fakeTimers
        | { _ | Dyn }
        | doc "Customize the behavior of fake timers."
        | optional,
      forceCoverageMatch
        | Array String
        | doc "A list of regexp strings are added to code coverage; this overrides any previous ignored file patterns"
        | optional,
      globalSetup
        | String
        | doc "Use a custom global setup module to setup the global environment."
        | optional,
      globalTeardown
        | String
        | doc "Use a custom global teardown module to teardown the global environment."
        | optional,
      globals
        | { _ | Dyn }
        | doc "A set of global variables that need to be available in all test environments."
        | optional,
      haste
        | {
          computeSha1
            | Bool
            | doc "Whether to hash functions using SHA1"
            | optional,
          defaultPlatform
            | js2n.Nullable String
            | doc "The default platform"
            | optional,
          enableSymlinks
            | Bool
            | doc "Whether to follow symlinks when crawling the filesystem. This option cannot be used in projects that use watachman."
            | optional,
          forceNodeFilesystemAPI
            | Bool
            | doc "Whether to use Node's filesystem API instead of shelling out to `find`"
            | optional,
          hasteImplModulePath
            | String
            | doc "Path to a custom implementation of Haste."
            | optional,
          hasteMapModulePath
            | String
            | doc "Path to a custom implementation of HasteMap."
            | optional,
          platforms
            | Array String
            | doc "A list of platforms to target."
            | optional,
          retainAllFiles
            | Bool
            | doc "Whether to retain all files, allowing e.g. search for tests in `node_modules`."
            | optional,
          throwOnModuleCollision
            | Bool
            | doc "Whether to throw an error on module collision"
            | optional,
          ..
        }
        | doc "Customize `jest-haste-map`, Jest's internal file crawler/cache system"
        | optional,
      injectGlobals
        | Bool
        | doc "Whether to inject global variables into the global environment. Only supported if using the default `jest-circus` test runner."
        | optional,
      maxConcurrency
        | Number
        | doc "A number limiting the number of tests that are allowed to run at the same time when using `test.concurrent`. Any test above this limit will be queued and executed once a slot is released."
        | optional,
      maxWorkers
        | std.contract.any_of [ Number, String ]
        | doc "Specifies the maximum number of workers the worker-pool will spawn for running tests."
        | optional,
      moduleDirectories
        | Array String
        | doc "An array of directory names to be searched recursively up from the requiring module's location."
        | optional,
      moduleFileExtensions
        | Array String
        | doc "An array of file extensions your modules use."
        | optional,
      moduleNameMapper
        | { _ | Dyn }
        | doc "A map from regular expressions to module names that allow to stub out resources, like images or styles with a single module."
        | optional,
      modulePathIgnorePatterns
        | Array String
        | doc "An array of regexp pattern strings that are matched against all module paths before those paths are to be considered 'visible' to the module loader."
        | optional,
      modulePaths
        | Array String
        | doc "An array of directory names that should be used when resolving modules. This is an alternative API to `NODE_PATH`."
        | optional,
      notify
        | Bool
        | doc "Whether to use native OS notifications for test results. This requires the installation of the `node-notifier` package"
        | optional,
      notifyMode
        | std.enum.TagOrString
        | [|
          'failure-change,
          'success-change,
          'change,
          'success,
          'failure,
          'always
        |]
        | doc "Specifies when notifications should be triggered."
        | optional,
      openHandlesTimeout
        | Number
        | doc "Print a warning indicating that there are probable open handles if Jest does not exit cleanly this number of milliseconds after it completes. Use `0` to disable the warning."
        | optional,
      preset
        | String
        | doc "A preset that is used as a base for Jest's configuration."
        | optional,
      prettierPath
        | js2n.Nullable String
        | doc "The path to a module that exports an object with a `format` method."
        | optional,
      projects
        | Array String
        | doc "Jest will run tests in all of these specified projects at the same time."
        | optional,
      randomize
        | Bool
        | doc "Whether to randomize the order of the tests in a file."
        | optional,
      reporters
        | Array (
          std.contract.any_of
            [ String, js2n.array.Items [ String, { _ | Dyn } ] js2n.Always ]
        )
        | doc "A list of reporter names (and configuration) that Jest can use."
        | optional,
      resetMocks
        | Bool
        | doc "Automatically reset mock state before every test."
        | optional,
      resetModules
        | Bool
        | doc "By default, each test file gets its own independent module registry. Setting this option to `true` resets the module registry before running each individual tes"
        | optional,
      resolver | String | doc "Use a custom resolver." | optional,
      restoreMocks
        | Bool
        | doc "Automatically restore mock state and implementation before every test."
        | optional,
      rootDir
        | String
        | doc "The root directory that Jest should scan for tests and modules within."
        | optional,
      roots
        | Array String
        | doc "A list of paths to directories that Jest should use to search for files in."
        | optional,
      runner
        | String
        | doc "The test environment that will be used for testing."
        | optional,
      sandboxInjectedGlobals
        | Array String
        | doc "List of extra properties to be defined in the vm for faster lookups."
        | optional,
      setupFiles
        | Array String
        | doc "A list of paths to modules that run some code to configure or set up the testing environment."
        | optional,
      setupFilesAfterEnv
        | Array String
        | doc "A list of paths to modules that run some code to configure or set up the testing framework before each test file in the suite is executed."
        | optional,
      showSeed
        | Bool
        | doc "Whether to print the seed in the test report summary."
        | optional,
      slowTestThreshold
        | Number
        | doc "The number of seconds after which a test is considered as slow and reported as such in the results."
        | optional,
      snapshotFormat
        | { _ | Dyn }
        | doc "Allows overriding specific snapshot formatting options documented in the `pretty-format readme`."
        | optional,
      snapshotResolver
        | String
        | doc "The path to a module that can resolve test<->snapshot path. This config option lets you customize where Jest stores snapshot files on disk."
        | optional,
      snapshotSerializers
        | Array String
        | doc "A list of paths to snapshot serializer modules Jest should use for snapshot testing."
        | optional,
      testEnvironment
        | String
        | doc "The test environment that will be used for testing."
        | optional,
      testEnvironmentOptions
        | { _ | Dyn }
        | doc "Options that will be passed to the `testEnvironment`."
        | optional,
      testFailureExitCode
        | Number
        | doc "Exit code of `jest` command if the test run failed."
        | optional,
      testMatch
        | Array String
        | doc "The glob patterns Jest uses to detect test files."
        | optional,
      testPathIgnorePatterns
        | Array String
        | doc "An array of regexp pattern strings that are matched against all test paths before executing the test. If the test path matches any of the patterns, it will be skipped."
        | optional,
      testRegex
        | String
        | doc "The pattern or patterns Jest uses to detect test files."
        | optional,
      testResultsProcessor
        | String
        | doc "Use a custom results processor."
        | optional,
      testRunner | String | doc "Use a custom test runner. " | optional,
      testSequencer | String | doc "Use a custom test sequencer." | optional,
      testTimeout
        | Number
        | doc "Default timeout of a test in milliseconds."
        | optional,
      transform
        | { _ | Dyn }
        | doc "A map from regular expressions to paths to transformers."
        | optional,
      transformIgnorePatterns
        | Array String
        | doc "An array of regexp pattern strings that are matched against all source file paths before transformation. If the file path matches any of the patterns, it will not be transformed."
        | optional,
      unmockedModulePathPatterns
        | Array String
        | doc "An array of regexp pattern strings that are matched against all modules before the module loader will automatically return a mock for them. If a module's path matches any of the patterns in this list, it will not be automatically mocked by the module loader."
        | optional,
      verbose
        | Bool
        | doc "Indicates whether each individual test should be reported during the run. All errors will also still be shown on the bottom after execution."
        | optional,
      watchPathIgnorePatterns
        | Array String
        | doc "An array of RegExp patterns that are matched against all source file paths before re-running tests in watch mode. If the file path matches any of the patterns, when it is updated, it will not trigger a re-run of tests."
        | optional,
      watchPlugins
        | Array String
        | doc "Enable custom watch plugins"
        | optional,
      watchman
        | Bool
        | doc "Whether to use `watchman` for file crawling."
        | optional,
      workerIdleMemoryLimit
        | std.contract.any_of [ Number, String ]
        | doc "Specifies the memory limit for workers before they are recycled."
        | optional,
      workerThreads
        | Bool
        | doc "Whether to use worker threads for parallelization. Child processes are used by default."
        | optional,
      ..
    }