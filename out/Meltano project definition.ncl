# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      annotations
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      auto_install
        | Bool
        | doc "Whether to automatically install any required plugins on command invocation. A plugin will be auto-installed when its virtual environment does not already exist or `pip_url` is changed."
        | optional,
      cli
        | {
          log_config
            | String
            | doc "The path to the logging config, relative to the Meltano project root."
            | optional,
          ..
        }
        | doc "CLI related settings."
        | optional,
      database_max_retries
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "The number of times to retry connecting to the Meltano database."
        | optional,
      database_retry_timeout
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "The time in seconds to wait between Meltano database connection attempts."
        | optional,
      database_uri
        | String
        | doc "A database URI for the project system database. Defaults to a SQLite file stored at .meltano/meltano.db"
        | optional,
      default_environment
        | String
        | doc "A default environment to be used when one is not present as an argument or as an environment variable."
        | optional,
      elt
        | {
          buffer_size
            | std.number.Integer
            | doc "The size of the ELT buffer in bytes."
            | optional,
          ..
        }
        | doc "ELT related settings"
        | optional,
      env
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      environments
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "An array of environments (i.e. dev, stage, prod) with override configs for plugins based on the environment its run in."
        | optional,
      experimental
        | Bool
        | doc "Whether experimental features should be enabled."
        | optional,
      ff
        | {
          plugin_locks_required
            | Bool
            | doc "Whether plugin locks are required to run a job."
            | optional,
          strict_env_var_mode
            | Bool
            | doc "Whether references to undefined environment variables cause Meltano to exit with an error."
            | optional,
          ..
        }
        | doc "A feature flag, which can be used to enable or disable particular Meltano features."
        | optional,
      hub_api_root
        | js2n.Nullable String
        | doc "The URL to the root of the Meltano Hub API."
        | optional,
      hub_url | String | doc "The URL for Meltano Hub." | optional,
      hub_url_auth
        | std.contract.any_of [ js2n.Null, Bool, String ]
        | doc "The value of the `Authorization` header when making requests to Meltano Hub. If null, false, or unset, no `Authorization` header is used."
        | optional,
      include_paths
        | Array String
        | doc "An array of paths (relative to the project directory) of other Meltano config files to include in the configuration."
        | optional,
      jobs
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Jobs, added using 'meltano job'"
        | optional,
      plugins
        | {
          extractors
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          files
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          loaders
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          mappers
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          orchestrators
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          transformers
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          transforms
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          utilities
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
        }
        | optional,
      project_id
        | String
        | doc "A globally unique project identifier. Defaults to a Meltano-generated unique GUID for each project."
        | optional,
      project_readonly
        | Bool
        | doc "Whether the project is read-only."
        | optional,
      python
        | String
        | doc "The python version to use for plugins, specified as a path, or as the name of an executable to find within a directory in $PATH. If not specified, the python executable that was used to run Meltano will be used (within a separate virtual environment). This can be overridden on a per-plugin basis by setting the `python` property for the plugin."
        | optional,
      schedules
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Scheduled ELT jobs, added using 'meltano schedule'"
        | optional,
      send_anonymous_usage_stats
        | Bool
        | doc "Share anonymous usage data with the Meltano team to help them gauge interest and allocate development time"
        | optional,
      snowplow
        | {
          collector_endpoints
            | Array String
            | doc "Array of Snowplow collector endpoints."
            | optional,
          ..
        }
        | doc "Snowplow related settings."
        | optional,
      state_backend
        | {
          azure
            | {
              connection_string
                | String
                | doc "The azure connection string to use for connecting to Azure Blob Storage."
                | optional,
              ..
            }
            | doc "Configuration for Azure Blob Storage state backend."
            | optional,
          gcs
            | {
              application_credentials
                | String
                | doc "Path to a Google credentials file to use for authenticating to Google Cloud Storage."
                | optional,
              ..
            }
            | doc "Configuration for Google Cloud Storage state backend."
            | optional,
          lock_retry_seconds
            | std.number.Integer
            | doc "The number of seconds to wait between retrying lock acquisition."
            | optional,
          lock_timeout_seconds
            | std.number.Integer
            | doc "The number of seconds a lock on a state file is considered valid."
            | optional,
          s3
            | {
              aws_access_key_id
                | String
                | doc "AWS access key ID to use for authenticating to AWS S3."
                | optional,
              aws_secret_access_key
                | String
                | doc "AWS secret access key to use for authenticating to AWS S3."
                | optional,
              endpoint_url | String | doc "S3 endpoint URL to use." | optional,
              ..
            }
            | doc "Configuration for AWS S3 state backend."
            | optional,
          uri
            | String
            | doc "The URI pointing to the backend to use."
            | optional,
          ..
        }
        | doc "Configuration for state backend."
        | optional,
      venv
        | {
          backend
            | std.enum.TagOrString
            | [| 'uv, 'virtualenv |]
            | doc "The virtual environment backend to use."
            | optional,
          ..
        }
        | doc "Configuration for plugin virtual environments."
        | optional,
      version | std.contract.Equal 1 | optional,
    }