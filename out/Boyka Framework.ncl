# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ApplicationType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'WEB, 'NATIVE, 'HYBRID |] ],
      "definitions.AutomationType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'XCUI, 'UI_AUTOMATOR |] ],
      "definitions.Browser" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'SAFARI, 'REMOTE, 'NONE, 'FIREFOX, 'EDGE, 'CHROME |]
            ],
      "definitions.DeviceType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'VIRTUAL, 'CLOUD |] ],
      "definitions.LogLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'WARN_WARN,
                'WARN_INFO,
                'WARN_ERROR,
                'WARN_DEBUG,
                'WARN,
                'INFO_WARN,
                'INFO_INFO,
                'INFO_ERROR,
                'INFO_DEBUG,
                'INFO,
                'ERROR_WARN,
                'ERROR_INFO,
                'ERROR_ERROR,
                'ERROR_DEBUG,
                'ERROR,
                'DEBUG_WARN,
                'DEBUG_INFO,
                'DEBUG_ERROR,
                'DEBUG_DEBUG,
                'DEBUG
              |]
            ],
      "definitions.OS" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'IOS, 'ANDROID |] ],
      "definitions.PageLoadStrategy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'NORMAL, 'EAGER, 'NONE |] ],
      "definitions.PermissionDecision" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'YES,
                'UNSET,
                'NO,
                'NEVER,
                'LIMITED,
                'IN_USE,
                'CRITICAL,
                'ALWAYS
              |]
            ],
      "definitions.Permissions" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'USER_TRACKING,
                'SPEECH,
                'SIRI,
                'REMINDERS,
                'NOTIFICATIONS,
                'MOTION,
                'MICROPHONE,
                'MEDIA_LIBRARY,
                'LOCATION,
                'HOME_KIT,
                'HEALTH,
                'CONTACTS,
                'CAMERA,
                'CALENDAR
              |]
            ],
      "definitions.Protocol" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'HTTPS, 'HTTP |] ],
      "definitions.Speed" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'SLOW, 'NORMAL, 'FAST |] ],
      "definitions.TargetProviders" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'LOCAL,
                'LAMBDA_TEST_WEB,
                'LAMBDA_TEST_MOBILE,
                'BROWSER_STACK
              |]
            ],
      "definitions.TestDataSource" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'EXCEL |] ],
      "definitions.VideoQuality" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'PHOTO, 'HIGH, 'MEDIUM, 'LOW |] ],
      "definitions.WindowResizeType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NORMAL, 'MINIMIZED, 'MAXIMIZED, 'FULL_SCREEN, 'CUSTOM |]
            ],
      "definitions.args" = { _ | std.contract.any_of [ Bool, Number, String ] },
      "definitions.caps" = { _ | std.contract.any_of [ Bool, Number, String ] },
    }
    in
  {
      api
        | {
          _ | {
            base_path | String | doc "Base path of the API endpoint" | optional,
            base_uri | String | doc "Base URI of the API endpoint",
            logging
              | {
                enable
                  | Bool
                  | doc "If false, logging of API request and response will not be captured, default is set to true"
                  | optional,
                request
                  | Bool
                  | doc "Log API request related details"
                  | optional,
                response
                  | Bool
                  | doc "Log API response related details"
                  | optional,
                ..
              }
              | doc "Logging related settings"
              | optional,
            port | Number | doc "Port number of API endpoint" | optional,
            schema_path
              | String
              | doc "API response schema files parent directory path"
              | optional,
            timeout
              | {
                connection_timeout
                  | Number
                  | doc "API request connection timeout (in seconds)"
                  | optional,
                read_timeout
                  | Number
                  | doc "API request read timeout (in seconds)"
                  | optional,
                write_timeout
                  | Number
                  | doc "API request write timeout (in seconds)"
                  | optional,
                ..
              }
              | doc "API Timeout settings"
              | optional,
            validate_ssl
              | Bool
              | doc "If set to false, SSL handshake validation will be skipped, set to true by default"
              | optional,
            verify_host_name
              | Bool
              | doc "If set to false, Host name verification will be skipped, set to true by default"
              | optional,
            ..
          }
        }
        | doc "Collection of API configurations"
        | optional,
      data
        | {
          extension | String | doc "Data file extension" | optional,
          external | Bool | doc "Is data file external or not" | optional,
          path | String | doc "Test data file path" | optional,
          type | refs."definitions.TestDataSource" | optional,
          ..
        }
        | doc "Test Data related settings"
        | optional,
      listeners_package
        | String
        | doc "Package name where all the Boyka listener implementations are placed"
        | optional,
      ui
        | {
          delay
            | {
              before_click
                | Number
                | doc "Delay before clicking on an element (in ms)"
                | optional,
              before_mouse_move
                | Number
                | doc "Delay before moving of mouse (in ms)"
                | optional,
              before_swipe
                | Number
                | doc "Delay before swiping on the device screen or inside an element (in ms)"
                | optional,
              before_tap
                | Number
                | doc "Delay before tapping on an element (in ms)"
                | optional,
              before_typing
                | Number
                | doc "Delay before typing any text in an element (in ms)"
                | optional,
              ..
            }
            | doc "UI interaction delay settings"
            | optional,
          logging
            | {
              enable
                | Bool
                | doc "If true, any log files generated by Selenium or Appium would be saved"
                | optional,
              exclude_logs
                | Array String
                | doc "List of type of logs which you want to exclude from"
                | optional,
              path
                | String
                | doc "Path where the logs should be saved"
                | optional,
              ..
            }
            | doc "UI logging related settings"
            | optional,
          mobile
            | {
              _ | {
                device
                  | {
                    accept_alerts
                      | Bool
                      | doc "Automatically accepts alerts"
                      | optional,
                    adb_timeout
                      | Number
                      | doc "ADB timeout (in seconds)"
                      | optional,
                    application
                      | {
                        base_url
                          | String
                          | doc "Base URL of Web application which will be used to automatically navigate it to"
                          | optional,
                        browser | refs."definitions.Browser" | optional,
                        bundle_id | String | doc "iOS Bundle ID" | optional,
                        chrome_driver_port
                          | Number
                          | doc "Chrome driver port"
                          | optional,
                        external
                          | Bool
                          | doc "Set to true, if the application path is not under `src/test/resources`"
                          | optional,
                        install_timeout
                          | Number
                          | doc "Timeout for waiting until Application is installed on the device (in seconds)"
                          | optional,
                        path
                          | String
                          | doc "Path of the application under `src/test/resources` if `external` property is set to false, or Application URL for Cloud platform"
                          | optional,
                        type | refs."definitions.ApplicationType" | optional,
                        wait_activity
                          | String
                          | doc "Activity name to wait until it is loaded"
                          | optional,
                        wait_timeout
                          | Number
                          | doc "Wait timeout to wait until a package or activity is loaded (in seconds)"
                          | optional,
                        ..
                      }
                      | doc "Application related settings"
                      | optional,
                    auto_grant_permissions
                      | Bool
                      | doc "Automatically grant permissions for Android devices"
                      | optional,
                    capabilities | refs."definitions.caps" | optional,
                    clear_files
                      | Bool
                      | doc "Set to true to clean up any cached files before starting the test session"
                      | optional,
                    clear_logs
                      | Bool
                      | doc "Set to true to clean up any old logs from the device before starting the test session"
                      | optional,
                    command_timeout
                      | Number
                      | doc "Timeout for new command execution (in seconds)"
                      | optional,
                    full_reset
                      | Bool
                      | doc "Set to true to perform full reset of the target device. This will not delete any important files, it will only clear any files or logs which was created by earlier test executions"
                      | optional,
                    ignore_unimportant_views
                      | Bool
                      | doc "Set to true to reduce the element hierarchies to only those elements which are visible to the user"
                      | optional,
                    name | String | doc "Target Device name" | optional,
                    no_reset
                      | Bool
                      | doc "Set to true to avoid Appium to reset previous test executions files or logs"
                      | optional,
                    os | refs."definitions.OS" | optional,
                    permissions
                      | js2n.record.PropertyNames refs."definitions.Permissions"
                      | { _ | refs."definitions.PermissionDecision" }
                      | doc "Permissions for iOS devices"
                      | optional,
                    server_install_timeout
                      | Number
                      | doc "Timeout to wait until Appium server application is installed on the device"
                      | optional,
                    server_launch_timeout
                      | Number
                      | doc "Timeout to wait until Appium server application is launched on the device"
                      | optional,
                    swipe
                      | {
                        distance
                          | js2n.number.Maximum 100
                          | js2n.number.Minimum 1
                          | doc "Distance of finger which will be moved from the starting position to the ending position"
                          | optional,
                        max_swipe_until_found
                          | js2n.number.Maximum 100
                          | js2n.number.Minimum 1
                          | doc "Maximum number of swipes till the element is visible"
                          | optional,
                        speed | refs."definitions.Speed" | optional,
                        ..
                      }
                      | doc "Swipe related settings"
                      | optional,
                    system_port
                      | Number
                      | doc "Android System port number"
                      | optional,
                    type | refs."definitions.DeviceType" | optional,
                    typing_speed
                      | Number
                      | doc "Typing speed while entering the text in the input element. Only for iOS"
                      | optional,
                    unique_id | String | doc "Device unique ID" | optional,
                    version | String | doc "Device OS version" | optional,
                    video
                      | {
                        android
                          | {
                            bit_rate
                              | js2n.number.Maximum 25
                              | js2n.number.Minimum 1
                              | doc "Bit rate of the video, higher value results in better quality of video. Value will be internally multiplied by 1000000"
                              | optional,
                            ..
                          }
                          | doc "Android video recording related settings"
                          | optional,
                        enabled
                          | Bool
                          | doc "Set it to true to enable video recording of the test"
                          | optional,
                        ios
                          | {
                            codec
                              | String
                              | doc "Codec type of the video. The type should be one of the result for the command `ffmpeg -codecs`"
                              | optional,
                            fps
                              | js2n.number.Maximum 60
                              | js2n.number.Minimum 1
                              | doc "Frames per second"
                              | optional,
                            quality
                              | refs."definitions.VideoQuality"
                              | optional,
                            ..
                          }
                          | doc "iOS video recording related settings"
                          | optional,
                        path
                          | String
                          | doc "Path where the video to be saved"
                          | optional,
                        prefix
                          | String
                          | doc "Prefix of the video file name"
                          | optional,
                        size | String | doc "Video resolution size" | optional,
                        time_limit
                          | js2n.number.Maximum 1800
                          | js2n.number.Minimum 10
                          | doc "Time limit of the video (in seconds)"
                          | optional,
                        ..
                      }
                      | doc "Video recording related settings"
                      | optional,
                    virtual_device
                      | {
                        connect_keyboard
                          | Bool
                          | doc "Set to true if you want to connect hardware device. Only for iOS devices"
                          | optional,
                        headless
                          | Bool
                          | doc "Set to true if you want to run the test in headless mode"
                          | optional,
                        launch_timeout
                          | Number
                          | doc "Virtual device launch timeout (in seconds)"
                          | optional,
                        name
                          | String
                          | doc "Name of the virtual device"
                          | optional,
                        ready_timeout
                          | Number
                          | doc "AVD ready timeout. Only for Android"
                          | optional,
                        ..
                      }
                      | doc "Virtual device related settings"
                      | optional,
                    wda
                      | {
                        connection_timeout
                          | js2n.number.Maximum 900
                          | js2n.number.Minimum 1
                          | doc "WDA connection timeout (in seconds)"
                          | optional,
                        launch_timeout
                          | js2n.number.Maximum 900
                          | js2n.number.Minimum 1
                          | doc "WDA launch timeout (in seconds)"
                          | optional,
                        local_port
                          | Number
                          | doc "Port on which WDA is running"
                          | optional,
                        signing_id | String | doc "XCode signing ID" | optional,
                        startup_retries
                          | js2n.number.Maximum 10
                          | js2n.number.Minimum 1
                          | doc "WDA startup retries"
                          | optional,
                        startup_retry_interval
                          | js2n.number.Maximum 300
                          | js2n.number.Minimum 1
                          | doc "WDA startup retry interval"
                          | optional,
                        team_id
                          | String
                          | doc "XCode Team or Organization ID"
                          | optional,
                        update_bundle_id
                          | String
                          | doc "Bundle ID to update WDA before building and launching it"
                          | optional,
                        use_new
                          | Bool
                          | doc "Set to true, to use new WDA on every run"
                          | optional,
                        use_prebuilt
                          | Bool
                          | doc "Set to true, if you want to use the existing prebuilt WDA instance"
                          | optional,
                        ..
                      }
                      | doc "iOS WebDriverAgent related settings"
                      | optional,
                    web_view_connect_retries
                      | js2n.number.Maximum 10
                      | js2n.number.Minimum 1
                      | doc "Number of retries to connect to the web view"
                      | optional,
                    web_view_connect_timeout
                      | js2n.number.Maximum 300
                      | js2n.number.Minimum 1
                      | doc "Timeout to wait for web view to connect (in seconds)"
                      | optional,
                    ..
                  }
                  | doc "Mobile device related settings",
                server
                  | {
                    allow_cors
                      | Bool
                      | doc "Set to true to allow cors"
                      | optional,
                    allow_insecure
                      | Array String
                      | doc "Set list of insecure features which you want to enable"
                      | optional,
                    appium_path
                      | String
                      | doc "Appium executable path"
                      | optional,
                    base_path
                      | String
                      | doc "Appium server's base path, example `/wd/hub`"
                      | optional,
                    callback_address
                      | String
                      | doc "Callback IP address"
                      | optional,
                    callback_port
                      | Number
                      | doc "Callback Port number"
                      | optional,
                    config_path | String | doc "Appium config path" | optional,
                    deny_insecure
                      | Array String
                      | doc "List of insecure features which you want to deny"
                      | optional,
                    driver | refs."definitions.AutomationType",
                    external
                      | Bool
                      | doc "Set to true, if you have Appium server already running"
                      | optional,
                    external_config
                      | Bool
                      | doc "Set to true, if the Appium config file is not there in the projects root directory"
                      | optional,
                    host | String | doc "Appium server's IP address" | optional,
                    keep_alive_timeout
                      | Number
                      | doc "Timeout to keep the Appium server running"
                      | optional,
                    logging
                      | {
                        debug_spacing
                          | Bool
                          | doc "Adds extra spaces to logs for ease to view"
                          | optional,
                        level | refs."definitions.LogLevel" | optional,
                        local_timezone
                          | Bool
                          | doc "Set to true to use local timezone"
                          | optional,
                        timestamp
                          | Bool
                          | doc "Set to true to display timestamps in the logs"
                          | optional,
                        ..
                      }
                      | doc "Appium server's logging related settings"
                      | optional,
                    node_path
                      | String
                      | doc "Node JS executable path"
                      | optional,
                    other_args | refs."definitions.args" | optional,
                    password
                      | String
                      | doc "Your password for Cloud platform. You can also use environment variables in `${env:ENV_VAR_NAME}` format"
                      | optional,
                    plugins
                      | Array String
                      | doc "List of Appium plugin names which you want to activate"
                      | optional,
                    port
                      | Number
                      | doc "Port on which Appium Server will run"
                      | optional,
                    protocol | refs."definitions.Protocol" | optional,
                    relaxed_security
                      | Bool
                      | doc "Set to true, to allow relaxed security"
                      | optional,
                    session_override
                      | Bool
                      | doc "Set to true, to allow overriding the Appium session"
                      | optional,
                    strict_capabilities
                      | Bool
                      | doc "Set to true, to enforce strict capabilities"
                      | optional,
                    target | refs."definitions.TargetProviders" | optional,
                    timeout
                      | js2n.number.Maximum 900
                      | js2n.number.Minimum 1
                      | doc "Appium server timeout (in seconds)"
                      | optional,
                    user_name
                      | String
                      | doc "Your username of the Cloud platform. You can also use environment variables in `${env:ENV_VAR_NAME}` format"
                      | optional,
                    webhook
                      | String
                      | doc "Webhook URL to which you want to send the Appium server logs to"
                      | optional,
                    ..
                  }
                  | doc "Appium server related settings",
                ..
              }
            }
            | doc "Mobile related settings"
            | optional,
          screenshot
            | {
              enabled
                | Bool
                | doc "Set to true to enable screenshots"
                | optional,
              extension | String | doc "Screenshot file extension" | optional,
              path
                | String
                | doc "Path where the screenshots will be saved"
                | optional,
              prefix
                | String
                | doc "Prefix of the screenshot file name"
                | optional,
              ..
            }
            | doc "UI screenshot related settings"
            | optional,
          timeout
            | {
              explicit_wait
                | js2n.number.Maximum 900
                | doc "Explicit wait for the element to wait for a particular condition to succeed (in seconds)"
                | optional,
              highlight_delay
                | js2n.number.Maximum 90000
                | doc "Delay while Highlighting the element (in ms)"
                | optional,
              implicit_wait
                | js2n.number.Maximum 300
                | doc "Implicit wait for Appium to find the element (in seconds)"
                | optional,
              page_load_timeout
                | js2n.number.Maximum 300
                | doc "Page load timeout (in seconds)"
                | optional,
              script_timeout
                | js2n.number.Maximum 300
                | doc "Script load timeout (in seconds)"
                | optional,
              ..
            }
            | doc "UI timeout related settings"
            | optional,
          web
            | {
              _ | {
                base_url
                  | String
                  | doc "Base URL to which you want to navigate automatically when the Web session is started"
                  | optional,
                browser | refs."definitions.Browser" | optional,
                browser_options
                  | Array String
                  | doc "List of Browser driver options"
                  | optional,
                capabilities | refs."definitions.caps" | optional,
                custom_size
                  | {
                    height
                      | Number
                      | doc "Height of the Browser window"
                      | optional,
                    width
                      | Number
                      | doc "Width of the Browser window"
                      | optional,
                    ..
                  }
                  | doc "Custom size when Resize is set as `CUSTOM`"
                  | optional,
                experimental_options
                  | {
                    _ | std.contract.any_of
                      [ Bool, { _ | Dyn }, Number, String ]
                  }
                  | doc "Map of experimental options"
                  | optional,
                headless
                  | Bool
                  | doc "Set to true if you want to run the test in headless mode"
                  | optional,
                highlight
                  | Bool
                  | doc "Set to true if you want to see the element interactions being highlighted"
                  | optional,
                host
                  | String
                  | doc "Host IP address, if not provided, Target Host will be used"
                  | optional,
                page_load_strategy
                  | refs."definitions.PageLoadStrategy"
                  | optional,
                password
                  | String
                  | doc "Your cloud platform password. You can also use environment variables in `${env:ENV_VAR_NAME}` format"
                  | optional,
                platform
                  | String
                  | doc "Platform on which the Web browser will be launched"
                  | optional,
                port
                  | Number
                  | doc "Port number on which Selenium WebDriver will start the session"
                  | optional,
                protocol | refs."definitions.Protocol" | optional,
                resize | refs."definitions.WindowResizeType" | optional,
                target | refs."definitions.TargetProviders" | optional,
                user_name
                  | String
                  | doc "Your cloud platform user name or key. You can also use environment variables in `${env:ENV_VAR_NAME}` format"
                  | optional,
                version
                  | String
                  | doc "Browser version of the Browser will be launched"
                  | optional,
                ..
              }
            }
            | doc "Web related settings"
            | optional,
          ..
        }
        | doc "UI Configurations for Web and Mobile"
        | optional,
      ..
    }