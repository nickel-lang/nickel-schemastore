# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.clearTextReporterOptions" =
        {
            allowColor
              | Bool
              | doc "Indicates whether or not to use color coding in output."
              | optional,
            allowEmojis
              | Bool
              | doc "Enable emojis in your clear text report (experimental)."
              | optional,
            logTests
              | Bool
              | doc "Indicates whether or not to log which tests were executed for a given mutant."
              | optional,
            maxTestsToLog
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Indicates the maximum amount of test to log when `logTests` is enabled"
              | optional,
            reportMutants
              | Bool
              | doc "Indicates whether or not to log all mutants."
              | optional,
            reportScoreTable
              | Bool
              | doc "Indicates whether or not to log score table."
              | optional,
            reportTests
              | Bool
              | doc "Indicates whether or not to log all tests."
              | optional,
            skipFull
              | Bool
              | doc "Indicates whether rows with 100% mutation score are hidden in the score table."
              | optional,
            ..
          },
      "definitions.commandRunnerOptions" =
        {
            command
              | String
              | doc "The command to test each mutant. For example \"npm run mocha\". Defaults to \"npm test\"."
              | optional,
            ..
          },
      "definitions.coverageAnalysis" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'perTest, 'all, 'off |] ],
      "definitions.dashboardOptions" =
        {
            baseUrl
              | String
              | doc "Indicates the base url of the stryker dashboard."
              | optional,
            module
              | String
              | doc "Indicates which module to use if the \"dashboard\" reporter is enabled."
              | optional,
            project
              | String
              | doc "Indicates which project to use if the \"dashboard\" reporter is enabled."
              | optional,
            reportType
              | refs."definitions.reportType"
              | String
              | doc "Indicates wether to send a full report (inc. source code and mutant results) or only the mutation score."
              | optional,
            version
              | String
              | doc "Indicates which version to use if the \"dashboard\" reporter is enabled."
              | optional,
          },
      "definitions.eventRecorderOptions" =
        {
            baseDir
              | String
              | doc "The base dir to write the events to"
              | optional,
          },
      "definitions.htmlReporterOptions" =
        {
            fileName
              | String
              | doc "The `fileName` of the html report."
              | optional,
          },
      "definitions.jsonReporterOptions" =
        {
            fileName
              | String
              | doc "The relative filename for the json report."
              | optional,
          },
      "definitions.logLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'trace, 'debug, 'info, 'warn, 'error, 'fatal, 'off |]
            ],
      "definitions.mutationScoreThresholds" =
        {
            break
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.percentage", Number ])
              | optional,
            high | refs."definitions.percentage" | Number | optional,
            low | refs."definitions.percentage" | Number | optional,
          },
      "definitions.mutatorDescriptor" =
        {
            excludedMutations | Array String | optional,
            plugins
              | js2n.Nullable
                (Array (std.contract.any_of [ String, Array Dyn ]))
              | doc "Override the default babel plugins Stryker uses to parse your JavaScript files. The default list of plugins is extensive and normally doesn't need overriding. Stryker also loads your babel plugins by default (if you have them). If Stryker's default babel plugins conflicts with your plugins, try to override this list with an empty array."
              | optional,
          },
      "definitions.percentage" =
        std.contract.Sequence
            [ js2n.number.Maximum 100, js2n.number.Minimum 0 ],
      "definitions.reportType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'mutationScore, 'full |] ],
      "definitions.warningOptions" =
        {
            preprocessorErrors
              | Bool
              | doc "decide whether or not to log warnings when a preprocessor error occurs. For example, when the disabling of type errors fails."
              | optional,
            slow
              | Bool
              | doc "decide whether or not to log warnings when Stryker detects a slow part of mutation that can be sped up by changing some configuration. For example using `--ignoreStatic`."
              | optional,
            unknownOptions
              | Bool
              | doc "decide whether or not to log warnings when additional stryker options are configured"
              | optional,
            unserializableOptions
              | Bool
              | doc "decide whether or not to log warnings when a configuration options are unserializable. For example, using a `/regex/` or `function` in your configuration options."
              | optional,
            ..
          },
    }
    in
  {
      allowConsoleColors
        | Bool
        | doc "The 'allowConsoleColors' value indicates whether Stryker should use colors in console."
        | optional,
      allowEmpty
        | Bool
        | doc "Allows stryker to exit without any errors in cases where no tests are found"
        | optional,
      appendPlugins
        | Array String
        | doc "A list of additional plugins you want Stryker to load (`require`) without overwriting the (default) `plugins`."
        | optional,
      buildCommand
        | String
        | doc "Configure a build command to run after mutating the code, but before mutants are tested. This is generally used to transpile your code before testing. Only configure this if your test runner doesn't take care of this already and you're not using just-in-time transpiler like `babel/register` or `ts-node`."
        | optional,
      checkerNodeArgs
        | Array String
        | doc "Configure arguments to be passed as exec arguments to the checker child process(es). For example, running Stryker with `--concurrency 1 --checkerNodeArgs --inspect-brk` will allow you to debug the checker child process. See `execArgv` of [`child_process.fork`](https://nodejs.org/api/child_process.html#child_process_child_process_fork_modulepath_args_options)"
        | optional,
      checkers
        | Array String
        | doc "Enable checker plugins here. A checker plugin will be invoked for each mutant before it is run in a test runner. It can check to see of a given mutant is valid, by for example validate that it won't result in a type error"
        | optional,
      cleanTempDir
        | js2n.Enum [ "always", false, true ]
        | doc m%"
          Choose whether or not to clean the temp dir (which is ".stryker-tmp" inside the current working directory by default).
           - false: Never delete the temp dir;
           - true: Delete the tmp dir after a successful run;
           - "always": Always delete the temp dir, regardless of whether the run was successful.
        "%
        | optional,
      clearTextReporter
        | refs."definitions.clearTextReporterOptions"
        | doc "The options for the clear text reporter."
        | optional,
      commandRunner
        | refs."definitions.commandRunnerOptions"
        | doc "Options used by the command test runner. Note: these options will only be used when the command test runner is activated (this is the default)"
        | optional,
      concurrency
        | Number
        | doc "Set the concurrency of workers. Stryker will always run checkers and test runners in parallel by creating worker processes (note, not `worker_threads`). This defaults to `n-1` where `n` is the number of logical CPU cores available on your machine, unless `n <= 4`, in that case it uses `n`. This is a sane default for most use cases."
        | optional,
      coverageAnalysis
        | refs."definitions.coverageAnalysis"
        | doc m%"
          Indicates which coverage analysis strategy to use. During mutation testing, Stryker will try to only run the tests that cover a particular mutant.
          
          'perTest': Analyse coverage per test.
          'all': Analyse the coverage for the entire test suite.
          'off' (default): Don't use coverage analysis
        "%
        | optional,
      dashboard
        | refs."definitions.dashboardOptions"
        | doc "The options for the dashboard reporter."
        | optional,
      disableBail
        | Bool
        | doc "Disables the default of bailing after first failing test. When true runs all tests covering a mutant. Useful when the subject under test is not completely isolated by mocks and you want to know which tests are killing the mutants. This will impact performance."
        | optional,
      disableTypeChecks
        | std.contract.any_of [ Bool, String ]
        | doc "Set to 'true' to disable type checking, or 'false' to enable it. For more control, configure a pattern that matches the files of which type checking has to be disabled. This is needed because Stryker will create (typescript) type errors when inserting the mutants in your code. Stryker disables type checking by inserting `// @ts-nocheck` atop those files and removing other `// @ts-xxx` directives (so they won't interfere with `@ts-nocheck`). The default setting allows these directives to be stripped from all JavaScript and friend files in `lib`, `src` and `test` directories."
        | optional,
      dryRunOnly
        | Bool
        | doc "Execute the initial test run only without doing actual mutation testing. Dry run only will still mutate your code before doing the dry run without those mutants being active, thus can be used to test that StrykerJS can run your test setup. This can be useful, for example, in CI pipelines."
        | optional,
      dryRunTimeoutMinutes
        | js2n.number.Minimum 0
        | doc "Configure an absolute timeout for the initial test run. (It can take a while, therefore we use minutes as time unit.)"
        | optional,
      eventReporter
        | refs."definitions.eventRecorderOptions"
        | doc "The options for the event recorder reporter."
        | optional,
      fileLogLevel
        | refs."definitions.logLevel"
        | doc "Set the log level that Stryker uses to write to the \"stryker.log\" file"
        | optional,
      "force"
        | Bool
        | doc "Run all mutants, even if --incremental is provided and an incremental file exists. Can be used to force a rebuild of the incremental file."
        | optional,
      htmlReporter
        | refs."definitions.htmlReporterOptions"
        | doc "The options for the html reporter"
        | optional,
      ignorePatterns
        | Array String
        | doc "A comma separated list of patterns used for specifying which files need to be ignored. This should only be used in cases where you experience a slow Stryker startup, because too many (or too large) files are copied to the sandbox that are not needed to run the tests. For example, image or movie directories. Note: This option will have NO effect when using the `--inPlace` option. The directories `node_modules`, `.git` and some others are always ignored. Example: `--ignorePatterns dist`. These patterns are ALWAYS ignored: [`node_modules`, `.git`, `/reports`, `*.tsbuildinfo`, `/stryker.log`, `.stryker-tmp`]. Because Stryker always ignores these, you should rarely have to adjust the `ignorePatterns` setting at all. This is useful to speed up Stryker by ignoring big directories/files you might have in your repo that has nothing to do with your code. For example, 1.5GB of movie/image files. Specify the patterns to all files or directories that are not used to run your tests and thus should NOT be copied to the sandbox directory for mutation testing. Each patterns in this array should be a [glob pattern](#usage-of-globbing-expressions-on-options). If a glob pattern starts with `/`, the pattern is relative to the current working directory. For example, `/foo.js` matches to `foo.js` but not `subdir/foo.js`. However to SELECT specific files TO BE mutated, you better use `--mutate`."
        | optional,
      ignoreStatic
        | Bool
        | doc "Ignore static mutants. Static mutants are mutants which are only executed during the loading of a file. This means that Stryker has to reload the entire environment in order to test the mutant AND has to run all tests. Therefore, it might make sense to ignore static mutants."
        | optional,
      ignorers
        | Array String
        | doc "Specify which ignore-plugins to use. With an ignore-plugin you can ignore mutants inside common code patterns that you don't want to test for some reason. For example, you can use this to ignore all `console.debug()` statements from being mutated."
        | optional,
      inPlace
        | Bool
        | doc m%"
          Determines whether or not Stryker should mutate your files in place. Note: mutating your files in place is generally not needed for mutation testing, unless you have a dependency in your project that is really dependent on the file locations (like "app-root-path" for example).
          
          When `true`, Stryker will override your files, but it will keep a copy of the originals in the temp directory (using `tempDirName`) and it will place the originals back after it is done. Also with `true` the `ignorePatterns` has no effect any more.
          
          When `false` (default) Stryker will work in the copy of your code inside the temp directory.
        "%
        | optional,
      incremental
        | Bool
        | doc "Enable 'incremental mode'. Stryker will store results in a file and use that file to speed up the next --incremental run"
        | optional,
      incrementalFile
        | String
        | doc "Specify the file to use for incremental mode."
        | optional,
      jsonReporter
        | refs."definitions.jsonReporterOptions"
        | doc "The options for the json reporter"
        | optional,
      logLevel
        | refs."definitions.logLevel"
        | doc "Set the log level that Stryker uses to write to the console."
        | optional,
      maxConcurrentTestRunners
        | Number
        | doc "[DEPRECATED please use \"concurrency\" instead]. Specifies the maximum number of concurrent test runners to spawn. Mutation testing is time consuming. By default, Stryker tries to make the most of your CPU's, by spawning as many test runners as you have CPU cores (`Number.MAX_SAFE_INTEGER`)."
        | optional,
      maxTestRunnerReuse
        | Number
        | doc "Restart each test runner worker process after `n` runs. Not recommended unless you are experiencing memory leaks that you are unable to resolve. Configuring `0` here means infinite reuse."
        | optional,
      mutate
        | Array String
        | doc m%"
          With `mutate` you configure the subset of files or just one specific file to be mutated. These should be your _production code files_, and definitely not your test files.
          (Whereas with `ignorePatterns` you prevent non-relevant files from being copied to the sandbox directory in the first place)
          The default will try to guess your production code files based on sane defaults. It reads like this:
          - Include all js-like files inside the `src` or `lib` dir
          - Except files inside `__tests__` directories and file names ending with `test` or `spec`.
          If the defaults are not sufficient for you, for example in a angular project you might want to
           **exclude** not only the `*.spec.ts` files but other files too, just like the default already does.
          It is possible to specify exactly which code blocks to mutate by means of a _mutation range_. This can be done postfixing your file with `:startLine[:startColumn]-endLine[:endColumn]`. Example: src/index.js:1:3-1:5
        "%
        | optional,
      mutator
        | refs."definitions.mutatorDescriptor"
        | doc "Configure how Stryker mutates your code."
        | optional,
      packageManager
        | std.enum.TagOrString
        | [| 'pnpm, 'yarn, 'npm |]
        | doc "The package manager Stryker can use to install missing dependencies."
        | optional,
      plugins
        | Array String
        | doc "With 'plugins', you can add additional Node modules for Stryker to load (or require). By default, all node_modules starting with @stryker-mutator/* will be loaded, so you would normally not need to specify this option. These modules should be installed right next to stryker. For a current list of plugins, you can consult 'npm' or 'stryker-mutator.io.'"
        | optional,
      reporters
        | Array String
        | doc "With reporters, you can set the reporters for stryker to use."
        | optional,
      symlinkNodeModules
        | Bool
        | doc "The 'symlinkNodeModules' value indicates whether Stryker should create a symbolic link to your current node_modules directory in the sandbox directories. This makes running your tests by Stryker behave more like your would run the tests yourself in your project directory. Only disable this setting if you really know what you are doing."
        | optional,
      tempDirName
        | String
        | doc "Choose a different temp dir that Stryker uses for mutation testing. This directory will contain copies of your source code during a mutation test run. It will be created if it not exists and is *entirely deleted* after a successful run, so change this with caution."
        | optional,
      testRunner
        | String
        | doc "With 'testRunner' you specify the test runner that Stryker uses to run your tests. The default value is command. The command runner runs a configurable bash/cmd command and bases the result on the exit code of that program (0 for success, otherwise failed). You can configure this command via the config file using the 'commandRunner: { command: 'npm run mocha' }'. It uses 'npm test' as the command by default."
        | optional,
      testRunnerNodeArgs
        | Array String
        | doc "Configure arguments to be passed as exec arguments to the test runner child process. For example, running Stryker with `--timeoutMS 9999999 --concurrency 1 --testRunnerNodeArgs --inspect-brk` will allow you to debug the test runner child process. See `execArgv` of [`child_process.fork`](https://nodejs.org/api/child_process.html#child_process_child_process_fork_modulepath_args_options)"
        | optional,
      thresholds
        | refs."definitions.mutationScoreThresholds"
        | doc "Specify the thresholds for mutation score."
        | optional,
      timeoutFactor
        | Number
        | doc "Configure the allowed timeout deviation relative to the time of a normal test run. Tweak this if you notice that mutants are prone to creating slower code, but not infinite loops (for that, use `timeoutMS`)"
        | optional,
      timeoutMS
        | Number
        | doc "Configure an absolute timeout deviation. Tweak this if you run Stryker on a busy machine and you need to wait longer to make sure that the code indeed entered an infinite loop."
        | optional,
      tsconfigFile
        | String
        | doc "Configure the (root) tsconfig file for typescript projects. This will allow Stryker to rewrite the `extends` and `references` settings in this and related tsconfig files in your sandbox. Defaults to `tsconfig.json`. This setting is also used when you enable the `@stryker-mutator/typescript-checker plugin"
        | optional,
      warnings
        | std.contract.any_of [ Bool, refs."definitions.warningOptions" ]
        | doc "Enable or disable certain warnings"
        | optional,
      ..
    }