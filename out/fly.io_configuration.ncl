# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.http_checks" =
        Array
            {
              grace_period
                | std.contract.any_of [ std.number.Integer, String ]
                | doc "The time to wait after a VM starts before checking its health. Units are milliseconds unless you specify them like `10s` or `1m`."
                | optional,
              headers
                | { _ | Dyn }
                | doc "Set key/value pairs of HTTP headers to pass along with the check request."
                | optional,
              interval
                | std.contract.any_of [ std.number.Integer, String ]
                | doc "Length of the pause between connectivity checks. Units are milliseconds unless you specify them like `10s` or `1m`."
                | optional,
              method
                | String
                | doc "The HTTP method to be used for the check."
                | optional,
              path
                | String
                | doc "The path of the URL to be requested."
                | optional,
              protocol
                | std.enum.TagOrString
                | [| 'https, 'http |]
                | doc "The protocol to be used (`http` or `https`)"
                | optional,
              restart_limit
                | std.number.Integer
                | doc "The number of consecutive check failures to allow before attempting to restart the VM. The default is `0`, which disables restarts based on failed health checks."
                | optional,
              timeout
                | std.contract.any_of [ std.number.Integer, String ]
                | doc "The maximum time a connection can take before being reported as failing its healthcheck. Units are milliseconds unless you specify them like `10s` or `1m`."
                | optional,
              tls_skip_verify
                | Bool
                | doc "When set to `true` (and `protocol` is set to `https`), skip verifying the certificates sent by the server."
                | optional,
              ..
            },
      "definitions.metrics" =
        {
            path
              | String
              | doc "Path under which the metrics are exposed, typically '/metrics'."
              | optional,
            port
              | std.number.Integer
              | doc "Port on which the application exposes metrics data."
              | optional,
            processes
              | Array String
              | doc "List of process names that this metrics configuration applies to."
              | optional,
            ..
          },
      "definitions.mounts" =
        {
            auto_extend_size_increment
              | String
              | doc "The size increment by which to extend the volume."
              | optional,
            auto_extend_size_limit
              | String
              | doc "The total amount to extend a volume."
              | optional,
            auto_extend_size_threshold
              | std.number.Integer
              | doc "The usage percentage threshold that triggers volume extension."
              | optional,
            destination
              | String
              | doc "The path at which the `source` volume should be mounted in the running app VM.",
            initial_size
              | std.contract.any_of [ String, std.number.Integer ]
              | doc "The size of the volume to be created on first deploy."
              | optional,
            processes
              | Array (js2n.string.MinLength 1)
              | doc "The name of the process(es) to which this mount should be applied. See [multiple processes](https://community.fly.io/t/preview-multi-process-apps-get-your-workers-here/2316)."
              | optional,
            snapshot_retention
              | std.number.Integer
              | doc "The number of snapshots to retain for the volume. Snapshots are taken daily."
              | optional,
            source
              | String
              | doc m%"
                The name of the volume to mount as shown in `fly volumes list`.
                
                A volume of this name *must exist* in each of the app regions. If there's more than one volume in the target region with the same one, one will be picked randomly.
              "%,
          },
      "definitions.services" =
        {
            auto_start_machines
              | Bool
              | doc "Whether to automatically start an application’s Machines when a new request is made to the application and there’s no excess capacity, per region. If there’s only one Machine in a region, then it’s started whenever a request is made to the application. The default if not set is true."
              | optional,
            auto_stop_machines
              | std.enum.TagOrString
              | [| 'suspend, 'stop, 'off |]
              | doc "The action, if any, that Fly Proxy should take when the app is idle for several minutes. Options are \"off\", \"stop\", or \"suspend\"."
              | optional,
            concurrency
              | {
                hard_limit
                  | std.number.Integer
                  | doc "When an application instance is __at__ or __over__ this number, the system will bring up another instance."
                  | optional,
                soft_limit
                  | std.number.Integer
                  | doc "When an application instance is __at__ or __over__ this number, the system is likely to bring up another instance."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'requests, 'connections |]
                  | optional,
                ..
              }
              | doc "Control autoscaling metrics (connections or requests) and limits (hard and soft)."
              | optional,
            http_checks | refs."definitions.http_checks" | Array Dyn | optional,
            internal_port
              | std.number.Integer
              | doc "The port this application listens on to communicate with clients. The default is 8080. We recommend applications use the default."
              | optional,
            machine_checks
              | Array
                {
                  command | Array String,
                  entrypoint | Array String,
                  image | String,
                  kill_signal | String,
                  kill_timeout | js2n.string.Matches "^\\d+s$",
                  ..
                }
              | optional,
            min_machines_running
              | std.number.Integer
              | doc "The number of Machines to keep running, in the primary region only, when auto_stop_machines = true."
              | optional,
            ports
              | Array
                {
                  end_port | std.number.Integer | optional,
                  force_https
                    | Bool
                    | doc "Force HTTP connections to HTTPS. `force_https` requires the `http` handler in the `handlers` section."
                    | optional,
                  handlers
                    | Array (
                      std.contract.Sequence
                        [
                          js2n.string.MinLength 1,
                          std.enum.TagOrString,
                          [| 'edge_http, 'pg_tls, 'proxy_proto, 'tls, 'http |]
                        ]
                    )
                    | doc m%"
                      An array of strings that select handlers to terminate the connection at the edge.
                      
                      Valid options: http, tls, proxy_proto, pg_tls, edge_http.
                    "%
                    | optional,
                  http_options
                    | {
                      h2_backend | Bool | optional,
                      response
                        | {
                          headers
                            | {
                              _ | std.contract.any_of
                                [ Bool, String, Array String ]
                            }
                            | optional,
                          pristine | Bool | optional,
                          ..
                        }
                        | optional,
                      ..
                    }
                    | optional,
                  port
                    | std.number.Integer
                    | doc "The port to accept traffic on. Valid ports: 1-65535"
                    | optional,
                  proxy_proto_options
                    | { version | String | optional, .. }
                    | optional,
                  start_port | std.number.Integer | optional,
                  tls_options
                    | {
                      alpn | Array String | optional,
                      default_self_signed | Bool | optional,
                      versions | Array String | optional,
                      ..
                    }
                    | optional,
                  ..
                }
              | doc "For each external port you want to accept connections on, add a `ports` section."
              | optional,
            protocol
              | std.enum.TagOrString
              | [| 'udp, 'tcp |]
              | doc "The protocol used to communicate with your application. Can be: `tcp` or `udp`."
              | optional,
            script_checks
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc m%"
                Health checks that run as one-off commands directly on the VM.
                
                This type of check is **deprecated**. See `tcp_checks` or `http_checks` for alternatives.
              "%
              | optional,
            tcp_checks
              | Array
                {
                  grace_period
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "The time to wait after a VM starts before checking its health. Units are milliseconds unless you specify them like `10s` or `1m`."
                    | optional,
                  interval
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "Length of the pause between connectivity checks. Units are milliseconds unless you specify them like `10s` or `1m`."
                    | optional,
                  restart_limit
                    | std.number.Integer
                    | doc "The number of consecutive TCP check failures to allow before attempting to restart the VM. The default is `0`, which disables restarts based on failed TCP health checks."
                    | optional,
                  timeout
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "The maximum time a connection can take before being reported as failing its healthcheck. Units are milliseconds unless you specify them like `10s` or `1m`."
                    | optional,
                  ..
                }
              | doc "Basic TCP connection health checks. This is the default check that runs against the configured `internal_port`."
              | optional,
            ..
          },
      "definitions.statics" =
        {
            guest_path
              | String
              | doc "The path inside your container where the assets to serve are located.",
            url_prefix
              | String
              | doc "The URL prefix that should serve the static assets.",
          },
    }
    in
  {
      app | String | doc "Fly.io application name" | optional,
      build
        | {
          args
            | { _ | String }
            | doc m%"
              Build arguments passed to both Dockerfile and Buildpack builds. These arguments are **not available** on VMs at runtime.
              ```toml
              [build.args]
                USER = "julieta"
                MODE = "production"
              ```
            "%
            | optional,
          build-target
            | String
            | doc "Specify the target stage for [multistage Dockerfile builds](https://docs.docker.com/develop/develop-images/multistage-build/)."
            | optional,
          builder
            | String
            | doc "Builder Docker image to be used with the 'buildpacks' option"
            | optional,
          buildpacks
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "Buildpacks to be run by the 'builder' Docker image"
            | optional,
          dockerfile
            | String
            | doc "Dockerfile used for builds. Defaults to './Dockerfile'"
            | optional,
          ignorefile
            | String
            | doc "A relative path to a .dockerignore file. Defaults to './.dockerignore'"
            | optional,
          image
            | String
            | doc "Docker image to be deployed (skips the build process)"
            | optional,
        }
        | doc "Build configuration options. See docs at https://fly.io/docs/reference/builders."
        | optional,
      console_command
        | String
        | doc "Command to run when you execute 'fly console'. This opens your framework's console in a new, dedicated Machine."
        | optional,
      deploy
        | {
          max_unavailable
            | Number
            | doc "For rolling deploys, you can use max_unavailable to control how many Machines can be down at a time."
            | optional,
          release_command
            | String
            | doc m%"
              Command to run after a build, with access to the production environment, but before deployment. Non-zero exit status will abort the deployment.
              
              ```toml
              [deploy]
                release_command ="bundle exec rails db:migrate"
              ```
            "%
            | optional,
          release_command_vm
            | {
              cpu_kind
                | std.enum.TagOrString
                | [| 'performance, 'shared |]
                | optional,
              cpus
                | std.number.Integer
                | js2n.Enum [ 1, 2, 4, 8, 16 ]
                | optional,
              memory
                | std.contract.any_of [ String, std.number.Integer ]
                | optional,
              size
                | std.enum.TagOrString
                | [|
                  'performance-16x,
                  'performance-8x,
                  'performance-4x,
                  'performance-2x,
                  'performance-1x,
                  'shared-cpu-8x,
                  'shared-cpu-4x,
                  'shared-cpu-2x,
                  'shared-cpu-1x
                |]
                | optional,
              ..
            }
            | doc "VM configuration to use when running the release command."
            | optional,
          strategy
            | std.enum.TagOrString
            | [| 'immediate, 'bluegreen, 'rolling, 'canary |]
            | doc "Strategy for replacing VMs during a deployment."
            | optional,
          wait_timeout
            | String
            | doc "Timeout for waiting for the Machine to be in a started state during a deploy."
            | optional,
        }
        | optional,
      env
        | { _ | String }
        | doc m%"
          Set non-sensitive information as environment variables in the application's [runtime environment](https://fly.io/docs/reference/runtime-environment/).
          For sensitive information, such as credentials or passwords, use the [secrets command](https://fly.io/docs/reference/secrets). For anything else though, the `env` section provides a simple way to set environment variables. Here's an example:
          ```toml
          [env]
            LOG_LEVEL = "debug"
            S3_BUCKET = "my-bucket"
          ```
        "%
        | optional,
      experimental
        | {
          auto_rollback
            | Bool
            | doc "Failed deployments should roll back automatically to the previous successfully deployed release. Defaults to `true`"
            | optional,
          cmd
            | std.contract.any_of [ String, Array String ]
            | doc m%"
              Override the server command (CMD) set by the Dockerfile. Specify as an array of strings:
              
              ```toml
              cmd = ["path/to/command", "arg1", "arg2"]
              ```
            "%
            | optional,
          entrypoint
            | std.contract.any_of [ String, Array String ]
            | doc m%"
              Override the ENTRYPOINT set by the Dockerfile. Specify as an array of strings:
              
              ```toml
              entrypoint = ["path/to/command", "arg1", "arg2"]
              ```
            "%
            | optional,
          private_network
            | Bool
            | doc "Enables private network access to the Fly organization. Defaults to `true`."
            | optional,
          ..
        }
        | doc "Flags and features that are subject to change, deprecation or promotion to the main configuration."
        | optional,
      files
        | Array
          {
            guest_path
              | String
              | doc "The path in the guest where the file will be written.",
            local_path
              | String
              | doc "Local path of the file to be written to the guest."
              | optional,
            processes
              | Array String
              | doc "List of process names that this file configuration applies to."
              | optional,
            raw_value
              | String
              | doc "Base64 encoded content to be written to the file."
              | optional,
            secret_name
              | String
              | doc "The name of the secret whose value will be written to the file."
              | optional,
            ..
          }
        | optional,
      host_dedication_id | String | optional,
      http_checks | refs."definitions.http_checks" | optional,
      http_service
        | {
          auto_start_machines
            | Bool
            | doc "Whether to automatically start an application’s Machines when a new request is made to the application and there’s no excess capacity, per region."
            | optional,
          auto_stop_machines
            | std.enum.TagOrString
            | [| 'suspend, 'stop, 'off |]
            | doc "Whether to automatically stop or suspend an application’s Machines when there’s excess capacity, per region. Options are \"off\", \"stop\", and \"suspend\". If there’s only one Machine in a region, then the Machine is stopped or suspended if it has no traffic. The Fly Proxy runs a process to automatically stop Machines every few minutes. The default if not set is \"off\"."
            | optional,
          checks | refs."definitions.http_checks" | optional,
          concurrency
            | {
              hard_limit
                | std.number.Integer
                | doc "When a Fly Machine is at or over this number of concurrent connections or requests, the system will stop sending new traffic to that Machine."
                | optional,
              soft_limit
                | std.number.Integer
                | doc "When a Fly Machine is at or over this number of concurrent connections or requests, the system will deprioritize sending new traffic to that Machine."
                | optional,
              type
                | std.enum.TagOrString
                | [| 'requests, 'connections |]
                | doc "Specifies what metric is used to determine when to auto start or stop, or when a given Machine should receive more or less traffic (load balancing)."
                | optional,
              ..
            }
            | optional,
          force_https
            | Bool
            | doc "A Boolean which determines whether to enforce HTTP to HTTPS redirects."
            | optional,
          http_options
            | {
              h2_backend
                | Bool
                | doc "Indicates whether the app supports HTTP/2 cleartext (H2C) with prior knowledge or not."
                | optional,
              response
                | {
                  headers
                    | { _ | std.contract.any_of [ Bool, String, Array String ] }
                    | doc "Add or remove HTTP response headers."
                    | optional,
                  pristine
                    | Bool
                    | doc "Configures Fly Proxy to not add any Fly headers to HTTP responses."
                    | optional,
                  ..
                }
                | optional,
              ..
            }
            | optional,
          internal_port
            | std.number.Integer
            | doc "The port this service (and application) will use to communicate with clients. Default is 8080."
            | optional,
          min_machines_running
            | std.number.Integer
            | doc "The number of Machines to keep running, in the primary region only, when `auto_stop_machines` is true."
            | optional,
          tls_options
            | {
              alpn | Array String | optional,
              default_self_signed
                | Bool
                | doc "When `true`, serve a self-signed certificate if no certificate exists. Default is `false`."
                | optional,
              versions | Array String | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      kill_signal
        | std.enum.TagOrString
        | [|
          'SIGSTOP,
          'SIGKILL,
          'SIGUSR2,
          'SIGUSR1,
          'SIGQUIT,
          'SIGTERM,
          'SIGINT
        |]
        | doc "Signal to send to a process to shut it down gracefully. Default is SIGINT."
        | optional,
      kill_timeout
        | std.contract.any_of [ std.number.Integer, String ]
        | doc "Seconds to wait before forcing a VM process to exit. Default is 5 seconds."
        | optional,
      metrics
        | std.contract.any_of
          [ Array refs."definitions.metrics", refs."definitions.metrics" ]
        | optional,
      mounts
        | std.contract.any_of
          [ refs."definitions.mounts", Array refs."definitions.mounts" ]
        | optional,
      primary_region
        | String
        | doc "The primary region where the application will be deployed. This setting also sets the PRIMARY_REGION environment variable."
        | optional,
      processes | { _ | String } | optional,
      services
        | std.contract.any_of
          [ refs."definitions.services", Array refs."definitions.services" ]
        | optional,
      statics
        | std.contract.any_of
          [ refs."definitions.statics", Array refs."definitions.statics" ]
        | doc "The `statics` sections expose static assets built into your application's container to Fly's Anycast network. You can serve HTML files, Javascript, and images without needing to run a web server inside your container."
        | optional,
      swap_size_mb
        | std.number.Integer
        | doc "Size in megabytes for the swap file on the VM. Helps in handling memory spikes."
        | optional,
      vm
        | Array
          {
            cpu_kind
              | std.enum.TagOrString
              | [| 'performance, 'shared |]
              | optional,
            cpus | std.number.Integer | js2n.Enum [ 1, 2, 4, 8, 16 ] | optional,
            gpu_kind
              | std.enum.TagOrString
              | [| 'l40s, 'a100-80gb, 'a100-40gb, 'a10 |]
              | optional,
            gpus | std.number.Integer | js2n.Enum [ 1, 2, 4, 8 ] | optional,
            host_dedication_id | String | optional,
            kernel_args
              | std.contract.any_of [ Array String, String ]
              | optional,
            memory
              | std.contract.any_of [ String, std.number.Integer ]
              | optional,
            processes | Array String | optional,
            size
              | std.enum.TagOrString
              | [|
                'performance-16x,
                'performance-8x,
                'performance-4x,
                'performance-2x,
                'performance-1x,
                'shared-cpu-8x,
                'shared-cpu-4x,
                'shared-cpu-2x,
                'shared-cpu-1x
              |]
              | optional,
            ..
          }
        | optional,
      ..
    }