# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.container_profile" =
        js2n.Nullable
            (std.contract.Sequence
              [
                std.enum.TagOrString,
                [| 'HIGHER_MEMORY, 'HIGH_MEMORY, 'BALANCED, 'HIGH_CPU |]
              ]),
      "definitions.firewall" =
        {
            outbound
              | Array
                {
                  domains
                    | Array String
                    | doc m%"
                      Fully qualified domain names to specify specific destinations by hostname 
                      https://en.wikipedia.org/wiki/Fully_qualified_domain_name 
                      More information: 
                      https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                    "%
                    | optional,
                  ips
                    | Array String
                    | doc m%"
                      See a CIDR format converter: 
                      https://www.ipaddressguide.com/cidr 
                      More information: 
                      https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                    "%
                    | optional,
                  ports
                    | Array std.number.Integer
                    | doc "Ports from 1 to 65535 that are allowed. If any ports are specified, all unspecified ports are blocked. If no ports are specified, all ports are allowed. Port 25, the SMTP port for sending email, is always blocked."
                    | optional,
                  protocol
                    | String
                    | doc m%"
                      More information: 
                      https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                    "%
                    | optional,
                }
              | doc m%"
                More information: 
                https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
              "%
              | optional,
          },
      "definitions.mounts" =
        {
            _ | {
              service
                | String
                | doc m%"
                   Must be a service in `services.yaml` of type `network-storage`. 
                  More information: 
                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#mounts
                "%
                | optional,
              source
                | std.enum.TagOrString
                | [| 'tmp, 'temporary, 'storage, 'service, 'instance |]
                | doc m%"
                  - By design, `storage` mounts can be shared between instances of the same app 
                  - `instance` mounts are local mounts 
                  - `tmp` (or `temporary`) mounts are local ephemeral mounts 
                  - `service` mounts can be useful if you want to explicitly define and use a Network Storage service
                "%,
              source_path
                | String
                | doc m%"
                  WARNING: Changing the name of your mount affects the source_path when it’s undefined. See how to ensure continuity and maintain access to your files 
                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#ensure-continuity-when-changing-the-name-of-your-mount
                "%
                | optional,
            }
          },
      "definitions.relationships" =
        {
            _ | std.contract.any_of
              [
                String,
                js2n.Null,
                {
                  endpoint | String | optional,
                  service | String | optional,
                  ..
                }
              ]
          },
    }
    in
  {
      applications
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              _ | std.contract.Sequence
                [
                  js2n.OneOf
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "type" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "stack" ],
                          Array Dyn
                        ]
                    ],
                  {
                    access
                      | { _ | String }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#access
                      "%
                      | optional,
                    additional_hosts
                      | { _ | String }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#additional-hosts
                      "%
                      | optional,
                    build
                      | {
                        flavor
                          | String
                          | doc "The pre-set build tasks to use for this application"
                          | optional,
                      }
                      | doc m%"
                        It contains a build dictionary.  
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#build
                      "%
                      | optional,
                    container_profile
                      | refs."definitions.container_profile"
                      | optional,
                    crons
                      | {
                        _ | {
                          cmd | String | optional,
                          commands
                            | {
                              start
                                | String
                                | doc m%"
                                  By default, the command is run in Dash (till you specify something else): 
                                  https://en.wikipedia.org/wiki/Almquist_shell
                                "%,
                              stop
                                | String
                                | doc "The command that’s issued to give the cron command a chance to shutdown gracefully, such as to finish an active item in a list of tasks. Issued when a cron task is interrupted by a user through the CLI or Console. If not specified, a `SIGTERM` signal is sent to the process."
                                | optional,
                            }
                            | doc m%"
                              More information: 
                              https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#cron-commands
                            "%
                            | optional,
                          shutdown_timeout
                            | std.number.Integer
                            | doc "When a cron is canceled, this represents the number of seconds after which a `SIGKILL` signal is sent to the process to force terminate it. The default is `10` seconds."
                            | optional,
                          spec
                            | String
                            | doc m%"
                              The cron specification. To prevent competition for resources that might hurt performance, use `H` in definitions to indicate an unspecified but invariant time. For example, instead of using `0 * * * *` to indicate the cron job runs at the start of every hour, you can use `H * * * *` to indicate it runs every hour, but not necessarily at the start. This prevents multiple cron jobs from trying to start at the same time. 
                              More information: 
                              https://en.wikipedia.org/wiki/Cron#Cron_expression
                            "%,
                          timeout
                            | std.number.Integer
                            | js2n.number.Maximum 86400
                            | doc "The maximum amount of time a cron can run before it’s terminated. Defaults to the maximum allowed value of `86400` seconds (24 hours)."
                            | optional,
                        }
                      }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#crons
                      "%
                      | optional,
                    dependencies
                      | { _ | { _ | Dyn } }
                      | doc m%"
                        What global dependencies to install before the build `hook` is run. They will be downloaded by the language's package manager.  
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#dependencies
                      "%
                      | optional,
                    firewall | refs."definitions.firewall" | optional,
                    hooks
                      | {
                        build
                          | String
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#hooks
                          "%
                          | optional,
                        deploy
                          | String
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#hooks
                          "%
                          | optional,
                        post_deploy
                          | String
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#hooks
                          "%
                          | optional,
                      }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#hooks
                      "%
                      | optional,
                    mounts | refs."definitions.mounts" | optional,
                    operations
                      | {
                        _ | {
                          commands
                            | {
                              start
                                | String
                                | doc "It will be restarted if it terminates. Do not use on PHP unless using a custom persistent process like React PHP.",
                              ..
                            },
                          role
                            | std.enum.TagOrString
                            | [| 'admin, 'contributor, 'viewer |]
                            | doc m%"
                              More information: 
                              https://docs.upsun.com/create-apps/runtime-operations.html#define-a-runtime-operation
                            "%
                            | optional,
                        }
                      }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/runtime-operations.html
                      "%
                      | optional,
                    preflight
                      | {
                        enabled | Bool | doc "Must be a boolean",
                        ignored_rules | Array String | optional,
                      }
                      | doc "Configuration for pre-flight checks"
                      | optional,
                    relationships | refs."definitions.relationships" | optional,
                    resources
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
                    runtime
                      | {
                        disabled_extensions
                          | Array Dyn
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#extensions
                          "%
                          | optional,
                        extensions
                          | Array Dyn
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#extensions
                          "%
                          | optional,
                        quicklisp
                          | { _ | Dyn }
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/languages/lisp.html#quicklisp-options
                          "%
                          | optional,
                        request_terminate_timeout
                          | std.number.Integer
                          | doc "The timeout in seconds for serving a single request after which the PHP-FPM worker process is killed."
                          | optional,
                        sizing_hints
                          | {
                            request_memory
                              | std.number.Integer
                              | js2n.number.Minimum 10
                              | doc "Minimum to 10"
                              | optional,
                            reserved_memory
                              | std.number.Integer
                              | js2n.number.Minimum 70
                              | doc "Minimum to 70"
                              | optional,
                          }
                          | doc m%"
                            The assumptions for setting the number of workers in your PHP-FPM runtime. 
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#sizing-hints
                          "%
                          | optional,
                        xdebug
                          | { idekey | String | optional, .. }
                          | doc m%"
                            The setting to turn on Xdebug. 
                            More information: 
                            https://docs.upsun.com/languages/php/xdebug.html
                          "%
                          | optional,
                        ..
                      }
                      | doc m%"
                        Customizations to your PHP or Lisp runtime. 
                        Contains a runtime dictionary: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#runtime
                      "%
                      | optional,
                    source
                      | {
                        operations
                          | {
                            _ | {
                              command
                                | String
                                | doc m%"
                                  More information: 
                                  https://docs.upsun.com/create-apps/source-operations.html
                                "%,
                            }
                          }
                          | optional,
                        root
                          | String
                          | doc m%"
                             
                            Defaults to the root project directory.  
                            Useful for multi-app setups: 
                            https://docs.upsun.com/create-apps/multi-app.html
                          "%
                          | optional,
                      }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#source
                      "%
                      | optional,
                    stack
                      | std.contract.any_of
                        [
                          String,
                          { _ | Dyn },
                          Array (std.contract.any_of [ { _ | Dyn }, String ])
                        ]
                      | doc m%"
                        A list of packages from the Upsun collection of supported runtimes and/or from NixPkgs.  
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/composable-image.html
                      "%
                      | optional,
                    timezone
                      | String
                      | doc m%"
                        This primarily affects the timezone in which cron tasks will run. It will not affect the application itself. Defaults to UTC if not specified. 
                        See also: 
                        https://docs.upsun.com/create-apps/timezone.html
                      "%
                      | optional,
                    type
                      | String
                      | doc m%"
                        The base image to use with a specific app language.  
                        Format: runtime:version. 
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#types
                      "%
                      | optional,
                    variables
                      | { _ | {  .. } }
                      | doc m%"
                        Variables provide environment-sensitive information to control how your application behaves. To set a Unix environment variable, specify a key of `env:`, and then each sub-item of that is a key/value pair that will be injected into the environment. 
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#variables
                      "%
                      | optional,
                    web
                      | {
                        access
                          | { _ | String }
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#access
                          "%
                          | optional,
                        blacklist | Array String | optional,
                        commands
                          | {
                            pre_start
                              | String
                              | doc "Which can be useful when you need to run per-instance actions."
                              | optional,
                            start
                              | String
                              | doc m%"
                                It will be restarted if it terminates. Do not use on PHP unless using a custom persistent process like React PHP or FrankenPHP. 
                                See note: 
                                https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#required-command
                              "%,
                          }
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#web-commands
                          "%
                          | optional,
                        document_root | String | optional,
                        expires
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        index_files | Array String | optional,
                        locations
                          | {
                            _ | {
                              allow | Bool | optional,
                              expires
                                | std.contract.any_of
                                  [ std.number.Integer, String ]
                                | doc "How long static assets are cached. The default means no caching. Setting it to a value enables the `Cache-Control` and `Expires` headers. Times can be suffixed with `ms` = milliseconds, `s` = seconds, `m` = minutes, `h` = hours, `d` = days, `w` = weeks, `M` = months/30d, or `y` = years/365d. If a `Cache-Control` appears on the `headers` configuration, `expires`, if set, will be ignored. Thus, make sure to set the `Cache-Control`’s `max-age` value when specifying a the header."
                                | optional,
                              headers
                                | { _ | String }
                                | doc m%"
                                  Any additional headers to apply to static assets, mapping header names to values. Responses from the app aren’t affected. 
                                  See how to set custom headers on static content: 
                                  https://docs.upsun.com/create-apps/web/custom-headers.html
                                "%
                                | optional,
                              index
                                | Array String
                                | doc "Files to consider when serving a request for a directory. When set, requires access to the files through the `allow` or `rules` keys."
                                | optional,
                              passthru
                                | std.contract.any_of [ Bool, String ]
                                | doc "Whether to forward disallowed and missing resources from this location to the application. On PHP, set to the PHP front controller script, as a URL fragment. Otherwise set to `true`/`false`."
                                | optional,
                              request_buffering
                                | {
                                  enabled | Bool | optional,
                                  max_request_size
                                    | String
                                    | doc m%"
                                      Supports K, M, and G suffixes. 
                                      More information: 
                                      https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#request-buffering
                                    "%
                                    | optional,
                                }
                                | doc m%"
                                  More information: 
                                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#request-buffering
                                "%
                                | optional,
                              root
                                | String
                                | doc m%"
                                  The directory to serve static assets for this location relative to the app’s root directory. Must be an actual directory inside the root directory. 
                                  More information: 
                                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#root-directory
                                "%
                                | optional,
                              rules
                                | {
                                  _ | {
                                    allow | Bool | optional,
                                    expires
                                      | std.contract.any_of
                                        [ std.number.Integer, String ]
                                      | doc "How long static assets are cached. The default means no caching. Setting it to a value enables the `Cache-Control` and `Expires` headers. Times can be suffixed with `ms` = milliseconds, `s` = seconds, `m` = minutes, `h` = hours, `d` = days, `w` = weeks, `M` = months/30d, or `y` = years/365d. If a `Cache-Control` appears on the `headers` configuration, `expires`, if set, will be ignored. Thus, make sure to set the `Cache-Control`’s `max-age` value when specifying a the header."
                                      | optional,
                                    headers
                                      | { _ | String }
                                      | doc m%"
                                        Any additional headers to apply to static assets, mapping header names to values. Responses from the app aren’t affected. 
                                        See how to set custom headers on static content: 
                                        https://docs.upsun.com/create-apps/web/custom-headers.html
                                      "%
                                      | optional,
                                    passthru
                                      | std.contract.any_of [ Bool, String ]
                                      | doc "On PHP, set to the PHP front controller script, as a URL fragment. Otherwise set to `true`/`false`."
                                      | optional,
                                    scripts
                                      | Bool
                                      | doc "Doesn't apply to paths specified in `passthru`. Meaningful only on PHP containers."
                                      | optional,
                                  }
                                }
                                | doc m%"
                                  Contains a rules dictionary. 
                                  More information: 
                                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#rules
                                "%
                                | optional,
                              scripts
                                | Bool
                                | doc "Doesn't apply to paths specified in `passthru`. Meaningful only on PHP containers."
                                | optional,
                            }
                          }
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#web
                          "%
                          | optional,
                        mounts | refs."definitions.mounts" | optional,
                        move_to_root | Bool | optional,
                        passthru | String | optional,
                        relationships
                          | refs."definitions.relationships"
                          | optional,
                        resources
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
                        size
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
                        timezone
                          | String
                          | doc "This primarily affects the timezone in which cron tasks will run. It will not affect the application itself. Defaults to UTC if not specified."
                          | optional,
                        upstream
                          | {
                            protocol | String | optional,
                            socket_family
                              | String
                              | doc m%"
                                If `tcp`, check the PORT environment variable on application startup. If `unix`, check SOCKET. 
                                More Information: 
                                https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#upstream
                              "%
                              | optional,
                          }
                          | doc m%"
                            More information: 
                            https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#upstream
                          "%
                          | optional,
                        variables
                          | { _ | {  .. } }
                          | doc "To set a Unix environment variable, specify a key of `env:`, and then each sub-item of that is a key/value pair that will be injected into the environment."
                          | optional,
                        whitelist | Array String | optional,
                      }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#web
                      "%
                      | optional,
                    workers
                      | {
                        _ | {
                          access
                            | { _ | String }
                            | doc m%"
                              More information: 
                              https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#access
                            "%
                            | optional,
                          commands
                            | {
                              post_start
                                | String
                                | doc m%"
                                  More information: 
                                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                                "%
                                | optional,
                              pre_start
                                | String
                                | doc m%"
                                  More information: 
                                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                                "%
                                | optional,
                              start
                                | String
                                | doc m%"
                                  It will be restarted if it terminates. Do not use on PHP unless using a custom persistent process like React PHP. 
                                  More information: 
                                  https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                                "%,
                            }
                            | doc m%"
                              More information: 
                              https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                            "%,
                          firewall | refs."definitions.firewall" | optional,
                          mounts
                            | {
                              _ | {
                                service
                                  | String
                                  | doc "Must be a service in `services.yaml` of type `network-storage`."
                                  | optional,
                                source
                                  | std.enum.TagOrString
                                  | [|
                                    'tmp,
                                    'temporary,
                                    'storage,
                                    'service,
                                    'instance
                                  |]
                                  | doc m%"
                                    - By design, `storage` mounts can be shared between instances of the same app 
                                    - `instance` mounts are local mounts 
                                    - `tmp` (or `temporary`) mounts are local ephemeral mounts 
                                    - `service` mounts can be useful if you want to explicitly define and use a Network Storage service
                                  "%,
                                source_path
                                  | String
                                  | doc m%"
                                    Path relative to the root directory of the volume that's being mounted from.  
                                    WARNING: Changing the name of your mount affects the source_path when it’s undefined. See how to ensure continuity and maintain access to your files 
                                    https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#ensure-continuity-when-changing-the-name-of-your-mount
                                  "%
                                  | optional,
                              }
                            }
                            | doc m%"
                              Directories that are writable even after the app is built. Allocated disk for mounts is defined with a separate resource configuration call using `upsun resources:set`. 
                              Contains a dictionary of mounts: 
                              https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#mounts
                            "%
                            | optional,
                          relationships
                            | refs."definitions.relationships"
                            | optional,
                          resources
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
                          size
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
                          timezone
                            | String
                            | doc m%"
                              This primarily affects the timezone in which cron tasks will run.  It will not affect the application itself. Defaults to UTC if not specified. 
                              See also: 
                              https://docs.upsun.com/create-apps/timezone.html
                            "%
                            | optional,
                          variables
                            | { _ | {  .. } }
                            | doc m%"
                              Variables provide environment-sensitive information to control how your application behaves. To set a Unix environment variable, specify a key of `env:`, and then each sub-item of that is a key/value pair that will be injected into the environment. 
                              More information: 
                              https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#variables
                            "%
                            | optional,
                        }
                      }
                      | doc m%"
                        More information: 
                        https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#workers
                      "%
                      | optional,
                  }
                ]
            },
            Array Dyn
          ]
        | doc "For more information, see https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#primary-application-properties",
      routes
        | js2n.Nullable
          ({
            _ | js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          attributes =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          id =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          primary =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          redirects =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          tls =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          to =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          type =
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
                    required = { to = true, type = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          attributes =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          cache =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          id =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          primary =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          redirects =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          ssi =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          tls =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          type =
                            std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ],
                          upstream =
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
                    required = { type = true, upstream = true, },
                  }
              ]
          })
        | doc m%"
          Each route describes how an incoming URL is going to be processed by Upsun. 
          More information:  
          https://docs.upsun.com/define-routes.html
        "%
        | optional,
      services
        | js2n.Nullable
          ({
            _ | {
              access | { _ | Dyn } | optional,
              configuration
                | { _ | Dyn }
                | doc m%"
                  Some services have additional specific configuration options that can be defined here, such as specific endpoints. 
                  See the given service page for more details:  
                  https://docs.upsun.com/add-services.html#available-services.
                "%
                | optional,
              container_profile
                | refs."definitions.container_profile"
                | optional,
              firewall | refs."definitions.firewall" | optional,
              relationships | refs."definitions.relationships" | optional,
              resources
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              size
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              type
                | String
                | doc m%"
                  One of the available services in the format `type:version`. 
                  More information:  
                  https://docs.upsun.com/add-services.html#available-services
                "%,
            }
          })
        | doc m%"
          Each service listed will be deployed to power your Upsun project.  
          More information:  
          https://docs.upsun.com/add-services.html 
          Full list of available services:  
          https://docs.upsun.com/add-services.html#available-services
        "%
        | optional,
      ..
    }