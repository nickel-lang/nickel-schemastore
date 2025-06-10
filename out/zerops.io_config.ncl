# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      zerops
        | Array
          {
            build
              | {
                addToRunPrepare
                  | std.contract.any_of [ String, Array String ]
                  | doc "Defines what files or folders will be copied from the build container to the prepare runtime container. The prepare runtime container is used to customize your runtime environment."
                  | optional,
                base
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            '"ubuntu@latest",
                            '"ubuntu@24.04",
                            '"ubuntu@22.04",
                            '"rust@nightly",
                            '"rust@latest",
                            '"rust@1.86",
                            '"rust@1.80",
                            '"rust@1.78",
                            '"rust@1",
                            '"ruby@3.4",
                            '"ruby@3.3",
                            '"ruby@3.2",
                            '"python@latest",
                            '"python@3.12",
                            '"python@3.11",
                            '"php@latest",
                            '"php@8.4",
                            '"php@8.3",
                            '"php@8.1",
                            '"nodejs@latest",
                            '"nodejs@22",
                            '"nodejs@20",
                            '"nodejs@18",
                            '"java@latest",
                            '"java@21",
                            '"java@17",
                            '"golang@latest",
                            '"golang@1",
                            '"go@latest",
                            '"go@1.22",
                            '"go@1",
                            '"gleam@latest",
                            '"gleam@1.5.1",
                            '"gleam@1.5",
                            '"gleam@1",
                            '"elixir@latest",
                            '"elixir@1.16.2",
                            '"elixir@1.16",
                            '"elixir@1",
                            '"dotnet@latest",
                            '"dotnet@9",
                            '"dotnet@8",
                            '"dotnet@7",
                            '"dotnet@6",
                            '"deno@latest",
                            '"deno@2.0.0",
                            '"deno@1.45.5",
                            '"deno@1",
                            '"bun@nightly",
                            '"bun@latest",
                            '"bun@canary",
                            '"bun@1.2.2",
                            '"bun@1.2",
                            '"bun@1.1.34",
                            '"bun@1.1",
                            '"alpine@latest",
                            '"alpine@3.21",
                            '"alpine@3.20",
                            '"alpine@3.19",
                            '"alpine@3.18",
                            '"alpine@3.17",
                            '"3.21",
                            '"3.20",
                            '"3.19",
                            '"3.18",
                            '"3.17",
                            '"24.04",
                            '"22.04"
                          |]
                        ],
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              '"ubuntu@latest",
                              '"ubuntu@24.04",
                              '"ubuntu@22.04",
                              '"rust@nightly",
                              '"rust@latest",
                              '"rust@1.86",
                              '"rust@1.80",
                              '"rust@1.78",
                              '"rust@1",
                              '"ruby@3.4",
                              '"ruby@3.3",
                              '"ruby@3.2",
                              '"python@latest",
                              '"python@3.12",
                              '"python@3.11",
                              '"php@latest",
                              '"php@8.4",
                              '"php@8.3",
                              '"php@8.1",
                              '"nodejs@latest",
                              '"nodejs@22",
                              '"nodejs@20",
                              '"nodejs@18",
                              '"java@latest",
                              '"java@21",
                              '"java@17",
                              '"golang@latest",
                              '"golang@1",
                              '"go@latest",
                              '"go@1.22",
                              '"go@1",
                              '"gleam@latest",
                              '"gleam@1.5.1",
                              '"gleam@1.5",
                              '"gleam@1",
                              '"elixir@latest",
                              '"elixir@1.16.2",
                              '"elixir@1.16",
                              '"elixir@1",
                              '"dotnet@latest",
                              '"dotnet@9",
                              '"dotnet@8",
                              '"dotnet@7",
                              '"dotnet@6",
                              '"deno@latest",
                              '"deno@2.0.0",
                              '"deno@1.45.5",
                              '"deno@1",
                              '"bun@nightly",
                              '"bun@latest",
                              '"bun@canary",
                              '"bun@1.2.2",
                              '"bun@1.2",
                              '"bun@1.1.34",
                              '"bun@1.1",
                              '"alpine@latest",
                              '"alpine@3.21",
                              '"alpine@3.20",
                              '"alpine@3.19",
                              '"alpine@3.18",
                              '"alpine@3.17",
                              '"3.21",
                              '"3.20",
                              '"3.19",
                              '"3.18",
                              '"3.17",
                              '"24.04",
                              '"22.04"
                            |]
                          ]
                      )
                    ]
                  | doc "Sets the base technology for the build environment. If you need to install more technologies to the build environment, set multiple values as a yaml array."
                  | optional,
                buildCommands
                  | Array String
                  | doc "Defines build commands. Zerops triggers each command in the defined order in a dedicated build container."
                  | optional,
                cache
                  | std.contract.any_of [ Bool, String, Array String ]
                  | doc "Defines which files or folders will be cached for the next build."
                  | optional,
                deploy
                  | std.contract.any_of [ String, Array String ]
                  | optional,
                deployFiles
                  | std.contract.any_of [ String, Array String ]
                  | doc "Selects which files or folders will be deployed after the build has successfully finished. To filter out specific files or folders, use .deployignore file.",
                envVariables
                  | { _ | std.contract.any_of [ Bool, Number, String ] }
                  | doc "Defines the environment variables for the build environment."
                  | optional,
                os
                  | std.enum.TagOrString
                  | [| 'ubuntu, 'alpine, '"" |]
                  | doc "Sets the operating system for the runtime environment."
                  | optional,
                prepareCommands
                  | Array String
                  | doc "Customises the build environment by installing additional dependencies or tools to the base build environment."
                  | optional,
              }
              | doc "Build pipeline configuration."
              | optional,
            deploy
              | {
                readinessCheck
                  | {
                    exec
                      | {
                        command
                          | String
                          | doc "Defines a local command to be run. The command has access to the same environment variables. A single string is required. If you need to run multiple commands create a shell script or, use a multiline format as in the example below.",
                      }
                      | doc "Configures the readiness check to run a local command."
                      | optional,
                    failureTimeout
                      | std.number.Integer
                      | doc "Time until container is marked as failed."
                      | optional,
                    httpGet
                      | {
                        host
                          | String
                          | doc "The readiness check is triggered from inside of your runtime container so it always uses the localhost (127.0.0.1). If you need to add a host to the request header, specify it in the host attribute."
                          | optional,
                        path
                          | String
                          | doc "Defines the URL path of the HTTP GET request.",
                        port
                          | std.number.Integer
                          | doc "Defines the port of the HTTP GET request.",
                        scheme
                          | String
                          | doc "The readiness check is triggered from inside of your runtime container so no https is required. If your application requires a https request, set scheme: https"
                          | optional,
                      }
                      | doc "Configures the readiness check to request a local URL using a http GET method."
                      | optional,
                    retryPeriod
                      | std.number.Integer
                      | doc "Time interval between readiness check attempts."
                      | optional,
                  }
                  | doc "Defines a readiness check. Requires either httpGet object or exec object."
                  | optional,
                temporaryShutdown | Bool | optional,
              }
              | doc "Deploy configuration."
              | optional,
            extends | std.contract.any_of [ String, Array String ] | optional,
            run
              | {
                base
                  | std.enum.TagOrString
                  | [|
                    '"ubuntu@latest",
                    '"ubuntu@24.04",
                    '"ubuntu@22.04",
                    '"static@latest",
                    '"static@1.0",
                    'static,
                    '"rust@nightly",
                    '"rust@latest",
                    '"rust@1.86",
                    '"rust@1.80",
                    '"rust@1.78",
                    '"rust@1",
                    '"runtime@latest",
                    '"ruby@latest",
                    '"ruby@3.4",
                    '"ruby@3.3",
                    '"ruby@3.2",
                    '"python@latest",
                    '"python@3.12",
                    '"python@3.11",
                    '"php-nginx@latest",
                    '"php-nginx@8.4",
                    '"php-nginx@8.3",
                    '"php-nginx@8.1",
                    '"php-apache@latest",
                    '"php-apache@8.4",
                    '"php-apache@8.3",
                    '"php-apache@8.1",
                    '"nodejs@latest",
                    '"nodejs@22",
                    '"nodejs@20",
                    '"nodejs@18",
                    '"nginx@latest",
                    '"nginx@1.22",
                    '"java@latest",
                    '"java@21",
                    '"java@17",
                    '"golang@latest",
                    '"golang@1",
                    '"go@latest",
                    '"go@1.22",
                    '"go@1",
                    '"gleam@latest",
                    '"gleam@1.5.1",
                    '"gleam@1.5",
                    '"gleam@1",
                    '"elixir@latest",
                    '"elixir@1.16.2",
                    '"elixir@1.16",
                    '"elixir@1",
                    '"dotnet@latest",
                    '"dotnet@9",
                    '"dotnet@8",
                    '"dotnet@7",
                    '"dotnet@6",
                    '"docker@latest",
                    '"docker@26.1.5",
                    '"docker@26.1",
                    '"docker@26",
                    '"deno@latest",
                    '"deno@2.0.0",
                    '"deno@1.45.5",
                    '"deno@1",
                    '"bun@nightly",
                    '"bun@latest",
                    '"bun@canary",
                    '"bun@1.2.2",
                    '"bun@1.2",
                    '"bun@1.1.34",
                    '"bun@1.1",
                    '"alpine@latest",
                    '"alpine@3.21",
                    '"alpine@3.20",
                    '"alpine@3.19",
                    '"alpine@3.18",
                    '"alpine@3.17",
                    '"3.21",
                    '"3.20",
                    '"3.19",
                    '"3.18",
                    '"3.17",
                    '"24.04",
                    '"22.04"
                  |]
                  | doc "Sets the base technology for the runtime environment. If you don't specify the run.base attribute, Zerops keeps the current version for your runtime."
                  | optional,
                crontab
                  | Array
                    {
                      allContainers
                        | Bool
                        | doc "If set to true, the job runs on all containers; otherwise, it runs on a single container (default: false)",
                      command
                        | String
                        | doc "Specifies the shell command to run at the scheduled time.",
                      timing
                        | String
                        | doc "Defines when the cron job runs in standard cron format.",
                      workingDir
                        | String
                        | doc "The directory where the command will be executed (default: /var/www)"
                        | optional,
                    }
                  | doc "A list of cron jobs with their respective schedule (timing), the command to run (command), and additional options like allContainers and workingDir."
                  | optional,
                documentRoot
                  | String
                  | doc "Customizes the folder that will be used as the root of the publicly accessible web server content. This attribute is available only for runtimes with webservers."
                  | optional,
                envReplace
                  | {
                    delimiter | std.contract.any_of [ String, Array String ],
                    target | std.contract.any_of [ String, Array String ],
                  }
                  | optional,
                envVariables
                  | { _ | std.contract.any_of [ Bool, Number, String ] }
                  | doc "Defines the environment variables for the runtime environment."
                  | optional,
                healthCheck
                  | {
                    disconnectTimeout
                      | std.number.Integer
                      | doc "Time until container is disconnected and becomes publicly unavailable."
                      | optional,
                    exec
                      | {
                        command
                          | String
                          | doc "Defines a local command to be run. The command has access to the same environment variables. A single string is required. If you need to run multiple commands create a shell script or, use a multiline format as in the example below.",
                      }
                      | doc "Configures the health check to run a local command."
                      | optional,
                    execPeriod
                      | std.number.Integer
                      | doc "Time interval between health check attempts."
                      | optional,
                    failureTimeout
                      | std.number.Integer
                      | doc "Time until container fails after consecutive health check failures (reset by success)."
                      | optional,
                    httpGet
                      | {
                        host
                          | String
                          | doc "The readiness check is triggered from inside of your runtime container so it always uses the localhost (127.0.0.1). If you need to add a host to the request header, specify it in the host attribute."
                          | optional,
                        path
                          | String
                          | doc "Defines the URL path of the HTTP GET request.",
                        port
                          | std.number.Integer
                          | doc "Defines the port of the HTTP GET request.",
                        scheme
                          | String
                          | doc "The readiness check is triggered from inside of your runtime container so no https is required. If your application requires a https request, set scheme: https"
                          | optional,
                      }
                      | doc "Configures the health check to request a local URL using a http GET method."
                      | optional,
                    recoveryTimeout
                      | std.number.Integer
                      | doc "Time until container is connected and becomes publicly available."
                      | optional,
                  }
                  | doc "Defines a health check."
                  | optional,
                initCommands
                  | Array String
                  | doc "Defines one or more commands to be run each time a new runtime container is started or a container is restarted."
                  | optional,
                os
                  | std.enum.TagOrString
                  | [| 'ubuntu, 'alpine, '"" |]
                  | doc "Sets the operating system for the runtime environment."
                  | optional,
                ports
                  | Array
                    {
                      description | String | optional,
                      httpSupport
                        | Bool
                        | doc "Set to true if a web server is running on the port. Zerops uses this information for the configuration of public access. True is available only in combination with the TCP protocol. Default value is false."
                        | optional,
                      port
                        | std.number.Integer
                        | doc "Defines the port number. You can set any port number between 10 and 65435. Ports outside this interval are reserved for internal Zerops systems.",
                      protocol
                        | std.enum.TagOrString
                        | [| 'udp, 'tcp |]
                        | doc "Defines the protocol. Allowed values are TCP or UDP. Default value is TCP."
                        | optional,
                    }
                  | doc "Specifies one or more internal ports on which your application will listen."
                  | optional,
                prepareCommands
                  | Array String
                  | doc "Customises the runtime environment by installing additional dependencies or tools to the base runtime environment."
                  | optional,
                routing
                  | {
                    cors
                      | String
                      | doc "Content of default Access-Control headers (Allow-Origin, Allow-Methods, Allow-Headers and Expose-Headers), e.g. \"'*' always\""
                      | optional,
                    headers
                      | Array
                        {
                          for
                            | String
                            | doc "Relative path to be matched against request location. May contain * at the end for prefix-based match.",
                          values
                            | { _ | String }
                            | doc "Header name as Key and raw content as Value, e.g. \"Access-Control-Allow-Origin\": \"'*' always\"",
                        }
                      | optional,
                    redirects
                      | Array
                        {
                          from
                            | String
                            | doc "Relative or an absolute (defined by with http://) path to be matched against request location. May contain * at the end for regex.",
                          preservePath
                            | Bool
                            | doc "Whether part of the path after From should be preserved. Used to forward contents of one directory to another in non-masked redirects."
                            | optional,
                          preserveQuery
                            | Bool
                            | doc "Whether query parameters should be preserved. Used in non-masked redirects."
                            | optional,
                          status
                            | std.number.Integer
                            | doc "Which HTTP status code to use for the redirect. If not set, and To and From are relative, an internal/masked redirect will be used."
                            | optional,
                          to
                            | String
                            | doc "Relative or an absolute (defined by with http://) path to redirect user to.",
                        }
                      | optional,
                    root | String | optional,
                  }
                  | optional,
                siteConfigPath
                  | String
                  | doc "Sets the custom webserver configuration. This attribute is available only for runtimes with webservers."
                  | optional,
                start
                  | String
                  | doc "Defines the start command for your application."
                  | optional,
                startCommands
                  | Array
                    {
                      command | String,
                      initCommands
                        | Array String
                        | doc "Defines one or more commands to be run each time a new runtime container is started or a container is restarted."
                        | optional,
                      name | String | optional,
                      workingDir | String | optional,
                    }
                  | doc "Defines the start commands for the runtime environment."
                  | optional,
              }
              | doc "Runtime configuration."
              | optional,
            setup
              | String
              | doc "The first element setup contains the hostname of your service. A runtime service with the same hostname must exist in Zerops. Zerops supports the definition of multiple runtime services in a single zerops.yml. This is useful when you use a monorepo. Just add multiple setup elements in your zerops.yml.",
          }
        | doc "The top-level element is always zerops.",
    }