# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      GLOBAL
        | {
          allow_deprecated_macos_versions
            | Array Dyn
            | doc m%"
              Silence warnings/errors about running Pants on these versions of macOS. Pants only supports recent versions of macOS. You can try running on older versions, but it may or may not work
              https://www.pantsbuild.org/v2.26/docs/reference-global#allow_deprecated_macos_versions
            "%
            | optional,
          backend_packages
            | Array Dyn
            | doc m%"
              Register functionality from these backends
              https://www.pantsbuild.org/v2.26/docs/reference-global#backend_packages
            "%
            | optional,
          build_file_prelude_globs
            | Array Dyn
            | doc m%"
              Python files to evaluate and whose symbols should be exposed to all BUILD files
              https://www.pantsbuild.org/v2.26/docs/reference-global#build_file_prelude_globs
            "%
            | optional,
          build_ignore
            | Array Dyn
            | doc m%"
              Path globs or literals to ignore when identifying BUILD files
              https://www.pantsbuild.org/v2.26/docs/reference-global#build_ignore
            "%
            | optional,
          build_patterns
            | Array Dyn
            | doc m%"
              The naming scheme for BUILD files, i.e. where you define targets
              https://www.pantsbuild.org/v2.26/docs/reference-global#build_patterns
            "%
            | optional,
          ca_certs_path
            | String
            | doc m%"
              Path to a file containing PEM-format CA certificates used for verifying secure connections when downloading files required by a build
              https://www.pantsbuild.org/v2.26/docs/reference-global#ca_certs_path
            "%
            | optional,
          cache_content_behavior
            | std.enum.TagOrString
            | [| 'defer, 'validate, 'fetch |]
            | doc m%"
              Controls how the content of cache entries is handled during process execution
              https://www.pantsbuild.org/v2.26/docs/reference-global#cache_content_behavior
            "%
            | optional,
          colors
            | Bool
            | doc m%"
              Whether Pants should use colors in output or not
              https://www.pantsbuild.org/v2.26/docs/reference-global#colors
            "%
            | optional,
          concurrent
            | Bool
            | doc m%"
              Enable concurrent runs of Pants
              https://www.pantsbuild.org/v2.26/docs/reference-global#concurrent
            "%
            | optional,
          docker_execution
            | Bool
            | doc m%"
              If true, `docker_environment` targets can be used to run builds inside a Docker container
              https://www.pantsbuild.org/v2.26/docs/reference-global#docker_execution
            "%
            | optional,
          dynamic_ui
            | Bool
            | doc m%"
              Display a dynamically-updating console UI as Pants runs
              https://www.pantsbuild.org/v2.26/docs/reference-global#dynamic_ui
            "%
            | optional,
          dynamic_ui_renderer
            | std.enum.TagOrString
            | [| 'experimental-prodash, 'indicatif-spinner |]
            | doc m%"
              If `--dynamic-ui` is enabled, selects the renderer
              https://www.pantsbuild.org/v2.26/docs/reference-global#dynamic_ui_renderer
            "%
            | optional,
          enable_target_origin_sources_blocks
            | Bool
            | doc m%"
              Enable fine grained target analysis based on line numbers
              https://www.pantsbuild.org/v2.26/docs/reference-global#enable_target_origin_sources_blocks
            "%
            | optional,
          engine_visualize_to
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              A directory to write execution and rule graphs to as `dot` files
              https://www.pantsbuild.org/v2.26/docs/reference-global#engine_visualize_to
            "%
            | optional,
          file_downloads_max_attempts
            | Number
            | doc m%"
              When Pants downloads files (for example, for the `http_source` source), Pants will retry the download if a "retryable" error occurs
              https://www.pantsbuild.org/v2.26/docs/reference-global#file_downloads_max_attempts
            "%
            | optional,
          file_downloads_retry_delay
            | Number
            | doc m%"
              When Pants downloads files (for example, for the `http_source` source), Pants will retry the download if a "retryable" error occurs
              https://www.pantsbuild.org/v2.26/docs/reference-global#file_downloads_retry_delay
            "%
            | optional,
          ignore_warnings
            | Array Dyn
            | doc m%"
              Ignore logs and warnings matching these strings
              https://www.pantsbuild.org/v2.26/docs/reference-global#ignore_warnings
            "%
            | optional,
          keep_sandboxes
            | std.enum.TagOrString
            | [| 'never, 'on_failure, 'always |]
            | doc m%"
              Controls whether Pants will clean up local directories used as chroots for running processes
              https://www.pantsbuild.org/v2.26/docs/reference-global#keep_sandboxes
            "%
            | optional,
          level
            | std.enum.TagOrString
            | [| 'error, 'warn, 'info, 'debug, 'trace |]
            | doc m%"
              Set the logging level
              https://www.pantsbuild.org/v2.26/docs/reference-global#level
            "%
            | optional,
          local_cache
            | Bool
            | doc m%"
              Whether to cache process executions in a local cache persisted to disk at `--local-store-dir`
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_cache
            "%
            | optional,
          local_execution_root_dir
            | String
            | doc m%"
              Directory to use for local process execution sandboxing
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_execution_root_dir
            "%
            | optional,
          local_store_dir
            | String
            | doc m%"
              Directory to use for the local file store, which stores the results of subprocesses run by Pants
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_store_dir
            "%
            | optional,
          local_store_directories_max_size_bytes
            | Number
            | doc m%"
              The maximum size in bytes of the local store containing directories
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_store_directories_max_size_bytes
            "%
            | optional,
          local_store_files_max_size_bytes
            | Number
            | doc m%"
              The maximum size in bytes of the local store containing files
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_store_files_max_size_bytes
            "%
            | optional,
          local_store_processes_max_size_bytes
            | Number
            | doc m%"
              The maximum size in bytes of the local store containing process cache entries
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_store_processes_max_size_bytes
            "%
            | optional,
          local_store_shard_count
            | Number
            | doc m%"
              The number of LMDB shards created for the local store
              https://www.pantsbuild.org/v2.26/docs/reference-global#local_store_shard_count
            "%
            | optional,
          log_levels_by_target
            | { _ | Dyn }
            | doc m%"
              Set a more specific logging level for one or more logging targets
              https://www.pantsbuild.org/v2.26/docs/reference-global#log_levels_by_target
            "%
            | optional,
          log_show_rust_3rdparty
            | Bool
            | doc m%"
              Whether to show/hide logging done by 3rdparty Rust crates used by the Pants engine
              https://www.pantsbuild.org/v2.26/docs/reference-global#log_show_rust_3rdparty
            "%
            | optional,
          logdir
            | String
            | doc m%"
              Write logs to files under this directory
              https://www.pantsbuild.org/v2.26/docs/reference-global#logdir
            "%
            | optional,
          loop
            | Bool
            | doc m%"
              Run goals continuously as file changes are detected
              https://www.pantsbuild.org/v2.26/docs/reference-global#loop
            "%
            | optional,
          loop_max
            | Number
            | doc m%"
              The maximum number of times to loop when `--loop` is specified
              https://www.pantsbuild.org/v2.26/docs/reference-global#loop_max
            "%
            | optional,
          named_caches_dir
            | String
            | doc m%"
              Directory to use for named global caches for tools and processes with trusted, concurrency-safe caches
              https://www.pantsbuild.org/v2.26/docs/reference-global#named_caches_dir
            "%
            | optional,
          pants_bin_name
            | String
            | doc m%"
              The name of the script or binary used to invoke Pants
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_bin_name
            "%
            | optional,
          pants_config_files
            | Array Dyn
            | doc m%"
              Paths to Pants config files
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_config_files
            "%
            | optional,
          pants_distdir
            | String
            | doc m%"
              Write end products, such as the results of `pants package`, to this dir
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_distdir
            "%
            | optional,
          pants_ignore
            | Array Dyn
            | doc m%"
              Paths to ignore for all filesystem operations performed by pants (e.g
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_ignore
            "%
            | optional,
          pants_ignore_use_gitignore
            | Bool
            | doc m%"
              Include patterns from `.gitignore`, `.git/info/exclude`, and the global gitignore files in the option `[GLOBAL].pants_ignore`, which is used for Pants to ignore filesystem operations on those patterns
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_ignore_use_gitignore
            "%
            | optional,
          pants_physical_workdir_base
            | String
            | doc m%"
              When set, a base directory in which to store `--pants-workdir` contents
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_physical_workdir_base
            "%
            | optional,
          pants_subprocessdir
            | String
            | doc m%"
              The directory to use for tracking subprocess metadata
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_subprocessdir
            "%
            | optional,
          pants_version
            | String
            | doc m%"
              Use this Pants version
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_version
            "%
            | optional,
          pants_workdir
            | String
            | doc m%"
              Write intermediate logs and output files to this dir
              https://www.pantsbuild.org/v2.26/docs/reference-global#pants_workdir
            "%
            | optional,
          pantsd
            | Bool
            | doc m%"
              Enables use of the Pants daemon (pantsd). pantsd can significantly improve runtime performance by lowering per-run startup cost, and by memoizing filesystem operations and rule execution
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsd
            "%
            | optional,
          pantsd_invalidation_globs
            | Array Dyn
            | doc m%"
              Filesystem events matching any of these globs will trigger a daemon restart
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsd_invalidation_globs
            "%
            | optional,
          pantsd_max_memory_usage
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              The maximum memory usage of the pantsd process
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsd_max_memory_usage
            "%
            | optional,
          pantsd_pailgun_port
            | Number
            | doc m%"
              The port to bind the Pants nailgun server to
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsd_pailgun_port
            "%
            | optional,
          pantsd_timeout_when_multiple_invocations
            | Number
            | doc m%"
              The maximum amount of time to wait for the invocation to start until raising a timeout exception
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsd_timeout_when_multiple_invocations
            "%
            | optional,
          pantsrc
            | Bool
            | doc m%"
              Use pantsrc files located at the paths specified in the global option `pantsrc_files`
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsrc
            "%
            | optional,
          pantsrc_files
            | Array Dyn
            | doc m%"
              Override config with values from these files, using syntax matching that of `--pants-config-files`
              https://www.pantsbuild.org/v2.26/docs/reference-global#pantsrc_files
            "%
            | optional,
          plugins
            | Array Dyn
            | doc m%"
              Allow backends to be loaded from these plugins (usually released through PyPI). The default backends for each plugin will be loaded automatically
              https://www.pantsbuild.org/v2.26/docs/reference-global#plugins
            "%
            | optional,
          plugins_force_resolve
            | Bool
            | doc m%"
              Re-resolve plugins, even if previously resolved
              https://www.pantsbuild.org/v2.26/docs/reference-global#plugins_force_resolve
            "%
            | optional,
          print_stacktrace
            | Bool
            | doc m%"
              Print the full exception stack trace for any errors
              https://www.pantsbuild.org/v2.26/docs/reference-global#print_stacktrace
            "%
            | optional,
          process_execution_cache_namespace
            | String
            | doc m%"
              The cache namespace for process execution
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_execution_cache_namespace
            "%
            | optional,
          process_execution_graceful_shutdown_timeout
            | Number
            | doc m%"
              The time in seconds to wait when gracefully shutting down an interactive process (such as one opened using `pants run`) before killing it
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_execution_graceful_shutdown_timeout
            "%
            | optional,
          process_execution_local_enable_nailgun
            | Bool
            | doc m%"
              Whether or not to use nailgun to run JVM requests that are marked as supporting nailgun
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_execution_local_enable_nailgun
            "%
            | optional,
          process_execution_local_parallelism
            | Number
            | doc m%"
              Number of concurrent processes that may be executed locally
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_execution_local_parallelism
            "%
            | optional,
          process_execution_remote_parallelism
            | Number
            | doc m%"
              Number of concurrent processes that may be executed remotely
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_execution_remote_parallelism
            "%
            | optional,
          process_per_child_memory_usage
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              The default memory usage for a single "pooled" child process
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_per_child_memory_usage
            "%
            | optional,
          process_total_child_memory_usage
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              The maximum memory usage for all "pooled" child processes
              https://www.pantsbuild.org/v2.26/docs/reference-global#process_total_child_memory_usage
            "%
            | optional,
          pythonpath
            | Array Dyn
            | doc m%"
              Add these directories to PYTHONPATH to search for plugins
              https://www.pantsbuild.org/v2.26/docs/reference-global#pythonpath
            "%
            | optional,
          remote_ca_certs_path
            | String
            | doc m%"
              Path to a PEM file containing CA certificates used for verifying secure connections to `[GLOBAL].remote_execution_address` and `[GLOBAL].remote_store_address`
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_ca_certs_path
            "%
            | optional,
          remote_cache_read
            | Bool
            | doc m%"
              Whether to enable reading from a remote cache
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_cache_read
            "%
            | optional,
          remote_cache_rpc_concurrency
            | Number
            | doc m%"
              The number of concurrent requests allowed to the remote cache service
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_cache_rpc_concurrency
            "%
            | optional,
          remote_cache_rpc_timeout_millis
            | Number
            | doc m%"
              Timeout value for remote cache RPCs in milliseconds
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_cache_rpc_timeout_millis
            "%
            | optional,
          remote_cache_warnings
            | std.enum.TagOrString
            | [| 'always, 'backoff, 'first_only, 'ignore |]
            | doc m%"
              How frequently to log remote cache failures at the `warn` log level
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_cache_warnings
            "%
            | optional,
          remote_cache_write
            | Bool
            | doc m%"
              Whether to enable writing results to a remote cache
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_cache_write
            "%
            | optional,
          remote_client_certs_path
            | String
            | doc m%"
              Path to a PEM file containing client certificates used for verifying secure connections to `[GLOBAL].remote_execution_address` and `[GLOBAL].remote_store_address` when using client authentication (mTLS)
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_client_certs_path
            "%
            | optional,
          remote_client_key_path
            | String
            | doc m%"
              Path to a PEM file containing a private key used for verifying secure connections to `[GLOBAL].remote_execution_address` and `[GLOBAL].remote_store_address` when using client authentication (mTLS)
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_client_key_path
            "%
            | optional,
          remote_execution
            | Bool
            | doc m%"
              Enables remote workers for increased parallelism. (Alpha)
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution
            "%
            | optional,
          remote_execution_address
            | String
            | doc m%"
              The URI of a server/entity used as a remote execution scheduler
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution_address
            "%
            | optional,
          remote_execution_append_only_caches_base_path
            | String
            | doc m%"
              Sets the base path to use when setting up an append-only cache for a process running remotely
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution_append_only_caches_base_path
            "%
            | optional,
          remote_execution_extra_platform_properties
            | Array Dyn
            | doc m%"
              Platform properties to set on remote execution requests
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution_extra_platform_properties
            "%
            | optional,
          remote_execution_headers
            | { _ | Dyn }
            | doc m%"
              Headers to set on remote execution requests
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution_headers
            "%
            | optional,
          remote_execution_overall_deadline_secs
            | Number
            | doc m%"
              Overall timeout in seconds for each remote execution request from time of submission
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution_overall_deadline_secs
            "%
            | optional,
          remote_execution_rpc_concurrency
            | Number
            | doc m%"
              The number of concurrent requests allowed to the remote execution service
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_execution_rpc_concurrency
            "%
            | optional,
          remote_instance_name
            | String
            | doc m%"
              Name of the remote instance to use by remote caching and remote execution
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_instance_name
            "%
            | optional,
          remote_oauth_bearer_token
            | String
            | doc m%"
              An oauth token to use for gGRPC connections to `[GLOBAL].remote_execution_address` and `[GLOBAL].remote_store_address`
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_oauth_bearer_token
            "%
            | optional,
          remote_provider
            | std.enum.TagOrString
            | [|
              'experimental-github-actions-cache,
              'experimental-file,
              'reapi
            |]
            | doc m%"
              The type of provider to use, if using a remote cache and/or remote execution, See https://www.pantsbuild.org/2.26/docs/using-pants/remote-caching-and-execution for details
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_provider
            "%
            | optional,
          remote_store_address
            | String
            | doc m%"
              The URI of a server/entity used as a remote file store
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_address
            "%
            | optional,
          remote_store_batch_api_size_limit
            | Number
            | doc m%"
              The maximum total size of blobs allowed to be sent in a single batch API call to the remote store
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_batch_api_size_limit
            "%
            | optional,
          remote_store_chunk_bytes
            | Number
            | doc m%"
              Size in bytes of chunks transferred to/from the remote file store
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_chunk_bytes
            "%
            | optional,
          remote_store_headers
            | { _ | Dyn }
            | doc m%"
              Headers to set on remote store requests
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_headers
            "%
            | optional,
          remote_store_rpc_concurrency
            | Number
            | doc m%"
              The number of concurrent requests allowed to the remote store service
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_rpc_concurrency
            "%
            | optional,
          remote_store_rpc_retries
            | Number
            | doc m%"
              Number of times to retry any RPC to the remote store before giving up
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_rpc_retries
            "%
            | optional,
          remote_store_rpc_timeout_millis
            | Number
            | doc m%"
              Timeout value for remote store RPCs (not including streaming requests) in milliseconds
              https://www.pantsbuild.org/v2.26/docs/reference-global#remote_store_rpc_timeout_millis
            "%
            | optional,
          rule_threads_core
            | Number
            | doc m%"
              The number of threads to keep active and ready to execute `@rule` logic (see also: `--rule-threads-max`)
              https://www.pantsbuild.org/v2.26/docs/reference-global#rule_threads_core
            "%
            | optional,
          rule_threads_max
            | Number
            | doc m%"
              The maximum number of threads to use to execute `@rule` logic
              https://www.pantsbuild.org/v2.26/docs/reference-global#rule_threads_max
            "%
            | optional,
          session_end_tasks_timeout
            | Number
            | doc m%"
              The time in seconds to wait for still-running "session end" tasks to complete before finishing completion of a Pants invocation. "Session end" tasks include, for example, writing data that was generated during the applicable Pants invocation to a configured remote cache
              https://www.pantsbuild.org/v2.26/docs/reference-global#session_end_tasks_timeout
            "%
            | optional,
          show_log_target
            | Bool
            | doc m%"
              Display the target where a log message originates in that log message's output
              https://www.pantsbuild.org/v2.26/docs/reference-global#show_log_target
            "%
            | optional,
          spec_files
            | Array Dyn
            | doc m%"
              Read additional specs (target addresses, files, and/or globs), one per line, from these files
              https://www.pantsbuild.org/v2.26/docs/reference-global#spec_files
            "%
            | optional,
          stats_record_option_scopes
            | Array Dyn
            | doc m%"
              Option scopes to record in stats on run completion
              https://www.pantsbuild.org/v2.26/docs/reference-global#stats_record_option_scopes
            "%
            | optional,
          streaming_workunits_complete_async
            | Bool
            | doc m%"
              True if stats recording should be allowed to complete asynchronously when `pantsd` is enabled
              https://www.pantsbuild.org/v2.26/docs/reference-global#streaming_workunits_complete_async
            "%
            | optional,
          streaming_workunits_level
            | std.enum.TagOrString
            | [| 'error, 'warn, 'info, 'debug, 'trace |]
            | doc m%"
              The level of workunits that will be reported to streaming workunit event receivers
              https://www.pantsbuild.org/v2.26/docs/reference-global#streaming_workunits_level
            "%
            | optional,
          streaming_workunits_report_interval
            | Number
            | doc m%"
              Interval in seconds between when streaming workunit event receivers will be polled
              https://www.pantsbuild.org/v2.26/docs/reference-global#streaming_workunits_report_interval
            "%
            | optional,
          subproject_roots
            | Array Dyn
            | doc m%"
              Paths that correspond with build roots for any subproject that this project depends on
              https://www.pantsbuild.org/v2.26/docs/reference-global#subproject_roots
            "%
            | optional,
          tag
            | Array Dyn
            | doc m%"
              Include only targets with these tags (optional '+' prefix) or without these tags ('-' prefix)
              https://www.pantsbuild.org/v2.26/docs/reference-global#tag
            "%
            | optional,
          unmatched_build_file_globs
            | std.enum.TagOrString
            | [| 'error, 'warn, 'ignore |]
            | doc m%"
              What to do when files and globs specified in BUILD files, such as in the `sources` field, cannot be found
              https://www.pantsbuild.org/v2.26/docs/reference-global#unmatched_build_file_globs
            "%
            | optional,
          unmatched_cli_globs
            | std.enum.TagOrString
            | [| 'error, 'warn, 'ignore |]
            | doc m%"
              What to do when command line arguments, e.g. files and globs like `dir::`, cannot be found
              https://www.pantsbuild.org/v2.26/docs/reference-global#unmatched_cli_globs
            "%
            | optional,
          verify_config
            | Bool
            | doc m%"
              Verify that all config file values correspond to known options
              https://www.pantsbuild.org/v2.26/docs/reference-global#verify_config
            "%
            | optional,
          watch_filesystem
            | Bool
            | doc m%"
              Set to False if Pants should not watch the filesystem for changes. `pantsd` or `loop` may not be enabled
              https://www.pantsbuild.org/v2.26/docs/reference-global#watch_filesystem
            "%
            | optional,
          ..
        }
        | doc "Options to control the overall behavior of Pants."
        | optional,
      anonymous-telemetry
        | {
          enabled
            | Bool
            | doc m%"
              Whether to send anonymous telemetry to the Pants project
              https://www.pantsbuild.org/v2.26/docs/reference-anonymous-telemetry#enabled
            "%
            | optional,
          repo_id
            | String
            | doc m%"
              An anonymized ID representing this repo
              https://www.pantsbuild.org/v2.26/docs/reference-anonymous-telemetry#repo_id
            "%
            | optional,
          ..
        }
        | doc "Options related to sending anonymous stats to the Pants project, to aid development."
        | optional,
      autoflake
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Autoflake, e.g. `--autoflake-args='--remove-all-unused-imports --target-version=py37 --quiet'`
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#args
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Autoflake when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-autoflake#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          The Autoflake Python code formatter (https://github.com/myint/autoflake).
          
          This version of Pants uses `autoflake` version 2.3.1 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      black
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Black, e.g. `--black-args='--target-version=py37 --quiet'`
              https://www.pantsbuild.org/v2.26/docs/reference-black#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to a TOML config file understood by Black (https://github.com/psf/black#configuration-format)
              https://www.pantsbuild.org/v2.26/docs/reference-black#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant pyproject.toml config files during runs
              https://www.pantsbuild.org/v2.26/docs/reference-black#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-black#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-black#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-black#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-black#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-black#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Black when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-black#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          The Black Python code formatter (https://black.readthedocs.io/).
          
          This version of Pants uses `black` version 24.8.0 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      build-deprecations-fixer
        | {
          skip
            | Bool
            | doc m%"
              If true, don't use BUILD Deprecations Fixer when running `pants fix`
              https://www.pantsbuild.org/v2.26/docs/reference-build-deprecations-fixer#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          A tool/plugin for fixing BUILD file deprecations (where possible).
          
          This includes deprecations for:
          
            - Renamed targets
            - Renamed fields
        "%
        | optional,
      buildifier
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Buildifier, e.g. `--buildifier-args='-lint=fix'`
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#args
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Buildifier when running `pants fmt`
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of Buildifier is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of Buildifier
              https://www.pantsbuild.org/v2.26/docs/reference-buildifier#version
            "%
            | optional,
          ..
        }
        | doc m%"
          Buildifier is a tool for formatting BUILD files with a standard convention.
          
          Pants supports running Buildifier on your Pants BUILD files for several reasons:
            - You might like the style that buildifier uses.
            - You might be incrementally adopting Pants from Bazel, and are already using buildifier.
          
          Please note that there are differences from Bazel's BUILD files (which are Starlark) and Pants' BUILD files (which are Python), so buildifier may issue a syntax error. In practice, these errors should be rare. See https://bazel.build/rules/language#differences_with_python.
        "%
        | optional,
      changed
        | {
          dependents
            | std.enum.TagOrString
            | [| 'transitive, 'direct, 'none |]
            | doc m%"
              Include direct or transitive dependents of changed targets
              https://www.pantsbuild.org/v2.26/docs/reference-changed#dependents
            "%
            | optional,
          diffspec
            | String
            | doc m%"
              Calculate changes contained within a given Git spec (commit range/SHA/ref)
              https://www.pantsbuild.org/v2.26/docs/reference-changed#diffspec
            "%
            | optional,
          since
            | String
            | doc m%"
              Calculate changes since this Git spec (commit range/SHA/ref)
              https://www.pantsbuild.org/v2.26/docs/reference-changed#since
            "%
            | optional,
          ..
        }
        | doc m%"
          Tell Pants to detect what files and targets have changed from Git.
          
          See https://www.pantsbuild.org/2.26/docs/using-pants/advanced-target-selection.
        "%
        | optional,
      check
        | {
          only
            | Array Dyn
            | doc m%"
              Only run these checkers and skip all others
              https://www.pantsbuild.org/v2.26/docs/reference-check#only
            "%
            | optional,
          ..
        }
        | doc "Run type checking or the lightest variant of compilation available for a language."
        | optional,
      check-default-tools
        | { _ | Dyn }
        | doc "Options for checking that external tool default locations are correctly typed."
        | optional,
      cli
        | {
          alias
            | { _ | Dyn }
            | doc m%"
              Register command line aliases
              https://www.pantsbuild.org/v2.26/docs/reference-cli#alias
            "%
            | optional,
          ..
        }
        | doc "Options for configuring CLI behavior, such as command line aliases."
        | optional,
      complete
        | {
          shell
            | std.enum.TagOrString
            | [| 'zsh, 'bash |]
            | doc m%"
              Which shell completion type should be printed to stdout
              https://www.pantsbuild.org/v2.26/docs/reference-complete#shell
            "%
            | optional,
          ..
        }
        | doc m%"
          Generates a completion script for the specified shell. The script is printed to stdout.
          
          For example, `pants complete --shell=zsh > pants-completions.zsh` will generate a zsh completion script and write it to the file `my-pants-completions.zsh`. You can then source this file in your `.zshrc` file to enable completion for Pants.
          
          This command is also used by the completion scripts to generate the completion options using passthrough options. This usage is not intended for use by end users, but could be useful for building custom completion scripts.
          
          An example of this usage is in the bash completion script, where we use the following command: `pants complete -- ${COMP_WORDS[@]}`. This will generate the completion options for the current args, and then pass them to the bash completion script.
        "%
        | optional,
      count-loc | { _ | Dyn } | doc "Count lines of code." | optional,
      coursier
        | {
          jvm_index
            | String
            | doc m%"
              The JVM index to be used by Coursier
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#jvm_index
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#known_versions
            "%
            | optional,
          repos
            | Array Dyn
            | doc m%"
              Maven style repositories to resolve artifacts from
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#repos
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of coursier is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of coursier
              https://www.pantsbuild.org/v2.26/docs/reference-coursier#version
            "%
            | optional,
          ..
        }
        | doc "A dependency resolver for the Maven ecosystem. (https://get-coursier.io/)"
        | optional,
      coverage-py
        | {
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to an INI or TOML config file understood by coverage.py (https://coverage.readthedocs.io/en/latest/config.html)
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant config files during runs (`.coveragerc`, `setup.cfg`, `tox.ini`, and `pyproject.toml`)
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#entry_point
            "%
            | optional,
          fail_under
            | Number
            | doc m%"
              Fail if the total combined coverage percentage for all tests is less than this number
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#fail_under
            "%
            | optional,
          filter
            | Array Dyn
            | doc m%"
              A list of Python modules or filesystem paths to use in the coverage report, e.g. `['helloworld_test', 'helloworld/util/dirutil']`
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#filter
            "%
            | optional,
          global_report
            | Bool
            | doc m%"
              If true, Pants will generate a global coverage report
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#global_report
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#interpreter_constraints
            "%
            | optional,
          output_dir
            | String
            | doc m%"
              Path to write the Pytest Coverage report to
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#output_dir
            "%
            | optional,
          report
            | std.enum.TagOrString
            | [| 'lcov, 'json, 'raw, 'html, 'xml, 'console |]
            | doc m%"
              Which coverage report type(s) to emit
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#report
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-coverage-py#requirements
            "%
            | optional,
          ..
        }
        | doc m%"
          Configuration for Python test coverage measurement.
          
          This version of Pants uses `coverage` version 7.6.1 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      debug-adapter
        | {
          host
            | String
            | doc m%"
              The hostname to use when launching the server
              https://www.pantsbuild.org/v2.26/docs/reference-debug-adapter#host
            "%
            | optional,
          port
            | Number
            | doc m%"
              The port to use when launching the server
              https://www.pantsbuild.org/v2.26/docs/reference-debug-adapter#port
            "%
            | optional,
          ..
        }
        | doc m%"
          Options used to configure and launch a Debug Adapter server.
          
          See https://microsoft.github.io/debug-adapter-protocol/ for more information.
        "%
        | optional,
      debugpy
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to debugpy, e.g. `--debugpy-args='--log-to-stderr'`
              https://www.pantsbuild.org/v2.26/docs/reference-debugpy#args
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-debugpy#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-debugpy#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-debugpy#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-debugpy#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-debugpy#requirements
            "%
            | optional,
          ..
        }
        | doc m%"
          An implementation of the Debug Adapter Protocol for Python (https://github.com/microsoft/debugpy).
          
          This version of Pants uses `debugpy` version 1.6.7.post1 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      dependencies
        | {
          closed
            | Bool
            | doc m%"
              Include the input targets in the output, along with the dependencies
              https://www.pantsbuild.org/v2.26/docs/reference-dependencies#closed
            "%
            | optional,
          format
            | std.enum.TagOrString
            | [| 'json, 'text |]
            | doc m%"
              Output format for listing dependencies
              https://www.pantsbuild.org/v2.26/docs/reference-dependencies#format
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-dependencies#output_file
            "%
            | optional,
          sep
            | String
            | doc m%"
              String to use to separate lines in line-oriented output
              https://www.pantsbuild.org/v2.26/docs/reference-dependencies#sep
            "%
            | optional,
          transitive
            | Bool
            | doc m%"
              List all transitive dependencies
              https://www.pantsbuild.org/v2.26/docs/reference-dependencies#transitive
            "%
            | optional,
          ..
        }
        | doc "List the dependencies of the input files/targets."
        | optional,
      dependents
        | {
          closed
            | Bool
            | doc m%"
              Include the input targets in the output, along with the dependents
              https://www.pantsbuild.org/v2.26/docs/reference-dependents#closed
            "%
            | optional,
          format
            | std.enum.TagOrString
            | [| 'json, 'text |]
            | doc m%"
              Output format for listing dependents
              https://www.pantsbuild.org/v2.26/docs/reference-dependents#format
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-dependents#output_file
            "%
            | optional,
          sep
            | String
            | doc m%"
              String to use to separate lines in line-oriented output
              https://www.pantsbuild.org/v2.26/docs/reference-dependents#sep
            "%
            | optional,
          transitive
            | Bool
            | doc m%"
              List all transitive dependents
              https://www.pantsbuild.org/v2.26/docs/reference-dependents#transitive
            "%
            | optional,
          ..
        }
        | doc "List all targets that depend on any of the input files/targets."
        | optional,
      docformatter
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to docformatter, e.g. `--docformatter-args='--wrap-summaries=100 --pre-summary-newline'`
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#args
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use docformatter when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-docformatter#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          The Python docformatter tool (https://github.com/myint/docformatter).
          
          This version of Pants uses `docformatter` version 1.4 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      docker
        | {
          build_args
            | Array Dyn
            | doc m%"
              Global build arguments (for Docker `--build-arg` options) to use for all `docker build` invocations
              https://www.pantsbuild.org/v2.26/docs/reference-docker#build_args
            "%
            | optional,
          build_hosts
            | { _ | Dyn }
            | doc m%"
              Hosts entries to be added to the `/etc/hosts` file in all built images
              https://www.pantsbuild.org/v2.26/docs/reference-docker#build_hosts
            "%
            | optional,
          build_no_cache
            | Bool
            | doc m%"
              Do not use the Docker cache when building images
              https://www.pantsbuild.org/v2.26/docs/reference-docker#build_no_cache
            "%
            | optional,
          build_target_stage
            | String
            | doc m%"
              Global default value for `target_stage` on `docker_image` targets, overriding the field value on the targets, if there is a matching stage in the `Dockerfile`
              https://www.pantsbuild.org/v2.26/docs/reference-docker#build_target_stage
            "%
            | optional,
          build_verbose
            | Bool
            | doc m%"
              Whether to log the Docker output to the console
              https://www.pantsbuild.org/v2.26/docs/reference-docker#build_verbose
            "%
            | optional,
          default_context_root
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Provide a default Docker build context root path for `docker_image` targets that does not specify their own `context_root` field
              https://www.pantsbuild.org/v2.26/docs/reference-docker#default_context_root
            "%
            | optional,
          default_repository
            | String
            | doc m%"
              Configure the default repository name used in the Docker image tag
              https://www.pantsbuild.org/v2.26/docs/reference-docker#default_repository
            "%
            | optional,
          env_vars
            | Array Dyn
            | doc m%"
              Environment variables to set for `docker` invocations
              https://www.pantsbuild.org/v2.26/docs/reference-docker#env_vars
            "%
            | optional,
          executable_search_paths
            | Array Dyn
            | doc m%"
              The PATH value that will be used to find the Docker client and any tools required
              https://www.pantsbuild.org/v2.26/docs/reference-docker#executable_search_paths
            "%
            | optional,
          optional_tools
            | Array Dyn
            | doc m%"
              List any additional executables which are not mandatory for Docker to work, but which should be included if available
              https://www.pantsbuild.org/v2.26/docs/reference-docker#optional_tools
            "%
            | optional,
          publish_noninteractively
            | Bool
            | doc m%"
              If true, publish images non-interactively
              https://www.pantsbuild.org/v2.26/docs/reference-docker#publish_noninteractively
            "%
            | optional,
          registries
            | std.contract.any_of [ { _ | Dyn }, String ]
            | doc m%"
              Configure Docker registries
              https://www.pantsbuild.org/v2.26/docs/reference-docker#registries
            "%
            | optional,
          run_args
            | Array Dyn
            | doc m%"
              Additional arguments to use for `docker run` invocations
              https://www.pantsbuild.org/v2.26/docs/reference-docker#run_args
            "%
            | optional,
          tailor
            | Bool
            | doc m%"
              If true, add `docker_image` targets with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-docker#tailor
            "%
            | optional,
          tools
            | Array Dyn
            | doc m%"
              List any additional executable tools required for Docker to work
              https://www.pantsbuild.org/v2.26/docs/reference-docker#tools
            "%
            | optional,
          use_buildx
            | Bool
            | doc m%"
              Use [buildx](https://github.com/docker/buildx#buildx) (and BuildKit) for builds
              https://www.pantsbuild.org/v2.26/docs/reference-docker#use_buildx
            "%
            | optional,
          ..
        }
        | doc "Options for interacting with Docker."
        | optional,
      dockerfile-parser
        | {
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-dockerfile-parser#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-dockerfile-parser#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-dockerfile-parser#requirements
            "%
            | optional,
          use_rust_parser
            | Bool
            | doc m%"
              Use the new experimental Rust-based, multithreaded, in-process dependency parser
              https://www.pantsbuild.org/v2.26/docs/reference-dockerfile-parser#use_rust_parser
            "%
            | optional,
          ..
        }
        | doc m%"
          Used to parse Dockerfile build specs to infer their dependencies.
          
          This version of Pants uses `dockerfile` version 3.3.1 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      environments-preview
        | {
          names
            | { _ | Dyn }
            | doc m%"
              A mapping of logical names to addresses to environment targets
              https://www.pantsbuild.org/v2.26/docs/reference-environments-preview#names
            "%
            | optional,
          ..
        }
        | doc "A highly experimental subsystem to allow setting environment variables and executable search paths for different environments, e.g. macOS vs. Linux."
        | optional,
      experimental-deploy
        | {
          dry_run
            | Bool
            | doc m%"
              If true, perform a dry run without deploying anything
              https://www.pantsbuild.org/v2.26/docs/reference-experimental-deploy#dry_run
            "%
            | optional,
          publish_dependencies
            | Bool
            | doc m%"
              If false, don't publish target dependencies before deploying the target
              https://www.pantsbuild.org/v2.26/docs/reference-experimental-deploy#publish_dependencies
            "%
            | optional,
          ..
        }
        | doc "Perform a deployment process."
        | optional,
      experimental-explorer
        | {
          address
            | String
            | doc m%"
              Server address to bind to
              https://www.pantsbuild.org/v2.26/docs/reference-experimental-explorer#address
            "%
            | optional,
          port
            | Number
            | doc m%"
              Server port to bind to
              https://www.pantsbuild.org/v2.26/docs/reference-experimental-explorer#port
            "%
            | optional,
          ..
        }
        | doc "Run the Pants Explorer Web UI server."
        | optional,
      export
        | {
          bin
            | Array Dyn
            | doc m%"
              Export the specified binaries
              https://www.pantsbuild.org/v2.26/docs/reference-export#bin
            "%
            | optional,
          py_editable_in_resolve
            | Array Dyn
            | doc m%"
              When exporting a mutable virtualenv for a resolve, do PEP-660 editable installs of all `python_distribution` targets that own code in the exported resolve
              https://www.pantsbuild.org/v2.26/docs/reference-export#py_editable_in_resolve
            "%
            | optional,
          py_generated_sources_in_resolve
            | Array Dyn
            | doc m%"
              When exporting a mutable virtualenv for a resolve listed in this option, generate sources which result from code generation (for example, the `protobuf_sources` and `thrift_sources` target types) into the mutable virtualenv exported for that resolve
              https://www.pantsbuild.org/v2.26/docs/reference-export#py_generated_sources_in_resolve
            "%
            | optional,
          py_non_hermetic_scripts_in_resolve
            | Array Dyn
            | doc m%"
              When exporting a mutable virtualenv for a resolve listed in this option, by default console script shebang lines will be made "hermetic"
              https://www.pantsbuild.org/v2.26/docs/reference-export#py_non_hermetic_scripts_in_resolve
            "%
            | optional,
          py_resolve_format
            | std.enum.TagOrString
            | [| 'symlinked_immutable_virtualenv, 'mutable_virtualenv |]
            | doc m%"
              Export Python resolves using this format
              https://www.pantsbuild.org/v2.26/docs/reference-export#py_resolve_format
            "%
            | optional,
          resolve
            | Array Dyn
            | doc m%"
              Export the specified resolve(s)
              https://www.pantsbuild.org/v2.26/docs/reference-export#resolve
            "%
            | optional,
          ..
        }
        | doc m%"
          Export Pants data for use in other tools, such as IDEs.
          
          :::caution Exporting tools requires creating a custom lockfile for them
          
          Follow [the instructions for creating tool lockfiles](../../docs/python/overview/lockfiles#lockfiles-for-tools)
          
          :::
        "%
        | optional,
      export-codegen
        | { _ | Dyn }
        | doc "Write generated files to `dist/codegen` for use outside of Pants."
        | optional,
      filedeps
        | {
          absolute
            | Bool
            | doc m%"
              If True, output with absolute path
              https://www.pantsbuild.org/v2.26/docs/reference-filedeps#absolute
            "%
            | optional,
          globs
            | Bool
            | doc m%"
              Instead of outputting filenames, output the original globs used in the BUILD file
              https://www.pantsbuild.org/v2.26/docs/reference-filedeps#globs
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-filedeps#output_file
            "%
            | optional,
          sep
            | String
            | doc m%"
              String to use to separate lines in line-oriented output
              https://www.pantsbuild.org/v2.26/docs/reference-filedeps#sep
            "%
            | optional,
          transitive
            | Bool
            | doc m%"
              If True, list files from all dependencies, including transitive dependencies
              https://www.pantsbuild.org/v2.26/docs/reference-filedeps#transitive
            "%
            | optional,
          ..
        }
        | doc "List all source and BUILD files a target depends on."
        | optional,
      filter
        | {
          address_regex
            | Array Dyn
            | doc m%"
              Filter on target addresses matching these regexes
              https://www.pantsbuild.org/v2.26/docs/reference-filter#address_regex
            "%
            | optional,
          granularity
            | std.enum.TagOrString
            | [| 'BUILD, 'file, 'all |]
            | doc m%"
              Filter to rendering only targets declared in BUILD files, only file-level targets, or all targets
              https://www.pantsbuild.org/v2.26/docs/reference-filter#granularity
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-filter#output_file
            "%
            | optional,
          sep
            | String
            | doc m%"
              String to use to separate lines in line-oriented output
              https://www.pantsbuild.org/v2.26/docs/reference-filter#sep
            "%
            | optional,
          tag_regex
            | Array Dyn
            | doc m%"
              Filter on targets with tags matching these regexes
              https://www.pantsbuild.org/v2.26/docs/reference-filter#tag_regex
            "%
            | optional,
          target_type
            | Array Dyn
            | doc m%"
              Filter on these target types, e.g. `resources` or `python_sources`
              https://www.pantsbuild.org/v2.26/docs/reference-filter#target_type
            "%
            | optional,
          ..
        }
        | doc m%"
          Filter the input targets based on various criteria.
          
          Most of the filtering options below are comma-separated lists of filtering criteria, with an implied logical OR between them, so that a target passes the filter if it matches any of the criteria in the list. A '-' prefix inverts the sense of the entire comma-separated list, so that a target passes the filter only if it matches none of the criteria in the list.
          
          Each of the filtering options may be specified multiple times, with an implied logical AND between them.
        "%
        | optional,
      fix
        | {
          batch_size
            | Number
            | doc m%"
              The target number of files to be included in each fixer batch
              https://www.pantsbuild.org/v2.26/docs/reference-fix#batch_size
            "%
            | optional,
          only
            | Array Dyn
            | doc m%"
              Only run these fixers and skip all others
              https://www.pantsbuild.org/v2.26/docs/reference-fix#only
            "%
            | optional,
          skip_formatters
            | Bool
            | doc m%"
              If true, skip running all formatters
              https://www.pantsbuild.org/v2.26/docs/reference-fix#skip_formatters
            "%
            | optional,
          ..
        }
        | doc m%"
          Autofix source code.
          
          This goal runs tools that make 'semantic' changes to source code, where the meaning of the code may change.
          
          See also:
          
          - [The `fmt` goal](https://www.pantsbuild.org/2.26/reference/goals/fix will run code-editing tools that may make only
            syntactic changes, not semantic ones. The `fix` includes running these `fmt` tools by
            default (see [the `skip_formatters` option](#skip_formatters) to control this).
          
          - [The `lint` goal](https://www.pantsbuild.org/2.26/reference/goals/lint) will validate code is formatted, by running these
            fixers and checking there's no change.
          
          - Documentation about formatters for various ecosystems, such as:
            [Python](https://www.pantsbuild.org/2.26/docs/python/overview/linters-and-formatters), [JVM](https://www.pantsbuild.org/jvm/java-and-scala#lint-and-format),
            [SQL](https://www.pantsbuild.org/2.26/docs/sql#enable-sqlfluff-linter)
        "%
        | optional,
      flake8
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Flake8, e.g. `--flake8-args='--ignore E123,W456 --enable-extensions H111'`
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to an INI config file understood by Flake8 (https://flake8.pycqa.org/en/latest/user/configuration.html)
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant config files during runs (`.flake8`, `flake8`, `setup.cfg`, and `tox.ini`)
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#entry_point
            "%
            | optional,
          extra_files
            | Array Dyn
            | doc m%"
              Paths to extra files to include in the sandbox
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#extra_files
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#install_from_resolve
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Flake8 when running `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#skip
            "%
            | optional,
          source_plugins
            | Array Dyn
            | doc m%"
              An optional list of `python_sources` target addresses to load first-party plugins
              https://www.pantsbuild.org/v2.26/docs/reference-flake8#source_plugins
            "%
            | optional,
          ..
        }
        | doc m%"
          The Flake8 Python linter (https://flake8.pycqa.org/).
          
          This version of Pants uses `flake8` version 5.0.4 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      fmt
        | {
          batch_size
            | Number
            | doc m%"
              The target number of files to be included in each formatter batch
              https://www.pantsbuild.org/v2.26/docs/reference-fmt#batch_size
            "%
            | optional,
          only
            | Array Dyn
            | doc m%"
              Only run these formatters and skip all others
              https://www.pantsbuild.org/v2.26/docs/reference-fmt#only
            "%
            | optional,
          ..
        }
        | doc m%"
          Autoformat source code.
          
          This goal runs tools that make 'syntactic' changes to source code, where the meaning of the code doesn't (usually) change.
          
          See also:
          
          - [The `fix` goal](https://www.pantsbuild.org/2.26/reference/goals/fix) will run code-editing tools that may make semantic
            changes, not just syntactic ones.
          
          - [The `lint` goal](https://www.pantsbuild.org/2.26/reference/goals/lint) will validate code is formatted, by running these
            formatters and checking there's no change.
          
          - Documentation about formatters for various ecosystems, such as:
            [Python](https://www.pantsbuild.org/2.26/docs/python/overview/linters-and-formatters), [Go](https://www.pantsbuild.org/2.26/docs/go#gofmt),
            [JVM](https://www.pantsbuild.org/jvm/java-and-scala#lint-and-format), [Shell](https://www.pantsbuild.org/2.26/docs/shell#shfmt-autoformatter).
        "%
        | optional,
      generate-lockfiles
        | {
          custom_command
            | String
            | doc m%"
              If set, lockfile headers will say to run this command to regenerate the lockfile, rather than running `pants generate-lockfiles --resolve=<name>` like normal
              https://www.pantsbuild.org/v2.26/docs/reference-generate-lockfiles#custom_command
            "%
            | optional,
          diff
            | Bool
            | doc m%"
              Print a summary of changed distributions after generating the lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-generate-lockfiles#diff
            "%
            | optional,
          diff_include_unchanged
            | Bool
            | doc m%"
              Include unchanged distributions in the diff summary output
              https://www.pantsbuild.org/v2.26/docs/reference-generate-lockfiles#diff_include_unchanged
            "%
            | optional,
          resolve
            | Array Dyn
            | doc m%"
              Only generate lockfiles for the specified resolve(s)
              https://www.pantsbuild.org/v2.26/docs/reference-generate-lockfiles#resolve
            "%
            | optional,
          ..
        }
        | doc "Generate lockfiles for third-party dependencies."
        | optional,
      generate-snapshots
        | { _ | Dyn }
        | doc "Generate test snapshots."
        | optional,
      go-generate
        | {
          env_vars
            | Array Dyn
            | doc m%"
              Environment variables to set when invoking generator programs
              https://www.pantsbuild.org/v2.26/docs/reference-go-generate#env_vars
            "%
            | optional,
          ..
        }
        | doc m%"
          Run each command in a package described by a `//go:generate` directive. This is equivalent to running `go generate` on a Go package.
          
          Note: Just like with `go generate`, the `go-generate` goal is never run as part of the build and must be run manually to invoke the commands described by the `//go:generate` directives.
          
          See https://go.dev/blog/generate for details.
        "%
        | optional,
      go-test
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Go test binary, e.g. `--go-test-args='-run TestFoo -v'`
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#args
            "%
            | optional,
          block_profile
            | Bool
            | doc m%"
              Capture a goroutine blocking profile from the execution of the test runner
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#block_profile
            "%
            | optional,
          cover_mode
            | std.enum.TagOrString
            | [| 'atomic, 'count, 'set |]
            | doc m%"
              Coverage mode to use when running Go tests with coverage analysis enabled via `--test-use-coverage`
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#cover_mode
            "%
            | optional,
          coverage_html
            | Bool
            | doc m%"
              If true, then convert coverage reports to HTML format and write a `coverage.html` file next to the raw coverage data
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#coverage_html
            "%
            | optional,
          coverage_output_dir
            | String
            | doc m%"
              Path to write the Go coverage reports to
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#coverage_output_dir
            "%
            | optional,
          coverage_packages
            | Array Dyn
            | doc m%"
              A list of "import path patterns" for determining which import paths will be instrumented for code coverage
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#coverage_packages
            "%
            | optional,
          cpu_profile
            | Bool
            | doc m%"
              Capture a CPU profile from the execution of the test runner
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#cpu_profile
            "%
            | optional,
          force_asan
            | Bool
            | doc m%"
              If true, then always enable interoperation between Go and the C/C++ "address sanitizer" when running tests regardless of the test-by-test `asan` field on the relevant `go_package` target
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#force_asan
            "%
            | optional,
          force_msan
            | Bool
            | doc m%"
              If true, then always enable interoperation between Go and the C/C++ "memory sanitizer" when running tests regardless of the test-by-test `msan` field on the relevant `go_package` target
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#force_msan
            "%
            | optional,
          force_race
            | Bool
            | doc m%"
              If true, then always enable the Go data race detector when running tests regardless of the test-by-test `test_race` field on the relevant `go_package` target
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#force_race
            "%
            | optional,
          mem_profile
            | Bool
            | doc m%"
              Capture an allocation profile from the execution of the test runner after tests have passed
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#mem_profile
            "%
            | optional,
          mutex_profile
            | Bool
            | doc m%"
              Capture a mutex contention profile from the execution of the test runner when all tests are complete
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#mutex_profile
            "%
            | optional,
          output_test_binary
            | Bool
            | doc m%"
              Write the test binary to the test extra output directory
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#output_test_binary
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Go test binary when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#skip
            "%
            | optional,
          trace
            | Bool
            | doc m%"
              Capture an execution trace from the execution of the test runner
              https://www.pantsbuild.org/v2.26/docs/reference-go-test#trace
            "%
            | optional,
          ..
        }
        | doc "Options for Go tests."
        | optional,
      gofmt
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to gofmt, e.g. `--gofmt-args='-s -e'`
              https://www.pantsbuild.org/v2.26/docs/reference-gofmt#args
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use gofmt when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-gofmt#skip
            "%
            | optional,
          ..
        }
        | doc "Gofmt-specific options."
        | optional,
      golang
        | {
          asdf_bin_relpath
            | String
            | doc m%"
              The path relative to an ASDF install directory to use to find the `bin` directory within an installed Go distribution
              https://www.pantsbuild.org/v2.26/docs/reference-golang#asdf_bin_relpath
            "%
            | optional,
          asdf_tool_name
            | String
            | doc m%"
              The ASDF tool name to use when searching for installed Go distributions using the ASDF tool manager (https://asdf-vm.com/)
              https://www.pantsbuild.org/v2.26/docs/reference-golang#asdf_tool_name
            "%
            | optional,
          cgo_c_flags
            | Array Dyn
            | doc m%"
              Compiler options used when compiling C code when Cgo is enabled
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_c_flags
            "%
            | optional,
          cgo_cxx_flags
            | Array Dyn
            | doc m%"
              Compiler options used when compiling C++ code when Cgo is enabled
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_cxx_flags
            "%
            | optional,
          cgo_enabled
            | Bool
            | doc m%"
              Enable Cgo support, which allows Go and C code to interact
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_enabled
            "%
            | optional,
          cgo_fortran_binary_name
            | String
            | doc m%"
              Name of the tool to use to compile fortran code included via CGo in a Go package
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_fortran_binary_name
            "%
            | optional,
          cgo_fortran_flags
            | Array Dyn
            | doc m%"
              Compiler options used when compiling Fortran code when Cgo is enabled
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_fortran_flags
            "%
            | optional,
          cgo_gcc_binary_name
            | String
            | doc m%"
              Name of the tool to use to compile C code included via CGo in a Go package
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_gcc_binary_name
            "%
            | optional,
          cgo_gxx_binary_name
            | String
            | doc m%"
              Name of the tool to use to compile C++ code included via CGo in a Go package
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_gxx_binary_name
            "%
            | optional,
          cgo_linker_flags
            | Array Dyn
            | doc m%"
              Compiler options used when linking native code when Cgo is enabled
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_linker_flags
            "%
            | optional,
          cgo_tool_search_paths
            | Array Dyn
            | doc m%"
              A list of paths to search for tools needed by CGo (e.g., gcc, g++)
              https://www.pantsbuild.org/v2.26/docs/reference-golang#cgo_tool_search_paths
            "%
            | optional,
          external_linker_binary_name
            | String
            | doc m%"
              Name of the tool to use as the "external linker" when invoking `go tool link`
              https://www.pantsbuild.org/v2.26/docs/reference-golang#external_linker_binary_name
            "%
            | optional,
          extra_tools
            | Array Dyn
            | doc m%"
              List any additional executable tools required for the `go` tool to work
              https://www.pantsbuild.org/v2.26/docs/reference-golang#extra_tools
            "%
            | optional,
          go_search_paths
            | Array Dyn
            | doc m%"
              A list of paths to search for Go and extra tools needed by go
              https://www.pantsbuild.org/v2.26/docs/reference-golang#go_search_paths
            "%
            | optional,
          minimum_expected_version
            | String
            | doc m%"
              The minimum Go version the distribution discovered by Pants must support
              https://www.pantsbuild.org/v2.26/docs/reference-golang#minimum_expected_version
            "%
            | optional,
          subprocess_env_vars
            | Array Dyn
            | doc m%"
              Environment variables to set when invoking the `go` tool
              https://www.pantsbuild.org/v2.26/docs/reference-golang#subprocess_env_vars
            "%
            | optional,
          tailor_binary_targets
            | Bool
            | doc m%"
              If true, add a `go_binary` target with the `tailor` goal in every directory with a `.go` file with `package main`
              https://www.pantsbuild.org/v2.26/docs/reference-golang#tailor_binary_targets
            "%
            | optional,
          tailor_go_mod_targets
            | Bool
            | doc m%"
              If true, add a `go_mod` target with the `tailor` goal wherever there is a `go.mod` file
              https://www.pantsbuild.org/v2.26/docs/reference-golang#tailor_go_mod_targets
            "%
            | optional,
          tailor_package_targets
            | Bool
            | doc m%"
              If true, add a `go_package` target with the `tailor` goal in every directory with a `.go` file
              https://www.pantsbuild.org/v2.26/docs/reference-golang#tailor_package_targets
            "%
            | optional,
          ..
        }
        | doc "Options for Golang support."
        | optional,
      google-java-format
        | {
          aosp
            | Bool
            | doc m%"
              Use AOSP style instead of Google Style (4-space indentation). ("AOSP" is the Android Open Source Project.)
              https://www.pantsbuild.org/v2.26/docs/reference-google-java-format#aosp
            "%
            | optional,
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-google-java-format#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `google-java-format` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-google-java-format#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-google-java-format#lockfile
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Google Java Format when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-google-java-format#skip
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-google-java-format#version
            "%
            | optional,
          ..
        }
        | doc "Google Java Format (https://github.com/google/google-java-format)"
        | optional,
      graphql
        | {
          open_graphiql
            | Bool
            | doc m%"
              Open a new web browser tab with GraphiQL
              https://www.pantsbuild.org/v2.26/docs/reference-graphql#open_graphiql
            "%
            | optional,
          ..
        }
        | doc "Options for the explorer GraphQL API."
        | optional,
      hadolint
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Hadolint, e.g. `--hadolint-args='--format json'`
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to an YAML config file understood by Hadolint (https://github.com/hadolint/hadolint#configure)
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include all relevant config files during runs (`.hadolint.yaml` and `.hadolint.yml`)
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#config_discovery
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Hadolint when running `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of Hadolint is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of Hadolint
              https://www.pantsbuild.org/v2.26/docs/reference-hadolint#version
            "%
            | optional,
          ..
        }
        | doc "A linter for Dockerfiles."
        | optional,
      help | { _ | Dyn } | doc "Display usage message." | optional,
      help-advanced | { _ | Dyn } | doc "Help for advanced options." | optional,
      help-all
        | { _ | Dyn }
        | doc "Print a JSON object containing all help info."
        | optional,
      internal-generate-test-lockfile-fixtures
        | { _ | Dyn }
        | doc "[Internal] Generate test lockfile fixtures for Pants tests."
        | optional,
      ipython
        | {
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-ipython#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-ipython#entry_point
            "%
            | optional,
          ignore_cwd
            | Bool
            | doc m%"
              Whether to tell IPython not to put the CWD on the import path
              https://www.pantsbuild.org/v2.26/docs/reference-ipython#ignore_cwd
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-ipython#install_from_resolve
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-ipython#requirements
            "%
            | optional,
          ..
        }
        | doc m%"
          The IPython enhanced REPL (https://ipython.org/).
          
          This version of Pants uses `ipython` version 8.12.3 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      isort
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to isort, e.g. `--isort-args='--case-sensitive --trailing-comma'`
              https://www.pantsbuild.org/v2.26/docs/reference-isort#args
            "%
            | optional,
          config
            | Array Dyn
            | doc m%"
              Path to config file understood by isort (https://pycqa.github.io/isort/docs/configuration/config_files/)
              https://www.pantsbuild.org/v2.26/docs/reference-isort#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant config files during runs (`.isort.cfg`, `pyproject.toml`, `setup.cfg`, `tox.ini` and `.editorconfig`)
              https://www.pantsbuild.org/v2.26/docs/reference-isort#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-isort#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-isort#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-isort#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-isort#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-isort#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use isort when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-isort#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          The Python import sorter tool (https://pycqa.github.io/isort/).
          
          This version of Pants uses `isort` version 5.13.2 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      jar_tool
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-jar_tool#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `jar_tool` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-jar_tool#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-jar_tool#lockfile
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-jar_tool#version
            "%
            | optional,
          ..
        }
        | doc "The Java Archive Tool"
        | optional,
      jarjar
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-jarjar#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `jarjar` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-jarjar#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-jarjar#lockfile
            "%
            | optional,
          misplaced_class_strategy
            | std.enum.TagOrString
            | [| 'move, 'omit, 'skip, 'fatal |]
            | doc m%"
              The strategy to use when processing class files that are in the wrong package
              https://www.pantsbuild.org/v2.26/docs/reference-jarjar#misplaced_class_strategy
            "%
            | optional,
          skip_manifest
            | Bool
            | doc m%"
              Skip the processing of the JAR manifest
              https://www.pantsbuild.org/v2.26/docs/reference-jarjar#skip_manifest
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-jarjar#version
            "%
            | optional,
          ..
        }
        | doc "The Jar Jar Abrams tool (https://github.com/eed3si9n/jarjar-abrams)"
        | optional,
      java-dump-source-analysis
        | { _ | Dyn }
        | doc "Dump source analysis for java_source[s] targets."
        | optional,
      java-infer
        | {
          consumed_types
            | Bool
            | doc m%"
              Infer a target's dependencies by parsing consumed types from sources
              https://www.pantsbuild.org/v2.26/docs/reference-java-infer#consumed_types
            "%
            | optional,
          imports
            | Bool
            | doc m%"
              Infer a target's dependencies by parsing import statements from sources
              https://www.pantsbuild.org/v2.26/docs/reference-java-infer#imports
            "%
            | optional,
          third_party_import_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping a Java package path to a JVM artifact coordinate (GROUP:ARTIFACT) without the version
              https://www.pantsbuild.org/v2.26/docs/reference-java-infer#third_party_import_mapping
            "%
            | optional,
          ..
        }
        | doc "Options controlling which dependencies will be inferred for Java targets."
        | optional,
      java-parser
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-java-parser#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `java-parser` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-java-parser#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-java-parser#lockfile
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-java-parser#version
            "%
            | optional,
          ..
        }
        | doc "Internal tool for parsing JVM sources to identify dependencies"
        | optional,
      javac
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to javac, e.g. `--javac-args='-g -deprecation'`
              https://www.pantsbuild.org/v2.26/docs/reference-javac#args
            "%
            | optional,
          tailor_source_targets
            | Bool
            | doc m%"
              If true, add `java_sources` and `java_tests` targets with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-javac#tailor_source_targets
            "%
            | optional,
          ..
        }
        | doc "The javac Java source compiler."
        | optional,
      junit
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to JUnit, e.g. `--junit-args='--disable-ansi-colors'`
              https://www.pantsbuild.org/v2.26/docs/reference-junit#args
            "%
            | optional,
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-junit#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `junit` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-junit#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-junit#lockfile
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use JUnit when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-junit#skip
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-junit#version
            "%
            | optional,
          ..
        }
        | doc "The JUnit test framework (https://junit.org)"
        | optional,
      jvm
        | {
          debug_args
            | Array Dyn
            | doc m%"
              Extra JVM arguments to use when running tests in debug mode
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#debug_args
            "%
            | optional,
          default_resolve
            | String
            | doc m%"
              The default value used for the `resolve` and `compatible_resolves` fields
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#default_resolve
            "%
            | optional,
          deploy_jar_exclude_files
            | Array Dyn
            | doc m%"
              A list of patterns to exclude from all deploy jars
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#deploy_jar_exclude_files
            "%
            | optional,
          global_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to all JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#global_options
            "%
            | optional,
          jdk
            | String
            | doc m%"
              The JDK to use
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#jdk
            "%
            | optional,
          nailgun_remote_cache_speculation_delay
            | Number
            | doc m%"
              The time in milliseconds to delay speculation of nailgun processes while reading from the remote cache
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#nailgun_remote_cache_speculation_delay
            "%
            | optional,
          reproducible_jars
            | Bool
            | doc m%"
              When enabled, JAR files produced by JVM tools will have timestamps stripped
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#reproducible_jars
            "%
            | optional,
          resolves
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping resolve names to the path of their lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#resolves
            "%
            | optional,
          tool_jdk
            | String
            | doc m%"
              The JDK to use when building and running Pants' internal JVM support code and other non-compiler tools
              https://www.pantsbuild.org/v2.26/docs/reference-jvm#tool_jdk
            "%
            | optional,
          ..
        }
        | doc m%"
          Options for general JVM functionality.
          
          JDK strings will be passed directly to Coursier's `--jvm` parameter. Run `cs java --available` to see a list of available JVM versions on your platform.
          
          If the string `'system'` is passed, Coursier's `--system-jvm` option will be used instead, but note that this can lead to inconsistent behavior since the JVM version will be whatever happens to be found first on the system's PATH.
        "%
        | optional,
      jvm-symbol-map
        | { _ | Dyn }
        | doc "Dump the JVM dependency inference symbol mapping."
        | optional,
      lint
        | {
          batch_size
            | Number
            | doc m%"
              The target number of files to be included in each linter batch
              https://www.pantsbuild.org/v2.26/docs/reference-lint#batch_size
            "%
            | optional,
          only
            | Array Dyn
            | doc m%"
              Only run these linters and skip all others
              https://www.pantsbuild.org/v2.26/docs/reference-lint#only
            "%
            | optional,
          skip_fixers
            | Bool
            | doc m%"
              If true, skip running all fixers in check-only mode
              https://www.pantsbuild.org/v2.26/docs/reference-lint#skip_fixers
            "%
            | optional,
          skip_formatters
            | Bool
            | doc m%"
              If true, skip running all formatters in check-only mode
              https://www.pantsbuild.org/v2.26/docs/reference-lint#skip_formatters
            "%
            | optional,
          ..
        }
        | doc m%"
          Run linters/formatters/fixers in check mode.
          
          This goal runs tools that check code quality/styling etc, without changing that code. This includes running formatters and fixers, but instead of writing changes back to the workspace, Pants treats any changes they would make as a linting failure.
          
          See also:
          
          - [The `fmt` goal](https://www.pantsbuild.org/2.26/reference/goals/fix will save the the result of formatters
            (code-editing tools that make only "syntactic" changes) back to the workspace.
          
          - [The `fmt` goal](https://www.pantsbuild.org/2.26/reference/goals/fix will save the the result of fixers
            (code-editing tools that may make "semantic" changes too) back to the workspace.
          
          - Documentation about linters for various ecosystems, such as:
            [Python](https://www.pantsbuild.org/2.26/docs/python/overview/linters-and-formatters), [Go](https://www.pantsbuild.org/2.26/docs/go),
            [JVM](https://www.pantsbuild.org/jvm/java-and-scala#lint-and-format), [Shell](https://www.pantsbuild.org/2.26/docs/shell),
            [Docker](https://www.pantsbuild.org/2.26/docs/docker#linting-dockerfiles-with-hadolint).
        "%
        | optional,
      list
        | {
          documented
            | Bool
            | doc m%"
              Print only targets that are documented with a description
              https://www.pantsbuild.org/v2.26/docs/reference-list#documented
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-list#output_file
            "%
            | optional,
          sep
            | String
            | doc m%"
              String to use to separate lines in line-oriented output
              https://www.pantsbuild.org/v2.26/docs/reference-list#sep
            "%
            | optional,
          ..
        }
        | doc "Lists all targets matching the file or target arguments."
        | optional,
      migrate-call-by-name
        | {
          json
            | Bool
            | doc m%"
              Dump the migration plan as JSON
              https://www.pantsbuild.org/v2.26/docs/reference-migrate-call-by-name#json
            "%
            | optional,
          ..
        }
        | doc m%"
          Migrate from `Get` syntax to call-by-name syntax (#19730). This is a **destructive** operation, so only run this on source controlled files that you are prepared to revert if necessary.
          
          This goal will attempt to migrate the set of paths/targets specified at the command line if they are part of the "migration plan". This migration does not add any new files, but instead modifies existing files in-place without any formatting. The resulting changes should be reviewed, tested, and formatted/linted before committing.
          
          The migration plan is a JSON representation of the rule graph, which is generated by the engine based on the active backends/rules in the project.
          
          Each item in the migration plan is a rule that contains the old `Get` syntax, the associated input/output types, and the new function to directly call. The migration plan can be dumped as JSON using the `--json` flag, which can be useful for debugging. For example:
          
          {
              "filepath": "src/python/pants/source/source_root.py",
              "function": "get_source_roots",
              "gets": [{
                  "input_types": [{ "module": "pants.source.source_root", "name": "SourceRootsRequest" }],
                  "output_type": { "module": "pants.source.source_root", "name": "OptionalSourceRootsResult" },
                  "rule_dep": { "function": "get_optional_source_roots", "module": "pants.source.source_root" }
              }],
              "module": "pants.source.source_root"
          }
        "%
        | optional,
      mypy
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to MyPy, e.g. `--mypy-args='--python-version 3.7 --disallow-any-expr'`
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to a config file understood by MyPy (https://mypy.readthedocs.io/en/stable/config_file.html)
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant config files during runs (`mypy.ini`, `.mypy.ini`, and `setup.cfg`)
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use MyPy when running `pants check`
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#skip
            "%
            | optional,
          source_plugins
            | Array Dyn
            | doc m%"
              An optional list of `python_sources` target addresses to load first-party plugins
              https://www.pantsbuild.org/v2.26/docs/reference-mypy#source_plugins
            "%
            | optional,
          ..
        }
        | doc m%"
          The MyPy Python type checker (http://mypy-lang.org/).
          
          This version of Pants uses `mypy` version 1.11.2 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      nodejs
        | {
          corepack_env_vars
            | Array Dyn
            | doc m%"
              Environment variables to set for `corepack` invocations
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#corepack_env_vars
            "%
            | optional,
          executable_search_paths
            | Array Dyn
            | doc m%"
              The PATH value that will be used to find any tools required to run nodejs processes
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#executable_search_paths
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#known_versions
            "%
            | optional,
          optional_tools
            | Array Dyn
            | doc m%"
              List any additional executable which are not mandatory for node processes to work, but which should be included if available
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#optional_tools
            "%
            | optional,
          package_manager
            | String
            | doc m%"
              Default Node.js package manager to use
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#package_manager
            "%
            | optional,
          package_managers
            | { _ | Dyn }
            | doc m%"
              A mapping of package manager versions to semver releases
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#package_managers
            "%
            | optional,
          resolves
            | { _ | Dyn }
            | doc m%"
              A mapping of names to lockfile paths used in your project
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#resolves
            "%
            | optional,
          search_path
            | Array Dyn
            | doc m%"
              A list of paths to search for Node.js distributions
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#search_path
            "%
            | optional,
          tools
            | Array Dyn
            | doc m%"
              List any additional executable tools required for node processes to work
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#tools
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#url_template
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of nodejs
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs#version
            "%
            | optional,
          ..
        }
        | doc "The Node.js Javascript runtime (including Corepack)."
        | optional,
      nodejs-infer
        | {
          imports
            | Bool
            | doc m%"
              Infer a target's imported dependencies by parsing import statements from sources
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs-infer#imports
            "%
            | optional,
          package_json_entry_points
            | Bool
            | doc m%"
              Infer a `package_json`'s dependencies by parsing entry point statements from the package.json file
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs-infer#package_json_entry_points
            "%
            | optional,
          unowned_dependency_behavior
            | std.enum.TagOrString
            | [| 'ignore, 'warning, 'error |]
            | doc m%"
              How to handle imports that don't have an inferable owner
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs-infer#unowned_dependency_behavior
            "%
            | optional,
          ..
        }
        | doc "Options controlling which dependencies will be inferred for javascript targets."
        | optional,
      nodejs-test
        | {
          coverage_output_dir
            | String
            | doc m%"
              Path to write the NodeJS coverage reports to
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs-test#coverage_output_dir
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Node.js tests when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-nodejs-test#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          Options for package.json script configured tests.
          
          Your preferred test runner is configured via the `package.json#scripts.test` field.
          
          The only expectation from pants is that the `test` script can accept a variadic number of path arguments, relative to the package.json, and that any configuration files are `file` dependencies to the `package_json`.
          
          Simple example:
          
          Consider a directory-layout:
          
          ```
          ├── BUILD
          ├── src/
          │   ├── BUILD
          │   ├── test/
          │   │   ├── BUILD
          │   │   └── index.test.js
          │   └── index.js
          └── package.json
          ```
          
          where package.json contains
          
          ```json title="package.json"
          {
              ...
              "scripts": {
                  "test": "mocha"
              },
              "devDependencies: {
                  ...
              }
          }
          ```
          
          
          Executing `pants test src/test/index.test.js` will cause the equivalent of `mocha src/test/index.test.js` to run.
        "%
        | optional,
      package | { _ | Dyn } | doc "Create a distributable package." | optional,
      paths
        | {
          from
            | String
            | doc m%"
              The path starting address
              https://www.pantsbuild.org/v2.26/docs/reference-paths#from
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-paths#output_file
            "%
            | optional,
          to
            | String
            | doc m%"
              The path end address
              https://www.pantsbuild.org/v2.26/docs/reference-paths#to
            "%
            | optional,
          ..
        }
        | doc "List the paths between two addresses. Either address may represent a group of targets, e.g. `--from=src/app/main.py --to=src/library::`."
        | optional,
      peek
        | {
          exclude_defaults
            | Bool
            | doc m%"
              Whether to leave off values that match the target-defined default values
              https://www.pantsbuild.org/v2.26/docs/reference-peek#exclude_defaults
            "%
            | optional,
          include_additional_info
            | Bool
            | doc m%"
              Whether to include additional information generated by plugins
              https://www.pantsbuild.org/v2.26/docs/reference-peek#include_additional_info
            "%
            | optional,
          include_dep_rules
            | Bool
            | doc m%"
              Whether to include `_dependencies_rules`, `_dependents_rules` and `_applicable_dep_rules` that apply to the target and its dependencies
              https://www.pantsbuild.org/v2.26/docs/reference-peek#include_dep_rules
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-peek#output_file
            "%
            | optional,
          ..
        }
        | doc "Display BUILD target info"
        | optional,
      pex
        | {
          emit_warnings
            | Bool
            | doc m%"
              If warnings from Pex should be logged by Pants to the console
              https://www.pantsbuild.org/v2.26/docs/reference-pex#emit_warnings
            "%
            | optional,
          executable_search_paths
            | Array Dyn
            | doc m%"
              The PATH value that will be used by the PEX subprocess and any subprocesses it spawns
              https://www.pantsbuild.org/v2.26/docs/reference-pex#executable_search_paths
            "%
            | optional,
          venv_use_symlinks
            | Bool
            | doc m%"
              When possible, use venvs whose site-packages directories are populated with symlinks
              https://www.pantsbuild.org/v2.26/docs/reference-pex#venv_use_symlinks
            "%
            | optional,
          verbosity
            | Number
            | doc m%"
              Set the verbosity level of PEX logging, from 0 (no logging) up to 9 (max logging)
              https://www.pantsbuild.org/v2.26/docs/reference-pex#verbosity
            "%
            | optional,
          ..
        }
        | doc "How Pants uses Pex to run Python subprocesses."
        | optional,
      pex-binary-defaults
        | {
          emit_warnings
            | Bool
            | doc m%"
              Whether built PEX binaries should emit PEX warnings at runtime by default
              https://www.pantsbuild.org/v2.26/docs/reference-pex-binary-defaults#emit_warnings
            "%
            | optional,
          ..
        }
        | doc "Default settings for creating PEX executables."
        | optional,
      pex-cli
        | {
          global_args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to pex, e.g. `--pex-cli-args='--check=error --no-compile'`
              https://www.pantsbuild.org/v2.26/docs/reference-pex-cli#global_args
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-pex-cli#known_versions
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pex-cli#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-pex-cli#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of pex is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-pex-cli#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of pex
              https://www.pantsbuild.org/v2.26/docs/reference-pex-cli#version
            "%
            | optional,
          ..
        }
        | doc "The PEX (Python EXecutable) tool (https://github.com/pex-tool/pex)."
        | optional,
      preamble
        | {
          skip
            | Bool
            | doc m%"
              If true, don't use preamble when running `pants fmt`
              https://www.pantsbuild.org/v2.26/docs/reference-preamble#skip
            "%
            | optional,
          template_by_globs
            | std.contract.any_of [ { _ | Dyn }, String ]
            | doc m%"
              Which preamble template to use based on the path globs (relative to the build root)
              https://www.pantsbuild.org/v2.26/docs/reference-preamble#template_by_globs
            "%
            | optional,
          ..
        }
        | doc m%"
          Formats files with a preamble, with the preamble looked up based on path.
          
          This is useful for things such as copyright headers or shebang lines.
          
          Pants substitutes the following identifiers (following Python's `string.Template` substitutions): - $year: The current year (only used when actually writing the year to the file).
        "%
        | optional,
      prettier
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Prettier, e.g. `--prettier-args='--version'`
              https://www.pantsbuild.org/v2.26/docs/reference-prettier#args
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve, instead of the version configured in this subsystem
              https://www.pantsbuild.org/v2.26/docs/reference-prettier#install_from_resolve
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Prettier when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-prettier#skip
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool in the form package@version (e.g. prettier@3.5.2)
              https://www.pantsbuild.org/v2.26/docs/reference-prettier#version
            "%
            | optional,
          ..
        }
        | doc "The Prettier utility for formatting JS/TS (and others) code (https://prettier.io/)."
        | optional,
      publish
        | {
          noninteractive_process_output
            | std.enum.TagOrString
            | [| 'none, 'failed, 'all |]
            | doc m%"
              Show stdout/stderr when publishing with noninteractively
              https://www.pantsbuild.org/v2.26/docs/reference-publish#noninteractive_process_output
            "%
            | optional,
          output
            | String
            | doc m%"
              Filename for JSON structured publish information
              https://www.pantsbuild.org/v2.26/docs/reference-publish#output
            "%
            | optional,
          ..
        }
        | doc "Publish deliverables (assets, distributions, images, etc)."
        | optional,
      py-constraints
        | {
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-py-constraints#output_file
            "%
            | optional,
          summary
            | Bool
            | doc m%"
              Output a CSV summary of interpreter constraints for your whole repository
              https://www.pantsbuild.org/v2.26/docs/reference-py-constraints#summary
            "%
            | optional,
          ..
        }
        | doc "Determine what Python interpreter constraints are used by files/targets."
        | optional,
      pyoxidizer
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to PyOxidizer, e.g. `--pyoxidizer-args='--release'`
              https://www.pantsbuild.org/v2.26/docs/reference-pyoxidizer#args
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pyoxidizer#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pyoxidizer#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-pyoxidizer#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-pyoxidizer#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-pyoxidizer#requirements
            "%
            | optional,
          ..
        }
        | doc m%"
          The PyOxidizer utility for packaging Python code in a Rust binary (https://pyoxidizer.readthedocs.io/en/stable/pyoxidizer.html).
          
          Used with the `pyoxidizer_binary` target.
          
          This version of Pants uses `pyoxidizer` version 0.24.0 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      pytest
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Pytest, e.g. `--pytest-args='-k test_foo --quiet'`
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to a config file understood by Pytest (https://docs.pytest.org/en/latest/reference/customize.html#configuration-file-formats)
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include all relevant Pytest config files (e.g. `pytest.ini`) during runs
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#entry_point
            "%
            | optional,
          execution_slot_var
            | String
            | doc m%"
              If a non-empty string, the process execution slot id (an integer) will be exposed to tests under this environment variable name
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#execution_slot_var
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#install_from_resolve
            "%
            | optional,
          junit_family
            | String
            | doc m%"
              The format of generated junit XML files
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#junit_family
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Pytest when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#skip
            "%
            | optional,
          xdist_enabled
            | Bool
            | doc m%"
              If true, Pants will use `pytest-xdist` (https://pytest-xdist.readthedocs.io/en/latest/) to parallelize tests within each `python_test` target
              https://www.pantsbuild.org/v2.26/docs/reference-pytest#xdist_enabled
            "%
            | optional,
          ..
        }
        | doc m%"
          The pytest Python test framework (https://docs.pytest.org/).
          
          This version of Pants uses `pytest` version 7.0.1 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      python
        | {
          default_resolve
            | String
            | doc m%"
              The default value used for the `resolve` field
              https://www.pantsbuild.org/v2.26/docs/reference-python#default_resolve
            "%
            | optional,
          default_run_goal_use_sandbox
            | Bool
            | doc m%"
              The default value used for the `run_goal_use_sandbox` field of Python targets
              https://www.pantsbuild.org/v2.26/docs/reference-python#default_run_goal_use_sandbox
            "%
            | optional,
          enable_lockfile_targets
            | Bool
            | doc m%"
              Create targets for all Python lockfiles defined in `[python].resolves`
              https://www.pantsbuild.org/v2.26/docs/reference-python#enable_lockfile_targets
            "%
            | optional,
          enable_resolves
            | Bool
            | doc m%"
              Set to true to enable lockfiles for user code
              https://www.pantsbuild.org/v2.26/docs/reference-python#enable_resolves
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              The Python interpreters your codebase is compatible with
              https://www.pantsbuild.org/v2.26/docs/reference-python#interpreter_constraints
            "%
            | optional,
          interpreter_versions_universe
            | Array Dyn
            | doc m%"
              All known Python major/minor interpreter versions that may be used by either your code or tools used by your code
              https://www.pantsbuild.org/v2.26/docs/reference-python#interpreter_versions_universe
            "%
            | optional,
          invalid_lockfile_behavior
            | std.enum.TagOrString
            | [| 'warn, 'ignore, 'error |]
            | doc m%"
              The behavior when a lockfile has requirements or interpreter constraints that are not compatible with what the current build is using
              https://www.pantsbuild.org/v2.26/docs/reference-python#invalid_lockfile_behavior
            "%
            | optional,
          macos_big_sur_compatibility
            | Bool
            | doc m%"
              If set, and if running on macOS Big Sur, use `macosx_10_16` as the platform when building wheels
              https://www.pantsbuild.org/v2.26/docs/reference-python#macos_big_sur_compatibility
            "%
            | optional,
          pip_version
            | String
            | doc m%"
              Use this version of Pip for resolving requirements and generating lockfiles
              https://www.pantsbuild.org/v2.26/docs/reference-python#pip_version
            "%
            | optional,
          repl_history
            | Bool
            | doc m%"
              Whether to use the standard Python command history file when running a repl
              https://www.pantsbuild.org/v2.26/docs/reference-python#repl_history
            "%
            | optional,
          resolver_manylinux
            | String
            | doc m%"
              Whether to allow resolution of manylinux wheels when resolving requirements for foreign linux platforms
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolver_manylinux
            "%
            | optional,
          resolves
            | { _ | Dyn }
            | doc m%"
              A mapping of logical names to lockfile paths used in your project
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolves
            "%
            | optional,
          resolves_generate_lockfiles
            | Bool
            | doc m%"
              If False, Pants will not attempt to generate lockfiles for `[python].resolves` when running the `generate-lockfiles` goal
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolves_generate_lockfiles
            "%
            | optional,
          resolves_to_constraints_file
            | { _ | Dyn }
            | doc m%"
              When generating a resolve's lockfile, use a constraints file to pin the version of certain requirements
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolves_to_constraints_file
            "%
            | optional,
          resolves_to_interpreter_constraints
            | { _ | Dyn }
            | doc m%"
              Override the interpreter constraints to use when generating a resolve's lockfile with the `generate-lockfiles` goal
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolves_to_interpreter_constraints
            "%
            | optional,
          resolves_to_no_binary
            | { _ | Dyn }
            | doc m%"
              When generating a resolve's lockfile, do not use binary packages (i.e. wheels) for these 3rdparty project names
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolves_to_no_binary
            "%
            | optional,
          resolves_to_only_binary
            | { _ | Dyn }
            | doc m%"
              When generating a resolve's lockfile, do not use source packages (i.e. sdists) for these 3rdparty project names, e.g `['django', 'requests']`
              https://www.pantsbuild.org/v2.26/docs/reference-python#resolves_to_only_binary
            "%
            | optional,
          run_against_entire_lockfile
            | Bool
            | doc m%"
              If enabled, when running binaries, tests, and repls, Pants will use the entire lockfile file instead of just the relevant subset
              https://www.pantsbuild.org/v2.26/docs/reference-python#run_against_entire_lockfile
            "%
            | optional,
          tailor_ignore_empty_init_files
            | Bool
            | doc m%"
              If true, don't add `python_sources` targets for `__init__.py` files that are both empty and where there are no other Python files in the directory
              https://www.pantsbuild.org/v2.26/docs/reference-python#tailor_ignore_empty_init_files
            "%
            | optional,
          tailor_pex_binary_targets
            | Bool
            | doc m%"
              If true, add `pex_binary` targets for Python files named `__main__.py` or with a `__main__` clause with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-python#tailor_pex_binary_targets
            "%
            | optional,
          tailor_py_typed_targets
            | Bool
            | doc m%"
              If true, add `resource` targets for marker files named `py.typed` with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-python#tailor_py_typed_targets
            "%
            | optional,
          tailor_requirements_targets
            | Bool
            | doc m%"
              If true, add `python_requirements`, `poetry_requirements`, and `pipenv_requirements` target generators with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-python#tailor_requirements_targets
            "%
            | optional,
          tailor_source_targets
            | Bool
            | doc m%"
              If true, add `python_sources`, `python_tests`, and `python_test_utils` targets with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-python#tailor_source_targets
            "%
            | optional,
          warn_on_python2_usage
            | Bool
            | doc m%"
              True if Pants should generate a deprecation warning when Python 2.x is used in interpreter constraints
              https://www.pantsbuild.org/v2.26/docs/reference-python#warn_on_python2_usage
            "%
            | optional,
          ..
        }
        | doc "Options for Pants's Python backend."
        | optional,
      python-bootstrap
        | {
          internal_python_build_standalone_info
            | { _ | Dyn }
            | doc m%"
              A map from platform to the information needed to download Python Build Standalone
              https://www.pantsbuild.org/v2.26/docs/reference-python-bootstrap#internal_python_build_standalone_info
            "%
            | optional,
          names
            | Array Dyn
            | doc m%"
              The names of Python binaries to search for
              https://www.pantsbuild.org/v2.26/docs/reference-python-bootstrap#names
            "%
            | optional,
          search_path
            | Array Dyn
            | doc m%"
              A list of paths to search for Python interpreters
              https://www.pantsbuild.org/v2.26/docs/reference-python-bootstrap#search_path
            "%
            | optional,
          ..
        }
        | doc m%"
          Options used to locate Python interpreters.
          
          This subsystem controls where and how Pants will locate Python, but beyond that it does not control which Python interpreter versions are actually used for your code: see the `python` subsystem for that.
        "%
        | optional,
      python-dump-source-analysis
        | {
          analysis_flavor
            | std.enum.TagOrString
            | [| 'dependency_inference, 'raw_dependency_inference |]
            | doc m%"
              The type of information that should be returned
              https://www.pantsbuild.org/v2.26/docs/reference-python-dump-source-analysis#analysis_flavor
            "%
            | optional,
          ..
        }
        | doc "Dump source analysis for python_source targets."
        | optional,
      python-infer
        | {
          ambiguity_resolution
            | std.enum.TagOrString
            | [| 'by_source_root, 'none |]
            | doc m%"
              When multiple sources provide the same symbol, how to choose the provider to use
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#ambiguity_resolution
            "%
            | optional,
          assets
            | Bool
            | doc m%"
              Infer a target's asset dependencies based on strings that look like Posix filepaths, such as those given to `open` or `pkgutil.get_data`
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#assets
            "%
            | optional,
          assets_min_slashes
            | Number
            | doc m%"
              If `--assets` is True, treat valid-looking strings with at least this many forward slash characters as potential assets
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#assets_min_slashes
            "%
            | optional,
          conftests
            | Bool
            | doc m%"
              Infer a test target's dependencies on any `conftest.py` files in the current directory and ancestor directories
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#conftests
            "%
            | optional,
          entry_points
            | Bool
            | doc m%"
              Infer dependencies on targets' entry points, e.g. `pex_binary`'s `entry_point` field, `python_aws_lambda_function`'s `handler` field and `python_distribution`'s `entry_points` field
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#entry_points
            "%
            | optional,
          ignored_unowned_imports
            | Array Dyn
            | doc m%"
              Unowned imports that should be ignored
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#ignored_unowned_imports
            "%
            | optional,
          imports
            | Bool
            | doc m%"
              Infer a target's imported dependencies by parsing import statements from sources
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#imports
            "%
            | optional,
          init_files
            | std.enum.TagOrString
            | [| 'never, 'content_only, 'always |]
            | doc m%"
              Infer a target's dependencies on any `__init__.py` files in the packages it is located in (recursively upward in the directory structure)
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#init_files
            "%
            | optional,
          string_imports
            | Bool
            | doc m%"
              Infer a target's dependencies based on strings that look like dynamic dependencies, such as Django settings files expressing dependencies as strings or pytest plugins listed in the `pytest_plugins` variable in a test module or a conftest file
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#string_imports
            "%
            | optional,
          string_imports_min_dots
            | Number
            | doc m%"
              If `--string-imports` is True, treat valid-looking strings with at least this many dots in them as potential dynamic dependencies
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#string_imports_min_dots
            "%
            | optional,
          unowned_dependency_behavior
            | std.enum.TagOrString
            | [| 'ignore, 'warning, 'error |]
            | doc m%"
              How to handle imports that don't have an inferable owner
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#unowned_dependency_behavior
            "%
            | optional,
          use_rust_parser
            | Bool
            | doc m%"
              Use the new Rust-based, multithreaded, in-process dependency parser
              https://www.pantsbuild.org/v2.26/docs/reference-python-infer#use_rust_parser
            "%
            | optional,
          ..
        }
        | doc "Options controlling which dependencies will be inferred for Python targets."
        | optional,
      python-native-code
        | {
          cpp_flags
            | Array Dyn
            | doc m%"
              Override the `CPPFLAGS` environment variable for any forked subprocesses
              https://www.pantsbuild.org/v2.26/docs/reference-python-native-code#cpp_flags
            "%
            | optional,
          ld_flags
            | Array Dyn
            | doc m%"
              Override the `LDFLAGS` environment variable for any forked subprocesses
              https://www.pantsbuild.org/v2.26/docs/reference-python-native-code#ld_flags
            "%
            | optional,
          ..
        }
        | doc "Options for building native code using Python, e.g. when resolving distributions."
        | optional,
      python-repos
        | {
          find_links
            | Array Dyn
            | doc m%"
              URLs and/or file paths corresponding to pip's `--find-links` option
              https://www.pantsbuild.org/v2.26/docs/reference-python-repos#find_links
            "%
            | optional,
          indexes
            | Array Dyn
            | doc m%"
              URLs of [PEP-503 compatible](https://peps.python.org/pep-0503/) code repository indexes to look for requirements
              https://www.pantsbuild.org/v2.26/docs/reference-python-repos#indexes
            "%
            | optional,
          path_mappings
            | Array Dyn
            | doc m%"
              Mappings to facilitate using local Python requirements when the absolute file paths are different on different users' machines
              https://www.pantsbuild.org/v2.26/docs/reference-python-repos#path_mappings
            "%
            | optional,
          ..
        }
        | doc m%"
          External Python code repositories, such as PyPI.
          
          These options may be used to point to custom package indexes when resolving requirements.
        "%
        | optional,
      pyupgrade
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to pyupgrade, e.g. `--pyupgrade-args='--py39-plus --keep-runtime-typing'`
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#args
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use pyupgrade when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-pyupgrade#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          Upgrade syntax for newer versions of the language (https://github.com/asottile/pyupgrade).
          
          This version of Pants uses `pyupgrade` version 3.8.0 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      regex-lint
        | {
          config
            | std.contract.any_of [ { _ | Dyn }, String ]
            | doc m%"
              Config schema is as follows:
              https://www.pantsbuild.org/v2.26/docs/reference-regex-lint#config
            "%
            | optional,
          detail_level
            | std.enum.TagOrString
            | [| 'all, 'names, 'nonmatching, 'summary, 'none |]
            | doc m%"
              How much detail to include in the result
              https://www.pantsbuild.org/v2.26/docs/reference-regex-lint#detail_level
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use regex-lint when running `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-regex-lint#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          Lint your code using regex patterns, e.g. to check for copyright headers.
          
          To activate this with the `lint` goal, you must set `[regex-lint].config`.
          
          Unlike other linters, this can run on files not owned by targets, such as BUILD files.
        "%
        | optional,
      repl
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to the repl program, e.g. `--repl-args='-i helloworld/main.py'`
              https://www.pantsbuild.org/v2.26/docs/reference-repl#args
            "%
            | optional,
          restartable
            | Bool
            | doc m%"
              True if the REPL should be restarted if its inputs have changed
              https://www.pantsbuild.org/v2.26/docs/reference-repl#restartable
            "%
            | optional,
          shell
            | String
            | doc m%"
              Override the automatically-detected REPL program for the target(s) specified
              https://www.pantsbuild.org/v2.26/docs/reference-repl#shell
            "%
            | optional,
          ..
        }
        | doc "Open a REPL with the specified code loadable."
        | optional,
      roots
        | {
          output_file
            | String
            | doc m%"
              Output the goal's stdout to this file
              https://www.pantsbuild.org/v2.26/docs/reference-roots#output_file
            "%
            | optional,
          sep
            | String
            | doc m%"
              String to use to separate lines in line-oriented output
              https://www.pantsbuild.org/v2.26/docs/reference-roots#sep
            "%
            | optional,
          ..
        }
        | doc "List the repo's registered source roots."
        | optional,
      ruff
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Ruff, e.g. `--ruff-args='--exclude=foo --ignore=E501'`
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to the `pyproject.toml` or `ruff.toml` file to use for configuration (https://github.com/astral-sh/ruff#configuration)
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant config files during runs (`pyproject.toml`, and `ruff.toml`)
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#config_discovery
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Ruff when running `pants fmt` and `pants fix` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of Ruff is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of Ruff
              https://www.pantsbuild.org/v2.26/docs/reference-ruff#version
            "%
            | optional,
          ..
        }
        | doc "The Ruff Python formatter (https://github.com/astral-sh/ruff)."
        | optional,
      run
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to the executed target, e.g. `--run-args='val1 val2 --debug'`
              https://www.pantsbuild.org/v2.26/docs/reference-run#args
            "%
            | optional,
          debug_adapter
            | Bool
            | doc m%"
              Run the interactive process using a Debug Adapter (https://microsoft.github.io/debug-adapter-protocol/) for the language if supported
              https://www.pantsbuild.org/v2.26/docs/reference-run#debug_adapter
            "%
            | optional,
          ..
        }
        | doc m%"
          Runs a binary target.
          
          This goal propagates the return code of the underlying executable.
          
          If your application can safely be restarted while it is running, you can pass `restartable=True` on your binary target (for supported types), and the `run` goal will automatically restart them as all relevant files change. This can be particularly useful for server applications.
        "%
        | optional,
      scala
        | {
          tailor_source_targets
            | Bool
            | doc m%"
              If true, add `scala_sources`, `scala_junit_tests`, and `scalatest_tests` targets with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-scala#tailor_source_targets
            "%
            | optional,
          version_for_resolve
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping the name of a resolve to the Scala version to use for all Scala targets consuming that resolve
              https://www.pantsbuild.org/v2.26/docs/reference-scala#version_for_resolve
            "%
            | optional,
          ..
        }
        | doc "Scala programming language"
        | optional,
      scala-dump-source-analysis
        | { _ | Dyn }
        | doc "Dump source analysis for scala_source targets."
        | optional,
      scala-infer
        | {
          consumed_types
            | Bool
            | doc m%"
              Infer a target's dependencies by parsing consumed types from sources
              https://www.pantsbuild.org/v2.26/docs/reference-scala-infer#consumed_types
            "%
            | optional,
          force_add_siblings_as_dependencies
            | Bool
            | doc m%"
              If true, add a dependency on all `scala_source` targets generated by the same `scala_sources` target generator
              https://www.pantsbuild.org/v2.26/docs/reference-scala-infer#force_add_siblings_as_dependencies
            "%
            | optional,
          imports
            | Bool
            | doc m%"
              Infer a target's dependencies by parsing import statements from sources
              https://www.pantsbuild.org/v2.26/docs/reference-scala-infer#imports
            "%
            | optional,
          package_objects
            | Bool
            | doc m%"
              Add dependency on the package object to every target
              https://www.pantsbuild.org/v2.26/docs/reference-scala-infer#package_objects
            "%
            | optional,
          ..
        }
        | doc "Options controlling which dependencies will be inferred for Scala targets."
        | optional,
      scala-parser
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-scala-parser#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `scala-parser` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-scala-parser#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scala-parser#lockfile
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scala-parser#version
            "%
            | optional,
          ..
        }
        | doc "Internal tool for parsing Scala sources to identify dependencies"
        | optional,
      scalac
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to scalac, e.g. `--scalac-args='-encoding UTF-8'`
              https://www.pantsbuild.org/v2.26/docs/reference-scalac#args
            "%
            | optional,
          plugins_for_resolve
            | { _ | Dyn }
            | doc m%"
              A dictionary, whose keys are the names of each JVM resolve that requires default `scalac` plugins, and the value is a comma-separated string consisting of scalac plugin names
              https://www.pantsbuild.org/v2.26/docs/reference-scalac#plugins_for_resolve
            "%
            | optional,
          ..
        }
        | doc "The Scala compiler."
        | optional,
      scalafix
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#artifacts
            "%
            | optional,
          config_file_name
            | String
            | doc m%"
              Name of a config file understood by scalafix (https://scalacenter.github.io/scalafix/docs/users/configuration.html)
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#config_file_name
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `scalafix` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#lockfile
            "%
            | optional,
          orphan_files_behavior
            | std.enum.TagOrString
            | [| 'warn, 'error, 'ignore |]
            | doc m%"
              Whether to ignore, error or show a warning when files are found that are not covered by the config file provided in `[scalafix].config_file_name` setting
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#orphan_files_behavior
            "%
            | optional,
          rule_targets
            | Array Dyn
            | doc m%"
              List of targets providing additional Scalafix rules
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#rule_targets
            "%
            | optional,
          semantic_rules
            | Bool
            | doc m%"
              Whether semantic rules are enabled or not
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#semantic_rules
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use scalafix when running `pants fix` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#skip
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scalafix#version
            "%
            | optional,
          ..
        }
        | doc "scalafix (https://scalacenter.github.io/scalafix/)"
        | optional,
      scalafmt
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#artifacts
            "%
            | optional,
          config_file_name
            | String
            | doc m%"
              Name of a config file understood by scalafmt (https://scalameta.org/scalafmt/docs/configuration.html)
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#config_file_name
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `scalafmt` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#lockfile
            "%
            | optional,
          orphan_files_behavior
            | std.enum.TagOrString
            | [| 'warn, 'error, 'ignore |]
            | doc m%"
              Whether to ignore, error or show a warning when files are found that are not covered by the config file provided in `[scalafmt].config_file_name` setting
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#orphan_files_behavior
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use scalafmt when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#skip
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scalafmt#version
            "%
            | optional,
          ..
        }
        | doc "scalafmt (https://scalameta.org/scalafmt/)"
        | optional,
      scalatest
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Scalatest, e.g. `--scalatest-args='-t $testname'`
              https://www.pantsbuild.org/v2.26/docs/reference-scalatest#args
            "%
            | optional,
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-scalatest#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `scalatest` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-scalatest#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scalatest#lockfile
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Scalatest when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-scalatest#skip
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scalatest#version
            "%
            | optional,
          ..
        }
        | doc "The Scalatest test framework (https://www.scalatest.org/)"
        | optional,
      scc
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to SCC, e.g. `--scc-args='--no-cocomo'`
              https://www.pantsbuild.org/v2.26/docs/reference-scc#args
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-scc#known_versions
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-scc#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-scc#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of SCC is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-scc#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of SCC
              https://www.pantsbuild.org/v2.26/docs/reference-scc#version
            "%
            | optional,
          ..
        }
        | doc "The Succinct Code Counter, aka `scc` (https://github.com/boyter/scc)."
        | optional,
      setup-py-generation
        | {
          first_party_dependency_version_scheme
            | std.enum.TagOrString
            | [| 'any, 'compatible, 'exact |]
            | doc m%"
              What version to set in `install_requires` when a `python_distribution` depends on other `python_distribution`s
              https://www.pantsbuild.org/v2.26/docs/reference-setup-py-generation#first_party_dependency_version_scheme
            "%
            | optional,
          generate_setup_default
            | Bool
            | doc m%"
              The default value for the `generate_setup` field on `python_distribution` targets
              https://www.pantsbuild.org/v2.26/docs/reference-setup-py-generation#generate_setup_default
            "%
            | optional,
          ..
        }
        | doc "Options to control how setup.py is generated from a `python_distribution` target."
        | optional,
      setuptools
        | {
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools#install_from_resolve
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools#requirements
            "%
            | optional,
          ..
        }
        | doc m%"
          Python setuptools, used to package `python_distribution` targets.
          
          This version of Pants uses `setuptools` version 74.1.2 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      setuptools-scm
        | {
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools-scm#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools-scm#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools-scm#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools-scm#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-setuptools-scm#requirements
            "%
            | optional,
          ..
        }
        | doc m%"
          A tool for generating versions from VCS metadata (https://github.com/pypa/setuptools_scm).
          
          This version of Pants uses `setuptools-scm` version 7.1.0 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      shell-setup
        | {
          dependency_inference
            | Bool
            | doc m%"
              Infer Shell dependencies on other Shell files by analyzing `source` statements
              https://www.pantsbuild.org/v2.26/docs/reference-shell-setup#dependency_inference
            "%
            | optional,
          executable_search_paths
            | Array Dyn
            | doc m%"
              The PATH value that will be used to find shells and to run certain processes like the shunit2 test runner
              https://www.pantsbuild.org/v2.26/docs/reference-shell-setup#executable_search_paths
            "%
            | optional,
          tailor_shunit2_tests
            | Bool
            | doc m%"
              If true, add `shunit2_tests` targets with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-shell-setup#tailor_shunit2_tests
            "%
            | optional,
          tailor_sources
            | Bool
            | doc m%"
              If true, add `shell_sources` targets with the `tailor` goal
              https://www.pantsbuild.org/v2.26/docs/reference-shell-setup#tailor_sources
            "%
            | optional,
          ..
        }
        | doc "Options for Pants's Shell support."
        | optional,
      shell-test
        | {
          skip
            | Bool
            | doc m%"
              If true, don't use Test with shell scripts when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-shell-test#skip
            "%
            | optional,
          ..
        }
        | doc "Options for Pants' Shell test support."
        | optional,
      shellcheck
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Shellcheck, e.g. `--shellcheck-args='-e SC20529'`
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#args
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include all relevant `.shellcheckrc` and `shellcheckrc` files during runs
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#config_discovery
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Shellcheck when running `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of Shellcheck is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of Shellcheck
              https://www.pantsbuild.org/v2.26/docs/reference-shellcheck#version
            "%
            | optional,
          ..
        }
        | doc "A linter for shell scripts."
        | optional,
      shfmt
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to shfmt, e.g. `--shfmt-args='-i 2'`
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#args
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include all relevant `.editorconfig` files during runs
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#config_discovery
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use shfmt when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of shfmt is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of shfmt
              https://www.pantsbuild.org/v2.26/docs/reference-shfmt#version
            "%
            | optional,
          ..
        }
        | doc "An autoformatter for shell scripts (https://github.com/mvdan/sh)."
        | optional,
      shunit2
        | {
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-shunit2#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use shunit2 when running `pants test`
              https://www.pantsbuild.org/v2.26/docs/reference-shunit2#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-shunit2#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-shunit2#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of shunit2 is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-shunit2#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of shunit2
              https://www.pantsbuild.org/v2.26/docs/reference-shunit2#version
            "%
            | optional,
          ..
        }
        | doc "shUnit2 is a xUnit framework for Bourne based shell scripts (https://github.com/kward/shunit2)"
        | optional,
      source
        | {
          marker_filenames
            | Array Dyn
            | doc m%"
              The presence of a file of this name in a directory indicates that the directory is a source root
              https://www.pantsbuild.org/v2.26/docs/reference-source#marker_filenames
            "%
            | optional,
          root_patterns
            | Array Dyn
            | doc m%"
              A list of source root suffixes
              https://www.pantsbuild.org/v2.26/docs/reference-source#root_patterns
            "%
            | optional,
          ..
        }
        | doc "Configuration for roots of source trees."
        | optional,
      stats
        | {
          format
            | std.enum.TagOrString
            | [| 'jsonlines, 'text |]
            | doc m%"
              Output format for reporting stats
              https://www.pantsbuild.org/v2.26/docs/reference-stats#format
            "%
            | optional,
          log
            | Bool
            | doc m%"
              At the end of the Pants run, log all counter metrics and summaries of observation histograms, e.g. the number of cache hits and the time saved by caching
              https://www.pantsbuild.org/v2.26/docs/reference-stats#log
            "%
            | optional,
          memory_summary
            | Bool
            | doc m%"
              At the end of the Pants run, report a summary of memory usage
              https://www.pantsbuild.org/v2.26/docs/reference-stats#memory_summary
            "%
            | optional,
          output_file
            | String
            | doc m%"
              Output the stats to this file
              https://www.pantsbuild.org/v2.26/docs/reference-stats#output_file
            "%
            | optional,
          ..
        }
        | doc "An aggregator for Pants stats, such as cache metrics."
        | optional,
      strip-jar
        | {
          artifacts
            | Array Dyn
            | doc m%"
              Artifact requirements for this tool using specified as either the address of a `jvm_artifact` target or, alternatively, as a colon-separated Maven coordinates (e.g., `group:name:version`)
              https://www.pantsbuild.org/v2.26/docs/reference-strip-jar#artifacts
            "%
            | optional,
          jvm_options
            | Array Dyn
            | doc m%"
              List of JVM options to pass to `strip-jar` JVM processes
              https://www.pantsbuild.org/v2.26/docs/reference-strip-jar#jvm_options
            "%
            | optional,
          lockfile
            | String
            | doc m%"
              Path to a lockfile used for installing the tool
              https://www.pantsbuild.org/v2.26/docs/reference-strip-jar#lockfile
            "%
            | optional,
          version
            | String
            | doc m%"
              Version string for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-strip-jar#version
            "%
            | optional,
          ..
        }
        | doc "Reproducible Build Maven Plugin"
        | optional,
      subprocess-environment
        | {
          env_vars
            | Array Dyn
            | doc m%"
              Environment variables to set for process invocations
              https://www.pantsbuild.org/v2.26/docs/reference-subprocess-environment#env_vars
            "%
            | optional,
          ..
        }
        | doc "Environment settings for forked subprocesses."
        | optional,
      system-binaries
        | {
          system_binary_paths
            | Array Dyn
            | doc m%"
              The PATH value that will searched for executables
              https://www.pantsbuild.org/v2.26/docs/reference-system-binaries#system_binary_paths
            "%
            | optional,
          ..
        }
        | doc "System binaries related settings."
        | optional,
      tailor
        | {
          alias_mapping
            | { _ | Dyn }
            | doc m%"
              A mapping from standard target type to custom type to use instead
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#alias_mapping
            "%
            | optional,
          build_file_header
            | String
            | doc m%"
              A header, e.g., a copyright notice, to add to the content of created BUILD files
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#build_file_header
            "%
            | optional,
          build_file_indent
            | String
            | doc m%"
              The indent to use when auto-editing BUILD files
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#build_file_indent
            "%
            | optional,
          build_file_name
            | String
            | doc m%"
              The name to use for generated BUILD files
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#build_file_name
            "%
            | optional,
          check
            | Bool
            | doc m%"
              Do not write changes to disk, only write back what would change
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#check
            "%
            | optional,
          ignore_adding_targets
            | Array Dyn
            | doc m%"
              Do not add these target definitions
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#ignore_adding_targets
            "%
            | optional,
          ignore_paths
            | Array Dyn
            | doc m%"
              Do not edit or create BUILD files at these paths
              https://www.pantsbuild.org/v2.26/docs/reference-tailor#ignore_paths
            "%
            | optional,
          ..
        }
        | doc m%"
          Auto-generate BUILD file targets for new source files.
          
          Each specific `tailor` implementation may be disabled through language-specific options, e.g. `[python].tailor_pex_binary_targets` and `[shell-setup].tailor`.
        "%
        | optional,
      taplo
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Taplo, e.g. `--taplo-args='--option=align_entries=false'`
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#args
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include a `taplo.toml` or `.taplo.toml` file found in the build root during a run
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#config_discovery
            "%
            | optional,
          glob_pattern
            | Array Dyn
            | doc m%"
              A list of glob patterns of files to include/exclude in formatting relative to the build root
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#glob_pattern
            "%
            | optional,
          known_versions
            | Array Dyn
            | doc m%"
              Known versions to verify downloads against
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#known_versions
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Taplo when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#skip
            "%
            | optional,
          url_platform_mapping
            | { _ | Dyn }
            | doc m%"
              A dictionary mapping platforms to strings to be used when generating the URL to download the tool
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#url_platform_mapping
            "%
            | optional,
          url_template
            | String
            | doc m%"
              URL to download the tool, either as a single binary file or a compressed file (e.g. zip file)
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#url_template
            "%
            | optional,
          use_unsupported_version
            | std.enum.TagOrString
            | [| 'warning, 'error |]
            | doc m%"
              What action to take in case the requested version of Taplo is not supported
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#use_unsupported_version
            "%
            | optional,
          version
            | String
            | doc m%"
              Use this version of Taplo
              https://www.pantsbuild.org/v2.26/docs/reference-taplo#version
            "%
            | optional,
          ..
        }
        | doc "An autoformatter for TOML files (https://taplo.tamasfe.dev/)"
        | optional,
      test
        | {
          attempts_default
            | Number
            | doc m%"
              The number of attempts to run tests, in case of a test failure
              https://www.pantsbuild.org/v2.26/docs/reference-test#attempts_default
            "%
            | optional,
          batch_size
            | Number
            | doc m%"
              The target maximum number of files to be included in each run of batch-enabled test runners
              https://www.pantsbuild.org/v2.26/docs/reference-test#batch_size
            "%
            | optional,
          debug
            | Bool
            | doc m%"
              Run tests sequentially in an interactive process
              https://www.pantsbuild.org/v2.26/docs/reference-test#debug
            "%
            | optional,
          debug_adapter
            | Bool
            | doc m%"
              Run tests sequentially in an interactive process, using a Debug Adapter (https://microsoft.github.io/debug-adapter-protocol/) for the language if supported
              https://www.pantsbuild.org/v2.26/docs/reference-test#debug_adapter
            "%
            | optional,
          experimental_report_test_result_info
            | Bool
            | doc m%"
              Report information about the test results
              https://www.pantsbuild.org/v2.26/docs/reference-test#experimental_report_test_result_info
            "%
            | optional,
          extra_env_vars
            | Array Dyn
            | doc m%"
              Additional environment variables to include in test processes
              https://www.pantsbuild.org/v2.26/docs/reference-test#extra_env_vars
            "%
            | optional,
          "force"
            | Bool
            | doc m%"
              Force the tests to run, even if they could be satisfied from cache
              https://www.pantsbuild.org/v2.26/docs/reference-test#force
            "%
            | optional,
          open_coverage
            | Bool
            | doc m%"
              If a coverage report file is generated, open it on the local system if the system supports this
              https://www.pantsbuild.org/v2.26/docs/reference-test#open_coverage
            "%
            | optional,
          output
            | std.enum.TagOrString
            | [| 'none, 'failed, 'all |]
            | doc m%"
              Show stdout/stderr for these tests
              https://www.pantsbuild.org/v2.26/docs/reference-test#output
            "%
            | optional,
          report
            | Bool
            | doc m%"
              Write test reports to `--report-dir`
              https://www.pantsbuild.org/v2.26/docs/reference-test#report
            "%
            | optional,
          report_dir
            | String
            | doc m%"
              Path to write test reports to
              https://www.pantsbuild.org/v2.26/docs/reference-test#report_dir
            "%
            | optional,
          shard
            | String
            | doc m%"
              A shard specification of the form "k/N", where N is a positive integer and k is a non-negative integer less than N
              https://www.pantsbuild.org/v2.26/docs/reference-test#shard
            "%
            | optional,
          show_rerun_command
            | Bool
            | doc m%"
              If tests fail, show an appropriate `pants test ...` invocation to rerun just those tests
              https://www.pantsbuild.org/v2.26/docs/reference-test#show_rerun_command
            "%
            | optional,
          timeout_default
            | Number
            | doc m%"
              The default timeout (in seconds) for a test target if the `timeout` field is not set on the target
              https://www.pantsbuild.org/v2.26/docs/reference-test#timeout_default
            "%
            | optional,
          timeout_maximum
            | Number
            | doc m%"
              The maximum timeout (in seconds) that may be used on a test target
              https://www.pantsbuild.org/v2.26/docs/reference-test#timeout_maximum
            "%
            | optional,
          timeouts
            | Bool
            | doc m%"
              Enable test target timeouts
              https://www.pantsbuild.org/v2.26/docs/reference-test#timeouts
            "%
            | optional,
          use_coverage
            | Bool
            | doc m%"
              Generate a coverage report if the test runner supports it
              https://www.pantsbuild.org/v2.26/docs/reference-test#use_coverage
            "%
            | optional,
          ..
        }
        | doc "Run tests."
        | optional,
      twine
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to Twine, e.g. `--twine-args='--skip-existing'`
              https://www.pantsbuild.org/v2.26/docs/reference-twine#args
            "%
            | optional,
          ca_certs_path
            | String
            | doc m%"
              Path to a file containing PEM-format CA certificates used for verifying secure connections when publishing python distributions
              https://www.pantsbuild.org/v2.26/docs/reference-twine#ca_certs_path
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to a .pypirc config file to use. (https://packaging.python.org/specifications/pypirc/)
              https://www.pantsbuild.org/v2.26/docs/reference-twine#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include all relevant config files during runs (`.pypirc`)
              https://www.pantsbuild.org/v2.26/docs/reference-twine#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-twine#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-twine#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-twine#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-twine#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-twine#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Twine when running `pants publish`
              https://www.pantsbuild.org/v2.26/docs/reference-twine#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          The utility for publishing Python distributions to PyPI and other Python repositories.
          
          This version of Pants uses `twine` version 4.0.2 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      update-build-files
        | {
          check
            | Bool
            | doc m%"
              Do not write changes to disk, only write back what would change
              https://www.pantsbuild.org/v2.26/docs/reference-update-build-files#check
            "%
            | optional,
          fix_safe_deprecations
            | Bool
            | doc m%"
              Automatically fix deprecations, such as target type renames, that are safe because they do not change semantics
              https://www.pantsbuild.org/v2.26/docs/reference-update-build-files#fix_safe_deprecations
            "%
            | optional,
          fmt
            | Bool
            | doc m%"
              Format BUILD files using Black, Ruff or Yapf
              https://www.pantsbuild.org/v2.26/docs/reference-update-build-files#fmt
            "%
            | optional,
          formatter
            | std.enum.TagOrString
            | [| 'buildifier, 'ruff, 'black, 'yapf |]
            | doc m%"
              Which formatter Pants should use to format BUILD files
              https://www.pantsbuild.org/v2.26/docs/reference-update-build-files#formatter
            "%
            | optional,
          ..
        }
        | doc m%"
          Format and fix safe deprecations in BUILD files.
          
          This does not handle the full Pants upgrade. You must still manually change `pants_version` in `pants.toml` and you may need to manually address some deprecations. See https://www.pantsbuild.org/2.26/docs/releases/upgrade-tips for upgrade tips.
        "%
        | optional,
      version | { _ | Dyn } | doc "Display Pants version." | optional,
      visibility
        | {
          enforce
            | Bool
            | doc m%"
              Visibility rules are enforced whenever dependencies are calculated unless `enforce` is set to false
              https://www.pantsbuild.org/v2.26/docs/reference-visibility#enforce
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use Visibility Rules when running `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-visibility#skip
            "%
            | optional,
          ..
        }
        | doc "Options for the visibility rules implementation of the dependency rules API."
        | optional,
      workunit-logger
        | {
          enabled
            | Bool
            | doc m%"
              Whether to enable workunit logging
              https://www.pantsbuild.org/v2.26/docs/reference-workunit-logger#enabled
            "%
            | optional,
          logdir
            | String
            | doc m%"
              Where to write the log to
              https://www.pantsbuild.org/v2.26/docs/reference-workunit-logger#logdir
            "%
            | optional,
          ..
        }
        | doc "Workunit Logger subsystem. Useful for debugging pants itself."
        | optional,
      yapf
        | {
          args
            | Array Dyn
            | doc m%"
              Arguments to pass directly to yapf, e.g. `--yapf-args='--no-local-style'`
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#args
            "%
            | optional,
          config
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc m%"
              Path to style file understood by yapf (https://github.com/google/yapf#formatting-style/)
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#config
            "%
            | optional,
          config_discovery
            | Bool
            | doc m%"
              If true, Pants will include any relevant config files during runs (`.style.yapf`, `pyproject.toml`, and `setup.cfg`)
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#config_discovery
            "%
            | optional,
          console_script
            | String
            | doc m%"
              The console script for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#console_script
            "%
            | optional,
          entry_point
            | String
            | doc m%"
              The entry point for the tool
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#entry_point
            "%
            | optional,
          install_from_resolve
            | String
            | doc m%"
              If specified, install the tool using the lockfile for this named resolve
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#install_from_resolve
            "%
            | optional,
          interpreter_constraints
            | Array Dyn
            | doc m%"
              Python interpreter constraints for this tool
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#interpreter_constraints
            "%
            | optional,
          requirements
            | Array Dyn
            | doc m%"
              If `install_from_resolve` is specified, install these requirements, at the versions provided by the specified resolve's lockfile
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#requirements
            "%
            | optional,
          skip
            | Bool
            | doc m%"
              If true, don't use yapf when running `pants fmt` and `pants lint`
              https://www.pantsbuild.org/v2.26/docs/reference-yapf#skip
            "%
            | optional,
          ..
        }
        | doc m%"
          A formatter for Python files (https://github.com/google/yapf).
          
          This version of Pants uses `yapf` version 0.40.2 by default. Use a dedicated lockfile and the `install_from_resolve` option to control this.
        "%
        | optional,
      ..
    }