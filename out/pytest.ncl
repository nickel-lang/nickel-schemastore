# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AsyncioScope" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'session, 'package, 'module, 'class, 'function |]
            ],
      "definitions.IniOptions" =
        {
            addopts
              | std.contract.any_of [ Array String, String ]
              | doc "Extra command line options to be added by default."
              | optional,
            cache_dir
              | String
              | doc "Sets directory for cache plugin. Can include environment variables."
              | optional,
            consider_namespace_packages
              | Bool
              | doc "Controls whether pytest attempts to identify namespace packages."
              | optional,
            console_output_style
              | std.enum.TagOrString
              | [|
                'count,
                'progress-even-when-capture-no,
                'progress,
                'classic
              |]
              | doc "Sets console output style during test execution."
              | optional,
            doctest_encoding
              | String
              | doc "Sets default encoding for doctest files."
              | optional,
            doctest_optionflags
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies doctest flag names from the `doctest` module."
              | optional,
            empty_parameter_set_mark
              | std.enum.TagOrString
              | [| 'fail_at_collect, 'xfail, 'skip |]
              | doc "Defines behavior for empty parameter sets in parameterization."
              | optional,
            faulthandler_timeout
              | std.number.Integer
              | doc "Sets timeout in seconds for dumping the traceback of all threads if a test takes too long."
              | optional,
            filterwarnings
              | std.contract.any_of [ Array String, String ]
              | doc "Sets action to take for matching warnings. Each item is a warning specification string."
              | optional,
            junit_duration_report
              | std.enum.TagOrString
              | [| 'call, 'total |]
              | doc "Sets how to record test durations in JUnit XML report."
              | optional,
            junit_family
              | std.enum.TagOrString
              | [| 'xunit2, 'xunit1 |]
              | doc "Sets format of generated JUnit XML files."
              | optional,
            junit_log_passing_tests
              | Bool
              | doc "If `junit_logging` is not 'no', controls whether to include output of passing tests."
              | optional,
            junit_logging
              | std.enum.TagOrString
              | [| 'all, 'out-err, 'system-err, 'system-out, 'log, 'no |]
              | doc "Controls whether captured output is written to JUnit XML file."
              | optional,
            junit_suite_name
              | String
              | doc "Sets name of root test suite in JUnit XML report."
              | optional,
            log_auto_indent
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Off, 'On |] ]
                ]
              | doc "Allows selective auto-indentation of multiline log messages. Can be true, false, positive integer, 'On', or 'Off'."
              | optional,
            log_cli
              | Bool
              | doc "Enables log display during test run (live logging)."
              | optional,
            log_cli_date_format
              | String
              | doc "Sets date format for live logging using `time.strftime()` format."
              | optional,
            log_cli_format
              | String
              | doc "Sets message format for live logging using `logging` format."
              | optional,
            log_cli_level
              | refs."definitions.LogLevel"
              | doc "Sets minimum log level for live logging. Can be level name or integer value."
              | optional,
            log_date_format
              | String
              | doc "Sets date format for captured logging using `time.strftime()` format."
              | optional,
            log_file
              | String
              | doc "Sets file path to write log messages to."
              | optional,
            log_file_date_format
              | String
              | doc "Sets date format for log file using `time.strftime()` format."
              | optional,
            log_file_format
              | String
              | doc "Sets message format for log file using `logging` format."
              | optional,
            log_file_level
              | refs."definitions.LogLevel"
              | doc "Sets minimum log level for log file. Can be level name or integer value."
              | optional,
            log_format
              | String
              | doc "Sets message format for captured logging using `logging` format."
              | optional,
            log_level
              | refs."definitions.LogLevel"
              | doc "Sets minimum log level for captured logging. Can be level name or integer value."
              | optional,
            markers
              | std.contract.any_of [ Array String, String ]
              | doc "Allows registering additional markers for test functions."
              | optional,
            minversion
              | String
              | doc "Specifies minimum required pytest version."
              | optional,
            norecursedirs
              | std.contract.any_of [ Array String, String ]
              | doc "Sets base name patterns for directories to be skipped during test discovery. Uses fnmatch-style matching. Replaces default patterns."
              | optional,
            python_classes
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies name prefixes or glob patterns for identifying test classes."
              | optional,
            python_files
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies glob patterns for identifying Python test module files."
              | optional,
            python_functions
              | std.contract.any_of [ Array String, String ]
              | doc "Specifies name prefixes or glob patterns for identifying test functions and methods."
              | optional,
            pythonpath
              | std.contract.any_of [ Array String, String ]
              | doc "Sets list of directories to be added to the Python search path. Paths are relative to root directory."
              | optional,
            required_plugins
              | std.contract.any_of [ Array String, String ]
              | doc "Space-separated list of plugins required to run pytest. Can include version specifiers."
              | optional,
            testpaths
              | std.contract.any_of [ Array String, String ]
              | doc "Sets directories to search for tests when no specific paths are given on the command line. Paths are relative to root directory. Shell-style wildcards can be used."
              | optional,
            tmp_path_retention_count
              | std.number.Integer
              | doc "Number of sessions to retain `tmp_path` directories for."
              | optional,
            tmp_path_retention_policy
              | std.enum.TagOrString
              | [| 'none, 'failed, 'all |]
              | doc "Controls which `tmp_path` directories to retain based on test outcome."
              | optional,
            usefixtures
              | std.contract.any_of [ Array String, String ]
              | doc "List of fixtures that will be applied to all test functions."
              | optional,
            verbosity_assertions
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ]
                ]
              | doc "Sets verbosity specific to assertion-related output. Can be integer or 'auto'."
              | optional,
            verbosity_test_cases
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ]
                ]
              | doc "Sets verbosity specific to test case execution output. Can be integer or 'auto'."
              | optional,
            xfail_strict
              | Bool
              | doc "If true, test suite will fail if a test marked with `@pytest.mark.xfail` unexpectedly passes."
              | optional,
            ..
          },
      "definitions.IniOptionsAsyncio" =
        {
            asyncio_default_fixture_loop_scope
              | refs."definitions.AsyncioScope"
              | String
              | doc "Default event loop scope of asynchronous fixtures. When this configuration option is unset, it defaults to the fixture scope. In future versions of pytest-asyncio, the value will default to function when unset"
              | optional,
            asyncio_default_test_loop_scope
              | refs."definitions.AsyncioScope"
              | String
              | doc "Default event loop scope of asynchronous tests. When this configuration option is unset, it default to function scope"
              | optional,
            asyncio_mode
              | js2n.OneOf [ js2n.Const "auto", js2n.Const "strict" ]
              | String
              | doc "Sets the asyncio mode for pytest-asyncio."
              | optional,
            ..
          },
      "definitions.LogLevel" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.number.Integer, js2n.number.Minimum 0 ],
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'NOTSET, 'DEBUG, 'INFO, 'WARNING, 'ERROR, 'CRITICAL |]
                ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'WARN, 'FATAL |] ]
            ],
    }
    in
  {
      ini_options
        | refs."definitions.IniOptions"
        | refs."definitions.IniOptionsAsyncio"
        | doc "The `ini_options` table is used as a bridge between the existing `pytest.ini` configuration system and future configuration formats. `pytest.ini` takes precedence over `[tool.pytest.ini_options]` in `pyproject.toml`."
        | optional,
    }