# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | doc "The document schema" | optional,
      appDomain
        | std.enum.TagOrString
        | [| 'denied, 'ifAvailable, 'required |]
        | doc "Determines whether the runner will use an app domain to discover and run tests. If you choose 'required', app domains will be required (only desktop tests can be run); if you choose 'denied', then tests will not use app domains; if you choose 'ifAvailable', then app domains use is left to the discretion of the runner. Defaults to 'ifAvailable'. Note that not all runners support app domains, so the 'required' value may not always be valid."
        | optional,
      assertEquivalentMaxDepth
        | std.number.Integer
        | js2n.number.Maximum 2147483647
        | js2n.number.Minimum 1
        | doc "Determines the maximum recursive depth for object comparisons when using Assert.Equivalent."
        | optional,
      culture
        | String
        | doc "Sets the culture used when running tests. It should be one of: a BCP 47-compatible culture name (https://www.rfc-editor.org/info/bcp47); 'invariant' for the system invariant culture; or 'default' for the current system culture."
        | optional,
      diagnosticMessages
        | Bool
        | doc "Enables or disables diagnostic information during test discovery and execution."
        | optional,
      failSkips
        | Bool
        | doc "Enables or disables converting skipped tests into failed tests."
        | optional,
      failWarns
        | Bool
        | doc "Enables or disables warned tests being treated as errors. Supported for v3+ test assemblies only."
        | optional,
      internalDiagnosticMessages
        | Bool
        | doc "Enables or disables internal diagnostic information during test discovery and execution."
        | optional,
      longRunningTestSeconds
        | std.number.Integer
        | js2n.number.Maximum 2147483647
        | js2n.number.Minimum 0
        | doc "Enables reporting of tests which take longer than the configured time to complete (set to 0 to disable)."
        | optional,
      maxParallelThreads
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                std.number.Integer,
                js2n.number.Maximum 2147483647,
                js2n.number.Minimum (-1)
              ],
            js2n.string.Matches "^(\\d+(\\.\\d+)?(x|X)|default|unlimited)$"
          ]
        | doc "Configures the maximum number of threads to be used when parallelizing tests within this assembly. Use a value of 'default' or 0 to indicate that you would like the default behavior; use a value of 'unlimited' or -1 to indicate that you do not wish to limit the number of threads used for parallelization. Positive integer values indicate an exact number of threads; a string value formatted as a positive integer or decimal followed by 'x' indicates a thread count which is a multiple of the CPU threads available (example: '1x' would give 4 threads on a 4 thread CPU, or '1.5x' would give 6 threads on a 4 thread CPU)."
        | optional,
      methodDisplay
        | std.enum.TagOrString
        | [| 'classAndMethod, 'method |]
        | doc "Configures the default display name for test cases. If you choose 'method', the display name will be just the method (without the class name); if you choose 'classAndMethod', the default display name will be the fully qualified class name and method name."
        | optional,
      methodDisplayOptions
        | String
        | doc "Configures one or more automatic transformations of test names. Flag names should be combined with a comma (i.e., flag1,flag2). Valid flags are: 'replaceUnderscoreWithSpace', 'useOperatorMonikers', 'useEscapeSequences', 'replacePeriodWithComma'. There are special flags named 'all' and 'none'."
        | optional,
      parallelAlgorithm
        | std.enum.TagOrString
        | [| 'aggressive, 'conservative |]
        | doc "Configures the algorithm used when parallelizing test collections (and a limited number of threads). Valid values are 'conservative' (default) or 'aggressive'. For more information: https://xunit.net/docs/running-tests-in-parallel#algorithms"
        | optional,
      parallelizeAssembly
        | Bool
        | doc "Instructs the test runner that this assembly is willing to run in parallel with other assemblies."
        | optional,
      parallelizeTestCollections
        | Bool
        | doc "Enables or disables tests inside this assembly from running in parallel against each other. Tests in the same test collection will be run sequentially against each other, but tests in different test collections will be run in parallel against each other."
        | optional,
      preEnumerateTheories
        | Bool
        | doc "Enables or disables pre-enumerate of theories so that there is an individual test case for each theory data row. Set this to 'false' to return a single test case for each theory without pre-enumerating the data ahead of time; set this to 'true' to attempt to pre-enumerate each theory row when possible."
        | optional,
      printMaxEnumerableLength
        | std.number.Integer
        | js2n.number.Maximum 2147483646
        | js2n.number.Minimum 0
        | doc "Sets the maximum number of items to print when printing a collection, after which an ellipsis will be shown. Defaults to 5. If set to 0, there is no maximum length when printing collections collection."
        | optional,
      printMaxObjectDepth
        | std.number.Integer
        | js2n.number.Maximum 2147483646
        | js2n.number.Minimum 0
        | doc "Sets the maximum number of embedded objects to print, after which an ellipsis will be shown. Defaults to 3. If set to 1, only prints top-level objects; if set to 0, there is no maximum depth for embedded objects."
        | optional,
      printMaxObjectMemberCount
        | std.number.Integer
        | js2n.number.Maximum 2147483646
        | js2n.number.Minimum 0
        | doc "Sets the maximum number of members to print when printing an object, after which an ellipsis will be shown. Defaults to 5. If set to 0, all object members will be printed."
        | optional,
      printMaxStringLength
        | std.number.Integer
        | js2n.number.Maximum 2147483646
        | js2n.number.Minimum 0
        | doc "Sets the maximum length when printing a string value, after which an ellipsis will be shown. Defaults to 50. If set to 0, strings will not be truncated when printed."
        | optional,
      seed
        | std.number.Integer
        | doc "Set this to set the seed used for randomization (affects how the test cases are randomized). This is only valid for v3.0+ test assemblies; it will be ignored for v1 or v2 assemblies. If the seed value isn't set, then the system will determine a reasonable seed."
        | optional,
      shadowCopy
        | Bool
        | doc "Enables or disables use of shadow copying when using app domains. Has no effect if app domains are not used."
        | optional,
      showLiveOutput
        | Bool
        | doc "Enables or disables showing output from ITestOutputHelper live during the test run (in addition to showing them after the test has completed)."
        | optional,
      stopOnFail
        | Bool
        | doc "Enable or disable stopping running further tests once a failed test has been recorded."
        | optional,
    }