# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Assets" =
        {
            binding
              | String
              | doc "Name of `env` binding property in the User Worker."
              | optional,
            directory
              | String
              | doc "Absolute path to assets directory"
              | optional,
            html_handling
              | std.enum.TagOrString
              | [|
                'none,
                'drop-trailing-slash,
                'force-trailing-slash,
                'auto-trailing-slash
              |]
              | doc "How to handle HTML requests."
              | optional,
            not_found_handling
              | std.enum.TagOrString
              | [| 'none, '"404-page", 'single-page-application |]
              | doc "How to handle requests that do not match an asset."
              | optional,
            run_worker_first
              | Bool
              | doc "If true, route every request to the User Worker, whether or not it matches an asset. If false, then respond to requests that match an asset with that asset directly."
              | optional,
          },
      "definitions.CloudchamberConfig" =
        {
            image | String | optional,
            ipv4 | Bool | optional,
            location | String | optional,
            memory | String | optional,
            vcpu | Number | optional,
          },
      "definitions.ConfigModuleRuleType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'PythonRequirement,
                'PythonModule,
                'Data,
                'Text,
                'CompiledWasm,
                'CommonJS,
                'ESModule
              |]
            ],
      "definitions.ContainerApp" =
        {
            class_name | String,
            configuration
              | {
                image | String,
                labels | Array { name | String, value | String, } | optional,
                secrets
                  | Array
                    {
                      name | String,
                      secret | String,
                      type | std.contract.Equal "env",
                    }
                  | optional,
              },
            constraints
              | {
                cities | Array String | optional,
                regions | Array String | optional,
                tier | Number | optional,
              }
              | doc "Scheduling constraints"
              | optional,
            dev_exposed_ports
              | Array Number
              | doc "Ports to be exposed by the container application. Only applies to dev, on non-linux machines, and if the Dockerfile doesn't already declare exposed ports."
              | optional,
            durable_objects | { namespace_id | String, } | optional,
            image
              | String
              | doc "The path to a Dockerfile, or an image URI. Can be defined both here or by setting the `image` key in the `ContainerApp` configuration"
              | optional,
            image_build_context
              | String
              | doc "Build context of the application. By default it is the directory of `image`."
              | optional,
            image_vars
              | { _ | String }
              | doc "Image variables to be passed along the image"
              | optional,
            instances
              | Number
              | doc "Number of application instances"
              | optional,
            max_instances
              | Number
              | doc "Number of maximum application instances. Only applicable to Durable Object container applications"
              | optional,
            name | String | doc "Name of the application",
            rollout_kind
              | std.enum.TagOrString
              | [| 'full_manual, 'none, 'full_auto |]
              | doc "How a rollout should be created. It supports the following modes:  - full_auto: The container application will be rolled out fully automatically.  - none: The container application won't have a roll out or update.  - manual: The container application will be rollout fully by manually actioning progress steps."
              | optional,
            rollout_step_percentage
              | Number
              | doc "How a rollout should be done, defining the size of it"
              | optional,
            scheduling_policy
              | std.enum.TagOrString
              | [| 'moon, 'regional |]
              | doc "The scheduling policy of the application, default is regional"
              | optional,
          },
      "definitions.CustomDomainRoute" =
        { custom_domain | Bool, pattern | String, },
      "definitions.DispatchNamespaceOutbound" =
        {
            environment
              | String
              | doc "(Optional) Name of the environment handling the outbound requests."
              | optional,
            parameters
              | Array String
              | doc "(Optional) List of parameter names, for sending context from your dispatch Worker to the outbound handler"
              | optional,
            service
              | String
              | doc "Name of the service handling the outbound requests",
          },
      "definitions.DurableObjectBindings" =
        Array
            {
              class_name
                | String
                | doc "The exported class name of the Durable Object",
              environment
                | String
                | doc "The service environment of the script_name to bind to"
                | optional,
              name
                | String
                | doc "The name of the binding used to refer to the Durable Object",
              script_name
                | String
                | doc "The script where the Durable Object is defined (if it's external to this Worker)"
                | optional,
            },
      "definitions.DurableObjectMigration" =
        {
            deleted_classes
              | Array String
              | doc "The Durable Objects being removed."
              | optional,
            new_classes
              | Array String
              | doc "The new Durable Objects being defined."
              | optional,
            new_sqlite_classes
              | Array String
              | doc "The new SQLite Durable Objects being defined."
              | optional,
            renamed_classes
              | Array { from | String, to | String, }
              | doc "The Durable Objects being renamed."
              | optional,
            tag | String | doc "A unique identifier for this migration.",
          },
      "definitions.Json" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.Literal",
                  std.contract.any_of [ js2n.Null, Bool, Number, String ]
                ],
              js2n.record.Record
                {
                  additional = 'Some js2n.Always,
                  patterns = {},
                  properties = {},
                  required = {},
                },
              js2n.array.ArrayOf js2n.Always
            ],
      "definitions.Literal" =
        std.contract.Sequence
            [
              refs."definitions.TypeOf%3CZodUnion%3C%5Bdef-class-1315922706-6501-8772-1315922706-0-54395%2Cdef-class-1315922706-9299-10989-1315922706-0-54395%2Cdef-class-1315922706-12937-13365-1315922706-0-54395%2Cdef-class-1315922706-15083-15273-1315922706-0-54395%5D%3E%3E",
              std.contract.any_of [ js2n.Null, Bool, Number, String ]
            ],
      "definitions.Observability" =
        {
            enabled
              | Bool
              | doc "If observability is enabled for this Worker"
              | optional,
            head_sampling_rate | Number | doc "The sampling rate" | optional,
            logs
              | {
                enabled | Bool | optional,
                head_sampling_rate
                  | Number
                  | doc "The sampling rate"
                  | optional,
                invocation_logs
                  | Bool
                  | doc "Set to false to disable invocation logs"
                  | optional,
              }
              | optional,
          },
      "definitions.RawConfig" =
        {
            "$schema" | String | optional,
            account_id
              | String
              | doc "This is the ID of the account associated with your zone. You might have more than one account, so make sure to use the ID of the account associated with the zone/route you provide, if you provide one. It can also be specified through the CLOUDFLARE_ACCOUNT_ID environment variable."
              | optional,
            ai
              | {
                binding | String,
                remote
                  | Bool
                  | doc "Whether the AI binding should be remote or not (only available under `--x-mixed-mode`)"
                  | optional,
                staging | Bool | optional,
              }
              | doc m%"
                Binding to the AI project.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#workers-ai
              "%
              | optional,
            alias
              | { _ | String }
              | doc m%"
                A map of module aliases. Lets you swap out a module for any others. Corresponds with esbuild's `alias` config
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#module-aliasing
              "%
              | optional,
            analytics_engine_datasets
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the dataset in the Worker.",
                  dataset
                    | String
                    | doc "The name of this dataset to write to."
                    | optional,
                }
              | doc m%"
                Specifies analytics engine datasets that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#analytics-engine-datasets
              "%
              | optional,
            assets
              | refs."definitions.Assets"
              | { _ | Dyn }
              | doc m%"
                Specify the directory of static assets to deploy/serve
                
                More details at https://developers.cloudflare.com/workers/frameworks/
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#assets
              "%
              | optional,
            base_dir
              | String
              | doc "The directory in which module rules should be evaluated when including additional files into a Worker deployment. This defaults to the directory containing the `main` entry point of the Worker if not specified."
              | optional,
            browser
              | {
                binding | String,
                remote
                  | Bool
                  | doc "Whether the Browser binding should be remote or not (only available under `--x-mixed-mode`)"
                  | optional,
              }
              | doc m%"
                A browser that will be usable from the Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#browser-rendering
              "%
              | optional,
            build
              | {
                command
                  | String
                  | doc "The command used to build your Worker. On Linux and macOS, the command is executed in the `sh` shell and the `cmd` shell for Windows. The `&&` and `||` shell operators may be used."
                  | optional,
                cwd
                  | String
                  | doc "The directory in which the command is executed."
                  | optional,
                watch_dir
                  | std.contract.any_of [ String, Array String ]
                  | doc "The directory to watch for changes while using wrangler dev, defaults to the current working directory"
                  | optional,
              }
              | doc m%"
                Configures a custom build step to be run by Wrangler when building your Worker.
                
                Refer to the [custom builds documentation](https://developers.cloudflare.com/workers/cli-wrangler/configuration#build) for more details.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#custom-builds
              "%
              | optional,
            cloudchamber
              | refs."definitions.CloudchamberConfig"
              | { _ | Dyn }
              | doc m%"
                Cloudchamber configuration
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            compatibility_date
              | String
              | doc m%"
                A date in the form yyyy-mm-dd, which will be used to determine which version of the Workers runtime is used.
                
                More details at https://developers.cloudflare.com/workers/configuration/compatibility-dates
              "%
              | optional,
            compatibility_flags
              | Array String
              | doc m%"
                A list of flags that enable features from upcoming features of the Workers runtime, usually used together with compatibility_date.
                
                More details at https://developers.cloudflare.com/workers/configuration/compatibility-flags/
              "%
              | optional,
            compliance_region
              | std.enum.TagOrString
              | [| 'fedramp_high, 'public |]
              | doc m%"
                Specify the compliance region mode of the Worker.
                
                Although if the user does not specify a compliance region, the default is `public`, it can be set to `undefined` in configuration to delegate to the CLOUDFLARE_COMPLIANCE_REGION environment variable.
              "%
              | optional,
            containers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ContainerApp", { _ | Dyn } ]
              )
              | doc "Container related configuration"
              | optional,
            d1_databases
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the D1 database in the Worker.",
                  database_id
                    | String
                    | doc "The UUID of this D1 database (not required)."
                    | optional,
                  database_internal_env
                    | String
                    | doc "Internal use only."
                    | optional,
                  database_name
                    | String
                    | doc "The name of this D1 database."
                    | optional,
                  migrations_dir
                    | String
                    | doc "The path to the directory of migrations for this D1 database (defaults to './migrations')."
                    | optional,
                  migrations_table
                    | String
                    | doc "The name of the migrations table for this D1 database (defaults to 'd1_migrations')."
                    | optional,
                  preview_database_id
                    | String
                    | doc "The UUID of this D1 database for Wrangler Dev (if specified)."
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the D1 database should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies D1 databases that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#d1-databases
              "%
              | optional,
            data_blobs
              | { _ | String }
              | doc "A list of data files that your worker should be bound to. This is the \"legacy\" way of binding to a data file. ES module workers should do proper module imports."
              | optional,
            define
              | { _ | String }
              | doc m%"
                A map of values to substitute when deploying your Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            dev
              | refs."definitions.RawDevConfig"
              | { _ | Dyn }
              | doc m%"
                Options to configure the development server that your worker will use.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#local-development-settings
              "%
              | optional,
            dispatch_namespaces
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  namespace | String | doc "The namespace to bind to.",
                  outbound
                    | refs."definitions.DispatchNamespaceOutbound"
                    | { _ | Dyn }
                    | doc "Details about the outbound Worker which will handle outbound requests from your namespace"
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the Dispatch Namespace should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies namespace bindings that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#dispatch-namespace-bindings-workers-for-platforms
              "%
              | optional,
            durable_objects
              | {
                bindings | refs."definitions.DurableObjectBindings" | Array Dyn,
              }
              | doc m%"
                A list of durable objects that your Worker should be bound to.
                
                For more information about Durable Objects, see the documentation at https://developers.cloudflare.com/workers/learning/using-durable-objects
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#durable-objects
              "%
              | optional,
            env
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.RawEnvironment", { _ | Dyn } ]
              }
              | doc m%"
                The `env` section defines overrides for the configuration for different environments.
                
                All environment fields can be specified at the top level of the config indicating the default environment settings.
                
                - Some fields are inherited and overridable in each environment.
                - But some are not inherited and must be explicitly specified in every environment, if they are specified at the top level.
                
                For more information, see the documentation at https://developers.cloudflare.com/workers/cli-wrangler/configuration#environments
              "%
              | optional,
            find_additional_modules
              | Bool
              | doc "If true then Wrangler will traverse the file tree below `base_dir`; Any files that match `rules` will be included in the deployed Worker. Defaults to true if `no_bundle` is true, otherwise false."
              | optional,
            first_party_worker
              | Bool
              | doc "Designates this Worker as an internal-only \"first-party\" Worker."
              | optional,
            hyperdrive
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the project in the Worker.",
                  id | String | doc "The id of the database.",
                  localConnectionString
                    | String
                    | doc "The local database connection string for `wrangler dev`"
                    | optional,
                }
              | doc m%"
                Specifies Hyperdrive configs that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#hyperdrive
              "%
              | optional,
            images
              | {
                binding | String,
                remote
                  | Bool
                  | doc "Whether the Images binding should be remote or not (only available under `--x-mixed-mode`)"
                  | optional,
              }
              | doc m%"
                Binding to Cloudflare Images
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#images
              "%
              | optional,
            jsx_factory
              | String
              | doc "The function to use to replace jsx syntax."
              | optional,
            jsx_fragment
              | String
              | doc "The function to use to replace jsx fragment syntax."
              | optional,
            keep_names
              | Bool
              | doc "Keep function names after javascript transpilations."
              | optional,
            keep_vars
              | Bool
              | doc m%"
                By default, the Wrangler configuration file is the source of truth for your environment configuration, like a terraform file.
                
                If you change your vars in the dashboard, wrangler *will* override/delete them on its next deploy.
                
                If you want to keep your dashboard vars when wrangler deploys, set this field to true.
              "%
              | optional,
            kv_namespaces
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the KV Namespace",
                  id | String | doc "The ID of the KV namespace" | optional,
                  preview_id
                    | String
                    | doc "The ID of the KV namespace used during `wrangler dev`"
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the KV namespace should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                These specify any Workers KV Namespaces you want to access from inside your Worker.
                
                To learn more about KV Namespaces, see the documentation at https://developers.cloudflare.com/workers/learning/how-kv-works
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#kv-namespaces
              "%
              | optional,
            legacy_env
              | Bool
              | doc "A boolean to enable \"legacy\" style wrangler environments (from Wrangler v1). These have been superseded by Services, but there may be projects that won't (or can't) use them. If you're using a legacy environment, you can set this to `true` to enable it."
              | optional,
            limits
              | refs."definitions.UserLimits"
              | { _ | Dyn }
              | doc m%"
                Specify limits for runtime behavior. Only supported for the "standard" Usage Model
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#limits
              "%
              | optional,
            logfwdr
              | {
                bindings
                  | Array
                    {
                      destination
                        | String
                        | doc "The destination for this logged message",
                      name
                        | String
                        | doc "The binding name used to refer to logfwdr",
                    },
              }
              | doc "List of bindings that you will send to logfwdr"
              | optional,
            logpush
              | Bool
              | doc m%"
                Send Trace Events from this Worker to Workers Logpush.
                
                This will not configure a corresponding Logpush job automatically.
                
                For more information about Workers Logpush, see: https://blog.cloudflare.com/logpush-for-workers/
              "%
              | optional,
            main
              | String
              | doc "The entrypoint/path to the JavaScript file that will be executed."
              | optional,
            migrations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DurableObjectMigration", { _ | Dyn } ]
              )
              | doc m%"
                A list of migrations that should be uploaded with your Worker.
                
                These define changes in your Durable Object declarations.
                
                More details at https://developers.cloudflare.com/workers/learning/using-durable-objects#configuring-durable-object-classes-with-migrations
              "%
              | optional,
            minify
              | Bool
              | doc "Minify the script before uploading."
              | optional,
            mtls_certificates
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the certificate in the Worker",
                  certificate_id
                    | String
                    | doc "The uuid of the uploaded mTLS certificate",
                }
              | doc m%"
                Specifies a list of mTLS certificates that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#mtls-certificates
              "%
              | optional,
            name
              | String
              | doc "The name of your Worker. Alphanumeric + dashes only."
              | optional,
            no_bundle
              | Bool
              | doc "Skip internal build steps and directly deploy script"
              | optional,
            observability
              | refs."definitions.Observability"
              | { _ | Dyn }
              | doc m%"
                Specify the observability behavior of the Worker.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#observability
              "%
              | optional,
            pages_build_output_dir
              | String
              | doc m%"
                The directory of static assets to serve.
                
                The presence of this field in a Wrangler configuration file indicates a Pages project, and will prompt the handling of the configuration file according to the Pages-specific validation rules.
              "%
              | optional,
            pipelines
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  pipeline | String | doc "Name of the Pipeline to bind",
                }
              | doc m%"
                Specifies list of Pipelines bound to this Worker environment
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            placement
              | {
                hint | String | optional,
                mode | std.enum.TagOrString | [| 'smart, 'off |],
              }
              | doc m%"
                Specify how the Worker should be located to minimize round-trip time.
                
                More details: https://developers.cloudflare.com/workers/platform/smart-placement/
              "%
              | optional,
            preserve_file_names
              | Bool
              | doc "Determines whether Wrangler will preserve bundled file names. Defaults to false. If left unset, files will be named using the pattern ${fileHash}-${basename}, for example, `34de60b44167af5c5a709e62a4e20c4f18c9e3b6-favicon.ico`."
              | optional,
            preview_urls
              | Bool
              | doc "Whether we use <version>-<name>.<subdomain>.workers.dev to serve Preview URLs for your Worker."
              | optional,
            queues
              | {
                consumers
                  | Array
                    {
                      dead_letter_queue
                        | String
                        | doc "The queue to send messages that failed to be consumed."
                        | optional,
                      max_batch_size
                        | Number
                        | doc "The maximum number of messages per batch"
                        | optional,
                      max_batch_timeout
                        | Number
                        | doc "The maximum number of seconds to wait to fill a batch with messages."
                        | optional,
                      max_concurrency
                        | js2n.Nullable Number
                        | doc "The maximum number of concurrent consumer Worker invocations. Leaving this unset will allow your consumer to scale to the maximum concurrency needed to keep up with the message backlog."
                        | optional,
                      max_retries
                        | Number
                        | doc "The maximum number of retries for each message."
                        | optional,
                      queue
                        | String
                        | doc "The name of the queue from which this consumer should consume.",
                      retry_delay
                        | Number
                        | doc "The number of seconds to wait before retrying a message"
                        | optional,
                      type
                        | String
                        | doc "The consumer type, e.g., worker, http-pull, r2-bucket, etc. Default is worker."
                        | optional,
                      visibility_timeout_ms
                        | Number
                        | doc "The number of milliseconds to wait for pulled messages to become visible again"
                        | optional,
                    }
                  | doc "Consumer configuration"
                  | optional,
                producers
                  | Array
                    {
                      binding
                        | String
                        | doc "The binding name used to refer to the Queue in the Worker.",
                      delivery_delay
                        | Number
                        | doc "The number of seconds to wait before delivering a message"
                        | optional,
                      queue | String | doc "The name of this Queue.",
                      remote
                        | Bool
                        | doc "Whether the Queue producer should be remote or not (only available under `--x-mixed-mode`)"
                        | optional,
                    }
                  | doc "Producer bindings"
                  | optional,
              }
              | doc m%"
                Specifies Queues that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#queues
              "%
              | optional,
            r2_buckets
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the R2 bucket in the Worker.",
                  bucket_name
                    | String
                    | doc "The name of this R2 bucket at the edge."
                    | optional,
                  jurisdiction
                    | String
                    | doc "The jurisdiction that the bucket exists in. Default if not present."
                    | optional,
                  preview_bucket_name
                    | String
                    | doc "The preview name of this R2 bucket at the edge."
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the R2 bucket should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies R2 buckets that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#r2-buckets
              "%
              | optional,
            route
              | refs."definitions.Route"
              | doc m%"
                A route that your Worker should be published to. Literally the same as routes, but only one. Only one of `routes` or `route` is required.
                
                Only required when workers_dev is false, and there's no scheduled Worker
              "%
              | optional,
            routes
              | Array refs."definitions.Route"
              | doc m%"
                A list of routes that your Worker should be published to. Only one of `routes` or `route` is required.
                
                Only required when workers_dev is false, and there's no scheduled Worker (see `triggers`)
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#types-of-routes
              "%
              | optional,
            rules
              | Array (
                std.contract.Sequence [ refs."definitions.Rule", { _ | Dyn } ]
              )
              | doc m%"
                An ordered list of rules that define which modules to import, and what type to import them as. You will need to specify rules to use Text, Data, and CompiledWasm modules, or when you wish to have a .js file be treated as an ESModule instead of CommonJS.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#bundling
              "%
              | optional,
            secrets_store_secrets
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  secret_name | String | doc "Name of the secret",
                  store_id | String | doc "Id of the secret store",
                }
              | doc m%"
                Specifies Secret Store bindings that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            send_email
              | Array
                {
                  allowed_destination_addresses
                    | Array String
                    | doc "If this binding should be restricted to a set of verified addresses"
                    | optional,
                  destination_address
                    | String
                    | doc "If this binding should be restricted to a specific verified address"
                    | optional,
                  name
                    | String
                    | doc "The binding name used to refer to the this binding",
                }
              | doc m%"
                These specify bindings to send email from inside your Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#email-bindings
              "%
              | optional,
            send_metrics
              | Bool
              | doc m%"
                Whether Wrangler should send usage metrics to Cloudflare for this project.
                
                When defined this will override any user settings. Otherwise, Wrangler will use the user's preference.
              "%
              | optional,
            services
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  entrypoint
                    | String
                    | doc "Optionally, the entrypoint (named export) of the service to bind to."
                    | optional,
                  environment
                    | String
                    | doc "The environment of the service (e.g. production, staging, etc)."
                    | optional,
                  props
                    | {  .. }
                    | doc "Optional properties that will be made available to the service via ctx.props."
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the service binding should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                  service | String | doc "The name of the service.",
                }
              | doc m%"
                Specifies service bindings (Worker-to-Worker) that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#service-bindings
              "%
              | optional,
            site
              | {
                bucket
                  | String
                  | doc m%"
                    The directory containing your static assets.
                    
                    It must be a path relative to your Wrangler configuration file. Example: bucket = "./public"
                    
                    If there is a `site` field then it must contain this `bucket` field.
                  "%,
                entry-point
                  | String
                  | doc "The location of your Worker script."
                  | optional,
                exclude
                  | Array String
                  | doc "A list of .gitignore-style patterns that match files or directories in your bucket that should be excluded from uploads. Example: exclude = [\"ignore_dir\"]"
                  | optional,
                include
                  | Array String
                  | doc "An exclusive list of .gitignore-style patterns that match file or directory names from your bucket location. Only matched items will be uploaded. Example: include = [\"upload_dir\"]"
                  | optional,
              }
              | doc m%"
                The definition of a Worker Site, a feature that lets you upload static assets with your Worker.
                
                More details at https://developers.cloudflare.com/workers/platform/sites
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#workers-sites
              "%
              | optional,
            tail_consumers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TailConsumer", { _ | Dyn } ]
              )
              | doc m%"
                Specifies a list of Tail Workers that are bound to this Worker environment
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            text_blobs
              | { _ | String }
              | doc "A list of text files that your worker should be bound to. This is the \"legacy\" way of binding to a text file. ES module workers should do proper module imports."
              | optional,
            triggers
              | { crons | Array String | optional, }
              | doc m%"
                "Cron" definitions to trigger a Worker's "scheduled" function.
                
                Lets you call Workers periodically, much like a cron job.
                
                More details here https://developers.cloudflare.com/workers/platform/cron-triggers
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#triggers
              "%
              | optional,
            tsconfig | String | doc "Path to a custom tsconfig" | optional,
            unsafe
              | {
                bindings
                  | Array { name | String, type | String, .. }
                  | doc "A set of bindings that should be put into a Worker's upload metadata without changes. These can be used to implement bindings for features that haven't released and aren't supported directly by wrangler or miniflare."
                  | optional,
                capnp
                  | std.contract.any_of
                    [
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                base_path = String,
                                source_schemas = js2n.array.ArrayOf String,
                              },
                          required =
                            { base_path = true, source_schemas = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties = { compiled_schema = String, },
                          required = { compiled_schema = true, },
                        }
                    ]
                  | doc "Used for internal capnp uploads for the Workers runtime"
                  | optional,
                metadata
                  | {  .. }
                  | doc "Arbitrary key/value pairs that will be included in the uploaded metadata.  Values specified here will always be applied to metadata last, so can add new or override existing fields."
                  | optional,
              }
              | doc m%"
                "Unsafe" tables for features that aren't directly supported by wrangler.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            upload_source_maps
              | Bool
              | doc m%"
                Include source maps when uploading this worker.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#source-maps
              "%
              | optional,
            vars
              | { _ | std.contract.any_of [ String, refs."definitions.Json" ] }
              | doc m%"
                A map of environment variables to set when deploying your Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#environment-variables
              "%
              | optional,
            vectorize
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the Vectorize index in the Worker.",
                  index_name | String | doc "The name of the index.",
                  remote
                    | Bool
                    | doc "Whether the Vectorize index should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies Vectorize indexes that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#vectorize-indexes
              "%
              | optional,
            version_metadata
              | { binding | String, }
              | doc "Binding to the Worker Version's metadata"
              | optional,
            wasm_modules
              | { _ | String }
              | doc "A list of wasm modules that your worker should be bound to. This is the \"legacy\" way of binding to a wasm module. ES module workers should do proper module imports."
              | optional,
            workers_dev
              | Bool
              | doc m%"
                Whether we use <name>.<subdomain>.workers.dev to test and deploy your Worker.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#workersdev
              "%
              | optional,
            workflows
              | Array (
                std.contract.Sequence
                  [ refs."definitions.WorkflowBinding", { _ | Dyn } ]
              )
              | doc m%"
                A list of workflows that your Worker should be bound to.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
          },
      "definitions.RawDevConfig" =
        {
            host
              | String
              | doc "Host to forward requests to, defaults to the host of the first route of project"
              | optional,
            inspector_port
              | Number
              | doc "Port for the local dev server's inspector to listen on"
              | optional,
            ip
              | String
              | doc "IP address for the local dev server to listen on,"
              | optional,
            local_protocol
              | std.enum.TagOrString
              | [| 'https, 'http |]
              | doc "Protocol that local wrangler dev server listens to requests on."
              | optional,
            port
              | Number
              | doc "Port for the local dev server to listen on"
              | optional,
            upstream_protocol
              | std.enum.TagOrString
              | [| 'http, 'https |]
              | doc m%"
                Protocol that wrangler dev forwards requests on
                
                Setting this to `http` is not currently implemented for remote mode. See https://github.com/cloudflare/workers-sdk/issues/583
              "%
              | optional,
          },
      "definitions.RawEnvironment" =
        {
            account_id
              | String
              | doc "This is the ID of the account associated with your zone. You might have more than one account, so make sure to use the ID of the account associated with the zone/route you provide, if you provide one. It can also be specified through the CLOUDFLARE_ACCOUNT_ID environment variable."
              | optional,
            ai
              | {
                binding | String,
                remote
                  | Bool
                  | doc "Whether the AI binding should be remote or not (only available under `--x-mixed-mode`)"
                  | optional,
                staging | Bool | optional,
              }
              | doc m%"
                Binding to the AI project.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#workers-ai
              "%
              | optional,
            analytics_engine_datasets
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the dataset in the Worker.",
                  dataset
                    | String
                    | doc "The name of this dataset to write to."
                    | optional,
                }
              | doc m%"
                Specifies analytics engine datasets that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#analytics-engine-datasets
              "%
              | optional,
            assets
              | refs."definitions.Assets"
              | { _ | Dyn }
              | doc m%"
                Specify the directory of static assets to deploy/serve
                
                More details at https://developers.cloudflare.com/workers/frameworks/
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#assets
              "%
              | optional,
            base_dir
              | String
              | doc "The directory in which module rules should be evaluated when including additional files into a Worker deployment. This defaults to the directory containing the `main` entry point of the Worker if not specified."
              | optional,
            browser
              | {
                binding | String,
                remote
                  | Bool
                  | doc "Whether the Browser binding should be remote or not (only available under `--x-mixed-mode`)"
                  | optional,
              }
              | doc m%"
                A browser that will be usable from the Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#browser-rendering
              "%
              | optional,
            build
              | {
                command
                  | String
                  | doc "The command used to build your Worker. On Linux and macOS, the command is executed in the `sh` shell and the `cmd` shell for Windows. The `&&` and `||` shell operators may be used."
                  | optional,
                cwd
                  | String
                  | doc "The directory in which the command is executed."
                  | optional,
                watch_dir
                  | std.contract.any_of [ String, Array String ]
                  | doc "The directory to watch for changes while using wrangler dev, defaults to the current working directory"
                  | optional,
              }
              | doc m%"
                Configures a custom build step to be run by Wrangler when building your Worker.
                
                Refer to the [custom builds documentation](https://developers.cloudflare.com/workers/cli-wrangler/configuration#build) for more details.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#custom-builds
              "%
              | optional,
            cloudchamber
              | refs."definitions.CloudchamberConfig"
              | { _ | Dyn }
              | doc m%"
                Cloudchamber configuration
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            compatibility_date
              | String
              | doc m%"
                A date in the form yyyy-mm-dd, which will be used to determine which version of the Workers runtime is used.
                
                More details at https://developers.cloudflare.com/workers/configuration/compatibility-dates
              "%
              | optional,
            compatibility_flags
              | Array String
              | doc m%"
                A list of flags that enable features from upcoming features of the Workers runtime, usually used together with compatibility_date.
                
                More details at https://developers.cloudflare.com/workers/configuration/compatibility-flags/
              "%
              | optional,
            compliance_region
              | std.enum.TagOrString
              | [| 'fedramp_high, 'public |]
              | doc m%"
                Specify the compliance region mode of the Worker.
                
                Although if the user does not specify a compliance region, the default is `public`, it can be set to `undefined` in configuration to delegate to the CLOUDFLARE_COMPLIANCE_REGION environment variable.
              "%
              | optional,
            containers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ContainerApp", { _ | Dyn } ]
              )
              | doc "Container related configuration"
              | optional,
            d1_databases
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the D1 database in the Worker.",
                  database_id
                    | String
                    | doc "The UUID of this D1 database (not required)."
                    | optional,
                  database_internal_env
                    | String
                    | doc "Internal use only."
                    | optional,
                  database_name
                    | String
                    | doc "The name of this D1 database."
                    | optional,
                  migrations_dir
                    | String
                    | doc "The path to the directory of migrations for this D1 database (defaults to './migrations')."
                    | optional,
                  migrations_table
                    | String
                    | doc "The name of the migrations table for this D1 database (defaults to 'd1_migrations')."
                    | optional,
                  preview_database_id
                    | String
                    | doc "The UUID of this D1 database for Wrangler Dev (if specified)."
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the D1 database should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies D1 databases that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#d1-databases
              "%
              | optional,
            define
              | { _ | String }
              | doc m%"
                A map of values to substitute when deploying your Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            dispatch_namespaces
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  namespace | String | doc "The namespace to bind to.",
                  outbound
                    | refs."definitions.DispatchNamespaceOutbound"
                    | { _ | Dyn }
                    | doc "Details about the outbound Worker which will handle outbound requests from your namespace"
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the Dispatch Namespace should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies namespace bindings that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#dispatch-namespace-bindings-workers-for-platforms
              "%
              | optional,
            durable_objects
              | {
                bindings | refs."definitions.DurableObjectBindings" | Array Dyn,
              }
              | doc m%"
                A list of durable objects that your Worker should be bound to.
                
                For more information about Durable Objects, see the documentation at https://developers.cloudflare.com/workers/learning/using-durable-objects
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#durable-objects
              "%
              | optional,
            find_additional_modules
              | Bool
              | doc "If true then Wrangler will traverse the file tree below `base_dir`; Any files that match `rules` will be included in the deployed Worker. Defaults to true if `no_bundle` is true, otherwise false."
              | optional,
            first_party_worker
              | Bool
              | doc "Designates this Worker as an internal-only \"first-party\" Worker."
              | optional,
            hyperdrive
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the project in the Worker.",
                  id | String | doc "The id of the database.",
                  localConnectionString
                    | String
                    | doc "The local database connection string for `wrangler dev`"
                    | optional,
                }
              | doc m%"
                Specifies Hyperdrive configs that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#hyperdrive
              "%
              | optional,
            images
              | {
                binding | String,
                remote
                  | Bool
                  | doc "Whether the Images binding should be remote or not (only available under `--x-mixed-mode`)"
                  | optional,
              }
              | doc m%"
                Binding to Cloudflare Images
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#images
              "%
              | optional,
            jsx_factory
              | String
              | doc "The function to use to replace jsx syntax."
              | optional,
            jsx_fragment
              | String
              | doc "The function to use to replace jsx fragment syntax."
              | optional,
            keep_names
              | Bool
              | doc "Keep function names after javascript transpilations."
              | optional,
            kv_namespaces
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the KV Namespace",
                  id | String | doc "The ID of the KV namespace" | optional,
                  preview_id
                    | String
                    | doc "The ID of the KV namespace used during `wrangler dev`"
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the KV namespace should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                These specify any Workers KV Namespaces you want to access from inside your Worker.
                
                To learn more about KV Namespaces, see the documentation at https://developers.cloudflare.com/workers/learning/how-kv-works
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#kv-namespaces
              "%
              | optional,
            limits
              | refs."definitions.UserLimits"
              | { _ | Dyn }
              | doc m%"
                Specify limits for runtime behavior. Only supported for the "standard" Usage Model
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#limits
              "%
              | optional,
            logfwdr
              | {
                bindings
                  | Array
                    {
                      destination
                        | String
                        | doc "The destination for this logged message",
                      name
                        | String
                        | doc "The binding name used to refer to logfwdr",
                    },
              }
              | doc "List of bindings that you will send to logfwdr"
              | optional,
            logpush
              | Bool
              | doc m%"
                Send Trace Events from this Worker to Workers Logpush.
                
                This will not configure a corresponding Logpush job automatically.
                
                For more information about Workers Logpush, see: https://blog.cloudflare.com/logpush-for-workers/
              "%
              | optional,
            main
              | String
              | doc "The entrypoint/path to the JavaScript file that will be executed."
              | optional,
            migrations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DurableObjectMigration", { _ | Dyn } ]
              )
              | doc m%"
                A list of migrations that should be uploaded with your Worker.
                
                These define changes in your Durable Object declarations.
                
                More details at https://developers.cloudflare.com/workers/learning/using-durable-objects#configuring-durable-object-classes-with-migrations
              "%
              | optional,
            minify
              | Bool
              | doc "Minify the script before uploading."
              | optional,
            mtls_certificates
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the certificate in the Worker",
                  certificate_id
                    | String
                    | doc "The uuid of the uploaded mTLS certificate",
                }
              | doc m%"
                Specifies a list of mTLS certificates that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#mtls-certificates
              "%
              | optional,
            name
              | String
              | doc "The name of your Worker. Alphanumeric + dashes only."
              | optional,
            no_bundle
              | Bool
              | doc "Skip internal build steps and directly deploy script"
              | optional,
            observability
              | refs."definitions.Observability"
              | { _ | Dyn }
              | doc m%"
                Specify the observability behavior of the Worker.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#observability
              "%
              | optional,
            pipelines
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  pipeline | String | doc "Name of the Pipeline to bind",
                }
              | doc m%"
                Specifies list of Pipelines bound to this Worker environment
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            placement
              | {
                hint | String | optional,
                mode | std.enum.TagOrString | [| 'smart, 'off |],
              }
              | doc m%"
                Specify how the Worker should be located to minimize round-trip time.
                
                More details: https://developers.cloudflare.com/workers/platform/smart-placement/
              "%
              | optional,
            preserve_file_names
              | Bool
              | doc "Determines whether Wrangler will preserve bundled file names. Defaults to false. If left unset, files will be named using the pattern ${fileHash}-${basename}, for example, `34de60b44167af5c5a709e62a4e20c4f18c9e3b6-favicon.ico`."
              | optional,
            preview_urls
              | Bool
              | doc "Whether we use <version>-<name>.<subdomain>.workers.dev to serve Preview URLs for your Worker."
              | optional,
            queues
              | {
                consumers
                  | Array
                    {
                      dead_letter_queue
                        | String
                        | doc "The queue to send messages that failed to be consumed."
                        | optional,
                      max_batch_size
                        | Number
                        | doc "The maximum number of messages per batch"
                        | optional,
                      max_batch_timeout
                        | Number
                        | doc "The maximum number of seconds to wait to fill a batch with messages."
                        | optional,
                      max_concurrency
                        | js2n.Nullable Number
                        | doc "The maximum number of concurrent consumer Worker invocations. Leaving this unset will allow your consumer to scale to the maximum concurrency needed to keep up with the message backlog."
                        | optional,
                      max_retries
                        | Number
                        | doc "The maximum number of retries for each message."
                        | optional,
                      queue
                        | String
                        | doc "The name of the queue from which this consumer should consume.",
                      retry_delay
                        | Number
                        | doc "The number of seconds to wait before retrying a message"
                        | optional,
                      type
                        | String
                        | doc "The consumer type, e.g., worker, http-pull, r2-bucket, etc. Default is worker."
                        | optional,
                      visibility_timeout_ms
                        | Number
                        | doc "The number of milliseconds to wait for pulled messages to become visible again"
                        | optional,
                    }
                  | doc "Consumer configuration"
                  | optional,
                producers
                  | Array
                    {
                      binding
                        | String
                        | doc "The binding name used to refer to the Queue in the Worker.",
                      delivery_delay
                        | Number
                        | doc "The number of seconds to wait before delivering a message"
                        | optional,
                      queue | String | doc "The name of this Queue.",
                      remote
                        | Bool
                        | doc "Whether the Queue producer should be remote or not (only available under `--x-mixed-mode`)"
                        | optional,
                    }
                  | doc "Producer bindings"
                  | optional,
              }
              | doc m%"
                Specifies Queues that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#queues
              "%
              | optional,
            r2_buckets
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the R2 bucket in the Worker.",
                  bucket_name
                    | String
                    | doc "The name of this R2 bucket at the edge."
                    | optional,
                  jurisdiction
                    | String
                    | doc "The jurisdiction that the bucket exists in. Default if not present."
                    | optional,
                  preview_bucket_name
                    | String
                    | doc "The preview name of this R2 bucket at the edge."
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the R2 bucket should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies R2 buckets that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#r2-buckets
              "%
              | optional,
            route
              | refs."definitions.Route"
              | doc m%"
                A route that your Worker should be published to. Literally the same as routes, but only one. Only one of `routes` or `route` is required.
                
                Only required when workers_dev is false, and there's no scheduled Worker
              "%
              | optional,
            routes
              | Array refs."definitions.Route"
              | doc m%"
                A list of routes that your Worker should be published to. Only one of `routes` or `route` is required.
                
                Only required when workers_dev is false, and there's no scheduled Worker (see `triggers`)
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#types-of-routes
              "%
              | optional,
            rules
              | Array (
                std.contract.Sequence [ refs."definitions.Rule", { _ | Dyn } ]
              )
              | doc m%"
                An ordered list of rules that define which modules to import, and what type to import them as. You will need to specify rules to use Text, Data, and CompiledWasm modules, or when you wish to have a .js file be treated as an ESModule instead of CommonJS.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#bundling
              "%
              | optional,
            secrets_store_secrets
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  secret_name | String | doc "Name of the secret",
                  store_id | String | doc "Id of the secret store",
                }
              | doc m%"
                Specifies Secret Store bindings that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            send_email
              | Array
                {
                  allowed_destination_addresses
                    | Array String
                    | doc "If this binding should be restricted to a set of verified addresses"
                    | optional,
                  destination_address
                    | String
                    | doc "If this binding should be restricted to a specific verified address"
                    | optional,
                  name
                    | String
                    | doc "The binding name used to refer to the this binding",
                }
              | doc m%"
                These specify bindings to send email from inside your Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#email-bindings
              "%
              | optional,
            services
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the bound service.",
                  entrypoint
                    | String
                    | doc "Optionally, the entrypoint (named export) of the service to bind to."
                    | optional,
                  environment
                    | String
                    | doc "The environment of the service (e.g. production, staging, etc)."
                    | optional,
                  props
                    | {  .. }
                    | doc "Optional properties that will be made available to the service via ctx.props."
                    | optional,
                  remote
                    | Bool
                    | doc "Whether the service binding should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                  service | String | doc "The name of the service.",
                }
              | doc m%"
                Specifies service bindings (Worker-to-Worker) that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#service-bindings
              "%
              | optional,
            tail_consumers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TailConsumer", { _ | Dyn } ]
              )
              | doc m%"
                Specifies a list of Tail Workers that are bound to this Worker environment
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            triggers
              | { crons | Array String | optional, }
              | doc m%"
                "Cron" definitions to trigger a Worker's "scheduled" function.
                
                Lets you call Workers periodically, much like a cron job.
                
                More details here https://developers.cloudflare.com/workers/platform/cron-triggers
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#triggers
              "%
              | optional,
            tsconfig | String | doc "Path to a custom tsconfig" | optional,
            unsafe
              | {
                bindings
                  | Array { name | String, type | String, .. }
                  | doc "A set of bindings that should be put into a Worker's upload metadata without changes. These can be used to implement bindings for features that haven't released and aren't supported directly by wrangler or miniflare."
                  | optional,
                capnp
                  | std.contract.any_of
                    [
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                base_path = String,
                                source_schemas = js2n.array.ArrayOf String,
                              },
                          required =
                            { base_path = true, source_schemas = true, },
                        },
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties = { compiled_schema = String, },
                          required = { compiled_schema = true, },
                        }
                    ]
                  | doc "Used for internal capnp uploads for the Workers runtime"
                  | optional,
                metadata
                  | {  .. }
                  | doc "Arbitrary key/value pairs that will be included in the uploaded metadata.  Values specified here will always be applied to metadata last, so can add new or override existing fields."
                  | optional,
              }
              | doc m%"
                "Unsafe" tables for features that aren't directly supported by wrangler.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
            upload_source_maps
              | Bool
              | doc m%"
                Include source maps when uploading this worker.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#source-maps
              "%
              | optional,
            vars
              | { _ | std.contract.any_of [ String, refs."definitions.Json" ] }
              | doc m%"
                A map of environment variables to set when deploying your Worker.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#environment-variables
              "%
              | optional,
            vectorize
              | Array
                {
                  binding
                    | String
                    | doc "The binding name used to refer to the Vectorize index in the Worker.",
                  index_name | String | doc "The name of the index.",
                  remote
                    | Bool
                    | doc "Whether the Vectorize index should be remote or not (only available under `--x-mixed-mode`)"
                    | optional,
                }
              | doc m%"
                Specifies Vectorize indexes that are bound to this Worker environment.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#vectorize-indexes
              "%
              | optional,
            version_metadata
              | { binding | String, }
              | doc "Binding to the Worker Version's metadata"
              | optional,
            workers_dev
              | Bool
              | doc m%"
                Whether we use <name>.<subdomain>.workers.dev to test and deploy your Worker.
                
                For reference, see https://developers.cloudflare.com/workers/wrangler/configuration/#workersdev
              "%
              | optional,
            workflows
              | Array (
                std.contract.Sequence
                  [ refs."definitions.WorkflowBinding", { _ | Dyn } ]
              )
              | doc m%"
                A list of workflows that your Worker should be bound to.
                
                NOTE: This field is not automatically inherited from the top level environment, and so must be specified in every named environment.
              "%
              | optional,
          },
      "definitions.Route" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.ZoneIdRoute", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ZoneNameRoute", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CustomDomainRoute", { _ | Dyn } ]
            ],
      "definitions.Rule" =
        {
            fallthrough | Bool | optional,
            globs | Array String,
            type | refs."definitions.ConfigModuleRuleType" | String,
          },
      "definitions.TailConsumer" =
        {
            environment
              | String
              | doc "(Optional) The environment of the service."
              | optional,
            service
              | String
              | doc "The name of the service tail events will be forwarded to.",
          },
      "definitions.TypeOf%3CZodUnion%3C%5Bdef-class-1315922706-6501-8772-1315922706-0-54395%2Cdef-class-1315922706-9299-10989-1315922706-0-54395%2Cdef-class-1315922706-12937-13365-1315922706-0-54395%2Cdef-class-1315922706-15083-15273-1315922706-0-54395%5D%3E%3E" =
        std.contract.any_of [ js2n.Null, Bool, Number, String ],
      "definitions.UserLimits" =
        {
            cpu_ms
              | Number
              | doc "Maximum allowed CPU time for a Worker's invocation in milliseconds",
          },
      "definitions.WorkflowBinding" =
        {
            binding
              | String
              | doc "The name of the binding used to refer to the Workflow",
            class_name | String | doc "The exported class name of the Workflow",
            name | String | doc "The name of the Workflow",
            remote
              | Bool
              | doc "Whether the Workflow should be remote or not (only available under `--x-mixed-mode`)"
              | optional,
            script_name
              | String
              | doc "The script where the Workflow is defined (if it's external to this Worker)"
              | optional,
          },
      "definitions.ZoneIdRoute" =
        {
            custom_domain | Bool | optional,
            pattern | String,
            zone_id | String,
          },
      "definitions.ZoneNameRoute" =
        {
            custom_domain | Bool | optional,
            pattern | String,
            zone_name | String,
          },
    }
    in
  refs."definitions.RawConfig"