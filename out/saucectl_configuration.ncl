# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "allOf.0.then.properties.defaults.properties.timeout" =
        js2n.string.Matches "^(?:\\d+h)?(?:\\d+m)?(?:\\d+s)?(?:\\d+ms)?$",
      "allOf.0.then.properties.env" = { _ | Dyn },
      "allOf.1.then.allOf.0" =
        {
            sauce
              | {
                concurrency
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Sets the maximum number of suites to execute at the same time. Excess suites are queued and run in order as each suite completes."
                  | optional,
                launchOrder
                  | std.contract.Equal "fail rate"
                  | doc "Control starting order of suites. The default is the order in which suites are written in the config file."
                  | optional,
                metadata
                  | {
                    build
                      | String
                      | doc "Sauce Labs can aggregate all jobs under one view based on their association with a build."
                      | optional,
                    tags
                      | Array Dyn
                      | doc "Tag your jobs so you can find them easier in Sauce Labs."
                      | optional,
                  }
                  | doc "The set of properties that allows you to provide additional information about your project that helps you distinguish it in the various environments in which it is used and reviewed."
                  | optional,
                region
                  | std.enum.TagOrString
                  | [| 'eu-central-1, 'us-east-4, 'us-west-1 |]
                  | doc "Which Sauce Labs data center to target."
                  | optional,
                retries
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "The number of times to retry a failing suite."
                  | optional,
                sauceignore
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Path to the .sauceignore file."
                  | optional,
                tunnel
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        name | String | doc "The tunnel name.",
                        owner
                          | String
                          | doc "The owner (username) of the tunnel. Must be specified if the user that created the tunnel differs from the user that is running the tests."
                          | optional,
                        timeout
                          | js2n.string.Matches
                            "^(?:\\d+h)?(?:\\d+m)?(?:\\d+s)?(?:\\d+ms)?$"
                          | doc "How long to wait for the specified tunnel to be ready. Supports duration values like '10s', '30m' etc."
                          | optional,
                      },
                      Array Dyn
                    ]
                  | doc "SauceCTL supports using Sauce Connect to establish a secure connection when running your tests on Sauce Labs. To do so, launch a tunnel; then provide the identifier in this property."
                  | optional,
                visibility
                  | js2n.OneOf
                    [
                      js2n.Const "public",
                      js2n.Const "public restricted",
                      js2n.Const "share",
                      js2n.Const "team",
                      js2n.Const "private"
                    ]
                  | String
                  | doc "Set the visibility level of test results for suites run on Sauce Labs."
                  | optional,
              }
              | doc "All settings related to how tests are run and identified in the Sauce Labs platform."
              | optional,
            ..
          },
      "allOf.1.then.allOf.1" =
        {
            artifacts
              | {
                cleanup
                  | Bool
                  | doc "Whether to remove all contents of artifacts directory"
                  | optional,
                download
                  | {
                    allAttempts
                      | Bool
                      | doc "If true and a test is retried, artifacts for every attempt will be downloaded. Otherwise, only artifacts for the final attempt will be downloaded."
                      | optional,
                    directory
                      | String
                      | doc "Specifies the path to the folder in which to download artifacts. A separate subdirectory is generated in this location for each suite.",
                    "match"
                      | Array Dyn
                      | doc "Specifies which artifacts to download based on whether they match the file pattern provided. Supports the wildcard character '*'.",
                    when
                      | std.enum.TagOrString
                      | [| 'pass, 'never, 'fail, 'always |]
                      | doc "Specifies when and under what circumstances to download artifacts.",
                  }
                  | doc "Settings related to downloading test artifacts from Sauce Labs."
                  | optional,
                retain
                  | { _ | String }
                  | doc "Compress folders into zip files, which can then be downloaded as artifacts."
                  | optional,
              }
              | doc "Manage test output, such as logs, videos, and screenshots."
              | optional,
            ..
          },
      "allOf.1.then.allOf.2" =
        {
            reporters
              | {
                json
                  | {
                    enabled
                      | Bool
                      | doc "Toggles the reporter on/off."
                      | optional,
                    filename
                      | String
                      | doc "Filename for the generated JSON report."
                      | optional,
                    webhookURL
                      | String
                      | doc "Webhook URL to pass JSON report."
                      | optional,
                    ..
                  }
                  | doc "The JSON reporter merges test results from all jobs in the JSON format into a single report."
                  | optional,
                junit
                  | {
                    enabled
                      | Bool
                      | doc "Toggles the reporter on/off."
                      | optional,
                    filename
                      | String
                      | doc "Filename for the generated JUnit report."
                      | optional,
                    ..
                  }
                  | doc "The JUnit reporter merges test results from all jobs in the JUnit format into a single report."
                  | optional,
                spotlight
                  | {
                    enabled
                      | Bool
                      | doc "Toggles the reporter on/off."
                      | optional,
                    ..
                  }
                  | doc "The spotlight reporter prints an overview of failed, or otherwise interesting, jobs."
                  | optional,
              }
              | optional,
            ..
          },
      "allOf.1.then.properties.defaults.properties.timeout" =
        js2n.string.Matches "^(?:\\d+h)?(?:\\d+m)?(?:\\d+s)?(?:\\d+ms)?$",
      "allOf.1.then.properties.showConsoleLog" = Bool,
      "allOf.1.then.properties.suites.items.properties.emulators.items.properties.orientation" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'portrait, 'landscape |] ],
      "allOf.1.then.properties.suites.items.properties.passThreshold" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "allOf.1.then.properties.suites.items.properties.smartRetry" =
        {
            failedOnly
              | Bool
              | doc "Optimize suite retries by retrying failed tests, classes or spec files only."
              | optional,
            ..
          },
      "allOf.2.then.allOf.1" =
        {
            npm
              | {
                dependencies
                  | Array Dyn
                  | doc "Specify local npm dependencies for saucectl to upload. These dependencies must already be installed in the local node_modules directory."
                  | optional,
                packages
                  | { _ | Dyn }
                  | doc "Specifies any npm packages that are required to run tests."
                  | optional,
                registries
                  | Array
                    {
                      auth
                        | String
                        | doc "Base64-encoded authentication string for the registry entry"
                        | optional,
                      authToken
                        | String
                        | doc "Authentication token for the registry entry"
                        | optional,
                      email
                        | String
                        | doc "Email for authentication with the registry"
                        | optional,
                      password
                        | String
                        | doc "Password for authentication with the registry"
                        | optional,
                      scope
                        | String
                        | doc "Scope for the registry entry"
                        | optional,
                      url | String | doc "URL for the registry entry",
                      username
                        | String
                        | doc "Username for authentication with the registry"
                        | optional,
                      ..
                    }
                  | doc "Specify all the registries you want to configure"
                  | optional,
                registry
                  | String
                  | doc "Override the default and official NPM registry URL with a custom one."
                  | optional,
                strictSSL
                  | Bool
                  | doc "Whether or not to do SSL key validation when making requests to the registry via https."
                  | optional,
                usePackageLock
                  | Bool
                  | doc "Specifies whether to use the project's package-lock.json when installing npm dependencies. If true, package-lock.json will be used during installation which will improve the speed of installation."
                  | optional,
              }
              | doc "Settings specific to npm."
              | optional,
            ..
          },
      "allOf.2.then.properties.env" = { _ | Dyn },
      "allOf.2.then.properties.rootDir" = String,
      "allOf.2.then.properties.suites.items.properties.excludedTestFiles" =
        Array Dyn,
      "allOf.2.then.properties.suites.items.properties.preExec" = Array Dyn,
      "allOf.2.then.properties.suites.items.properties.screenResolution" =
        String,
      "allOf.2.then.properties.suites.items.properties.timeZone" = String,
      "allOf.3.then.properties.suites.items.properties.browserVersion" = String,
      "allOf.3.then.properties.suites.items.properties.platform" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"Windows 11",
                '"Windows 10",
                '"macOS 13",
                '"macOS 12",
                '"macOS 11.00"
              |]
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        apiVersion = js2n.Const "v1",
                        kind = js2n.Const "cypress",
                      },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              {
                apiVersion | std.contract.Equal "v1",
                cypress
                  | {
                    configFile
                      | String
                      | doc "The designated cypress configuration file.",
                    key
                      | String
                      | doc "The secret key that grants permission to record your tests in the Cypress dashboard."
                      | optional,
                    record
                      | Bool
                      | doc "Whether to record your test results in the Cypress dashboard."
                      | optional,
                    version
                      | std.enum.TagOrString
                      | [|
                        '"13.10.0",
                        '"13.12.0",
                        '"13.13.1",
                        '"13.13.3",
                        '"13.14.2",
                        '"13.15.1",
                        '"13.15.2",
                        '"13.16.0",
                        '"14.0.0",
                        '"14.1.0",
                        '"14.3.2",
                        '"package.json"
                      |]
                      | doc "Which framework version to use.",
                  }
                  | doc "Contains details specific to the Cypress project.",
                defaults
                  | {
                    timeout
                      | js2n.string.Matches
                        "^(?:\\d+h)?(?:\\d+m)?(?:\\d+s)?(?:\\d+ms)?$"
                      | doc "Instructs how long (in ms, s, m, or h) saucectl should wait for a suite to complete."
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                env
                  | { _ | Dyn }
                  | doc "Set one or more environment variables. Values can be environment variables themselves. Not supported when running espresso/xcuitest!"
                  | optional,
                kind | std.contract.Equal "cypress",
                nodeVersion
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Specifies the Node.js version for Sauce Cloud. Supports SemVer notation and aliases."
                  | optional,
                rootDir
                  | String
                  | doc "The directory of files that need to be bundled and uploaded for the tests to run."
                  | optional,
                showConsoleLog
                  | Bool
                  | doc "Shows suites console.log locally. By default console.log is only shown on failures."
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      browser
                        | std.enum.TagOrString
                        | [| 'webkit, 'microsoftedge, 'firefox, 'chrome |]
                        | doc "The name of the browser in which to run the tests.",
                      browserVersion
                        | String
                        | doc "Which version of the browser to use."
                        | optional,
                      config
                        | {
                          env | refs."allOf.0.then.properties.env" | optional,
                          excludeSpecPattern
                            | Array Dyn
                            | doc "Exclude test files for this suite."
                            | optional,
                          specPattern
                            | Array Dyn
                            | doc "One or more paths to the Cypress test files to run for this suite.",
                          testingType
                            | std.enum.TagOrString
                            | [| 'component, 'e2e |]
                            | doc "Specify the type of tests to execute; either e2e or component. Defaults to e2e"
                            | optional,
                          ..
                        }
                        | doc "Provides details related to the Cypress test configuration.",
                      headless
                        | Bool
                        | doc "Controls whether or not tests are run in headless mode (default: false)"
                        | optional,
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      passThreshold
                        | std.number.Integer
                        | js2n.number.Minimum 1
                        | doc "The minimum number of successful attempts for a suite to be considered as 'passed'."
                        | optional,
                      platformName
                        | std.enum.TagOrString
                        | [|
                          '"Windows 11",
                          '"Windows 10",
                          '"macOS 13",
                          '"macOS 12",
                          '"macOS 11.00"
                        |]
                        | doc "A specific operating system on which to run the tests. Sauce Labs will try to choose a reasonable default if not explicitly specified."
                        | optional,
                      preExec
                        | Array Dyn
                        | doc "Specifies which commands to execute before starting the tests."
                        | optional,
                      screenResolution
                        | String
                        | doc "Specifies a browser window screen resolution, which may be useful if you are attempting to simulate a browser on a particular device type."
                        | optional,
                      shard
                        | std.enum.TagOrString
                        | [| 'spec, 'concurrency, '"" |]
                        | doc "When sharding is configured, saucectl automatically splits the tests (e.g. by spec or concurrency) so that they can easily run in parallel."
                        | optional,
                      shardGrepEnabled
                        | Bool
                        | doc "When sharding is configured and the suite is configured to filter using cypress-grep, let saucectl filter tests before executing."
                        | optional,
                      smartRetry
                        | {
                          failedOnly
                            | Bool
                            | doc "Optimize suite retries by retrying failed tests, classes or spec files only."
                            | optional,
                          ..
                        }
                        | doc "Optimize suite retries by configuring the strategy."
                        | optional,
                      timeZone
                        | String
                        | doc "Specifies the timeZone for the suite."
                        | optional,
                      timeout
                        | refs."allOf.0.then.properties.defaults.properties.timeout"
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                ..
              },
              {
                artifacts
                  | {
                    cleanup
                      | Bool
                      | doc "Whether to remove all contents of artifacts directory"
                      | optional,
                    download
                      | {
                        allAttempts
                          | Bool
                          | doc "If true and a test is retried, artifacts for every attempt will be downloaded. Otherwise, only artifacts for the final attempt will be downloaded."
                          | optional,
                        directory
                          | String
                          | doc "Specifies the path to the folder in which to download artifacts. A separate subdirectory is generated in this location for each suite.",
                        "match"
                          | Array Dyn
                          | doc "Specifies which artifacts to download based on whether they match the file pattern provided. Supports the wildcard character '*'.",
                        when
                          | std.enum.TagOrString
                          | [| 'pass, 'never, 'fail, 'always |]
                          | doc "Specifies when and under what circumstances to download artifacts.",
                      }
                      | doc "Settings related to downloading test artifacts from Sauce Labs."
                      | optional,
                    retain
                      | { _ | String }
                      | doc "Compress folders into zip files, which can then be downloaded as artifacts."
                      | optional,
                  }
                  | doc "Manage test output, such as logs, videos, and screenshots."
                  | optional,
                ..
              },
              {
                npm
                  | {
                    dependencies
                      | Array Dyn
                      | doc "Specify local npm dependencies for saucectl to upload. These dependencies must already be installed in the local node_modules directory."
                      | optional,
                    packages
                      | { _ | Dyn }
                      | doc "Specifies any npm packages that are required to run tests."
                      | optional,
                    registries
                      | Array
                        {
                          auth
                            | String
                            | doc "Base64-encoded authentication string for the registry entry"
                            | optional,
                          authToken
                            | String
                            | doc "Authentication token for the registry entry"
                            | optional,
                          email
                            | String
                            | doc "Email for authentication with the registry"
                            | optional,
                          password
                            | String
                            | doc "Password for authentication with the registry"
                            | optional,
                          scope
                            | String
                            | doc "Scope for the registry entry"
                            | optional,
                          url | String | doc "URL for the registry entry",
                          username
                            | String
                            | doc "Username for authentication with the registry"
                            | optional,
                          ..
                        }
                      | doc "Specify all the registries you want to configure"
                      | optional,
                    registry
                      | String
                      | doc "Override the default and official NPM registry URL with a custom one."
                      | optional,
                    strictSSL
                      | Bool
                      | doc "Whether or not to do SSL key validation when making requests to the registry via https."
                      | optional,
                    usePackageLock
                      | Bool
                      | doc "Specifies whether to use the project's package-lock.json when installing npm dependencies. If true, package-lock.json will be used during installation which will improve the speed of installation."
                      | optional,
                  }
                  | doc "Settings specific to npm."
                  | optional,
                ..
              },
              {
                sauce
                  | {
                    concurrency
                      | std.number.Integer
                      | js2n.number.Minimum 1
                      | doc "Sets the maximum number of suites to execute at the same time. Excess suites are queued and run in order as each suite completes."
                      | optional,
                    launchOrder
                      | std.contract.Equal "fail rate"
                      | doc "Control starting order of suites. The default is the order in which suites are written in the config file."
                      | optional,
                    metadata
                      | {
                        build
                          | String
                          | doc "Sauce Labs can aggregate all jobs under one view based on their association with a build."
                          | optional,
                        tags
                          | Array Dyn
                          | doc "Tag your jobs so you can find them easier in Sauce Labs."
                          | optional,
                      }
                      | doc "The set of properties that allows you to provide additional information about your project that helps you distinguish it in the various environments in which it is used and reviewed."
                      | optional,
                    region
                      | std.enum.TagOrString
                      | [| 'eu-central-1, 'us-west-1 |]
                      | doc "Which Sauce Labs data center to target."
                      | optional,
                    retries
                      | std.number.Integer
                      | js2n.number.Minimum 0
                      | doc "The number of times to retry a failing suite."
                      | optional,
                    sauceignore
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "Path to the .sauceignore file."
                      | optional,
                    tunnel
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            name | String | doc "The tunnel name.",
                            owner
                              | String
                              | doc "The owner (username) of the tunnel. Must be specified if the user that created the tunnel differs from the user that is running the tests."
                              | optional,
                          },
                          Array Dyn
                        ]
                      | doc "SauceCTL supports using Sauce Connect to establish a secure connection when running your tests on Sauce Labs. To do so, launch a tunnel; then provide the identifier in this property."
                      | optional,
                    visibility
                      | js2n.OneOf
                        [
                          js2n.Const "public",
                          js2n.Const "public restricted",
                          js2n.Const "share",
                          js2n.Const "team",
                          js2n.Const "private"
                        ]
                      | String
                      | doc "Set the visibility level of test results for suites run on Sauce Labs."
                      | optional,
                  }
                  | doc "All settings related to how tests are run and identified in the Sauce Labs platform."
                  | optional,
                ..
              },
              {
                reporters
                  | {
                    json
                      | {
                        enabled
                          | Bool
                          | doc "Toggles the reporter on/off."
                          | optional,
                        filename
                          | String
                          | doc "Filename for the generated JSON report."
                          | optional,
                        webhookURL
                          | String
                          | doc "Webhook URL to pass JSON report."
                          | optional,
                        ..
                      }
                      | doc "The JSON reporter merges test results from all jobs in the JSON format into a single report."
                      | optional,
                    junit
                      | {
                        enabled
                          | Bool
                          | doc "Toggles the reporter on/off."
                          | optional,
                        filename
                          | String
                          | doc "Filename for the generated JUnit report."
                          | optional,
                        ..
                      }
                      | doc "The JUnit reporter merges test results from all jobs in the JUnit format into a single report."
                      | optional,
                    spotlight
                      | {
                        enabled
                          | Bool
                          | doc "Toggles the reporter on/off."
                          | optional,
                        ..
                      }
                      | doc "The spotlight reporter prints an overview of failed, or otherwise interesting, jobs."
                      | optional,
                  }
                  | optional,
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "espresso", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | js2n.string.Matches
                        "^(?:\\d+h)?(?:\\d+m)?(?:\\d+s)?(?:\\d+ms)?$"
                      | doc "Instructs how long (in ms, s, m, or h) saucectl should wait for a suite to complete."
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                espresso
                  | {
                    app
                      | String
                      | doc "Local path or remote url to the application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values.",
                    appDescription
                      | String
                      | doc "Description for the app"
                      | optional,
                    otherApps
                      | js2n.array.MaxItems 7
                      | doc "A list of applications to be installed alongside the main app. Applications can be defined as a local path or a remote url. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                      | optional,
                    testApp
                      | String
                      | doc "Local path or remote url to the test application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values.",
                    testAppDescription
                      | String
                      | doc "Description for the testApp"
                      | optional,
                  }
                  | doc "Contains details specific to the Espresso project.",
                kind | std.contract.Equal "espresso",
                showConsoleLog
                  | Bool
                  | doc "Shows suites console.log locally. By default console.log is only shown on failures."
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.record.Required [ "emulators" ],
                            js2n.record.Required [ "devices" ]
                          ],
                        {
                          appSettings
                            | {
                              audioCapture
                                | Bool
                                | doc "Configure app settings for real device to capture audio."
                                | optional,
                              instrumentation
                                | {
                                  biometrics
                                    | Bool
                                    | doc "Configure app settings for real device to intercept biometric authentication."
                                    | optional,
                                  bypassScreenshotRestriction
                                    | Bool
                                    | doc "Configure app settings for real device to enable bypassing of screenshot restriction."
                                    | optional,
                                  imageInjection
                                    | Bool
                                    | doc "Configure app settings for real device to inject provided images in the user app."
                                    | optional,
                                  networkCapture
                                    | Bool
                                    | doc "Configure app settings for real device to capture network."
                                    | optional,
                                  vitals
                                    | Bool
                                    | doc "Configure app settings for real device to enable vitals."
                                    | optional,
                                  ..
                                }
                                | doc "Configure app settings for real device instrumentation."
                                | optional,
                              resigningEnabled
                                | Bool
                                | doc "Configure app settings for real device to enable app resigning."
                                | optional,
                              ..
                            }
                            | doc "Configure real device settings."
                            | optional,
                          devices
                            | Array (
                              std.contract.Sequence
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      {
                                        id
                                          | String
                                          | doc "Request a specific device for this test suite by its ID. You can look up device IDs in the Sauce Labs app or using our Devices API (https://docs.saucelabs.com/dev/api/rdc#get-devices)."
                                          | optional,
                                        name
                                          | String
                                          | doc "Match the device name in full or partially (regex), which may provide a larger pool of available devices of the type you want."
                                          | optional,
                                        options
                                          | {
                                            carrierConnectivity
                                              | Bool
                                              | doc "Limit the device selection to those that are connected to a cellular network."
                                              | optional,
                                            deviceType
                                              | std.enum.TagOrString
                                              | [| 'TABLET, 'PHONE, 'ANY |]
                                              | doc "Limit the device selection to a specific type of device."
                                              | optional,
                                            private
                                              | Bool
                                              | doc "Limit the device selection to only match from your organization's private pool."
                                              | optional,
                                          }
                                          | doc "Further specify desired device attributes within the pool of devices that match the name and version criteria."
                                          | optional,
                                        platformVersion
                                          | String
                                          | doc "The version of the Android operating system."
                                          | optional,
                                      },
                                      Array Dyn
                                    ],
                                  js2n.OneOf
                                    [
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "id" ],
                                          Array Dyn
                                        ],
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "name" ],
                                          Array Dyn
                                        ]
                                    ]
                                ]
                            )
                            | doc "Define details for running this suite on real devices."
                            | optional,
                          emulators
                            | Array (
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {
                                    name
                                      | String
                                      | doc "The name of the emulator. To ensure name accuracy, check the list of supported virtual devices (https://app.saucelabs.com/live/web-testing/virtual).",
                                    orientation
                                      | std.enum.TagOrString
                                      | [| 'portrait, 'landscape |]
                                      | doc "The screen orientation to use."
                                      | optional,
                                    platformVersions
                                      | js2n.array.MinItems 1
                                      | doc "The set of one or more versions of the device platform on which to run the test suite.",
                                  },
                                  Array Dyn
                                ]
                            )
                            | doc "Defines details for running this suite on virtual devices using an emulator."
                            | optional,
                          name
                            | String
                            | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                          passThreshold
                            | std.number.Integer
                            | js2n.number.Minimum 1
                            | doc "The minimum number of successful attempts for a suite to be considered as 'passed'."
                            | optional,
                          smartRetry
                            | {
                              failedOnly
                                | Bool
                                | doc "Optimize suite retries by retrying failed tests, classes or spec files only."
                                | optional,
                              ..
                            }
                            | doc "Optimize suite retries by configuring the strategy."
                            | optional,
                          testApp
                            | String
                            | doc "Local path or remote url to the test application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                            | optional,
                          testAppDescription
                            | String
                            | doc "Description for the testApp"
                            | optional,
                          testOptions
                            | js2n.record.DependentFields
                              { clearPackageData = [ "useTestOrchestrator" ], }
                            | {
                              annotation
                                | String
                                | doc "Only run tests with this annotation."
                                | optional,
                              class
                                | Array Dyn
                                | doc "Only run the specified classes."
                                | optional,
                              clearPackageData
                                | Bool
                                | doc "Removes all shared states from the testing device's CPU and memory at the completion of each test. Real devices only. Has to be used in conjunction with the 'useTestOrchestrator' flag."
                                | optional,
                              filter
                                | Array Dyn
                                | doc "Only run tests that pass all of the custom filters."
                                | optional,
                              func
                                | Bool
                                | doc "Run all test classes that extend InstrumentationTestCase."
                                | optional,
                              listener
                                | Array Dyn
                                | doc "Observe the test run with one or more RunListener."
                                | optional,
                              newRunListenerMode
                                | Bool
                                | doc "Use the new list of RunListeners during a test run."
                                | optional,
                              notAnnotation
                                | String
                                | doc "Run all tests except those with this annotation."
                                | optional,
                              notClass
                                | Array Dyn
                                | doc "Run all classes except those specified here."
                                | optional,
                              notPackage
                                | String
                                | doc "Run all tests except those in this package."
                                | optional,
                              numShards
                                | std.number.Integer
                                | js2n.number.Minimum 0
                                | doc "When sharding is configured, saucectl automatically creates the sharded jobs for each of the devices defined for the suite based on the number of shards you specify. For example, for a suite testing a single emulator version that specifies 2 shards, saucectl clones the suite and runs one shard index on the first suite, and the other shard index on the identical clone suite."
                                | optional,
                              package
                                | String
                                | doc "Only run tests in the specified package."
                                | optional,
                              perf
                                | Bool
                                | doc "Run all test classes that extend PerformanceTestCase."
                                | optional,
                              runnerBuilder
                                | Array Dyn
                                | doc "Use custom builders to run tests."
                                | optional,
                              size
                                | std.enum.TagOrString
                                | [| 'large, 'medium, 'small |]
                                | doc "Run only tests that are annotated with the matching size value."
                                | optional,
                              unit
                                | Bool
                                | doc "Run all test classes that do not extend either InstrumentationTestCase or PerformanceTestCase."
                                | optional,
                              useTestOrchestrator
                                | Bool
                                | doc "Run each of your tests in its own Instrumentation instance to remove most of the app's shared state from the device CPU and memory between tests. Real devices only. Use this setting in conjunction with clearPackageData: true to completely remove all shared state."
                                | optional,
                              ..
                            }
                            | doc "Allows you to control various details on how tests are executed."
                            | optional,
                          timeout
                            | refs."allOf.1.then.properties.defaults.properties.timeout"
                            | optional,
                        }
                      ]
                  )
                  | doc "The set of properties providing details about the test suites to run.",
                ..
              },
              {
                sauce
                  | {
                    concurrency
                      | std.number.Integer
                      | js2n.number.Minimum 1
                      | doc "Sets the maximum number of suites to execute at the same time. Excess suites are queued and run in order as each suite completes."
                      | optional,
                    launchOrder
                      | std.contract.Equal "fail rate"
                      | doc "Control starting order of suites. The default is the order in which suites are written in the config file."
                      | optional,
                    metadata
                      | {
                        build
                          | String
                          | doc "Sauce Labs can aggregate all jobs under one view based on their association with a build."
                          | optional,
                        tags
                          | Array Dyn
                          | doc "Tag your jobs so you can find them easier in Sauce Labs."
                          | optional,
                      }
                      | doc "The set of properties that allows you to provide additional information about your project that helps you distinguish it in the various environments in which it is used and reviewed."
                      | optional,
                    region
                      | std.enum.TagOrString
                      | [| 'eu-central-1, 'us-east-4, 'us-west-1 |]
                      | doc "Which Sauce Labs data center to target."
                      | optional,
                    retries
                      | std.number.Integer
                      | js2n.number.Minimum 0
                      | doc "The number of times to retry a failing suite."
                      | optional,
                    sauceignore
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "Path to the .sauceignore file."
                      | optional,
                    tunnel
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            name | String | doc "The tunnel name.",
                            owner
                              | String
                              | doc "The owner (username) of the tunnel. Must be specified if the user that created the tunnel differs from the user that is running the tests."
                              | optional,
                            timeout
                              | js2n.string.Matches
                                "^(?:\\d+h)?(?:\\d+m)?(?:\\d+s)?(?:\\d+ms)?$"
                              | doc "How long to wait for the specified tunnel to be ready. Supports duration values like '10s', '30m' etc."
                              | optional,
                          },
                          Array Dyn
                        ]
                      | doc "SauceCTL supports using Sauce Connect to establish a secure connection when running your tests on Sauce Labs. To do so, launch a tunnel; then provide the identifier in this property."
                      | optional,
                    visibility
                      | js2n.OneOf
                        [
                          js2n.Const "public",
                          js2n.Const "public restricted",
                          js2n.Const "share",
                          js2n.Const "team",
                          js2n.Const "private"
                        ]
                      | String
                      | doc "Set the visibility level of test results for suites run on Sauce Labs."
                      | optional,
                  }
                  | doc "All settings related to how tests are run and identified in the Sauce Labs platform."
                  | optional,
                ..
              },
              {
                artifacts
                  | {
                    cleanup
                      | Bool
                      | doc "Whether to remove all contents of artifacts directory"
                      | optional,
                    download
                      | {
                        allAttempts
                          | Bool
                          | doc "If true and a test is retried, artifacts for every attempt will be downloaded. Otherwise, only artifacts for the final attempt will be downloaded."
                          | optional,
                        directory
                          | String
                          | doc "Specifies the path to the folder in which to download artifacts. A separate subdirectory is generated in this location for each suite.",
                        "match"
                          | Array Dyn
                          | doc "Specifies which artifacts to download based on whether they match the file pattern provided. Supports the wildcard character '*'.",
                        when
                          | std.enum.TagOrString
                          | [| 'pass, 'never, 'fail, 'always |]
                          | doc "Specifies when and under what circumstances to download artifacts.",
                      }
                      | doc "Settings related to downloading test artifacts from Sauce Labs."
                      | optional,
                    retain
                      | { _ | String }
                      | doc "Compress folders into zip files, which can then be downloaded as artifacts."
                      | optional,
                  }
                  | doc "Manage test output, such as logs, videos, and screenshots."
                  | optional,
                ..
              },
              {
                reporters
                  | {
                    json
                      | {
                        enabled
                          | Bool
                          | doc "Toggles the reporter on/off."
                          | optional,
                        filename
                          | String
                          | doc "Filename for the generated JSON report."
                          | optional,
                        webhookURL
                          | String
                          | doc "Webhook URL to pass JSON report."
                          | optional,
                        ..
                      }
                      | doc "The JSON reporter merges test results from all jobs in the JSON format into a single report."
                      | optional,
                    junit
                      | {
                        enabled
                          | Bool
                          | doc "Toggles the reporter on/off."
                          | optional,
                        filename
                          | String
                          | doc "Filename for the generated JUnit report."
                          | optional,
                        ..
                      }
                      | doc "The JUnit reporter merges test results from all jobs in the JUnit format into a single report."
                      | optional,
                    spotlight
                      | {
                        enabled
                          | Bool
                          | doc "Toggles the reporter on/off."
                          | optional,
                        ..
                      }
                      | doc "The spotlight reporter prints an overview of failed, or otherwise interesting, jobs."
                      | optional,
                  }
                  | optional,
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "playwright", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.1",
              refs."allOf.1.then.allOf.0",
              refs."allOf.1.then.allOf.2",
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | refs."allOf.1.then.properties.defaults.properties.timeout"
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                env
                  | { _ | Dyn }
                  | doc "Set one or more environment variables. Values can be environment variables themselves. Not supported when running espresso/xcuitest!"
                  | optional,
                kind | std.contract.Equal "playwright",
                nodeVersion
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "Specifies the Node.js version for Sauce Cloud. Supports SemVer notation and aliases."
                  | optional,
                playwright
                  | {
                    configFile
                      | String
                      | doc "The path to playwright config file"
                      | optional,
                    version
                      | std.enum.TagOrString
                      | [|
                        '"1.41.2",
                        '"1.43.1",
                        '"1.44.0",
                        '"1.45.0",
                        '"1.45.2",
                        '"1.46.1",
                        '"1.47.2",
                        '"1.48.2",
                        '"1.49.0",
                        '"1.49.1",
                        '"1.50.1",
                        '"1.52.0",
                        '"package.json"
                      |],
                  }
                  | doc "Contains details specific to the Playwright project.",
                rootDir
                  | String
                  | doc "The directory of files that need to be bundled and uploaded for the tests to run."
                  | optional,
                showConsoleLog
                  | refs."allOf.1.then.properties.showConsoleLog"
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      env | refs."allOf.2.then.properties.env" | optional,
                      excludedTestFiles
                        | Array Dyn
                        | doc "Exclude test files to skip the tests."
                        | optional,
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      numShards
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "When sharding is configured, saucectl automatically creates the sharded jobs based on the number of shards you specify. For example, for a suite that specifies 2 shards, saucectl clones the suite and runs shard 1/2 on the first suite, and the other shard 2/2 on the identical clone suite."
                        | optional,
                      params
                        | {
                          browserName
                            | std.enum.TagOrString
                            | [| 'chrome, 'webkit, 'firefox, 'chromium |],
                          globalTimeout
                            | std.number.Integer
                            | doc "Total timeout in milliseconds for the whole test run."
                            | optional,
                          grep
                            | String
                            | doc "Patterns to run tests based on their title."
                            | optional,
                          grepInvert
                            | String
                            | doc "Patterns to skip tests based on their title."
                            | optional,
                          headless
                            | Bool
                            | doc "Run tests in headless mode."
                            | optional,
                          maxFailures
                            | std.number.Integer
                            | js2n.number.Minimum 0
                            | doc "The maximum number of test failures for this test run. After reaching this number, testing will stop and exit with an error. Setting to zero (default) disables this behavior."
                            | optional,
                          project
                            | String
                            | doc "Specify playwright project"
                            | optional,
                          repeatEach
                            | std.number.Integer
                            | js2n.number.Minimum 0
                            | doc "The number of times to repeat each test."
                            | optional,
                          retries
                            | std.number.Integer
                            | js2n.number.Minimum 0
                            | doc "The maximum number of retry attempts given to failed tests."
                            | optional,
                          timeout
                            | std.number.Integer
                            | doc "Changes the timeout for the test (milliseconds)."
                            | optional,
                          updateSnapshots
                            | Bool
                            | doc "Whether to update expected snapshots with the actual results produced by the test run"
                            | optional,
                          workers
                            | std.number.Integer
                            | js2n.number.Minimum 1
                            | doc "Set the maximum number of parallel worker processes (default: 1)"
                            | optional,
                          ..
                        }
                        | doc "Details any additional parameters you wish to set for the test suite.",
                      passThreshold
                        | refs."allOf.1.then.properties.suites.items.properties.passThreshold"
                        | Number
                        | optional,
                      platformName
                        | std.enum.TagOrString
                        | [|
                          '"Windows 11",
                          '"Windows 10",
                          '"macOS 13",
                          '"macOS 12",
                          '"macOS 11.00"
                        |]
                        | refs."allOf.3.then.properties.suites.items.properties.platform"
                        | optional,
                      playwrightVersion
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                        | optional,
                      preExec
                        | Array Dyn
                        | doc "Specifies which commands to execute before starting the tests."
                        | optional,
                      screenResolution
                        | String
                        | doc "Specifies a browser window screen resolution, which may be useful if you are attempting to simulate a browser on a particular device type."
                        | optional,
                      shard
                        | std.enum.TagOrString
                        | [| 'spec, 'concurrency, '"" |]
                        | doc "When sharding is configured, saucectl automatically splits the tests (e.g. by spec or concurrency) so that they can easily run in parallel."
                        | optional,
                      shardGrepEnabled
                        | Bool
                        | doc "When sharding is configured and the suite is configured to filter using grep/grepInvert, let saucectl filter specs before executing."
                        | optional,
                      smartRetry
                        | refs."allOf.1.then.properties.suites.items.properties.smartRetry"
                        | optional,
                      testMatch
                        | Array Dyn
                        | doc "Paths to the playwright test files. Regex values are supported to indicate all files of a certain type or in a certain directory, etc.",
                      timeZone
                        | String
                        | doc "Specifies the timeZone for the suite."
                        | optional,
                      timeout
                        | refs."allOf.1.then.properties.defaults.properties.timeout"
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                ..
              },
              {
                npm
                  | {
                    dependencies
                      | Array Dyn
                      | doc "Specify local npm dependencies for saucectl to upload. These dependencies must already be installed in the local node_modules directory."
                      | optional,
                    packages
                      | { _ | Dyn }
                      | doc "Specifies any npm packages that are required to run tests."
                      | optional,
                    registries
                      | Array
                        {
                          auth
                            | String
                            | doc "Base64-encoded authentication string for the registry entry"
                            | optional,
                          authToken
                            | String
                            | doc "Authentication token for the registry entry"
                            | optional,
                          email
                            | String
                            | doc "Email for authentication with the registry"
                            | optional,
                          password
                            | String
                            | doc "Password for authentication with the registry"
                            | optional,
                          scope
                            | String
                            | doc "Scope for the registry entry"
                            | optional,
                          url | String | doc "URL for the registry entry",
                          username
                            | String
                            | doc "Username for authentication with the registry"
                            | optional,
                          ..
                        }
                      | doc "Specify all the registries you want to configure"
                      | optional,
                    registry
                      | String
                      | doc "Override the default and official NPM registry URL with a custom one."
                      | optional,
                    strictSSL
                      | Bool
                      | doc "Whether or not to do SSL key validation when making requests to the registry via https."
                      | optional,
                    usePackageLock
                      | Bool
                      | doc "Specifies whether to use the project's package-lock.json when installing npm dependencies. If true, package-lock.json will be used during installation which will improve the speed of installation."
                      | optional,
                  }
                  | doc "Settings specific to npm."
                  | optional,
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "puppeteer-replay", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.1",
              refs."allOf.1.then.allOf.0",
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | refs."allOf.1.then.properties.defaults.properties.timeout"
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                kind | std.contract.Equal "puppeteer-replay",
                showConsoleLog
                  | refs."allOf.1.then.properties.showConsoleLog"
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      browserName
                        | std.enum.TagOrString
                        | [| 'chrome |]
                        | optional,
                      browserVersion
                        | String
                        | doc "Which version of the browser to use."
                        | optional,
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      passThreshold
                        | refs."allOf.1.then.properties.suites.items.properties.passThreshold"
                        | Number
                        | optional,
                      platform
                        | std.enum.TagOrString
                        | [|
                          '"Windows 11",
                          '"Windows 10",
                          '"macOS 13",
                          '"macOS 12",
                          '"macOS 11.00"
                        |]
                        | doc "A specific operating system on which to run the tests. Sauce Labs will try to choose a reasonable default if not explicitly specified."
                        | optional,
                      recordings
                        | Array Dyn
                        | doc "Relative paths to the chrome devtools recordings.",
                      timeout
                        | refs."allOf.1.then.properties.defaults.properties.timeout"
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "testcafe", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.1",
              refs."allOf.2.then.allOf.1",
              refs."allOf.1.then.allOf.0",
              refs."allOf.1.then.allOf.2",
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | refs."allOf.1.then.properties.defaults.properties.timeout"
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                env | refs."allOf.2.then.properties.env" | optional,
                kind | std.contract.Equal "testcafe",
                nodeVersion
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                rootDir | refs."allOf.2.then.properties.rootDir" | optional,
                showConsoleLog
                  | refs."allOf.1.then.properties.showConsoleLog"
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      ajaxRequestTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Specifies wait time (in milliseconds) for fetch/XHR requests."
                        | optional,
                      assertionTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Specifies the time (in milliseconds) TestCafe attempts to successfully execute an assertion if a selector property or a client function was passed as an actual value."
                        | optional,
                      browserArgs
                        | Array Dyn
                        | doc "Browser specific arguments."
                        | optional,
                      browserInitTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Time (in milliseconds) for browsers to connect to TestCafe and report that they are ready to test."
                        | optional,
                      browserName
                        | std.enum.TagOrString
                        | [| 'safari, 'microsoftedge, 'firefox, 'chrome |],
                      browserVersion
                        | refs."allOf.3.then.properties.suites.items.properties.browserVersion"
                        | optional,
                      clientScripts
                        | Array Dyn
                        | doc "Injects scripts into pages visited during the tests."
                        | optional,
                      compilerOptions
                        | {
                          typescript
                            | {
                              configPath
                                | String
                                | doc "Specifies the path to the TypeScript tsconfig.json file."
                                | optional,
                              customCompilerModulePath
                                | String
                                | doc "Specifies the path to a custom TypeScript compiler module."
                                | optional,
                              options
                                | {  .. }
                                | doc "Specifies TypeScript compiler options. Full reference: https://www.typescriptlang.org/tsconfig#compilerOptions"
                                | optional,
                              ..
                            }
                            | doc "Specifies the TypeScript options."
                            | optional,
                          ..
                        }
                        | doc "Specifies the typescript compiler options to be used when running the tests."
                        | optional,
                      disablePageCaching
                        | Bool
                        | doc "Prevents the browser from caching page content."
                        | optional,
                      disableScreenshots
                        | Bool
                        | doc "Prevents TestCafe from taking screenshots."
                        | optional,
                      disableVideo
                        | Bool
                        | doc "Disable video recording."
                        | optional,
                      env | refs."allOf.2.then.properties.env" | optional,
                      esm
                        | Bool
                        | doc "Enables importing ECMAScript Modules (ESM) that don't support CommonJS."
                        | optional,
                      excludedTestFiles
                        | refs."allOf.2.then.properties.suites.items.properties.excludedTestFiles"
                        | optional,
                      filter
                        | {
                          fixture
                            | String
                            | doc "Runs a test with the specified fixture name."
                            | optional,
                          fixtureGrep
                            | String
                            | doc "Runs tests whose fixture names match the specified grep pattern."
                            | optional,
                          fixtureMeta
                            | { _ | Dyn }
                            | doc "Runs tests whose fixture’s metadata matches the specified key-value pair."
                            | optional,
                          test
                            | String
                            | doc "Runs a test with the specified name."
                            | optional,
                          testGrep
                            | String
                            | doc "Runs tests whose names match the specified grep pattern."
                            | optional,
                          testMeta
                            | { _ | Dyn }
                            | doc "Runs tests whose metadata matches the specified key-value pair."
                            | optional,
                          ..
                        }
                        | doc "Allows you to specify which tests or fixtures to run."
                        | optional,
                      headless
                        | Bool
                        | doc "Controls whether or not tests are run in headless mode (default: false)"
                        | optional,
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      pageLoadTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc m%"
                          Specifies the time (in milliseconds) passed after the DOMContentLoaded event, within which TestCafe waits for the window.load event to fire.
                          
                          After the timeout passes or the window.load event is raised (whichever happens first), TestCafe starts the test.
                        "%
                        | optional,
                      pageRequestTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Specifies time (in milliseconds) to wait for HTML pages."
                        | optional,
                      passThreshold
                        | refs."allOf.1.then.properties.suites.items.properties.passThreshold"
                        | Number
                        | optional,
                      platformName
                        | std.enum.TagOrString
                        | [|
                          '"Windows 11",
                          '"Windows 10",
                          '"macOS 13",
                          '"macOS 12",
                          '"macOS 11.00"
                        |]
                        | refs."allOf.3.then.properties.suites.items.properties.platform"
                        | optional,
                      preExec
                        | refs."allOf.2.then.properties.suites.items.properties.preExec"
                        | optional,
                      quarantineMode
                        | {
                          attemptLimit
                            | std.number.Integer
                            | doc "The maximum number of test execution attempts. The option value must be larger than the value of the successThreshold."
                            | optional,
                          successThreshold
                            | std.number.Integer
                            | doc "The number of successful attempts necessary to confirm a test’s success. The option value should be greater than 0."
                            | optional,
                          ..
                        }
                        | doc "Enable quarantine mode to eliminate false negatives and detect unstable tests. TestCafe quarantines tests that fail, and repeats them until they yield conclusive results."
                        | optional,
                      runExecutionTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Maximum test run execution time (in milliseconds)."
                        | optional,
                      screenResolution
                        | refs."allOf.2.then.properties.suites.items.properties.screenResolution"
                        | optional,
                      screenshots
                        | {
                          fullPage
                            | Bool
                            | doc "Specifies that the full page should be captured, including content that is not visible due to overflow."
                            | optional,
                          takeOnFails
                            | Bool
                            | doc "Specifies that a screenshot should be taken whenever a test fails."
                            | optional,
                        }
                        | doc "Allows you to specify the screenshot options."
                        | optional,
                      selectorTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Specifies the time (in milliseconds) within which selectors attempt to return a node."
                        | optional,
                      shard
                        | std.enum.TagOrString
                        | [| 'spec, 'concurrency, '"" |]
                        | doc "When sharding is configured, saucectl automatically splits the tests (e.g. by spec or concurrency) so that they can easily run in parallel."
                        | optional,
                      simulators
                        | Array (
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                name
                                  | String
                                  | doc "The name of the simulator."
                                  | optional,
                                orientation
                                  | refs."allOf.1.then.properties.suites.items.properties.emulators.items.properties.orientation"
                                  | optional,
                                platformName
                                  | std.enum.TagOrString
                                  | [| 'iOS |]
                                  | doc "The name of the simulator platform."
                                  | optional,
                                platformVersions
                                  | Array Dyn
                                  | doc "Which platform versions (OS versions) should be used. Multiple values are treated as 'AND', thus tests run across multiple versions."
                                  | optional,
                              },
                              Array Dyn
                            ]
                        )
                        | doc "Run tests against the simulators defined here."
                        | optional,
                      skipJsErrors
                        | Bool
                        | doc "Determines whether to ignore JavaScript errors on a webpage."
                        | optional,
                      skipUncaughtErrors
                        | Bool
                        | doc "Ignores uncaught errors and unhandled promise rejections in test code."
                        | optional,
                      smartRetry
                        | refs."allOf.1.then.properties.suites.items.properties.smartRetry"
                        | optional,
                      speed
                        | js2n.number.Maximum 1
                        | js2n.number.Minimum 0.01
                        | doc "Specifies the test execution speed. Provide a number between 1 (the fastest) and 0.01 (the slowest)."
                        | optional,
                      src
                        | Array Dyn
                        | doc "Specifies files or directories from which to run tests.",
                      stopOnFirstFail
                        | Bool
                        | doc "Stops a test run if a test fails."
                        | optional,
                      testExecutionTimeout
                        | std.number.Integer
                        | js2n.number.Minimum 0
                        | doc "Maximum test execution time (in milliseconds)."
                        | optional,
                      timeZone
                        | refs."allOf.2.then.properties.suites.items.properties.timeZone"
                        | optional,
                      timeout
                        | refs."allOf.1.then.properties.defaults.properties.timeout"
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                testcafe
                  | {
                    configFile
                      | String
                      | doc "The TestCafe configuration file."
                      | optional,
                    version
                      | std.enum.TagOrString
                      | [|
                        '"3.5.0",
                        '"3.6.0",
                        '"3.6.1",
                        '"3.6.2",
                        '"3.7.0",
                        '"3.7.1",
                        '"3.7.2",
                        '"package.json"
                      |],
                  }
                  | doc "Contains details specific to the TestCafe project.",
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "xcuitest", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.0",
              refs."allOf.1.then.allOf.1",
              refs."allOf.1.then.allOf.2",
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | refs."allOf.1.then.properties.defaults.properties.timeout"
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                env | refs."allOf.2.then.properties.env" | optional,
                kind | std.contract.Equal "xcuitest",
                showConsoleLog
                  | refs."allOf.1.then.properties.showConsoleLog"
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.record.Required [ "simulators" ],
                            js2n.record.Required [ "devices" ]
                          ],
                        {
                          app
                            | String
                            | doc "Local path or remote url to the application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                            | optional,
                          appDescription
                            | String
                            | doc "Description for the app."
                            | optional,
                          appSettings
                            | {
                              audioCapture
                                | Bool
                                | doc "Configure app settings for real device to capture audio."
                                | optional,
                              instrumentation
                                | {
                                  biometrics
                                    | Bool
                                    | doc "Configure app settings for real device to intercept biometric authentication."
                                    | optional,
                                  groupDirectory
                                    | Bool
                                    | doc "Configure app settings for real device to enable group directory access."
                                    | optional,
                                  imageInjection
                                    | Bool
                                    | doc "Configure app settings for real device to inject provided images in the user app."
                                    | optional,
                                  networkCapture
                                    | Bool
                                    | doc "Configure app settings for real device to capture network."
                                    | optional,
                                  sysAlertsDelay
                                    | Bool
                                    | doc "Configure app settings for real device to delay system alerts."
                                    | optional,
                                  vitals
                                    | Bool
                                    | doc "Configure app settings for real device to enable vitals."
                                    | optional,
                                  ..
                                }
                                | doc "Configure app settings for real device instrumentation."
                                | optional,
                              resigningEnabled
                                | Bool
                                | doc "Configure app settings for real device to enable app resigning."
                                | optional,
                              ..
                            }
                            | doc "Configure real device settings."
                            | optional,
                          devices
                            | Array (
                              std.contract.Sequence
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      {
                                        id
                                          | String
                                          | doc "Request a specific device for this test suite by its ID. You can look up device IDs in the Sauce Labs app or using our Devices API (https://docs.saucelabs.com/dev/api/rdc#get-devices)."
                                          | optional,
                                        name
                                          | String
                                          | doc "Match the device name in full or partially (regex), which may provide a larger pool of available devices of the type you want."
                                          | optional,
                                        options
                                          | {
                                            carrierConnectivity
                                              | Bool
                                              | doc "Limit the device selection to those that are connected to a cellular network."
                                              | optional,
                                            deviceType
                                              | std.enum.TagOrString
                                              | [| 'TABLET, 'PHONE, 'ANY |]
                                              | doc "Limit the device selection to a specific type of device."
                                              | optional,
                                            private
                                              | Bool
                                              | doc "Limit the device selection to only match from your organization's private pool."
                                              | optional,
                                          }
                                          | doc "Further specify desired device attributes within the pool of devices that match the name and version criteria."
                                          | optional,
                                        platformVersion
                                          | String
                                          | doc "The version of the iOS operating system."
                                          | optional,
                                      },
                                      Array Dyn
                                    ],
                                  js2n.OneOf
                                    [
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "id" ],
                                          Array Dyn
                                        ],
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          js2n.record.Required [ "name" ],
                                          Array Dyn
                                        ]
                                    ]
                                ]
                            )
                            | doc "Define details for running this suite on real devices."
                            | optional,
                          env | refs."allOf.2.then.properties.env" | optional,
                          name
                            | String
                            | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                          otherApps
                            | Array Dyn
                            | doc "A list of applications to be installed alongside the main app. Applications can be defined as a local path or a remote url. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values. When targeting simulators, a maximum of 2 otherApps is supported."
                            | optional,
                          passThreshold
                            | refs."allOf.1.then.properties.suites.items.properties.passThreshold"
                            | Number
                            | optional,
                          shard
                            | std.enum.TagOrString
                            | [| 'testList, 'concurrency, '"" |]
                            | doc "When sharding is configured, saucectl automatically splits the tests (e.g. by testList or concurrency) so that they can easily run in parallel."
                            | optional,
                          simulators
                            | Array (
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {
                                    armRequired
                                      | Bool
                                      | doc "If set to true, the simulator will run on an ARM-based Mac. If set to false, the simulator will run on an Intel-based Mac."
                                      | optional,
                                    name
                                      | String
                                      | doc "The name of the simulator. To ensure name accuracy, check the list of supported virtual devices (https://app.saucelabs.com/live/web-testing/virtual).",
                                    orientation
                                      | refs."allOf.1.then.properties.suites.items.properties.emulators.items.properties.orientation"
                                      | optional,
                                    platformVersions
                                      | js2n.array.MinItems 1
                                      | doc "The set of one or more versions of the device platform on which to run the test suite.",
                                  },
                                  Array Dyn
                                ]
                            )
                            | doc "Defines details for running this suite on virtual devices using a simulator."
                            | optional,
                          smartRetry
                            | refs."allOf.1.then.properties.suites.items.properties.smartRetry"
                            | optional,
                          testApp
                            | String
                            | doc "Local path or remote url to the test application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                            | optional,
                          testAppDescription
                            | String
                            | doc "Description for the testApp."
                            | optional,
                          testListFile
                            | String
                            | doc "This file containing tests will be used in sharding by concurrency."
                            | optional,
                          testOptions
                            | {
                              class
                                | Array Dyn
                                | doc "Only run the specified classes."
                                | optional,
                              defaultTestExecutionTimeAllowance
                                | Number
                                | doc "The default execution time, in seconds, an individual test is given to execute if test timeouts are enabled. Supported on Simulators only."
                                | optional,
                              maximumTestExecutionTimeAllowance
                                | Number
                                | doc "The maximum execution time, in seconds, an individual test is given to execute, regardless of the test's preferred allowance. Supported on Simulators only."
                                | optional,
                              notClass
                                | Array Dyn
                                | doc "Run all classes except those specified here."
                                | optional,
                              statusBarOverrideTime
                                | String
                                | doc "Modify the time displayed on the status bar. Supported on Simulators only."
                                | optional,
                              testLanguage
                                | String
                                | doc "Specifies ISO 639-1 language during testing. Supported on Simulators only."
                                | optional,
                              testRegion
                                | String
                                | doc "Specifies ISO 3166-1 region during testing."
                                | optional,
                              testTimeoutsEnabled
                                | std.enum.TagOrString
                                | [| 'No, 'Yes |]
                                | doc "By default there is no timeout, if enabled, then the timeout is 600 seconds. This can be changed by adding the defaultTestExecutionTimeAllowance value. Supported on Simulators only."
                                | optional,
                            }
                            | doc "Allows you to control various details on how tests are executed."
                            | optional,
                          timeout
                            | refs."allOf.1.then.properties.defaults.properties.timeout"
                            | optional,
                        }
                      ]
                  )
                  | doc "The set of properties providing details about the test suites to run.",
                xcuitest
                  | {
                    app
                      | String
                      | doc "Local path or remote url to the application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                      | optional,
                    appDescription
                      | String
                      | doc "Description for the app."
                      | optional,
                    otherApps
                      | Array Dyn
                      | doc "A list of applications to be installed alongside the main app. Applications can be defined as a local path or a remote url. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values. When targeting simulators, a maximum of 2 otherApps is supported."
                      | optional,
                    testApp
                      | String
                      | doc "Local path or remote url to the test application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                      | optional,
                    testAppDescription
                      | String
                      | doc "Description for the testApp."
                      | optional,
                  }
                  | doc "Contains details specific to the XCUITest project."
                  | optional,
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "xctest", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.0",
              refs."allOf.1.then.allOf.1",
              refs."allOf.1.then.allOf.2",
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | refs."allOf.1.then.properties.defaults.properties.timeout"
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                env | refs."allOf.2.then.properties.env" | optional,
                kind | std.contract.Equal "xctest",
                showConsoleLog
                  | refs."allOf.1.then.properties.showConsoleLog"
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      app
                        | String
                        | doc "Local path or remote url to the application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                        | optional,
                      appDescription
                        | String
                        | doc "Description for the app."
                        | optional,
                      appSettings
                        | {
                          audioCapture
                            | Bool
                            | doc "Overwrite app settings for real device to capture audio."
                            | optional,
                          instrumentation
                            | {
                              biometrics
                                | Bool
                                | doc "Overwrite app settings for real device to intercept biometric authentication."
                                | optional,
                              groupDirectory
                                | Bool
                                | doc "Overwrite app settings for real device to enable group directory access."
                                | optional,
                              imageInjection
                                | Bool
                                | doc "Overwrite app settings for real device to inject provided images in the user app."
                                | optional,
                              networkCapture
                                | Bool
                                | doc "Overwrite app settings for real device to capture network."
                                | optional,
                              sysAlertsDelay
                                | Bool
                                | doc "Overwrite app settings for real device to delay system alerts."
                                | optional,
                              vitals
                                | Bool
                                | doc "Overwrite app settings for real device to enable vitals."
                                | optional,
                              ..
                            }
                            | doc "Overwrite app settings for real device instrumentation."
                            | optional,
                          resigningEnabled
                            | Bool
                            | doc "Overwrite app settings for real device to enable app resigning."
                            | optional,
                          ..
                        }
                        | doc "Overwrite real device settings."
                        | optional,
                      devices
                        | Array (
                          std.contract.Sequence
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  {
                                    id
                                      | String
                                      | doc "Request a specific device for this test suite by its ID. You can look up device IDs in the Sauce Labs app or using our Devices API (https://docs.saucelabs.com/dev/api/rdc#get-devices)."
                                      | optional,
                                    name
                                      | String
                                      | doc "Match the device name in full or partially (regex), which may provide a larger pool of available devices of the type you want."
                                      | optional,
                                    options
                                      | {
                                        carrierConnectivity
                                          | Bool
                                          | doc "Limit the device selection to those that are connected to a cellular network."
                                          | optional,
                                        deviceType
                                          | std.enum.TagOrString
                                          | [| 'TABLET, 'PHONE, 'ANY |]
                                          | doc "Limit the device selection to a specific type of device."
                                          | optional,
                                        private
                                          | Bool
                                          | doc "Limit the device selection to only match from your organization's private pool."
                                          | optional,
                                      }
                                      | doc "Further specify desired device attributes within the pool of devices that match the name and version criteria."
                                      | optional,
                                    platformVersion
                                      | String
                                      | doc "The version of the iOS operating system."
                                      | optional,
                                  },
                                  Array Dyn
                                ],
                              js2n.OneOf
                                [
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "id" ],
                                      Array Dyn
                                    ],
                                  std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      js2n.record.Required [ "name" ],
                                      Array Dyn
                                    ]
                                ]
                            ]
                        )
                        | doc "Define details for running this suite on real devices.",
                      env | refs."allOf.2.then.properties.env" | optional,
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      otherApps
                        | Array Dyn
                        | doc "A list of applications to be installed alongside the main app. Applications can be defined as a local path or a remote url. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values. When targeting simulators, a maximum of 2 otherApps is supported."
                        | optional,
                      passThreshold
                        | refs."allOf.1.then.properties.suites.items.properties.passThreshold"
                        | Number
                        | optional,
                      shard
                        | std.enum.TagOrString
                        | [| 'testList, 'concurrency, '"" |]
                        | doc "When sharding is configured, saucectl automatically splits the tests (e.g. by testList or concurrency) so that they can easily run in parallel."
                        | optional,
                      smartRetry
                        | refs."allOf.1.then.properties.suites.items.properties.smartRetry"
                        | optional,
                      testListFile
                        | String
                        | doc "This file containing tests will be used in sharding by concurrency."
                        | optional,
                      testOptions
                        | {
                          class
                            | Array Dyn
                            | doc "Only run the specified classes."
                            | optional,
                          defaultTestExecutionTimeAllowance
                            | Number
                            | doc "The default execution time, in seconds, an individual test is given to execute if test timeouts are enabled. Supported on Simulators only."
                            | optional,
                          maximumTestExecutionTimeAllowance
                            | Number
                            | doc "The maximum execution time, in seconds, an individual test is given to execute, regardless of the test's preferred allowance. Supported on Simulators only."
                            | optional,
                          notClass
                            | Array Dyn
                            | doc "Run all classes except those specified here."
                            | optional,
                          statusBarOverrideTime
                            | String
                            | doc "Modify the time displayed on the status bar. Supported on Simulators only."
                            | optional,
                          testLanguage
                            | String
                            | doc "Specifies ISO 639-1 language during testing. Supported on Simulators only."
                            | optional,
                          testRegion
                            | String
                            | doc "Specifies ISO 3166-1 region during testing."
                            | optional,
                          testTimeoutsEnabled
                            | std.enum.TagOrString
                            | [| 'No, 'Yes |]
                            | doc "By default there is no timeout, if enabled, then the timeout is 600 seconds. This can be changed by adding the defaultTestExecutionTimeAllowance value. Supported on Simulators only."
                            | optional,
                        }
                        | doc "Allows you to control various details on how tests are executed."
                        | optional,
                      timeout
                        | refs."allOf.1.then.properties.defaults.properties.timeout"
                        | optional,
                      xcTestRunFile
                        | String
                        | doc "Local path or remote url to the .xctestrun file test descriptor. If a remote url is defined, the file will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                        | optional,
                      xcTestRunFileDescription
                        | String
                        | doc "Description for the xcTestRunFile."
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                xctest
                  | {
                    app
                      | String
                      | doc "Local path or remote url to the application. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                      | optional,
                    appDescription
                      | String
                      | doc "Description for the app."
                      | optional,
                    otherApps
                      | Array Dyn
                      | doc "A list of applications to be installed alongside the main app. Applications can be defined as a local path or a remote url. If a remote url is defined, the app will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values. When targeting simulators, a maximum of 2 otherApps is supported."
                      | optional,
                    xcTestRunFile
                      | String
                      | doc "Local path or remote url to the .xctestrun file test descriptor. If a remote url is defined, the file will be downloaded to a local temp directory before uploading to the SauceLabs Mobile App Storage service. Supports environment variables as values."
                      | optional,
                    xcTestRunFileDescription
                      | String
                      | doc "Description for the xcTestRunFile."
                      | optional,
                  }
                  | doc "Contains details specific to the XCTest project."
                  | optional,
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "apitest", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.0",
              {
                apiVersion | std.contract.Equal "v1alpha",
                kind | std.contract.Equal "apitest",
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      projectName | String | doc "Your project's name.",
                      tags
                        | Array Dyn
                        | doc "A test tag to run for the project defined by hookId."
                        | optional,
                      testMatch | Array Dyn | doc "" | optional,
                      tests
                        | Array Dyn
                        | doc "A list of test IDs to run for the project defined by hookId."
                        | optional,
                      useRemoteTests
                        | Bool
                        | doc "Use tests stored in the cloud instead of the local ones."
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                ..
              }
            ]) js2n.Always,
        js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { kind = js2n.Const "playwright-cucumberjs", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
            [
              refs."allOf.1.then.allOf.1",
              refs."allOf.2.then.allOf.1",
              refs."allOf.1.then.allOf.0",
              refs."allOf.1.then.allOf.2",
              {
                apiVersion | std.contract.Equal "v1alpha",
                defaults
                  | {
                    timeout
                      | refs."allOf.1.then.properties.defaults.properties.timeout"
                      | optional,
                  }
                  | doc "Settings that are applied onto every suite by default, if no value is set on a suite explicitly."
                  | optional,
                env | refs."allOf.2.then.properties.env" | optional,
                kind | std.contract.Equal "playwright-cucumberjs",
                nodeVersion
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                playwright
                  | {
                    version
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "Which framework version to use.",
                  }
                  | doc "Contains details specific to the playwright.",
                rootDir | refs."allOf.2.then.properties.rootDir" | optional,
                showConsoleLog
                  | refs."allOf.1.then.properties.showConsoleLog"
                  | optional,
                suites
                  | js2n.array.MinItems 1
                  | Array
                    {
                      browserName
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                        | doc "The name of the browser in which to run the tests."
                        | optional,
                      browserVersion
                        | refs."allOf.3.then.properties.suites.items.properties.browserVersion"
                        | optional,
                      env | refs."allOf.2.then.properties.env" | optional,
                      name
                        | String
                        | doc "The name of the test suite, which will be reflected in the test results in Sauce Labs.",
                      options
                        | {
                          backtrace
                            | Bool
                            | doc "Show the full backtrace for errors."
                            | optional,
                          config
                            | String
                            | doc "Provides the location of the configuration file."
                            | optional,
                          excludedTestFiles
                            | refs."allOf.2.then.properties.suites.items.properties.excludedTestFiles"
                            | optional,
                          format
                            | Array Dyn
                            | doc "Name/path and (optionally) output file path of each formatter to use."
                            | optional,
                          formatOptions
                            | { _ | Dyn }
                            | doc "Options to be provided to cucumber formatters."
                            | optional,
                          "import"
                            | Array Dyn
                            | doc "Paths to where your support code is, for ESM."
                            | optional,
                          name
                            | String
                            | doc "Regular expressions of which cucumber scenario names should match one of to be run."
                            | optional,
                          parallel
                            | std.number.Integer
                            | doc "Run tests in parallel with the given number of worker processes."
                            | optional,
                          paths
                            | Array Dyn
                            | doc "Paths to where your feature files are.",
                          require
                            | Array Dyn
                            | doc "Paths to where your support code is, for CommonJS."
                            | optional,
                          tags
                            | Array Dyn
                            | doc "Tag expression to filter which scenarios should be run."
                            | optional,
                          ..
                        }
                        | doc "Provides details related to the Cucumberjs test configuration."
                        | optional,
                      passThreshold
                        | refs."allOf.1.then.properties.suites.items.properties.passThreshold"
                        | Number
                        | optional,
                      platformName
                        | std.enum.TagOrString
                        | [|
                          '"Windows 11",
                          '"Windows 10",
                          '"macOS 13",
                          '"macOS 12",
                          '"macOS 11.00"
                        |]
                        | refs."allOf.3.then.properties.suites.items.properties.platform"
                        | optional,
                      preExec
                        | refs."allOf.2.then.properties.suites.items.properties.preExec"
                        | optional,
                      screenResolution
                        | refs."allOf.2.then.properties.suites.items.properties.screenResolution"
                        | optional,
                      shard
                        | std.enum.TagOrString
                        | [| 'scenario, 'spec, 'concurrency, '"" |]
                        | doc "When sharding is configured, saucectl automatically splits the tests (e.g. by spec, concurrency or scenario) so that they can easily run in parallel."
                        | optional,
                      shardTagsEnabled
                        | Bool
                        | doc "When sharding is configured and the suite is configured to filter scenarios by tag expression, let saucectl filter test files before executing."
                        | optional,
                      smartRetry
                        | refs."allOf.1.then.properties.suites.items.properties.smartRetry"
                        | optional,
                      timeZone
                        | refs."allOf.2.then.properties.suites.items.properties.timeZone"
                        | optional,
                      timeout
                        | refs."allOf.1.then.properties.defaults.properties.timeout"
                        | optional,
                    }
                  | doc "The set of properties providing details about the test suites to run.",
                ..
              }
            ]) js2n.Always,
        {
          kind
            | std.enum.TagOrString
            | [|
              'playwright-cucumberjs,
              'xctest,
              'xcuitest,
              'testcafe,
              'puppeteer-replay,
              'playwright,
              'espresso,
              'cypress,
              'apitest
            |]
            | optional,
          ..
        }
      ]