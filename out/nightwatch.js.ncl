# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      custom_assertions_path
        | std.contract.any_of [ js2n.Null, String, Array String ]
        | doc "Location(s) where custom assertions will be loaded from."
        | optional,
      custom_commands_path
        | std.contract.any_of [ js2n.Null, String, Array String ]
        | doc "Location(s) where custom commands will be loaded from."
        | optional,
      default_reporter | String | optional,
      desiredCapabilities | { browserName | String | optional, .. } | optional,
      detailed_output
        | Bool
        | doc "Set this to false if you'd like to only see the test case name displayed and pass/fail status."
        | optional,
      disable_colors
        | Bool
        | doc "Used to disable colored output in the terminal."
        | optional,
      disable_error_log
        | Bool
        | doc "Set this to true if you'd like to not display errors during the execution of the test (they are shown at the end always)."
        | optional,
      dotenv
        | { _ | Dyn }
        | doc "Configuration settings for the dotenv module - a zero-dependency module that loads environment variables from a .env file into process.env. More details on https://www.npmjs.com/package/dotenv"
        | optional,
      end_session_on_fail
        | Bool
        | doc "End the session automatically when the test is being terminated, usually after a failed assertion."
        | optional,
      exclude
        | js2n.Nullable (Array String)
        | doc "An array of folders or file patterns to be skipped (relative to the main source folder)."
        | optional,
      filter
        | js2n.Nullable String
        | doc "Folder or file pattern to be used when loading the tests. Files that don't match this pattern will be ignored."
        | optional,
      globals
        | {
          abortOnAssertionFailure
            | Bool
            | doc "This controls whether to abort the test execution when an assertion failed and skip the rest. It's being used in waitFor commands and expect assertions"
            | optional,
          abortOnElementLocateError
            | Bool
            | doc "This controls whether to abort the test execution when an element cannot be located; an error is logged in all cases, but this also enables skipping the rest of the testcase; It's being used in element commands such as .click() or .getText()"
            | optional,
          asyncHookTimeout
            | std.number.Integer
            | doc "Controls the timeout value for async hooks. Expects the done() callback to be invoked within this time or an error is thrown"
            | optional,
          customReporterCallbackTimeout
            | std.number.Integer
            | doc "Controls the timeout value for when executing the global async reporter. Expects the done() callback to be invoked within this time or an error is thrown"
            | optional,
          reporter | js2n.Always | optional,
          retryAssertionTimeout
            | std.number.Integer
            | doc "Automatically retrying failed assertions - You can tell Nightwatch to automatically retry failed assertions until a given timeout is reached, before the test runner gives up and fails the test."
            | optional,
          suppressWarningsOnMultipleElementsReturned
            | Bool
            | doc "By default a warning is printed if multiple elements are found using the given locate strategy and selector; set this to true to suppress those warnings"
            | optional,
          throwOnMultipleElementsReturned
            | Bool
            | doc "This will cause waitFor commands on elements to throw an error if multiple elements are found using the given locate strategy and selector"
            | optional,
          unitTestsTimeout
            | std.number.Integer
            | doc "Controls the timeout value for when running async unit tests. Expects the done() callback to be invoked within this time or an error is thrown"
            | optional,
          waitForConditionPollInterval
            | std.number.Integer
            | doc "This will overwrite the default polling interval (currently 500ms) for waitFor commands and expect assertions that use retry"
            | optional,
          waitForConditionTimeout
            | std.number.Integer
            | doc "Default timeout value in milliseconds for waitFor commands and implicit waitFor value for expect assertions"
            | optional,
          ..
        }
        | doc "An object which will be made available on the main test api, throughout the test execution"
        | optional,
      globals_path
        | js2n.Nullable String
        | doc "Location of an external globals module which will be loaded and made available to the test as a property globals on the main client instance."
        | optional,
      launch_url
        | String
        | doc "A url which can be used later in the tests as the main url to load."
        | optional,
      live_output
        | Bool
        | doc "Used when running in parallel to determine if the output should be collected and displayed at the end."
        | optional,
      log_screenshot_data
        | Bool
        | doc "Used to enable showing the Base64 image data in the (verbose) log when taking screenshots."
        | optional,
      output
        | Bool
        | doc "Used to disable terminal output completely."
        | optional,
      output_folder
        | String
        | doc "The location where the JUnit XML report files will be saved. Set this to false if you want to disable XML reporting"
        | optional,
      output_timestamp
        | Bool
        | doc "Set this to true if you'd like to see timestamps next to the logging output"
        | optional,
      page_objects_path
        | std.contract.any_of [ js2n.Null, String, Array Dyn ]
        | doc "Location(s) where page object files will be loaded from."
        | optional,
      parallel_mode | Bool | optional,
      parallel_process_delay
        | std.number.Integer
        | doc "Used when running in parallel to specify the delay (in milliseconds) between starting the child processes"
        | optional,
      persist_globals
        | Bool
        | doc "Persist the same globals object between runs or have a (deep) copy of it per each test; this can be useful when persisting data between test suites is needed, such as a cookie or session information"
        | optional,
      report_prefix | String | optional,
      screenshots
        | Bool
        | doc "Take error and failure screenshots during test execution"
        | optional,
      selenium
        | {
          check_process_delay | std.number.Integer | optional,
          cli_args | std.contract.any_of [ { _ | Dyn }, Array Dyn ] | optional,
          log_path | std.contract.any_of [ Bool, String ] | optional,
          max_status_poll_tries | std.number.Integer | optional,
          port | js2n.Always | optional,
          server_path | js2n.Nullable String | optional,
          start_process | Bool | optional,
          status_poll_interval | std.number.Integer | optional,
          ..
        }
        | doc "An object containing Selenium Server related configuration options"
        | optional,
      silent
        | Bool
        | doc "set to false if you want to show the extended http traffic command logs from the WebDriver server."
        | optional,
      skip_testcases_on_fail
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Skip the remaining test cases from the current test suite, when one test case fails."
        | optional,
      skipgroup
        | String
        | doc "Skip a group of tests (a subfolder); can be a list of comma-separated values (no space)"
        | optional,
      skiptags
        | String
        | doc "Skip tests by tag name; can be a list of comma-separated values (no space)"
        | optional,
      src_folders
        | std.contract.any_of [ js2n.Null, String, Array String ]
        | doc "A string or array of folders (excluding subfolders) where the tests are located."
        | optional,
      start_session
        | Bool
        | doc "Whether or not to automatically start the Selenium/WebDriver session. If running unit tests, this should be set tot false."
        | optional,
      sync_test_names | Bool | optional,
      test_runner
        | String
        | doc "Specifies which test runner to use: default|mocha"
        | optional,
      test_settings | { _ | Dyn } | optional,
      test_workers
        | std.contract.any_of
          [
            Bool,
            {
              enabled | Bool | optional,
              node_options
                | std.contract.any_of [ String, Array String ]
                | doc "Pass node arguments to individual workers (all of the process.execArgv using \"auto\" or selectively pass node arguments via [\"--inspect\"])"
                | optional,
              workers
                | std.contract.any_of [ Number, String ]
                | doc "Automatically compute the number of workers based on CPU cores with \"auto\" or manually specify the number of workers"
                | optional,
              ..
            }
          ]
        | doc "Whether or not to run individual test files in parallel."
        | optional,
      unit_tests_mode | Bool | optional,
      use_xpath
        | Bool
        | doc "Use xpath as the default locator strategy"
        | optional,
      webdriver
        | {
          access_key | js2n.Always | optional,
          check_process_delay
            | std.number.Integer
            | doc "Time to wait (in ms) before starting to check the Webdriver server is up and running"
            | optional,
          cli_args | std.contract.any_of [ { _ | Dyn }, Array Dyn ] | optional,
          default_path_prefix | js2n.Always | optional,
          host | js2n.Always | optional,
          log_path | String | optional,
          max_status_poll_tries
            | std.number.Integer
            | doc "Maximum number of ping status check attempts before returning a timeout error"
            | optional,
          port | js2n.Always | optional,
          process_create_timeout
            | std.number.Integer
            | doc "The entire time (in ms) to wait for the Node.js process to be created and running (default is 2 min), including spawning the child process and checking the status"
            | optional,
          proxy | js2n.Always | optional,
          server_path | js2n.Nullable String | optional,
          ssl | js2n.Always | optional,
          start_process | Bool | optional,
          status_poll_interval
            | std.number.Integer
            | doc "Interval (in ms) to use between status ping checks when checking if the Webdriver server is up and running"
            | optional,
          timeout_options
            | {
              retry_attempts | js2n.Always | optional,
              timeout | js2n.Always | optional,
              ..
            }
            | optional,
          use_legacy_jsonwire | js2n.Always | optional,
          username | js2n.Always | optional,
          ..
        }
        | doc "Defines options used to connect to the WebDriver/Selenium server"
        | optional,
      ..
    }