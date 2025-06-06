# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      api_token
        | js2n.string.MaxLength 32
        | js2n.string.MinLength 32
        | doc "Your API 32-hexdigit token."
        | optional,
      app_id
        | js2n.string.MaxLength 5
        | js2n.string.MinLength 5
        | doc "Your 5 character app ID."
        | optional,
      ndk_enabled
        | Bool
        | doc "Enables NDK crash capture. Defaults to false."
        | optional,
      sdk_config
        | js2n.record.MinProperties 1
        | {
          anr
            | js2n.record.MinProperties 1
            | {
              capture_unity_thread
                | Bool
                | doc "Enables Unity ANR capture. Defaults to false."
                | optional,
              ..
            }
            | optional,
          app
            | js2n.record.MinProperties 1
            | {
              report_disk_usage
                | Bool
                | doc "The SDK collects the disk usage for the app. You can disable this if your app has a large number of local files to prevent excessive resource usage, especially on lower-end devices. Defaults to true."
                | optional,
              ..
            }
            | optional,
          app_exit_info
            | js2n.record.MinProperties 1
            | {
              aei_enabled
                | Bool
                | doc "Enables Application Exit Info capture. Defaults to true."
                | optional,
              app_exit_info_traces_limit
                | Bool
                | doc "Defines the max size of bytes to allow capturing AppExitInfo NDK/ANR traces."
                | optional,
              ..
            }
            | optional,
          app_framework
            | String
            | doc "Project's app framework, one of react_native, unity, flutter or native."
            | optional,
          automatic_data_capture
            | js2n.record.MinProperties 1
            | {
              anr_info
                | Bool
                | doc "Enables ANR capture. Defaults to true."
                | optional,
              memory_info
                | Bool
                | doc "Enables memory warning capture. Defaults to true."
                | optional,
              network_connectivity_info
                | Bool
                | doc "Enables network connectivity capture. Defaults to true."
                | optional,
              power_save_mode_info
                | Bool
                | doc "Enables power save mode capture. Defaults to true."
                | optional,
              ..
            }
            | optional,
          background_activity
            | js2n.record.MinProperties 1
            | {
              capture_enabled
                | Bool
                | doc "Enables background activity capture. Defaults to false."
                | optional,
              ..
            }
            | optional,
          base_urls
            | js2n.record.MinProperties 1
            | {
              config | String | doc "Base config URL for the SDK." | optional,
              data
                | std.number.Integer
                | doc "Base data URL for the SDK."
                | optional,
              ..
            }
            | optional,
          capture_fcm_pii_data
            | Bool
            | doc "Enables PII data within FCM capture. Defaults to false."
            | optional,
          capture_public_key
            | String
            | doc "Declares the key that should be used to capture network request bodies, if any."
            | optional,
          compose
            | js2n.record.MinProperties 1
            | {
              capture_compose_onclick
                | Bool
                | doc "Enables capture of Jetpack Compose click events. Defaults to false."
                | optional,
              ..
            }
            | optional,
          crash_handler
            | js2n.record.MinProperties 1
            | {
              enabled
                | Bool
                | doc "Set to false to prevent the SDK from connecting to the uncaught exception handler. Defaults to true."
                | optional,
              ..
            }
            | optional,
          networking
            | js2n.record.MinProperties 1
            | {
              capture_request_content_length
                | Bool
                | doc "Disable capture of network length which can interfere with certain streaming network requests. Defaults to true."
                | optional,
              default_capture_limit
                | std.number.Integer
                | doc "Default capture limit for specified domains. Defaults to 1000."
                | optional,
              disabled_url_patterns
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array String
                | doc "Specify one or more regular expressions to exclude network request with URLs matching one of the regular expressions from being captured."
                | optional,
              domains
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array (
                  std.contract.Sequence
                    [
                      js2n.record.MinProperties 1,
                      {
                        domain_limit
                          | std.number.Integer
                          | doc "Limit for the number of requests to be tracked."
                          | optional,
                        domain_name | String | doc "Domain URL." | optional,
                        ..
                      }
                    ]
                )
                | doc "List of domain names and their respective limits."
                | optional,
              enable_native_monitoring
                | Bool
                | doc "Enable capture of network requests made using the native Java network API. Defaults to true."
                | optional,
              enable_network_span_forwarding
                | Bool
                | doc "Enables network span forwarding. Defaults to false."
                | optional,
              ..
            }
            | optional,
          sensitive_keys_denylist
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array String
            | doc "List of sensitive keys whose values should be redacted on capture."
            | optional,
          session
            | js2n.record.MinProperties 1
            | {
              components
                | js2n.array.UniqueItems
                | Array String
                | doc "Allowlist of session components that should be included in the session payload. The presence of this property denotes that the gating feature is enabled."
                | optional,
              send_full_for
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array String
                | doc "List of events allowed to send a full session payload if the gating feature is enabled."
                | optional,
              ..
            }
            | optional,
          sig_handler_detection
            | Bool
            | doc "Enables 3rd party signal handler detection. Defaults to true."
            | optional,
          taps
            | js2n.record.MinProperties 1
            | {
              capture_coordinates
                | Bool
                | doc "Set to false to disable capturing tap coordinates. Defaults to true."
                | optional,
              ..
            }
            | optional,
          view_config
            | js2n.record.MinProperties 1
            | {
              enable_automatic_activity_capture
                | Bool
                | doc "Enables capturing activity lifecycle changes in breadcrumbs. Defaults to true."
                | optional,
              ..
            }
            | optional,
          webview
            | js2n.record.MinProperties 1
            | {
              capture_query_params
                | Bool
                | doc "Set to false to disable capturing of web view query parameters. Defaults to true. If webview:enable is set to false, this setting has no effect since all capture of web view information is disabled."
                | optional,
              enable
                | Bool
                | doc "Set to false to disable capturing of web views. Defaults to true."
                | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      unity
        | js2n.record.MinProperties 1
        | {
          symbols_archive_name
            | String
            | doc "Custom file name for unity symbols"
            | optional,
          ..
        }
        | optional,
      ..
    }