# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.kafka.properties.sasl" =
        {
            access_key | String | doc "AWS Access Key ID" | optional,
            is_token
              | Bool
              | doc "If true, suffixes the tokenauth=true extra attribute to the initial authentication message. Set this to true if the user and pass are from a delegation token. Optional for the SHA auth types. Defaults to false."
              | optional,
            mechanism
              | std.enum.TagOrString
              | [| 'SCRAM-SHA-512, 'SCRAM-SHA-256, 'plain, 'aws_msk_iam |]
              | doc "Mechanism used for the authentication."
              | optional,
            nonce
              | String
              | doc "Optional for the SHA auth types. Empty by default."
              | optional,
            password | String | doc "Password for authentication." | optional,
            secret_key | String | doc "AWS Access Key Secret" | optional,
            session_token
              | String
              | doc "SessionToken, if non-empty, is a session / security token to use for authentication. See the following link for more details: https://docs.aws.amazon.com/STS/latest/APIReference/welcome.html"
              | optional,
            user_agent
              | String
              | doc "UserAgent is the user agent to for the client to use when connecting to Kafka, overriding the default franz-go/<runtime.Version()>/<hostname>. Setting a UserAgent allows authorizing based on the aws:UserAgent condition key; see the following link for more details: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-useragent"
              | optional,
            username | String | doc "Username for authentication." | optional,
            zid
              | String
              | doc "Zid is an optional authorization ID to use in authentication."
              | optional,
          },
      "properties.redis" =
        {
            addrs
              | js2n.array.MinItems 1
              | Array (js2n.string.MinLength 1)
              | doc "The addresses or hostnames of the Redis server/cluster to connect to. If the number of addresses is 1 and master_name is empty, a single-node Redis Client will be returned, otherwise a ClusterClient or FailoverClient will be returned, depending on whether `master_name` is provided."
              | optional,
            db
              | std.number.Integer
              | js2n.number.Maximum 10
              | doc "The Redis DB index to select when connecting."
              | optional,
            dial_timeout
              | js2n.Always
              | doc "The timeout when attempting to connect to Redis. Default or zero means 5s."
              | optional,
            idle_check_freq
              | js2n.Always
              | doc "The time between checks for idle connections to Redis. Default or zero means 1m."
              | optional,
            idle_timeout
              | js2n.Always
              | doc "The timeout of idle connections to Redis. Default or zero means 5m."
              | optional,
            master_name
              | String
              | doc "The name of the master Redis node. A Sentinel-backed FailoverClient will be returned if this value is provided."
              | optional,
            max_conn_age
              | js2n.Always
              | doc "The maximum age of open Redis connections. Default or zero means no limit."
              | optional,
            max_retries
              | std.number.Integer
              | doc "The maximum number of retry attempts when connecting to Redis. Default or zero means 3."
              | optional,
            max_retry_backoff
              | js2n.Always
              | doc "The maximum backoff duration when retrying connection attempts. Default or zero means 512s."
              | optional,
            min_idle_conns
              | std.number.Integer
              | doc "The minimum number of connections to keep in the pool. Defaults to 0, which means no idle connection pool."
              | optional,
            min_retry_backoff
              | js2n.Always
              | doc "The minimum backoff duration when retrying connection attempts. Default or zero means 8s."
              | optional,
            password
              | String
              | doc "The password to provide for Redis authentication."
              | optional,
            pool_size
              | std.number.Integer
              | doc "The number of connections to keep in the Redis connection pool. Default or zero means 10 per logical CPU."
              | optional,
            pool_timeout | js2n.Always | optional,
            read_only
              | Bool
              | doc "Whether the Redis connection is in read-only mode. See https://redis.io/docs/latest/commands/readonly."
              | optional,
            read_timeout
              | js2n.Always
              | doc "The timeout when reading from a Redis node. Default or zero means 3s."
              | optional,
            route_by_latency
              | Bool
              | doc "Whether to route traffic to Redis nodes based on latency."
              | optional,
            route_randomly
              | Bool
              | doc "Whether to randomly route traffic to Redis nodes."
              | optional,
            sentinel_password
              | String
              | doc "The password for Redis Sentinel."
              | optional,
            tls
              | {
                cert | js2n.Always | optional,
                client_auth_type | js2n.Always | optional,
                key | js2n.Always | optional,
                root_ca | js2n.Always,
              }
              | doc "GRPC TLS configuration"
              | optional,
            username
              | String
              | doc "The username to provide for Redis authentication."
              | optional,
            write_timeout
              | js2n.Always
              | doc "The timeout when writing to a Redis node. Default or zero means equivalent to `read_timeout`."
              | optional,
          },
      "properties.tcp.properties.pool" =
        {
            allocate_timeout
              | js2n.Always
              | doc "The maximum duration an incoming job is allowed to wait for a worker. Zero or undefined defaults to 60s."
              | optional,
            command
              | String
              | doc "The command to use for the pool. If defined, this will override the value in `server.command` for this pool only."
              | optional,
            debug
              | Bool
              | doc "In debug mode, workers are created immediately before RR passes jobs to them, exiting once the job completes. This defeats the purpose of a worker pool and should only be used during development."
              | optional,
            destroy_timeout
              | js2n.Always
              | doc "The maximum duration to wait for worker termination/deallocation. If a worker has not stopped after this period, the process will be killed. Zero or undefined defaults to 60s."
              | optional,
            dynamic_allocator
              | {
                idle_timeout
                  | js2n.Always
                  | doc "The duration after which idle dynamically allocated workers will be deallocated."
                  | optional,
                max_workers
                  | std.number.Integer
                  | js2n.number.Maximum 100
                  | js2n.number.Minimum 1
                  | doc "The maximum number of workers that may be dynamically allocated."
                  | optional,
                spawn_rate
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "The maximum number of workers that may be spawned per NoFreeWorkers error (limited to `max_workers`)."
                  | optional,
              }
              | doc "Configuration options for auto-scaling/dynamic workers. If not defined, worker auto-scaling is disabled."
              | optional,
            max_jobs
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The maximum number of executions a worker may perform before it is terminated and a new process is started. Zero or undefined means no limit."
              | optional,
            max_queue_size
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The maximum size of the internal job queue. This is the limit of pending, incoming jobs that await worker allocation. After the limit is reached, all additional jobs will be rejected with an error. Zero or undefined means no limit."
              | optional,
            num_workers
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "The number of worker processes to start. Zero or undefined defaults to the number of logical CPUs."
              | optional,
            reset_timeout
              | js2n.Always
              | doc "The maximum duration to wait for the `pool.Reset` operation (`./rr reset`) to complete. Zero or undefined defaults to 60s."
              | optional,
            stream_timeout
              | js2n.Always
              | doc "The maximum duration to wait for stream cancellation. Zero or undefined defaults to 60s."
              | optional,
            supervisor
              | {
                exec_ttl
                  | js2n.Always
                  | doc "The maximum duration any job (hard limit) is allowed to take. If a job exceeds this time limit, the worker processing it will be terminated. Zero or undefined means no limit."
                  | optional,
                idle_ttl
                  | js2n.Always
                  | doc "The maximum duration a worker may spend in idle mode after first processing a job (soft limit). If a worker exceeds this value during execution, it will be terminated afterward. Zero or undefined means no limit."
                  | optional,
                max_worker_memory
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "The maximum memory allocation allowed for a worker (soft limit) in MB. If a worker exceeds this value during execution, it will be terminated afterward. This should generally be set to a value lower than your PHP memory_limit, if one is specified. Zero or undefined means no limit."
                  | optional,
                ttl
                  | js2n.Always
                  | doc "The maximum duration a worker is allowed to live (soft limit). If a worker exceeds this limit while processing a job, it will be terminated afterward. Zero or undefined means no limit."
                  | optional,
                watch_tick
                  | js2n.Always
                  | doc "Duration between worker state checks. Defaults to 5s."
                  | optional,
              }
              | doc "The pool supervisor is used to control workers. If not defined, the pool has no supervision."
              | optional,
          },
    }
    in
  {
      amqp
        | {
          addr
            | js2n.string.MinLength 1
            | doc "AMQP URI to connect to the rabbitmq server. See https://www.rabbitmq.com/uri-spec.html"
            | optional,
          tls
            | {
              cert
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              client_auth_type
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              key
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              root_ca
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              ..
            }
            | doc "TLS configuration options for AMQP."
            | optional,
        }
        | doc "Configuration options for the AMQP driver."
        | optional,
      beanstalk
        | {
          addr | String | doc "The address of the Beanstalk server." | optional,
          timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Connection timeout for the Beanstalk server."
            | optional,
        }
        | doc "Configuration options for the Beanstalk driver."
        | optional,
      centrifuge
        | {
          grpc_api_address
            | js2n.string.MinLength 1
            | doc "The address/port of the gRPC server API."
            | optional,
          name
            | js2n.string.MinLength 1
            | doc "Your application name."
            | optional,
          pool | refs."properties.tcp.properties.pool" | optional,
          proxy_address
            | js2n.string.MinLength 1
            | doc "The address of the Centrifugo proxy server."
            | optional,
          tls
            | {
              cert
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              key
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            }
            | doc "TLS settings"
            | optional,
          use_compressor
            | Bool
            | doc "Whether to use gRPC gzip compressor."
            | optional,
          version
            | js2n.string.MinLength 1
            | doc "Your application version."
            | optional,
        }
        | doc "All the valid configuration parameters for the Centrifugo plugin for RoadRunner."
        | optional,
      fileserver
        | {
          address | js2n.string.MinLength 1 | doc "The address to listen on.",
          calculate_etag
            | Bool
            | doc "Whether to calculate ETag for the file and add the ETag header. See https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/ETag"
            | optional,
          serve
            | js2n.array.MinItems 1
            | Array
              {
                bytes_range
                  | Bool
                  | doc "Enable range requests. See https://developer.mozilla.org/en-US/docs/Web/HTTP/Range_requests"
                  | optional,
                cache_duration
                  | std.number.Integer
                  | doc "Expiration duration for inactive file handlers, given in seconds. Use any negative number (e.g. `-1`) to disable."
                  | optional,
                compress
                  | Bool
                  | doc "When set to true, the server attempts to minimize CPU usage by caching compressed files."
                  | optional,
                max_age
                  | std.number.Integer
                  | doc "The value for the Cache-Control HTTP-header, given in seconds. The header is not sent if this value is zero or undefined."
                  | optional,
                prefix
                  | js2n.string.MinLength 1
                  | doc "Files matching this prefix will be served with this configuration. Prefixes must begin with a forward slash.",
                root
                  | String
                  | doc "Directory to serve these files from. This can be an absolute path or a path relative to the RR application directory. Defaults to the root of the RR application directory."
                  | optional,
              }
            | doc "The URL prefixes to serve as static files. At least one entry is required.",
          stream_request_body
            | Bool
            | doc "Whether to stream files larger than 4KB."
            | optional,
          weak
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc "Whether to use only the filename when calculating the ETag value. If `false`, the entire file content is used."
            | optional,
        }
        | doc "All the valid configuration parameters for the FileServer plugin for RoadRunner."
        | optional,
      grpc
        | {
          listen
            | js2n.string.MinLength 1
            | doc "gRPC address to listen on. Supports both TCP and Unix sockets.",
          max_concurrent_streams
            | std.number.Integer
            | doc "The maximum number of concurrent streams. Empty or 0 defaults to 10."
            | optional,
          max_connection_age
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The maximum duration a connection may exist before it will be closed by sending a GoAway. A random jitter of +/-10% will be added to MaxConnectionAge to spread out connection storms. Defaults to infinite."
            | optional,
          max_connection_age_grace
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The duration after MaxConnectionAge after which the connection will be forcibly closed. Defaults to infinite."
            | optional,
          max_connection_idle
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc " MaxConnectionIdle is a duration for the amount of time after which an idle connection would be closed by sending a GoAway. Idle duration is defined by the most recent time the number of outstanding RPCs became zero or since the connection was established. Defaults to infinite."
            | optional,
          max_recv_msg_size
            | std.number.Integer
            | doc "Maximum receive message size in MB."
            | optional,
          max_send_msg_size
            | std.number.Integer
            | doc "Maximum send message size in MB."
            | optional,
          ping_time
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Duration of no activity after which the server pings the client to see if the transport is still alive. If set below 1s, a minimum value of 1s will be used instead."
            | optional,
          pool | refs."properties.tcp.properties.pool" | optional,
          proto
            | js2n.array.MinItems 1
            | Array (js2n.string.MinLength 1)
            | doc "Proto file(s) to use. Multiple files are supported. Wildcards are allowed in the proto field.",
          timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The duration to wait for a response to a keepalive check, after which the connection is closed."
            | optional,
          tls
            | {
              cert
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              client_auth_type
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              key
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              root_ca
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
            }
            | doc "GRPC TLS configuration"
            | optional,
        }
        | doc "All the valid configuration parameters for the gRPC plugin for RoadRunner."
        | optional,
      http
        | {
          access_logs
            | Bool
            | doc "Whether to enable HTTP access logs."
            | optional,
          address
            | js2n.string.MinLength 1
            | doc "Host and/or port to listen on for HTTP traffic. If omitted, RoadRunner will not listen for HTTP requests."
            | optional,
          fcgi
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          headers
            | {
              cors
                | {
                  allow_credentials
                    | Bool
                    | doc "Controls the value of 'Access-Control-Allow-Credentials'."
                    | optional,
                  allowed_headers
                    | String
                    | doc "Controls the value of 'Access-Control-Allow-Headers'."
                    | optional,
                  allowed_methods
                    | String
                    | doc "Controls the value of 'Access-Control-Allow-Methods'. Provide a comma-separated string of HTTP verbs."
                    | optional,
                  allowed_origin
                    | String
                    | doc "Controls the value of 'Access-Control-Allow-Origin'."
                    | optional,
                  allowed_origin_regex
                    | String
                    | doc "Controls the value of 'Access-Control-Allow-Origin' header value, but evaluated as regex."
                    | optional,
                  exposed_headers
                    | String
                    | doc "Controls the value of 'Access-Control-Expose-Headers'. Provide a comma-separated list of HTTP headers."
                    | optional,
                  max_age
                    | std.number.Integer
                    | doc "Controls the value of 'Access-Control-Max-Age' (in seconds)."
                    | optional,
                  ..
                }
                | doc "Controls which CORS headers are returned. Additional headers `Vary: Origin`, `Vary: Access-Control-Request-Method` and `Vary: Access-Control-Request-Headers` will be added to responses. Omit this section to disable CORS headers."
                | optional,
              request
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Custom HTTP headers to add to every request passed to PHP."
                | optional,
              response
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Custom HTTP headers to add to every response from PHP."
                | optional,
            }
            | doc "HTTP header configuration."
            | optional,
          http2
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          http3
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          internal_error_code
            | std.number.Integer
            | js2n.number.Maximum 599
            | js2n.number.Minimum 100
            | doc "HTTP status code to use for internal RoadRunner errors. Defaults to 500 if omitted."
            | optional,
          max_request_size
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Maximum request size in MB. Defaults to 1 GB if zero or omitted."
            | optional,
          middleware
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'otel,
                    'proxy_ip_parser,
                    'cache,
                    'http_metrics,
                    'sendfile,
                    'static,
                    'gzip,
                    'headers
                  |]
                ]
            )
            | doc "List of middleware to load for the HTTP plugin, executed in the specified order."
            | optional,
          pool | refs."properties.tcp.properties.pool" | optional,
          raw_body
            | Bool
            | doc "Whether to send the raw, encoded body for `application/x-www-form-urlencoded` content. Defaults to sending decoded content to PHP workers."
            | optional,
          ssl
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          static
            | {
              allow
                | Array (js2n.string.MinLength 1)
                | doc "File extensions of files that may be served. Empty/undefined allows all files, except files specified in `forbid`."
                | optional,
              calculate_etag
                | Bool
                | doc "Whether to enable ETag computation for static files."
                | optional,
              dir
                | String
                | doc "Path to the directory with static assets. Defaults to the current working directory. Empty/undefined and `.` are equal and are both treated as current directory."
                | optional,
              forbid
                | Array (js2n.string.MinLength 1)
                | doc "File extensions of files that must not be served. Empty/undefined disallows no files. If files are specified in both `forbid` and `allow`, they will be disallowed. Defaults to an empty array, disallowing no files."
                | optional,
              request
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Custom HTTP headers to add to every request for static files."
                | optional,
              response
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Custom HTTP headers to add to every response from static files."
                | optional,
              weak
                | Bool
                | doc "Whether to use a weak generator (/W), which uses only the filename to generate a CRC32 sum for et ETag. Disable to use the file contents."
                | optional,
            }
            | doc "Configuration options for serving static files."
            | optional,
          trusted_subnets
            | Array String
            | doc "List of subnets from which incoming requests are allowed. Defaults to typical private network ranges (192.168.*, 10.0.*, and 172.16.*) and local/loopback interfaces (127.*)."
            | optional,
          uploads
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
        }
        | doc "All the valid configuration parameters for the http plugin for RoadRunner."
        | optional,
      jobs
        | {
          consume
            | Array (js2n.string.Matches "^[a-zA-Z0-9._-]+$")
            | doc "A list of pipelines to be consumed by the server automatically when starting. You can omit this list if you want to start consuming manually. Each item in this list must be defined as a key under `pipelines`."
            | optional,
          num_pollers
            | std.number.Integer
            | js2n.number.Minimum 1
            | doc "Number of threads which will try to obtain jobs from the priority queue. Default is the number of workers in the pool +1. **Deprecated:** This will be removed in a future version."
            | optional,
          pipeline_size
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Size of the internal priority queue. If the internal priority queue is full, you cannot send (push) additional jobs to the queue. If you set this value to zero or omit it, it defaults to 1 million."
            | optional,
          pipelines
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^[a-zA-Z0-9._-]+$" =
                        js2n.OneOf
                            [
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      consumer_id = String,
                                                      delete_queue_on_stop =
                                                        Bool,
                                                      durable = Bool,
                                                      exchange = String,
                                                      exchange_auto_delete =
                                                        Bool,
                                                      exchange_durable = Bool,
                                                      exchange_type = String,
                                                      exclusive = Bool,
                                                      multiple_ack = Bool,
                                                      prefetch =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      queue =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      queue_auto_delete = Bool,
                                                      queue_headers =
                                                        std.contract.Sequence
                                                            [
                                                              js2n.record.MinProperties
                                                                1,
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'None,
                                                                  patterns =
                                                                    {
                                                                        "^[a-zA-Z0-9._-]+$" =
                                                                          js2n.string.MinLength
                                                                              1,
                                                                      },
                                                                  properties =
                                                                    {},
                                                                  required = {},
                                                                }
                                                            ],
                                                      redial_timeout =
                                                        std.number.Integer,
                                                      requeue_on_fail = Bool,
                                                      routing_key = String,
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'amqp |]
                                              ],
                                      },
                                  required = { driver = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      prefetch =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      reserve_timeout =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      tube = String,
                                                      tube_priority =
                                                        std.number.Integer,
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'beanstalk |]
                                              ],
                                      },
                                  required = { driver = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      file =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      permissions =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      prefetch =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'boltdb |]
                                              ],
                                      },
                                  required = { driver = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      auto_create_topics_enable =
                                                        Bool,
                                                      consumer_options =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    consume_partitions =
                                                                      std.contract.Sequence
                                                                          [
                                                                            js2n.record.MinProperties
                                                                              1,
                                                                            js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'None,
                                                                                patterns =
                                                                                  {
                                                                                      "^[a-zA-Z0-9._-]+$" =
                                                                                        std.contract.Sequence
                                                                                            [
                                                                                              js2n.record.MinProperties
                                                                                                1,
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'None,
                                                                                                  patterns =
                                                                                                    {
                                                                                                        "^[0-9]+$" =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                js2n.Null,
                                                                                                                Bool,
                                                                                                                {
                                                                                                                  _ | Dyn
                                                                                                                },
                                                                                                                Array
                                                                                                                  Dyn,
                                                                                                                Number,
                                                                                                                String
                                                                                                              ],
                                                                                                      },
                                                                                                  properties =
                                                                                                    {},
                                                                                                  required =
                                                                                                    {},
                                                                                                }
                                                                                            ],
                                                                                    },
                                                                                properties =
                                                                                  {},
                                                                                required =
                                                                                  {},
                                                                              }
                                                                          ],
                                                                    consume_regexp =
                                                                      Bool,
                                                                    consumer_offset =
                                                                      js2n.record.Record
                                                                          {
                                                                            additional =
                                                                              'None,
                                                                            patterns =
                                                                              {},
                                                                            properties =
                                                                              {
                                                                                  type =
                                                                                    std.contract.Sequence
                                                                                        [
                                                                                          std.enum.TagOrString,
                                                                                          [|
                                                                                            'WithEpoch,
                                                                                            'Relative,
                                                                                            'AtStart,
                                                                                            'AfterMilli,
                                                                                            'At,
                                                                                            'AtEnd
                                                                                          |]
                                                                                        ],
                                                                                  value =
                                                                                    std.number.Integer,
                                                                                },
                                                                            required =
                                                                              {
                                                                                  type =
                                                                                    true,
                                                                                },
                                                                          },
                                                                    max_fetch_message_size =
                                                                      std.number.Integer,
                                                                    min_fetch_message_size =
                                                                      std.number.Integer,
                                                                    topics =
                                                                      js2n.array.ArrayOf
                                                                          (js2n.string.MinLength
                                                                            1),
                                                                  },
                                                              required = {},
                                                            },
                                                      group_options =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    block_rebalance_on_poll =
                                                                      Bool,
                                                                    group_id =
                                                                      js2n.string.MinLength
                                                                          1,
                                                                    instance_id =
                                                                      js2n.string.MinLength
                                                                          1,
                                                                  },
                                                              required =
                                                                {
                                                                    group_id =
                                                                      true,
                                                                  },
                                                            },
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      producer_options =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    compression_codec =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'zstd,
                                                                              'lz4,
                                                                              'snappy,
                                                                              'gzip
                                                                            |]
                                                                          ],
                                                                    delivery_timeout =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn,
                                                                            Number,
                                                                            String
                                                                          ],
                                                                    disable_idempotent =
                                                                      Bool,
                                                                    max_message_bytes =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Minimum
                                                                              0
                                                                          ],
                                                                    request_timeout =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn,
                                                                            Number,
                                                                            String
                                                                          ],
                                                                    required_acks =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'AllISRAck,
                                                                              'LeaderAck,
                                                                              'NoAck
                                                                            |]
                                                                          ],
                                                                    transaction_timeout =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn,
                                                                            Number,
                                                                            String
                                                                          ],
                                                                  },
                                                              required = {},
                                                            },
                                                      sasl_options =
                                                        refs."properties.kafka.properties.sasl",
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'kafka |]
                                              ],
                                      },
                                  required = { driver = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      prefetch =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'memory |]
                                              ],
                                      },
                                  required = { driver = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      delete_after_ack = Bool,
                                                      delete_stream_on_stop =
                                                        Bool,
                                                      deliver_new = Bool,
                                                      prefetch =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      rate_limit =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      stream = String,
                                                      subject = String,
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'nats |]
                                              ],
                                      },
                                  required = { driver = true, },
                                },
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    {
                                        config =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      attributes =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    ContentBasedDeduplication =
                                                                      Bool,
                                                                    DeduplicationScope =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'queue,
                                                                              'messageGroup
                                                                            |]
                                                                          ],
                                                                    DelaySeconds =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Maximum
                                                                              900,
                                                                            js2n.number.Minimum
                                                                              0
                                                                          ],
                                                                    FifoThroughputLimit =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'perMessageGroupId,
                                                                              'perQueue
                                                                            |]
                                                                          ],
                                                                    KmsDataKeyReusePeriodSeconds =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Maximum
                                                                              86400,
                                                                            js2n.number.Minimum
                                                                              60
                                                                          ],
                                                                    KmsMasterKeyId =
                                                                      String,
                                                                    MaximumMessageSize =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Maximum
                                                                              262144,
                                                                            js2n.number.Minimum
                                                                              1024
                                                                          ],
                                                                    MessageRetentionPeriod =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Maximum
                                                                              1209600,
                                                                            js2n.number.Minimum
                                                                              60
                                                                          ],
                                                                    Policy =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.Null,
                                                                            Bool,
                                                                            Number,
                                                                            String,
                                                                            {
                                                                              _ | Dyn
                                                                            },
                                                                            Array
                                                                              Dyn
                                                                          ],
                                                                    ReceiveMessageWaitTimeSeconds =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Maximum
                                                                              20,
                                                                            js2n.number.Minimum
                                                                              0
                                                                          ],
                                                                    RedriveAllowPolicy =
                                                                      js2n.record.Record
                                                                          {
                                                                            additional =
                                                                              'Some
                                                                                  Dyn,
                                                                            patterns =
                                                                              {},
                                                                            properties =
                                                                              {
                                                                                  redrivePermission =
                                                                                    std.contract.Sequence
                                                                                        [
                                                                                          std.enum.TagOrString,
                                                                                          [|
                                                                                            'byQueue,
                                                                                            'denyAll,
                                                                                            'allowAll
                                                                                          |]
                                                                                        ],
                                                                                  sourceQueueArns =
                                                                                    js2n.array.ArrayOf
                                                                                        String,
                                                                                },
                                                                            required =
                                                                              {},
                                                                          },
                                                                    RedrivePolicy =
                                                                      js2n.record.Record
                                                                          {
                                                                            additional =
                                                                              'Some
                                                                                  Dyn,
                                                                            patterns =
                                                                              {},
                                                                            properties =
                                                                              {
                                                                                  deadLetterTargetArn =
                                                                                    String,
                                                                                  maxReceiveCount =
                                                                                    std.contract.Sequence
                                                                                        [
                                                                                          std.number.Integer,
                                                                                          js2n.number.Minimum
                                                                                            1
                                                                                        ],
                                                                                },
                                                                            required =
                                                                              {},
                                                                          },
                                                                    SqsManagedSseEnabled =
                                                                      Bool,
                                                                    VisibilityTimeout =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.number.Integer,
                                                                            js2n.number.Maximum
                                                                              43200,
                                                                            js2n.number.Minimum
                                                                              0
                                                                          ],
                                                                  },
                                                              required = {},
                                                            },
                                                      error_visibility_timeout =
                                                        std.number.Integer,
                                                      max_messages_in_flight =
                                                        std.number.Integer,
                                                      message_group_id = String,
                                                      prefetch =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      "priority" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      queue =
                                                        std.contract.any_of
                                                            [
                                                              js2n.Null,
                                                              Bool,
                                                              { _ | Dyn },
                                                              Array Dyn,
                                                              Number,
                                                              String
                                                            ],
                                                      retain_failed_jobs = Bool,
                                                      skip_queue_declaration =
                                                        Bool,
                                                      tags =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some
                                                                    (js2n.string.MinLength
                                                                      1),
                                                              patterns = {},
                                                              properties = {},
                                                              required = {},
                                                            },
                                                      visibility_timeout =
                                                        std.number.Integer,
                                                      wait_time_seconds =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                20
                                                            ],
                                                    },
                                                required = {},
                                              },
                                        driver =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| 'sqs |]
                                              ],
                                      },
                                  required = { driver = true, },
                                }
                            ],
                      additionalProperties = js2n.Never,
                    },
                properties = {},
                required = {},
              }
            | doc "List of broker pipelines associated with the configured drivers. This option is not required since you can declare pipelines at runtime. The selected pipeline `driver` must be configured in the root of your configuration file."
            | optional,
          pool | refs."properties.tcp.properties.pool" | optional,
          timeout
            | std.number.Integer
            | doc "Request timeout (in seconds) when attempting to send jobs to the queue. If zero or omitted, this defaults to 60 seconds."
            | optional,
        }
        | doc "All the valid configuration parameters for the jobs plugin for RoadRunner."
        | optional,
      kafka
        | {
          brokers
            | js2n.array.MinItems 1
            | Array (js2n.string.MinLength 1)
            | doc "Kafka broker addresses."
            | optional,
          ping
            | {
              timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Timeout when pinging Kafka."
                | optional,
            }
            | optional,
          sasl
            | {
              access_key | String | doc "AWS Access Key ID" | optional,
              is_token
                | Bool
                | doc "If true, suffixes the tokenauth=true extra attribute to the initial authentication message. Set this to true if the user and pass are from a delegation token. Optional for the SHA auth types. Defaults to false."
                | optional,
              mechanism
                | std.enum.TagOrString
                | [| 'SCRAM-SHA-512, 'SCRAM-SHA-256, 'plain, 'aws_msk_iam |]
                | doc "Mechanism used for the authentication."
                | optional,
              nonce
                | String
                | doc "Optional for the SHA auth types. Empty by default."
                | optional,
              password | String | doc "Password for authentication." | optional,
              secret_key | String | doc "AWS Access Key Secret" | optional,
              session_token
                | String
                | doc "SessionToken, if non-empty, is a session / security token to use for authentication. See the following link for more details: https://docs.aws.amazon.com/STS/latest/APIReference/welcome.html"
                | optional,
              user_agent
                | String
                | doc "UserAgent is the user agent to for the client to use when connecting to Kafka, overriding the default franz-go/<runtime.Version()>/<hostname>. Setting a UserAgent allows authorizing based on the aws:UserAgent condition key; see the following link for more details: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-useragent"
                | optional,
              username | String | doc "Username for authentication." | optional,
              zid
                | String
                | doc "Zid is an optional authorization ID to use in authentication."
                | optional,
            }
            | doc "SASL configuration for Kafka."
            | optional,
          tls
            | {
              cert
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              client_auth_type
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              key
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              root_ca
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Timeout of TLS connections."
                | optional,
            }
            | doc "TLS configuration for TLS for Kafka."
            | optional,
        }
        | doc "Configuration options for the Kafka driver."
        | optional,
      kv
        | js2n.record.MinProperties 1
        | {
          _ | std.contract.Sequence
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
                              driver =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'boltdb |] ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      config
                        | {
                          file
                            | String
                            | doc "BoltDB database file to create or use."
                            | optional,
                          interval
                            | std.number.Integer
                            | js2n.number.Minimum 1
                            | doc "TTL keys check interval in seconds. It's safe to use 1 second here, but can be a little costly to performance. If you set this to zero, 60 will be used."
                            | optional,
                          permissions
                            | std.number.Integer
                            | js2n.number.Maximum 777
                            | js2n.number.Minimum 0
                            | doc "Permissions for the BoltDB database file, if created by RR."
                            | optional,
                        }
                        | doc "Configuration options for the BoltDB driver."
                        | optional,
                      ..
                    },
                    Array Dyn
                  ])
                (js2n.IfThenElse
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
                                driver =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'memcached |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        config
                          | {
                            addr
                              | js2n.array.MinItems 1
                              | Array (js2n.string.MinLength 1)
                              | doc "Addresses of the memcached node(s)."
                              | optional,
                          }
                          | doc "All the valid configuration parameters for the Memcached plugin for RoadRunner."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ])
                  (js2n.IfThenElse
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
                                  driver =
                                    std.contract.Sequence
                                        [ std.enum.TagOrString, [| 'redis |] ],
                                },
                            required = {},
                          },
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { config | refs."properties.redis" | optional, .. },
                        Array Dyn
                      ])
                    (js2n.IfThenElse
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
                                    driver =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'memory |]
                                          ],
                                  },
                              required = {},
                            },
                          Array Dyn
                        ])
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          std.contract.Sequence
                            [
                              {
                                config
                                  | {}
                                  | doc "The memory plugin does not support configuration, but requires an empty config object to be present due to parsing logic and the fact that memory has no global configuration to inherit from.",
                                ..
                              },
                              js2n.record.Required [ "driver" ]
                            ],
                          Array Dyn
                        ]) js2n.Always))),
              {
                config
                  | { _ | Dyn }
                  | doc "You may override the global configuration of the driver. If you provided a global configuration for the plugin, this section can be omitted and the global configuration will be used instead. If neither are present, the KV storage will not load."
                  | optional,
                driver
                  | std.enum.TagOrString
                  | [| 'redis, 'memory, 'memcached, 'boltdb |]
                  | doc "The driver to use.",
              }
            ]
        }
        | js2n.record.FieldsMatch "[a-zA-Z0-9_-]*"
        | doc "All the valid configuration parameters for the KV plugin for RoadRunner."
        | optional,
      logs
        | js2n.record.MinProperties 1
        | {
          channels
            | js2n.record.MinProperties 1
            | {
              _ | std.contract.Sequence
                [
                  js2n.record.MinProperties 1,
                  {
                    encoding
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
                    err_output
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
                    file_logger_options
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
                    level
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
                    line_ending
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
                    mode
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
                    output
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
                  }
                ]
            }
            | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
            | doc "You can configure logging for each plugin individually. The key is the plugin name and the value is logging options in same format as the parent."
            | optional,
          encoding
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          err_output
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          file_logger_options
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          level
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          line_ending
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          mode
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          output
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
        }
        | doc "All the valid configuration parameters for the Logger plugin for RoadRunner."
        | optional,
      metrics
        | {
          address
            | js2n.string.MinLength 1
            | doc "Prometheus client address (path /metrics is appended automatically)."
            | optional,
          collect
            | js2n.record.MinProperties 1
            | {
              _ | {
                buckets
                  | js2n.array.UniqueItems
                  | Array (js2n.number.Minimum 0)
                  | doc "The collector's buckets for the histogram type. Values must be in increasing order. The +Inf bucket is added implicitly at the end. If this array is undefined or empty, the default buckets are used."
                  | optional,
                help | String | doc "The collector's help message." | optional,
                labels
                  | js2n.array.MinItems 1
                  | Array (js2n.string.Matches "^[a-zA-Z_][a-zA-Z0-9_]*$")
                  | doc "The collector's metrics labels. These must be in the format supported by Prometheus. See https://prometheus.io/docs/concepts/data_model/#metric-names-and-labels"
                  | optional,
                namespace
                  | String
                  | doc "The collector's namespace."
                  | optional,
                objectives
                  | { _ | Number }
                  | js2n.record.FieldsMatch "^(0(\\.[0-9]+)?|1(\\.0+)?)$"
                  | doc "The collector's objectives for the summary type. Keys in this map must be a number between 0 and 1. The default value is an empty map, resulting in a summary without quantiles."
                  | optional,
                subsystem
                  | String
                  | doc "The collector's subsystem."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'summary, 'counter, 'gauge, 'histogram |]
                  | doc "The metric type to collect."
                  | optional,
              }
            }
            | js2n.record.FieldsMatch "^[a-zA-Z_:][a-zA-Z0-9_:]*$"
            | doc "Application-specific metrics (published using an RPC connection to the server)."
            | optional,
        }
        | doc "All the valid configuration parameters for the Prometheus Metrics plugin for RoadRunner."
        | optional,
      nats
        | { addr | String | doc "NATS server address." | optional, }
        | doc "Configuration options for the NATS driver."
        | optional,
      otel
        | {
          client
            | std.enum.TagOrString
            | [| 'grpc, 'http |]
            | doc "Client to send the spans. Defaults to http if invalid or empty."
            | optional,
          compress | Bool | doc "Whether to use gzip compressor." | optional,
          custom_url
            | js2n.string.MinLength 1
            | doc "Overrides the default URL of the HTTP client, if provided."
            | optional,
          endpoint
            | js2n.string.MinLength 1
            | doc "The endpoint of the consumer. Uses the OTEL default if not provided."
            | optional,
          exporter
            | std.enum.TagOrString
            | [| 'jaeger_agent, 'jaeger, 'otlp, 'stderr, 'stdout, 'zipkin |]
            | doc "Provides functionality to emit telemetry to consumers."
            | optional,
          headers
            | js2n.record.MinProperties 1
            | { _ | js2n.string.MinLength 1 }
            | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
            | doc "User defined headers for the OTLP protocol."
            | optional,
          insecure | Bool | doc "Use insecure endpoint" | optional,
          resource
            | {
              service_instance_id
                | js2n.string.MinLength 1
                | doc "The service instance ID. If not provided or empty, a UUID is generated."
                | optional,
              service_name
                | js2n.string.MinLength 1
                | doc "The name of the service."
                | optional,
              service_namespace
                | js2n.string.MinLength 1
                | doc "The namespace of the service."
                | optional,
              service_version
                | js2n.string.MinLength 1
                | doc "The version of the service."
                | optional,
            },
          service_name
            | String
            | doc "User's service name. **Deprecated**: Use resource.service_name instead."
            | optional,
          service_version
            | String
            | doc "User's service version. **Deprecated**: Use resource.service_version instead."
            | optional,
        }
        | doc "All the valid configuration parameters for the OpenTelemetry plugin for RoadRunner."
        | optional,
      redis
        | {
          addrs
            | js2n.array.MinItems 1
            | Array (js2n.string.MinLength 1)
            | doc "The addresses or hostnames of the Redis server/cluster to connect to. If the number of addresses is 1 and master_name is empty, a single-node Redis Client will be returned, otherwise a ClusterClient or FailoverClient will be returned, depending on whether `master_name` is provided."
            | optional,
          db
            | std.number.Integer
            | js2n.number.Maximum 10
            | doc "The Redis DB index to select when connecting."
            | optional,
          dial_timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The timeout when attempting to connect to Redis. Default or zero means 5s."
            | optional,
          idle_check_freq
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The time between checks for idle connections to Redis. Default or zero means 1m."
            | optional,
          idle_timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The timeout of idle connections to Redis. Default or zero means 5m."
            | optional,
          master_name
            | String
            | doc "The name of the master Redis node. A Sentinel-backed FailoverClient will be returned if this value is provided."
            | optional,
          max_conn_age
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The maximum age of open Redis connections. Default or zero means no limit."
            | optional,
          max_retries
            | std.number.Integer
            | doc "The maximum number of retry attempts when connecting to Redis. Default or zero means 3."
            | optional,
          max_retry_backoff
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The maximum backoff duration when retrying connection attempts. Default or zero means 512s."
            | optional,
          min_idle_conns
            | std.number.Integer
            | doc "The minimum number of connections to keep in the pool. Defaults to 0, which means no idle connection pool."
            | optional,
          min_retry_backoff
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The minimum backoff duration when retrying connection attempts. Default or zero means 8s."
            | optional,
          password
            | String
            | doc "The password to provide for Redis authentication."
            | optional,
          pool_size
            | std.number.Integer
            | doc "The number of connections to keep in the Redis connection pool. Default or zero means 10 per logical CPU."
            | optional,
          pool_timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          read_only
            | Bool
            | doc "Whether the Redis connection is in read-only mode. See https://redis.io/docs/latest/commands/readonly."
            | optional,
          read_timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The timeout when reading from a Redis node. Default or zero means 3s."
            | optional,
          route_by_latency
            | Bool
            | doc "Whether to route traffic to Redis nodes based on latency."
            | optional,
          route_randomly
            | Bool
            | doc "Whether to randomly route traffic to Redis nodes."
            | optional,
          sentinel_password
            | String
            | doc "The password for Redis Sentinel."
            | optional,
          tls
            | {
              cert
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              client_auth_type
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              key
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              root_ca
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            }
            | doc "GRPC TLS configuration"
            | optional,
          username
            | String
            | doc "The username to provide for Redis authentication."
            | optional,
          write_timeout
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "The timeout when writing to a Redis node. Default or zero means equivalent to `read_timeout`."
            | optional,
        }
        | doc "All the valid configuration parameters for the Redis plugin for RoadRunner."
        | optional,
      rpc
        | {
          listen
            | js2n.string.MinLength 1
            | doc "The address and port for the RPC server to bind to. Should contain protocol definition (i.e. `tcp://` or `unix://`)."
            | optional,
        }
        | doc "All the valid configuration parameters for the RPC plugin for RoadRunner."
        | optional,
      server
        | {
          command
            | js2n.string.MinLength 1
            | doc "The command used to start workers, including any required arguments. Any plugins that implement a worker pool will inherit this command if they do not specify an override.",
          env
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          group
            | js2n.string.MinLength 1
            | doc "Group name (not GID) for the worker processes. The RR process user group will be used if not provided. The RoadRunner process must be run as root for this to work."
            | optional,
          on_init
            | {
              command
                | js2n.string.MinLength 1
                | doc "Command to execute. It can be any script or binary that RoadRunner has access to.",
              env
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              exec_timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "Script execution timeout. Zero or empty defaults to 60s."
                | optional,
              exit_on_error
                | Bool
                | doc "Exit RR if the `on_init` command fails."
                | optional,
              user
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
            }
            | doc "Arbitrary command to execute before RR starts allocating workers."
            | optional,
          relay
            | js2n.string.MinLength 1
            | doc "Worker relay method. Can be 'pipes', a TCP address (e.g. tcp://127.0.0.1:6002) or a socket (e.g. unix:///var/run/rr.sock)."
            | optional,
          user
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
        }
        | doc "All the valid configuration parameters for the Server plugin for RoadRunner."
        | optional,
      service
        | js2n.record.MinProperties 1
        | {
          _ | {
            command
              | js2n.string.MinLength 1
              | doc "The command the service should execute. This can be any executable instruction that RoadRunner has access to on the server.",
            env
              | js2n.record.MinProperties 1
              | { _ | String }
              | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
              | doc "Environment variables to pass to the service."
              | optional,
            exec_timeout
              | String
              | doc "The maximum duration the service is allowed to run before RR will kill it. Default/zero means unlimited."
              | optional,
            process_num
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "Number of copies (processes) to start per command execution."
              | optional,
            remain_after_exit
              | Bool
              | doc "Whether to restart the process if it exits, regardless of the exit code."
              | optional,
            restart_sec
              | std.number.Integer
              | doc "Number of seconds to wait before process restart. Default/zero means 30 seconds."
              | optional,
            service_name_in_log
              | Bool
              | doc "Whether to include the name of the service in logs (e.g. `service.some_service_1`)."
              | optional,
            timeout_stop_sec
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Timeout for the service stop operation. If it takes longer for this duration for the service to stop, it will be killed. Zero or empty defaults to 5."
              | optional,
          }
        }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
        | doc "All the valid configuration parameters for the Service plugin for RoadRunner."
        | optional,
      sqs
        | {
          endpoint
            | String
            | doc "The endpoint of your queue. You only need to provide this value if you use a self-hosted queue, as the endpoint will be resolved from the provided AWS Region and queue name otherwise."
            | optional,
          key
            | String
            | doc "This is required unless your environment variables provide AWS credentials."
            | optional,
          region
            | String
            | doc "The region to connect to. Must be one of the [supported regions](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions). This is required unless your environment variables provide an AWS region or you use a self-hosted queue."
            | optional,
          secret
            | String
            | doc "This is required unless your environment variables provide AWS credentials."
            | optional,
          session_token
            | String
            | doc "The short-lived session token to use. This should not be provided for production and has a maximum duration of 12 hours. In most cases, you don't need to provide this value."
            | optional,
        }
        | doc "Configuration options for the SQS driver."
        | optional,
      status
        | {
          address
            | js2n.string.MinLength 1
            | doc "Host and port to listen on (eg.: `127.0.0.1:2114`). To query a plugin, pass its name as a query parameter called `plugin`, e.g. to check the `http` plugin, request `GET http://127.0.0.1:2114/health?plugin=http`. You can query multiple plugins by appending multiple instances of the `plugin` parameter, e.g. `GET http://127.0.0.1:2114/health?plugin=http&plugin=rpc`.",
          check_timeout
            | std.number.Integer
            | js2n.number.Minimum 1
            | doc "The maximum duration to wait for a complete response from the queried plugin(s), in seconds. Defaults to 60."
            | optional,
          unavailable_status_code
            | std.number.Integer
            | js2n.number.Maximum 599
            | js2n.number.Minimum 100
            | doc "Response HTTP status code if a requested plugin is not ready to handle requests. Valid for both /health and /ready endpoints. Defaults to 503 if undefined or zero."
            | optional,
        }
        | doc "All the valid configuration parameters for the Health Check (Status) plugin for RoadRunner."
        | optional,
      tcp
        | {
          pool
            | {
              allocate_timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "The maximum duration an incoming job is allowed to wait for a worker. Zero or undefined defaults to 60s."
                | optional,
              command
                | String
                | doc "The command to use for the pool. If defined, this will override the value in `server.command` for this pool only."
                | optional,
              debug
                | Bool
                | doc "In debug mode, workers are created immediately before RR passes jobs to them, exiting once the job completes. This defeats the purpose of a worker pool and should only be used during development."
                | optional,
              destroy_timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "The maximum duration to wait for worker termination/deallocation. If a worker has not stopped after this period, the process will be killed. Zero or undefined defaults to 60s."
                | optional,
              dynamic_allocator
                | {
                  idle_timeout
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "The duration after which idle dynamically allocated workers will be deallocated."
                    | optional,
                  max_workers
                    | std.number.Integer
                    | js2n.number.Maximum 100
                    | js2n.number.Minimum 1
                    | doc "The maximum number of workers that may be dynamically allocated."
                    | optional,
                  spawn_rate
                    | std.number.Integer
                    | js2n.number.Minimum 1
                    | doc "The maximum number of workers that may be spawned per NoFreeWorkers error (limited to `max_workers`)."
                    | optional,
                }
                | doc "Configuration options for auto-scaling/dynamic workers. If not defined, worker auto-scaling is disabled."
                | optional,
              max_jobs
                | std.number.Integer
                | js2n.number.Minimum 0
                | doc "The maximum number of executions a worker may perform before it is terminated and a new process is started. Zero or undefined means no limit."
                | optional,
              max_queue_size
                | std.number.Integer
                | js2n.number.Minimum 0
                | doc "The maximum size of the internal job queue. This is the limit of pending, incoming jobs that await worker allocation. After the limit is reached, all additional jobs will be rejected with an error. Zero or undefined means no limit."
                | optional,
              num_workers
                | std.number.Integer
                | js2n.number.Minimum 0
                | doc "The number of worker processes to start. Zero or undefined defaults to the number of logical CPUs."
                | optional,
              reset_timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "The maximum duration to wait for the `pool.Reset` operation (`./rr reset`) to complete. Zero or undefined defaults to 60s."
                | optional,
              stream_timeout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | doc "The maximum duration to wait for stream cancellation. Zero or undefined defaults to 60s."
                | optional,
              supervisor
                | {
                  exec_ttl
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "The maximum duration any job (hard limit) is allowed to take. If a job exceeds this time limit, the worker processing it will be terminated. Zero or undefined means no limit."
                    | optional,
                  idle_ttl
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "The maximum duration a worker may spend in idle mode after first processing a job (soft limit). If a worker exceeds this value during execution, it will be terminated afterward. Zero or undefined means no limit."
                    | optional,
                  max_worker_memory
                    | std.number.Integer
                    | js2n.number.Minimum 0
                    | doc "The maximum memory allocation allowed for a worker (soft limit) in MB. If a worker exceeds this value during execution, it will be terminated afterward. This should generally be set to a value lower than your PHP memory_limit, if one is specified. Zero or undefined means no limit."
                    | optional,
                  ttl
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "The maximum duration a worker is allowed to live (soft limit). If a worker exceeds this limit while processing a job, it will be terminated afterward. Zero or undefined means no limit."
                    | optional,
                  watch_tick
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "Duration between worker state checks. Defaults to 5s."
                    | optional,
                }
                | doc "The pool supervisor is used to control workers. If not defined, the pool has no supervision."
                | optional,
            }
            | doc "All the valid configuration parameters for the pool plugin for RoadRunner."
            | optional,
          read_buf_size
            | std.number.Integer
            | js2n.number.Maximum 100
            | js2n.number.Minimum 1
            | doc "Size of the chunks that RR reads data in, in MB. If you expect big payloads on a TCP server, you may reduce `read` system calls by using a big buffer."
            | optional,
          servers
            | js2n.record.MinProperties 1
            | {
              _ | {
                addr | js2n.string.MinLength 1 | doc "Address to listen on.",
                delimiter
                  | String
                  | doc "Data packet delimiter. Every send should end with either EOF or this delimiter."
                  | optional,
              }
            }
            | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
            | doc "The TCP servers to allocate."
            | optional,
        }
        | doc "All the valid configuration parameters for the TCP plugin for RoadRunner."
        | optional,
      temporal
        | {
          activities | refs."properties.tcp.properties.pool" | optional,
          address
            | js2n.string.MinLength 1
            | doc "Address of the Temporal server. Defaults to localhost:7233 if not provided."
            | optional,
          cache_size
            | std.number.Integer
            | doc "Sticky cache size. Sticky workflow execution is the affinity between workflow tasks of a specific workflow execution to a specific worker. The benefit of sticky execution is that the workflow does not have to reconstruct state by replaying history from the beginning. The cache is shared between workers running within same process. This must be called before any worker is started. If not called, the default size of 10K (which may change) will be used."
            | optional,
          metrics
            | js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          driver =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'prometheus |] ],
                          prometheus =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          driver =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'statsd |] ],
                          statsd =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                        },
                    required = {},
                  }
              ]
            | optional,
          namespace
            | String
            | doc "Namespace for this client to work with."
            | optional,
          tls
            | {
              cert
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              client_auth_type
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              key
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              root_ca
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              server_name
                | String
                | doc "ServerName is used to verify the hostname on the returned certificates unless InsecureSkipVerify is given. It is also included in the client's handshake to support virtual hosting unless it is an IP address."
                | optional,
              ..
            }
            | doc "Temporal TLS configuration."
            | optional,
        }
        | doc "All the valid configuration parameters for the Temporal plugin for RoadRunner."
        | optional,
      version
        | std.enum.TagOrString
        | [| '"3" |]
        | doc "RoadRunner configuration file version.",
      ..
    }