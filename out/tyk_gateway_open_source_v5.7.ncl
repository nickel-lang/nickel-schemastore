# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      allow_insecure_configs
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      allow_master_keys
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      analytics_config
        | {
          enable_detailed_recording
            | Bool
            | doc "Set this value to `true` to have Tyk store the inbound request and outbound response data in HTTP Wire format as part of the Analytics data. Please note, this will greatly increase your analytics DB size and can cause performance degradation on analytics processing by the Dashboard. This setting can be overridden with an organisation flag, enabed at an API level, or on individual Key level."
            | optional,
          ignored_ips
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            )
            | doc "An explanation about the purpose of this instance."
            | optional,
          purge_interval
            | std.number.Integer
            | doc "Set the interval length on how often the tyk Gateway will purge analytics data. This value is in seconds and defaults to 10 seconds."
            | optional,
          type | String | doc "For OSS gateway use an empty string.",
          ..
        }
        | doc "`analytics_config` contains setting for analytics captured by the gateway"
        | optional,
      app_path
        | String
        | doc "An explanation about the purpose of this instance.",
      bundle_base_url
        | String
        | doc "An explanation about the purpose of this instance."
        | optional,
      close_connections
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      coprocess_options
        | {
          coprocess_grpc_server
            | String
            | doc "An explanation about the purpose of this instance.",
          enable_coprocess
            | Bool
            | doc "An explanation about the purpose of this instance.",
          ..
        }
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_analytics
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_bundle_downloader
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_hashed_keys_listing
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_jsvm
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_non_transactional_rate_limiter
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_redis_rolling_limiter
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      enable_sentinel_rate_limiter
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      force_global_session_lifetime
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      global_session_lifetime
        | std.number.Integer
        | doc "An explanation about the purpose of this instance."
        | optional,
      hash_keys
        | Bool
        | doc "True value will use the hashed value of the key as the key in Redis."
        | optional,
      health_check
        | {
          enable_health_checks
            | Bool
            | doc "An explanation about the purpose of this instance.",
          health_check_value_timeouts
            | std.number.Integer
            | doc "health_check_value_timeouts is deprecated!"
            | optional,
          ..
        }
        | doc "An explanation about the purpose of this instance."
        | optional,
      http_server_options
        | {
          enable_websockets
            | Bool
            | doc "An explanation about the purpose of this instance.",
          ..
        }
        | doc "An explanation about the purpose of this instance."
        | optional,
      listen_port
        | std.number.Integer
        | doc "An explanation about the purpose of this instance.",
      log_level
        | std.enum.TagOrString
        | [| 'debug, 'info, 'warn, 'error |]
        | doc "Configuration field to control the gateway logging level."
        | optional,
      max_idle_connections_per_host
        | std.number.Integer
        | doc "An explanation about the purpose of this instance."
        | optional,
      middleware_path
        | String
        | doc "An explanation about the purpose of this instance."
        | optional,
      optimisations_use_async_session_write
        | Bool
        | doc "An explanation about the purpose of this instance."
        | optional,
      policies
        | {
          policy_path
            | String
            | doc "This option is required if `policies.policy_source` is set to `file`."
            | optional,
          policy_record_name
            | String
            | doc "This option is required if `policies.policy_source` is set to `file`.",
          policy_source
            | String
            | doc "Set to `file` to load policies file from the file system. Set to `service` to use the Dashboard service.",
          ..
        }
        | doc "Tell the gateway where to pick the policies from.",
      secret
        | String
        | doc "Configuration field as API key for the Tyk Gateway API. It should be passed along as the `X-Tyk-Authorization header in any requests made.",
      storage
        | {
          database
            | std.number.Integer
            | doc "Only single-node and failover clients."
            | optional,
          host
            | String
            | doc "An explanation about the purpose of this instance.",
          optimisation_max_active
            | std.number.Integer
            | doc "An explanation about the purpose of this instance."
            | optional,
          optimisation_max_idle
            | std.number.Integer
            | doc "An explanation about the purpose of this instance."
            | optional,
          password
            | String
            | doc "An explanation about the purpose of this instance."
            | optional,
          port
            | std.number.Integer
            | doc "An explanation about the purpose of this instance.",
          type
            | String
            | doc "An explanation about the purpose of this instance.",
          username
            | String
            | doc "An explanation about the purpose of this instance."
            | optional,
          ..
        }
        | doc "An explanation about the purpose of this instance.",
      template_path
        | String
        | doc "An explanation about the purpose of this instance."
        | optional,
      tyk_js_path
        | String
        | doc "An explanation about the purpose of this instance."
        | optional,
      use_db_app_configs
        | Bool
        | doc "For licensed users this needs to be true. False means it's not using a DB to load the configurations.",
      ..
    }