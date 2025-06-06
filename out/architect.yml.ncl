# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BuildSpec" =
        std.contract.Sequence
            [
              std.contract.not
                (js2n.record.Required [ "buildpack", "dockerfile" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required
                                    [ "buildpack", "dockerfile" ]),
                                {
                                  args
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^[a-zA-Z0-9_]+$" =
                                                js2n.Nullable String,
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | js2n.Nullable String
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^[a-zA-Z0-9_]+$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "Build args to be passed into `docker build`."
                                    | optional,
                                  buildpack
                                    | Bool
                                    | doc "Option to use buildpack to build an image."
                                    | optional,
                                  context
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The path to the directory containing the source code relative to the `architect.yml` file."
                                    | optional,
                                  dockerfile
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The path to the Dockerfile relative to the `build.context`"
                                    | optional,
                                  target
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The stage to build in the Dockerfile"
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        args =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^[a-zA-Z0-9_]+$" = js2n.Nullable String,
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              { _ | js2n.Nullable String },
                                              js2n.record.FieldsMatch
                                                "^[a-zA-Z0-9_]+$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        buildpack = Bool,
                        context =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        dockerfile =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        target =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.ComponentInterfaceSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          description
                            | String
                            | doc "A human-readable description of the component. This will be rendered when potential consumers view the interface so that they know what it should be used for."
                            | optional,
                          host
                            | String
                            | doc "The host that the component interface should forward to."
                            | optional,
                          ingress
                            | refs."definitions.IngressSpec"
                            | { _ | Dyn }
                            | optional,
                          password
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The Basic Auth password by which a component interface can be connected to."
                            | optional,
                          port
                            | std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The port that the component interface should forward to."
                            | optional,
                          protocol
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The protocol by which the component interface can be connected to."
                            | optional,
                          sticky
                            | std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "If this interface is made into an external ingress, sticky=true will denote the gateway should use sticky sessions if more than one replica is running."
                            | optional,
                          url
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The url that the component interface should forward to.",
                          username
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The Basic Auth username by which a component interface can be connected to."
                            | optional,
                        },
                  },
              properties =
                {
                    description = String,
                    host = String,
                    ingress =
                      std.contract.Sequence
                          [ refs."definitions.IngressSpec", { _ | Dyn } ],
                    password =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    port =
                      std.contract.any_of
                          [
                            Number,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    protocol =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    sticky =
                      std.contract.any_of
                          [ Bool, js2n.string.Matches "\\${{\\s*(.*?)\\s*}}" ],
                    url =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    username =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = { url = true, },
            },
      "definitions.DatabaseSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          connection_string
                            | std.contract.any_of
                              [
                                String,
                                js2n.Null,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The connection uri of an existing database to use instead of provisioning a new one"
                            | optional,
                          description
                            | String
                            | doc "Human readable description"
                            | optional,
                          type
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      '"mariadb:10",
                                      '"mysql:8",
                                      '"mysql:7",
                                      '"mysql:6",
                                      '"mysql:5",
                                      '"postgres:15",
                                      '"postgres:14",
                                      '"postgres:13",
                                      '"postgres:12",
                                      '"postgres:11",
                                      '"postgres:10"
                                    |]
                                  ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The type engine and version of database software needed for data storage.",
                        },
                  },
              properties =
                {
                    connection_string =
                      std.contract.any_of
                          [
                            String,
                            js2n.Null,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    description = String,
                    type =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  '"mariadb:10",
                                  '"mysql:8",
                                  '"mysql:7",
                                  '"mysql:6",
                                  '"mysql:5",
                                  '"postgres:15",
                                  '"postgres:14",
                                  '"postgres:13",
                                  '"postgres:12",
                                  '"postgres:11",
                                  '"postgres:10"
                                |]
                              ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = { type = true, },
            },
      "definitions.DependencySpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          tag
                            | std.contract.any_of
                              [
                                js2n.string.Matches "^[\\w][\\w\\.-]{0,127}$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | optional,
                        },
                  },
              properties =
                {
                    tag =
                      std.contract.any_of
                          [
                            js2n.string.Matches "^[\\w][\\w\\.-]{0,127}$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = {},
            },
      "definitions.DeploySpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          kubernetes
                            | refs."definitions.KubernetesDeploySpec"
                            | { _ | Dyn },
                        },
                  },
              properties =
                {
                    kubernetes =
                      std.contract.Sequence
                          [
                            refs."definitions.KubernetesDeploySpec",
                            { _ | Dyn }
                          ],
                  },
              required = { kubernetes = true, },
            },
      "definitions.IngressSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          enabled
                            | Bool
                            | doc "Marks the interface as an ingress."
                            | optional,
                          ip_whitelist
                            | std.contract.any_of
                              [
                                Array (
                                  std.contract.any_of
                                    [
                                      String,
                                      js2n.string.Matches
                                        "\\${{\\s*secrets\\.[\\w-]+\\s*}}"
                                    ]
                                ),
                                js2n.string.Matches
                                  "\\${{\\s*(.*?)\\s*}}|(?:\\d{1,3}\\.){3}\\d{1,3}(?:\\/\\d\\d?)?,?"
                              ]
                            | doc "IP addresses that are allowed to access the interface"
                            | optional,
                          path
                            | std.contract.any_of
                              [
                                js2n.string.Matches "^\\/.*$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The path of the interface used for path based routing"
                            | optional,
                          private
                            | std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Marks the ingress as private behind Architect authentication"
                            | optional,
                          subdomain
                            | std.contract.any_of
                              [
                                js2n.string.Matches
                                  "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,61}[A-Za-z0-9])|[^\\W\\D\\s\\t\\n\\r\\/]+|[\\@\\*]?)$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The subdomain that will be used if the interface is exposed externally. Use `subdomain: @` to target the base domain."
                            | optional,
                          tls
                            | refs."definitions.IngressTlsSpec"
                            | { _ | Dyn }
                            | optional,
                        },
                  },
              properties =
                {
                    enabled = Bool,
                    ip_whitelist =
                      std.contract.any_of
                          [
                            Array (
                              std.contract.any_of
                                [
                                  String,
                                  js2n.string.Matches
                                    "\\${{\\s*secrets\\.[\\w-]+\\s*}}"
                                ]
                            ),
                            js2n.string.Matches
                              "\\${{\\s*(.*?)\\s*}}|(?:\\d{1,3}\\.){3}\\d{1,3}(?:\\/\\d\\d?)?,?"
                          ],
                    path =
                      std.contract.any_of
                          [
                            js2n.string.Matches "^\\/.*$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    private =
                      std.contract.any_of
                          [ Bool, js2n.string.Matches "\\${{\\s*(.*?)\\s*}}" ],
                    subdomain =
                      std.contract.any_of
                          [
                            js2n.string.Matches
                              "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,61}[A-Za-z0-9])|[^\\W\\D\\s\\t\\n\\r\\/]+|[\\@\\*]?)$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    tls =
                      std.contract.Sequence
                          [ refs."definitions.IngressTlsSpec", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.IngressTlsSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          ca
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Custom certificate ca."
                            | optional,
                          crt
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Custom certificate.",
                          key
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Custom certificate key.",
                        },
                  },
              properties =
                {
                    ca =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    crt =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    key =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = { crt = true, key = true, },
            },
      "definitions.KubernetesDeploySpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                { "^\\${{\\s*if(.*?)\\s*}}$" = { deployment | js2n.Always, }, },
              properties = { deployment = js2n.Always, },
              required = { deployment = true, },
            },
      "definitions.LivenessProbeSpec" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Required [ "command" ],
                  js2n.record.Required [ "path", "port" ]
                ],
              std.contract.not (js2n.record.Required [ "command", "port" ]),
              std.contract.not (js2n.record.Required [ "command", "path" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                js2n.OneOf
                                  [
                                    js2n.record.Required [ "command" ],
                                    js2n.record.Required [ "path", "port" ]
                                  ],
                                std.contract.not
                                  (js2n.record.Required [ "command", "port" ]),
                                std.contract.not
                                  (js2n.record.Required [ "command", "path" ]),
                                {
                                  command
                                    | std.contract.any_of
                                      [ Array String, String ]
                                    | doc "Command that runs the http check. This field is disjunctive with `path` and `port` (only one of `command` or `path`/`port` can be set)."
                                    | optional,
                                  failure_threshold
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The number of times to retry a failed health check before the container is considered unhealthy."
                                    | optional,
                                  initial_delay
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Delays the check from running for the specified amount of time"
                                    | optional,
                                  interval
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The time period in seconds between each health check execution. You may specify any value between: 5s and 300s"
                                    | optional,
                                  path
                                    | std.contract.any_of
                                      [
                                        js2n.string.Matches "^\\/.*$",
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "[Deprecated: use `command` instead.] Path for the http check executable. Path should be absolute (e.g. /health). If `path` is set, `port` also must be set. This field is disjunctive with `command` (only one of `path` or `command` can be set)."
                                    | optional,
                                  port
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "[Deprecated: use `command` instead.] Port that the http check will run against. If `port` is set, `path` also must be set. This field is disjunctive with `command` (only one of `port` or `command` can be set)."
                                    | optional,
                                  success_threshold
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The number of times to retry a health check before the container is considered healthy."
                                    | optional,
                                  timeout
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The time period to wait for a health check to succeed before it is considered a failure. You may specify any value between: 2s and 60s"
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        command = std.contract.any_of [ Array String, String ],
                        failure_threshold =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        initial_delay =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        interval =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        path =
                          std.contract.any_of
                              [
                                js2n.string.Matches "^\\/.*$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        port =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        success_threshold =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        timeout =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.OutputDefinitionSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          description
                            | String
                            | doc "A human-friendly description of the output field."
                            | optional,
                          value
                            | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ]
                            | doc "Value of the output to be passed to upstream consumers",
                        },
                  },
              properties =
                {
                    description = String,
                    value =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                  },
              required = { value = true, },
            },
      "definitions.ScalingMetricsSpec" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "cpu" ],
                  js2n.record.Required [ "memory" ]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.any_of
                                  [
                                    js2n.record.Required [ "cpu" ],
                                    js2n.record.Required [ "memory" ]
                                  ],
                                {
                                  cpu
                                    | std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 100,
                                            js2n.number.Minimum 0
                                          ],
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The cpu usage required to trigger scaling."
                                    | optional,
                                  memory
                                    | std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 100,
                                            js2n.number.Minimum 0
                                          ],
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The memory usage required to trigger scaling."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        cpu =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 100,
                                    js2n.number.Minimum 0
                                  ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        memory =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 100,
                                    js2n.number.Minimum 0
                                  ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.ScalingSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          max_replicas
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The target maximum number of service replicas.",
                          metrics
                            | refs."definitions.ScalingMetricsSpec"
                            | { _ | Dyn },
                          min_replicas
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The target minimum number of service replicas.",
                        },
                  },
              properties =
                {
                    max_replicas =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    metrics =
                      std.contract.Sequence
                          [
                            refs."definitions.ScalingMetricsSpec",
                            { _ | Dyn }
                          ],
                    min_replicas =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required =
                { max_replicas = true, metrics = true, min_replicas = true, },
            },
      "definitions.SecretDefinitionSpec" =
        {
            "default"
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  { _ | Dyn },
                  Array Dyn,
                  Number,
                  String,
                  js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                ]
              | doc "Sets a default value for the secret if one is not provided"
              | optional,
            description
              | String
              | doc "A human-friendly description of the secret."
              | optional,
            required
              | Bool
              | doc "Denotes whether the secret is required."
              | optional,
          },
      "definitions.ServiceInterfaceSpec" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Required [ "port" ],
                  js2n.record.Required [ "url" ]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                js2n.OneOf
                                  [
                                    js2n.record.Required [ "port" ],
                                    js2n.record.Required [ "url" ]
                                  ],
                                {
                                  description
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A human-readable description of the interface."
                                    | optional,
                                  host
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The host address of an existing service to use instead of provisioning a new one. Setting this field effectively overrides any deployment of this service and directs all traffic to the given host."
                                    | optional,
                                  ingress
                                    | refs."definitions.IngressSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  password
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A Basic Auth password required to access the interface"
                                    | optional,
                                  path
                                    | std.contract.any_of
                                      [
                                        js2n.string.Matches "^\\/.*$",
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The path of the interface"
                                    | optional,
                                  port
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Port on which the service is listening for traffic.",
                                  protocol
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Protocol that the interface responds to"
                                    | optional,
                                  sticky
                                    | std.contract.any_of
                                      [
                                        Bool,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Denotes that if this interface is made external, the gateway should use sticky sessions"
                                    | optional,
                                  url
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The url of an existing service to use instead of provisioning a new one. Setting this field effectively overrides any deployment of this service and directs all traffic to the given url."
                                    | optional,
                                  username
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A Basic Auth username required to access the interface"
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        description =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        host =
                          std.contract.any_of
                              [
                                js2n.Null,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        ingress =
                          std.contract.Sequence
                              [ refs."definitions.IngressSpec", { _ | Dyn } ],
                        password =
                          std.contract.any_of
                              [
                                js2n.Null,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        path =
                          std.contract.any_of
                              [
                                js2n.string.Matches "^\\/.*$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        port =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        protocol =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        sticky =
                          std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        url =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        username =
                          std.contract.any_of
                              [
                                js2n.Null,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = { port = true, },
                }
            ],
      "definitions.ServiceSpec" =
        std.contract.Sequence
            [
              std.contract.not (js2n.record.Required [ "build", "image" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required [ "build", "image" ]),
                                {
                                  build
                                    | refs."definitions.BuildSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  command
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker startup command. Use this if you need to override or parameterize or parameterize the docker image command."
                                    | optional,
                                  cpu
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The cpu required to run a service or a task"
                                    | optional,
                                  debug
                                    | refs."definitions._DebugServiceSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  depends_on
                                    | Array String
                                    | doc "An array of service names for those services in the component that are pre-requisites to deploy. Used at deploy-time to build a deploy order across services and tasks."
                                    | optional,
                                  deploy
                                    | refs."definitions.DeploySpec"
                                    | { _ | Dyn }
                                    | optional,
                                  description
                                    | String
                                    | doc "Human readable description"
                                    | optional,
                                  enabled
                                    | Bool
                                    | doc "Determines if the service should be running."
                                    | optional,
                                  entrypoint
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker entrypoint for the container. Use this if you need to override or parameterize the docker image entrypoint."
                                    | optional,
                                  environment
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^[a-zA-Z0-9_]+$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^[a-zA-Z0-9_]+$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of key-value pairs or secret definitions that describes environment variables and their values."
                                    | optional,
                                  image
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker image that serves as the unit of runtime. This field is disjunctive with `build` (only one of `image` or `build` can be set)"
                                    | optional,
                                  interfaces
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                                std.contract.any_of
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          refs."definitions.ServiceInterfaceSpec",
                                                          { _ | Dyn }
                                                        ],
                                                      Number,
                                                      js2n.string.Matches
                                                        "\\${{\\s*(.*?)\\s*}}"
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            std.contract.Sequence
                                                              [
                                                                refs."definitions.ServiceInterfaceSpec",
                                                                { _ | Dyn }
                                                              ],
                                                            Number,
                                                            js2n.string.Matches
                                                              "\\${{\\s*(.*?)\\s*}}"
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of named interfaces to expose service functionality over the network to other services within the same component. A `string` or `number` represents the TCP port that the service is listening on. For more detailed configuration, specify a full `ServiceInterfaceSpec` object."
                                    | optional,
                                  labels
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.string.Matches
                                                        "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                      js2n.string.Matches
                                                        "\\${{\\s*(.*?)\\s*}}"
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.string.Matches
                                                              "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                            js2n.string.Matches
                                                              "\\${{\\s*(.*?)\\s*}}"
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A simple key-value annotation store; useful to organize, categorize, scope, and select services and tasks."
                                    | optional,
                                  language
                                    | String
                                    | doc "The dominant programming language used; this is for informational purposes only."
                                    | optional,
                                  liveness_probe
                                    | refs."definitions.LivenessProbeSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  memory
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The memory required to run a service or a task."
                                    | optional,
                                  replicas
                                    | std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Minimum 0
                                          ],
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A static number of replicas of a service to be deployed. For scaling configuration, see `scaling` field."
                                    | optional,
                                  reserved_name
                                    | js2n.string.Matches
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                    | doc "A specific service name which will override the service name specified in the component."
                                    | optional,
                                  scaling
                                    | refs."definitions.ScalingSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  termination_grace_period
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A period of time between a service being passed a SIGINT and a SIGTERM when it's scheduled to be replaced or terminated. Only used for remote deployments."
                                    | optional,
                                  volumes
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                                std.contract.any_of
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          refs."definitions.VolumeSpec",
                                                          { _ | Dyn }
                                                        ],
                                                      String
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            std.contract.Sequence
                                                              [
                                                                refs."definitions.VolumeSpec",
                                                                { _ | Dyn }
                                                              ],
                                                            String
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of named volumes to be mounted at deploy-time. Take advantage of volumes to store data that should be shared between running containers or that should persist beyond the lifetime of a container."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        build =
                          std.contract.Sequence
                              [ refs."definitions.BuildSpec", { _ | Dyn } ],
                        command =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        cpu =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        debug =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugServiceSpec",
                                { _ | Dyn }
                              ],
                        depends_on = Array String,
                        deploy =
                          std.contract.Sequence
                              [ refs."definitions.DeploySpec", { _ | Dyn } ],
                        description = String,
                        enabled = Bool,
                        entrypoint =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        environment =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^[a-zA-Z0-9_]+$" =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Array Dyn,
                                                    Number,
                                                    String
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^[a-zA-Z0-9_]+$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        image =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        interfaces =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                        std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.ServiceInterfaceSpec",
                                                  { _ | Dyn }
                                                ],
                                              Number,
                                              js2n.string.Matches
                                                "\\${{\\s*(.*?)\\s*}}"
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    std.contract.Sequence
                                                      [
                                                        refs."definitions.ServiceInterfaceSpec",
                                                        { _ | Dyn }
                                                      ],
                                                    Number,
                                                    js2n.string.Matches
                                                      "\\${{\\s*(.*?)\\s*}}"
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        labels =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                        std.contract.any_of
                                            [
                                              js2n.string.Matches
                                                "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                              js2n.string.Matches
                                                "\\${{\\s*(.*?)\\s*}}"
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.string.Matches
                                                      "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                    js2n.string.Matches
                                                      "\\${{\\s*(.*?)\\s*}}"
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        language = String,
                        liveness_probe =
                          std.contract.Sequence
                              [
                                refs."definitions.LivenessProbeSpec",
                                { _ | Dyn }
                              ],
                        memory =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        replicas =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        reserved_name =
                          js2n.string.Matches
                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$",
                        scaling =
                          std.contract.Sequence
                              [ refs."definitions.ScalingSpec", { _ | Dyn } ],
                        termination_grace_period =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        volumes =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                        std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.VolumeSpec",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    std.contract.Sequence
                                                      [
                                                        refs."definitions.VolumeSpec",
                                                        { _ | Dyn }
                                                      ],
                                                    String
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                      },
                  required = {},
                }
            ],
      "definitions.TaskSpec" =
        std.contract.Sequence
            [
              std.contract.not (js2n.record.Required [ "build", "image" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required [ "build", "image" ]),
                                {
                                  build
                                    | refs."definitions.BuildSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  command
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker startup command. Use this if you need to override or parameterize or parameterize the docker image command."
                                    | optional,
                                  cpu
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The cpu required to run a service or a task"
                                    | optional,
                                  debug
                                    | refs."definitions._DebugTaskSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  depends_on
                                    | Array String
                                    | doc "An array of service names for those services in the component that are pre-requisites to deploy. Used at deploy-time to build a deploy order across services and tasks."
                                    | optional,
                                  description
                                    | String
                                    | doc "Human readable description"
                                    | optional,
                                  entrypoint
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker entrypoint for the container. Use this if you need to override or parameterize the docker image entrypoint."
                                    | optional,
                                  environment
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^[a-zA-Z0-9_]+$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^[a-zA-Z0-9_]+$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of key-value pairs or secret definitions that describes environment variables and their values."
                                    | optional,
                                  image
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker image that serves as the unit of runtime. This field is disjunctive with `build` (only one of `image` or `build` can be set)"
                                    | optional,
                                  labels
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.string.Matches
                                                        "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                      js2n.string.Matches
                                                        "\\${{\\s*(.*?)\\s*}}"
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.string.Matches
                                                              "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                            js2n.string.Matches
                                                              "\\${{\\s*(.*?)\\s*}}"
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A simple key-value annotation store; useful to organize, categorize, scope, and select services and tasks."
                                    | optional,
                                  language
                                    | String
                                    | doc "The dominant programming language used; this is for informational purposes only."
                                    | optional,
                                  memory
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The memory required to run a service or a task."
                                    | optional,
                                  reserved_name
                                    | js2n.string.Matches
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                    | doc "A specific service name which will override the service name specified in the component."
                                    | optional,
                                  schedule
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A cron expression by which this task will be scheduled. Leave blank to deploy a task that never runs unless triggered from the CLI."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        build =
                          std.contract.Sequence
                              [ refs."definitions.BuildSpec", { _ | Dyn } ],
                        command =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        cpu =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        debug =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugTaskSpec",
                                { _ | Dyn }
                              ],
                        depends_on = Array String,
                        description = String,
                        entrypoint =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        environment =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^[a-zA-Z0-9_]+$" =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Array Dyn,
                                                    Number,
                                                    String
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^[a-zA-Z0-9_]+$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        image =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        labels =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                        std.contract.any_of
                                            [
                                              js2n.string.Matches
                                                "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                              js2n.string.Matches
                                                "\\${{\\s*(.*?)\\s*}}"
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.string.Matches
                                                      "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                    js2n.string.Matches
                                                      "\\${{\\s*(.*?)\\s*}}"
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        language = String,
                        memory =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        reserved_name =
                          js2n.string.Matches
                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$",
                        schedule =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.VolumeSpec" =
        std.contract.Sequence
            [
              std.contract.not (js2n.record.Required [ "host_path", "key" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required [ "host_path", "key" ]),
                                {
                                  description
                                    | String
                                    | doc "Human-readable description of volume"
                                    | optional,
                                  host_path
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A directory on the host machine to sync with the mount_path on the docker image. This field is only relevant inside the debug block for local deployments. This field is disjunctive with `key` (only one of `host_path` or `key` can be set)."
                                    | optional,
                                  key
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A reference to the underlying volume on the deployment cluster of choice. The `docker-compose` volume name, the name of the Kubernetes PersistentVolumeClaim, or the EFS ID of an AWS volume. This field is disjunctive with `host_path` (only one of `key` or `host_path` can be set)."
                                    | optional,
                                  mount_path
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Directory at which the volume will be mounted inside the container."
                                    | optional,
                                  readonly
                                    | std.contract.any_of
                                      [
                                        Bool,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Marks the volume as readonly."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        description = String,
                        host_path =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        key =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        mount_path =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        readonly =
                          std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions._DebugBuildSpec" =
        std.contract.Sequence
            [
              std.contract.not
                (js2n.record.Required [ "buildpack", "dockerfile" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required
                                    [ "buildpack", "dockerfile" ]),
                                {
                                  args
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^[a-zA-Z0-9_]+$" =
                                                js2n.Nullable String,
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | js2n.Nullable String
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^[a-zA-Z0-9_]+$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "Build args to be passed into `docker build`."
                                    | optional,
                                  buildpack
                                    | Bool
                                    | doc "Option to use buildpack to build an image."
                                    | optional,
                                  context
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The path to the directory containing the source code relative to the `architect.yml` file."
                                    | optional,
                                  dockerfile
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The path to the Dockerfile relative to the `build.context`"
                                    | optional,
                                  target
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The stage to build in the Dockerfile"
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        args =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^[a-zA-Z0-9_]+$" = js2n.Nullable String,
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              { _ | js2n.Nullable String },
                                              js2n.record.FieldsMatch
                                                "^[a-zA-Z0-9_]+$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        buildpack = Bool,
                        context =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        dockerfile =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        target =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions._DebugDeploySpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          kubernetes
                            | refs."definitions._DebugKubernetesDeploySpec"
                            | { _ | Dyn }
                            | optional,
                        },
                  },
              properties =
                {
                    kubernetes =
                      std.contract.Sequence
                          [
                            refs."definitions._DebugKubernetesDeploySpec",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions._DebugIngressSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          enabled
                            | Bool
                            | doc "Marks the interface as an ingress."
                            | optional,
                          ip_whitelist
                            | std.contract.any_of
                              [
                                Array (
                                  std.contract.any_of
                                    [
                                      String,
                                      js2n.string.Matches
                                        "\\${{\\s*secrets\\.[\\w-]+\\s*}}"
                                    ]
                                ),
                                js2n.string.Matches
                                  "\\${{\\s*(.*?)\\s*}}|(?:\\d{1,3}\\.){3}\\d{1,3}(?:\\/\\d\\d?)?,?"
                              ]
                            | doc "IP addresses that are allowed to access the interface"
                            | optional,
                          path
                            | std.contract.any_of
                              [
                                js2n.string.Matches "^\\/.*$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The path of the interface used for path based routing"
                            | optional,
                          private
                            | std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Marks the ingress as private behind Architect authentication"
                            | optional,
                          subdomain
                            | std.contract.any_of
                              [
                                js2n.string.Matches
                                  "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,61}[A-Za-z0-9])|[^\\W\\D\\s\\t\\n\\r\\/]+|[\\@\\*]?)$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The subdomain that will be used if the interface is exposed externally. Use `subdomain: @` to target the base domain."
                            | optional,
                          tls
                            | refs."definitions._DebugIngressTlsSpec"
                            | { _ | Dyn }
                            | optional,
                        },
                  },
              properties =
                {
                    enabled = Bool,
                    ip_whitelist =
                      std.contract.any_of
                          [
                            Array (
                              std.contract.any_of
                                [
                                  String,
                                  js2n.string.Matches
                                    "\\${{\\s*secrets\\.[\\w-]+\\s*}}"
                                ]
                            ),
                            js2n.string.Matches
                              "\\${{\\s*(.*?)\\s*}}|(?:\\d{1,3}\\.){3}\\d{1,3}(?:\\/\\d\\d?)?,?"
                          ],
                    path =
                      std.contract.any_of
                          [
                            js2n.string.Matches "^\\/.*$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    private =
                      std.contract.any_of
                          [ Bool, js2n.string.Matches "\\${{\\s*(.*?)\\s*}}" ],
                    subdomain =
                      std.contract.any_of
                          [
                            js2n.string.Matches
                              "^([A-Za-z0-9](?:[A-Za-z0-9\\-]{0,61}[A-Za-z0-9])|[^\\W\\D\\s\\t\\n\\r\\/]+|[\\@\\*]?)$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    tls =
                      std.contract.Sequence
                          [
                            refs."definitions._DebugIngressTlsSpec",
                            { _ | Dyn }
                          ],
                  },
              required = {},
            },
      "definitions._DebugIngressTlsSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          ca
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Custom certificate ca."
                            | optional,
                          crt
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Custom certificate."
                            | optional,
                          key
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Custom certificate key."
                            | optional,
                        },
                  },
              properties =
                {
                    ca =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    crt =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    key =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = {},
            },
      "definitions._DebugKubernetesDeploySpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      { deployment | js2n.Always | optional, },
                  },
              properties = { deployment = js2n.Always, },
              required = {},
            },
      "definitions._DebugLivenessProbeSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          command
                            | std.contract.any_of [ Array String, String ]
                            | doc "Command that runs the http check. This field is disjunctive with `path` and `port` (only one of `command` or `path`/`port` can be set)."
                            | optional,
                          failure_threshold
                            | std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The number of times to retry a failed health check before the container is considered unhealthy."
                            | optional,
                          initial_delay
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Delays the check from running for the specified amount of time"
                            | optional,
                          interval
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The time period in seconds between each health check execution. You may specify any value between: 5s and 300s"
                            | optional,
                          path
                            | std.contract.any_of
                              [
                                js2n.string.Matches "^\\/.*$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "[Deprecated: use `command` instead.] Path for the http check executable. Path should be absolute (e.g. /health). If `path` is set, `port` also must be set. This field is disjunctive with `command` (only one of `path` or `command` can be set)."
                            | optional,
                          port
                            | std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "[Deprecated: use `command` instead.] Port that the http check will run against. If `port` is set, `path` also must be set. This field is disjunctive with `command` (only one of `port` or `command` can be set)."
                            | optional,
                          success_threshold
                            | std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The number of times to retry a health check before the container is considered healthy."
                            | optional,
                          timeout
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The time period to wait for a health check to succeed before it is considered a failure. You may specify any value between: 2s and 60s"
                            | optional,
                        },
                  },
              properties =
                {
                    command = std.contract.any_of [ Array String, String ],
                    failure_threshold =
                      std.contract.any_of
                          [
                            Number,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    initial_delay =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    interval =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    path =
                      std.contract.any_of
                          [
                            js2n.string.Matches "^\\/.*$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    port =
                      std.contract.any_of
                          [
                            Number,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    success_threshold =
                      std.contract.any_of
                          [
                            Number,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    timeout =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = {},
            },
      "definitions._DebugScalingMetricsSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          cpu
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 100,
                                    js2n.number.Minimum 0
                                  ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The cpu usage required to trigger scaling."
                            | optional,
                          memory
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 100,
                                    js2n.number.Minimum 0
                                  ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The memory usage required to trigger scaling."
                            | optional,
                        },
                  },
              properties =
                {
                    cpu =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.Maximum 100,
                                js2n.number.Minimum 0
                              ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    memory =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.Maximum 100,
                                js2n.number.Minimum 0
                              ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = {},
            },
      "definitions._DebugScalingSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          max_replicas
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The target maximum number of service replicas."
                            | optional,
                          metrics
                            | refs."definitions._DebugScalingMetricsSpec"
                            | { _ | Dyn }
                            | optional,
                          min_replicas
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The target minimum number of service replicas."
                            | optional,
                        },
                  },
              properties =
                {
                    max_replicas =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    metrics =
                      std.contract.Sequence
                          [
                            refs."definitions._DebugScalingMetricsSpec",
                            { _ | Dyn }
                          ],
                    min_replicas =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = {},
            },
      "definitions._DebugServiceInterfaceSpec" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^\\${{\\s*if(.*?)\\s*}}$" =
                      {
                          description
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "A human-readable description of the interface."
                            | optional,
                          host
                            | std.contract.any_of
                              [
                                js2n.Null,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The host address of an existing service to use instead of provisioning a new one. Setting this field effectively overrides any deployment of this service and directs all traffic to the given host."
                            | optional,
                          ingress
                            | refs."definitions._DebugIngressSpec"
                            | { _ | Dyn }
                            | optional,
                          password
                            | std.contract.any_of
                              [
                                js2n.Null,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "A Basic Auth password required to access the interface"
                            | optional,
                          path
                            | std.contract.any_of
                              [
                                js2n.string.Matches "^\\/.*$",
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The path of the interface"
                            | optional,
                          port
                            | std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Port on which the service is listening for traffic."
                            | optional,
                          protocol
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Protocol that the interface responds to"
                            | optional,
                          sticky
                            | std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "Denotes that if this interface is made external, the gateway should use sticky sessions"
                            | optional,
                          url
                            | std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "The url of an existing service to use instead of provisioning a new one. Setting this field effectively overrides any deployment of this service and directs all traffic to the given url."
                            | optional,
                          username
                            | std.contract.any_of
                              [
                                js2n.Null,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ]
                            | doc "A Basic Auth username required to access the interface"
                            | optional,
                        },
                  },
              properties =
                {
                    description =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    host =
                      std.contract.any_of
                          [
                            js2n.Null,
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    ingress =
                      std.contract.Sequence
                          [ refs."definitions._DebugIngressSpec", { _ | Dyn } ],
                    password =
                      std.contract.any_of
                          [
                            js2n.Null,
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    path =
                      std.contract.any_of
                          [
                            js2n.string.Matches "^\\/.*$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    port =
                      std.contract.any_of
                          [
                            Number,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    protocol =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    sticky =
                      std.contract.any_of
                          [ Bool, js2n.string.Matches "\\${{\\s*(.*?)\\s*}}" ],
                    url =
                      std.contract.any_of
                          [
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                    username =
                      std.contract.any_of
                          [
                            js2n.Null,
                            String,
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                          ],
                  },
              required = {},
            },
      "definitions._DebugServiceSpec" =
        std.contract.Sequence
            [
              std.contract.not (js2n.record.Required [ "build", "image" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required [ "build", "image" ]),
                                {
                                  build
                                    | refs."definitions._DebugBuildSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  command
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker startup command. Use this if you need to override or parameterize or parameterize the docker image command."
                                    | optional,
                                  cpu
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The cpu required to run a service or a task"
                                    | optional,
                                  depends_on
                                    | Array String
                                    | doc "An array of service names for those services in the component that are pre-requisites to deploy. Used at deploy-time to build a deploy order across services and tasks."
                                    | optional,
                                  deploy
                                    | refs."definitions._DebugDeploySpec"
                                    | { _ | Dyn }
                                    | optional,
                                  description
                                    | String
                                    | doc "Human readable description"
                                    | optional,
                                  enabled
                                    | Bool
                                    | doc "Determines if the service should be running."
                                    | optional,
                                  entrypoint
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker entrypoint for the container. Use this if you need to override or parameterize the docker image entrypoint."
                                    | optional,
                                  environment
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^[a-zA-Z0-9_]+$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^[a-zA-Z0-9_]+$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of key-value pairs or secret definitions that describes environment variables and their values."
                                    | optional,
                                  image
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker image that serves as the unit of runtime. This field is disjunctive with `build` (only one of `image` or `build` can be set)"
                                    | optional,
                                  interfaces
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                                std.contract.any_of
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          refs."definitions._DebugServiceInterfaceSpec",
                                                          { _ | Dyn }
                                                        ],
                                                      Number,
                                                      js2n.string.Matches
                                                        "\\${{\\s*(.*?)\\s*}}"
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            std.contract.Sequence
                                                              [
                                                                refs."definitions._DebugServiceInterfaceSpec",
                                                                { _ | Dyn }
                                                              ],
                                                            Number,
                                                            js2n.string.Matches
                                                              "\\${{\\s*(.*?)\\s*}}"
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of named interfaces to expose service functionality over the network to other services within the same component. A `string` or `number` represents the TCP port that the service is listening on. For more detailed configuration, specify a full `ServiceInterfaceSpec` object."
                                    | optional,
                                  labels
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.string.Matches
                                                        "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                      js2n.string.Matches
                                                        "\\${{\\s*(.*?)\\s*}}"
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.string.Matches
                                                              "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                            js2n.string.Matches
                                                              "\\${{\\s*(.*?)\\s*}}"
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A simple key-value annotation store; useful to organize, categorize, scope, and select services and tasks."
                                    | optional,
                                  language
                                    | String
                                    | doc "The dominant programming language used; this is for informational purposes only."
                                    | optional,
                                  liveness_probe
                                    | refs."definitions._DebugLivenessProbeSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  memory
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The memory required to run a service or a task."
                                    | optional,
                                  replicas
                                    | std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Minimum 0
                                          ],
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A static number of replicas of a service to be deployed. For scaling configuration, see `scaling` field."
                                    | optional,
                                  reserved_name
                                    | js2n.string.Matches
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                    | doc "A specific service name which will override the service name specified in the component."
                                    | optional,
                                  scaling
                                    | refs."definitions._DebugScalingSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  termination_grace_period
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A period of time between a service being passed a SIGINT and a SIGTERM when it's scheduled to be replaced or terminated. Only used for remote deployments."
                                    | optional,
                                  volumes
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                                std.contract.any_of
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          refs."definitions._DebugVolumeSpec",
                                                          { _ | Dyn }
                                                        ],
                                                      String
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            std.contract.Sequence
                                                              [
                                                                refs."definitions._DebugVolumeSpec",
                                                                { _ | Dyn }
                                                              ],
                                                            String
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of named volumes to be mounted at deploy-time. Take advantage of volumes to store data that should be shared between running containers or that should persist beyond the lifetime of a container."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        build =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugBuildSpec",
                                { _ | Dyn }
                              ],
                        command =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        cpu =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        depends_on = Array String,
                        deploy =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugDeploySpec",
                                { _ | Dyn }
                              ],
                        description = String,
                        enabled = Bool,
                        entrypoint =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        environment =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^[a-zA-Z0-9_]+$" =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Array Dyn,
                                                    Number,
                                                    String
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^[a-zA-Z0-9_]+$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        image =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        interfaces =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                        std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions._DebugServiceInterfaceSpec",
                                                  { _ | Dyn }
                                                ],
                                              Number,
                                              js2n.string.Matches
                                                "\\${{\\s*(.*?)\\s*}}"
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    std.contract.Sequence
                                                      [
                                                        refs."definitions._DebugServiceInterfaceSpec",
                                                        { _ | Dyn }
                                                      ],
                                                    Number,
                                                    js2n.string.Matches
                                                      "\\${{\\s*(.*?)\\s*}}"
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        labels =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                        std.contract.any_of
                                            [
                                              js2n.string.Matches
                                                "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                              js2n.string.Matches
                                                "\\${{\\s*(.*?)\\s*}}"
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.string.Matches
                                                      "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                    js2n.string.Matches
                                                      "\\${{\\s*(.*?)\\s*}}"
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        language = String,
                        liveness_probe =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugLivenessProbeSpec",
                                { _ | Dyn }
                              ],
                        memory =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        replicas =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ std.number.Integer, js2n.number.Minimum 0 ],
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        reserved_name =
                          js2n.string.Matches
                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$",
                        scaling =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugScalingSpec",
                                { _ | Dyn }
                              ],
                        termination_grace_period =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        volumes =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                        std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions._DebugVolumeSpec",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    std.contract.Sequence
                                                      [
                                                        refs."definitions._DebugVolumeSpec",
                                                        { _ | Dyn }
                                                      ],
                                                    String
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                      },
                  required = {},
                }
            ],
      "definitions._DebugTaskSpec" =
        std.contract.Sequence
            [
              std.contract.not (js2n.record.Required [ "build", "image" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required [ "build", "image" ]),
                                {
                                  build
                                    | refs."definitions._DebugBuildSpec"
                                    | { _ | Dyn }
                                    | optional,
                                  command
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker startup command. Use this if you need to override or parameterize or parameterize the docker image command."
                                    | optional,
                                  cpu
                                    | std.contract.any_of
                                      [
                                        Number,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The cpu required to run a service or a task"
                                    | optional,
                                  depends_on
                                    | Array String
                                    | doc "An array of service names for those services in the component that are pre-requisites to deploy. Used at deploy-time to build a deploy order across services and tasks."
                                    | optional,
                                  description
                                    | String
                                    | doc "Human readable description"
                                    | optional,
                                  entrypoint
                                    | std.contract.any_of
                                      [
                                        js2n.array.ArrayOf String,
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker entrypoint for the container. Use this if you need to override or parameterize the docker image entrypoint."
                                    | optional,
                                  environment
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^[a-zA-Z0-9_]+$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.Null,
                                                            Bool,
                                                            Array Dyn,
                                                            Number,
                                                            String
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^[a-zA-Z0-9_]+$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A set of key-value pairs or secret definitions that describes environment variables and their values."
                                    | optional,
                                  image
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The docker image that serves as the unit of runtime. This field is disjunctive with `build` (only one of `image` or `build` can be set)"
                                    | optional,
                                  labels
                                    | js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns =
                                          {
                                              "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                                std.contract.any_of
                                                    [
                                                      js2n.string.Matches
                                                        "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                      js2n.string.Matches
                                                        "\\${{\\s*(.*?)\\s*}}"
                                                    ],
                                              "^\\${{\\s*if(.*?)\\s*}}$" =
                                                std.contract.Sequence
                                                    [
                                                      {
                                                        _ | std.contract.any_of
                                                          [
                                                            js2n.string.Matches
                                                              "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                            js2n.string.Matches
                                                              "\\${{\\s*(.*?)\\s*}}"
                                                          ]
                                                      },
                                                      js2n.record.FieldsMatch
                                                        "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                                    ],
                                            },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "A simple key-value annotation store; useful to organize, categorize, scope, and select services and tasks."
                                    | optional,
                                  language
                                    | String
                                    | doc "The dominant programming language used; this is for informational purposes only."
                                    | optional,
                                  memory
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "The memory required to run a service or a task."
                                    | optional,
                                  reserved_name
                                    | js2n.string.Matches
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                    | doc "A specific service name which will override the service name specified in the component."
                                    | optional,
                                  schedule
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A cron expression by which this task will be scheduled. Leave blank to deploy a task that never runs unless triggered from the CLI."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        build =
                          std.contract.Sequence
                              [
                                refs."definitions._DebugBuildSpec",
                                { _ | Dyn }
                              ],
                        command =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        cpu =
                          std.contract.any_of
                              [
                                Number,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        depends_on = Array String,
                        description = String,
                        entrypoint =
                          std.contract.any_of
                              [
                                js2n.array.ArrayOf String,
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        environment =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^[a-zA-Z0-9_]+$" =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.Null,
                                                    Bool,
                                                    Array Dyn,
                                                    Number,
                                                    String
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^[a-zA-Z0-9_]+$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        image =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        labels =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  {
                                      "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$" =
                                        std.contract.any_of
                                            [
                                              js2n.string.Matches
                                                "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                              js2n.string.Matches
                                                "\\${{\\s*(.*?)\\s*}}"
                                            ],
                                      "^\\${{\\s*if(.*?)\\s*}}$" =
                                        std.contract.Sequence
                                            [
                                              {
                                                _ | std.contract.any_of
                                                  [
                                                    js2n.string.Matches
                                                      "^(?=.{1,63})(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$",
                                                    js2n.string.Matches
                                                      "\\${{\\s*(.*?)\\s*}}"
                                                  ]
                                              },
                                              js2n.record.FieldsMatch
                                                "^(?=(.{1,63}/)?.{1,63}$)((([a-z0-9][-a-z0-9_.]*)?[a-z0-9])?/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
                                            ],
                                    },
                                properties = {},
                                required = {},
                              },
                        language = String,
                        memory =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        reserved_name =
                          js2n.string.Matches
                              "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$",
                        schedule =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
      "definitions._DebugVolumeSpec" =
        std.contract.Sequence
            [
              std.contract.not (js2n.record.Required [ "host_path", "key" ]),
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\${{\\s*if(.*?)\\s*}}$" =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (js2n.record.Required [ "host_path", "key" ]),
                                {
                                  description
                                    | String
                                    | doc "Human-readable description of volume"
                                    | optional,
                                  host_path
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A directory on the host machine to sync with the mount_path on the docker image. This field is only relevant inside the debug block for local deployments. This field is disjunctive with `key` (only one of `host_path` or `key` can be set)."
                                    | optional,
                                  key
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "A reference to the underlying volume on the deployment cluster of choice. The `docker-compose` volume name, the name of the Kubernetes PersistentVolumeClaim, or the EFS ID of an AWS volume. This field is disjunctive with `host_path` (only one of `key` or `host_path` can be set)."
                                    | optional,
                                  mount_path
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Directory at which the volume will be mounted inside the container."
                                    | optional,
                                  readonly
                                    | std.contract.any_of
                                      [
                                        Bool,
                                        js2n.string.Matches
                                          "\\${{\\s*(.*?)\\s*}}"
                                      ]
                                    | doc "Marks the volume as readonly."
                                    | optional,
                                }
                              ],
                      },
                  properties =
                    {
                        description = String,
                        host_path =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        key =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        mount_path =
                          std.contract.any_of
                              [
                                String,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                        readonly =
                          std.contract.any_of
                              [
                                Bool,
                                js2n.string.Matches "\\${{\\s*(.*?)\\s*}}"
                              ],
                      },
                  required = {},
                }
            ],
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^\\${{\\s*if(.*?)\\s*}}$" =
                {
                    artifact_image | String | doc "-" | optional,
                    author
                      | String
                      | doc "The name or handle of the author of the component as a developer contact."
                      | optional,
                    databases
                      | js2n.record.Record
                        {
                          additional = 'None,
                          patterns =
                            {
                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                  refs."definitions.DatabaseSpec",
                                "^\\${{\\s*if(.*?)\\s*}}$" =
                                  std.contract.Sequence
                                      [
                                        { _ | refs."definitions.DatabaseSpec" },
                                        js2n.record.FieldsMatch
                                          "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                      ],
                              },
                          properties = {},
                          required = {},
                        }
                      | doc "A database represents a stateful service powered by one of several supported database engines."
                      | optional,
                    dependencies
                      | {
                        _ | std.contract.any_of
                          [
                            js2n.string.Matches "^[\\w][\\w\\.-]{0,127}$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}",
                            refs."definitions.DependencySpec"
                          ]
                      }
                      | js2n.record.FieldsMatch
                        "^(?:(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)\\/)?(?<component_name>(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-))(?:@(?<instance_name>[\\w][\\w\\.-]{0,127}))?$"
                      | doc "A key-value set of dependencies with an empty value. Reference each dependency by component name (e.g. `cloud: {}`)"
                      | optional,
                    description
                      | String
                      | doc "A human-readable description of the component. This will be rendered when potential consumers view the component so that they know what it should be used for."
                      | optional,
                    homepage
                      | String
                      | doc "The url that serves as the informational homepage of the component (i.e. a github repo)."
                      | optional,
                    interfaces
                      | js2n.record.Record
                        {
                          additional = 'None,
                          patterns =
                            {
                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                  std.contract.any_of
                                      [
                                        String,
                                        refs."definitions.ComponentInterfaceSpec"
                                      ],
                                "^\\${{\\s*if(.*?)\\s*}}$" =
                                  std.contract.Sequence
                                      [
                                        {
                                          _ | std.contract.any_of
                                            [
                                              String,
                                              refs."definitions.ComponentInterfaceSpec"
                                            ]
                                        },
                                        js2n.record.FieldsMatch
                                          "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                      ],
                              },
                          properties = {},
                          required = {},
                        }
                      | doc "A set of named gateways that broker access to the services inside the component. All network traffic within a component is locked down to the component itself, unless included in this interfaces block. An interface represents a front-door to your component, granting access to upstream callers."
                      | optional,
                    keywords
                      | Array String
                      | doc "Additional search terms to be used when the component is indexed so that others can find it more easily."
                      | optional,
                    name
                      | js2n.string.Matches
                        "^(?:(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)\\/)?(?<component_name>(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-))(?:@(?<instance_name>[\\w][\\w\\.-]{0,127}))?$"
                      | doc "Globally unique friendly reference to the component. must contain only lower alphanumeric and single hyphens in the middle; max length 32",
                    outputs
                      | js2n.record.Record
                        {
                          additional = 'None,
                          patterns =
                            {
                                "^[a-zA-Z0-9_-]+$" =
                                  std.contract.any_of
                                      [
                                        String,
                                        Number,
                                        Bool,
                                        refs."definitions.OutputDefinitionSpec",
                                        js2n.Null
                                      ],
                                "^\\${{\\s*if(.*?)\\s*}}$" =
                                  std.contract.Sequence
                                      [
                                        {
                                          _ | std.contract.any_of
                                            [
                                              String,
                                              Number,
                                              Bool,
                                              refs."definitions.OutputDefinitionSpec",
                                              js2n.Null
                                            ]
                                        },
                                        js2n.record.FieldsMatch
                                          "^[a-zA-Z0-9_-]+$"
                                      ],
                              },
                          properties = {},
                          required = {},
                        }
                      | doc "A map of named, configurable outputs for the component. Outputs allow components to expose configuration details that should be shared with consumers, like API keys or notification topic names."
                      | optional,
                    secrets
                      | {
                        _ | std.contract.any_of
                          [
                            String,
                            Number,
                            Bool,
                            refs."definitions.SecretDefinitionSpec",
                            js2n.Null
                          ]
                      }
                      | js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$"
                      | doc "A map of named, configurable fields for the component. If a component contains properties that differ across environments (i.e. environment variables), you'll want to capture them as secrets. Specifying a primitive value here will set the default secret value. For more detailed configuration, specify a SecretDefinitionSpec"
                      | optional,
                    services
                      | js2n.record.Record
                        {
                          additional = 'None,
                          patterns =
                            {
                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.ServiceSpec",
                                        { _ | Dyn }
                                      ],
                                "^\\${{\\s*if(.*?)\\s*}}$" =
                                  std.contract.Sequence
                                      [
                                        {
                                          _ | std.contract.Sequence
                                            [
                                              refs."definitions.ServiceSpec",
                                              { _ | Dyn }
                                            ]
                                        },
                                        js2n.record.FieldsMatch
                                          "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                      ],
                              },
                          properties = {},
                          required = {},
                        }
                      | doc "A Service represents a non-exiting runtime (e.g. daemons, servers, etc.). Each service is independently deployable and scalable. Services are 1:1 with a docker image."
                      | optional,
                    tasks
                      | js2n.record.Record
                        {
                          additional = 'None,
                          patterns =
                            {
                                "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.TaskSpec",
                                        { _ | Dyn }
                                      ],
                                "^\\${{\\s*if(.*?)\\s*}}$" =
                                  std.contract.Sequence
                                      [
                                        {
                                          _ | std.contract.Sequence
                                            [
                                              refs."definitions.TaskSpec",
                                              { _ | Dyn }
                                            ]
                                        },
                                        js2n.record.FieldsMatch
                                          "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                      ],
                              },
                          properties = {},
                          required = {},
                        }
                      | doc "A set of named recurring and/or exiting runtimes (e.g. crons, schedulers, triggered jobs) included with the component. Each task will run on its specified schedule and/or be triggerable via the Architect CLI. Tasks are 1:1 with a docker image."
                      | optional,
                  },
            },
        properties =
          {
              artifact_image = String,
              author = String,
              databases =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                              refs."definitions.DatabaseSpec",
                            "^\\${{\\s*if(.*?)\\s*}}$" =
                              std.contract.Sequence
                                  [
                                    { _ | refs."definitions.DatabaseSpec" },
                                    js2n.record.FieldsMatch
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                  ],
                          },
                      properties = {},
                      required = {},
                    },
              dependencies =
                std.contract.Sequence
                    [
                      {
                        _ | std.contract.any_of
                          [
                            js2n.string.Matches "^[\\w][\\w\\.-]{0,127}$",
                            js2n.string.Matches "\\${{\\s*(.*?)\\s*}}",
                            refs."definitions.DependencySpec"
                          ]
                      },
                      js2n.record.FieldsMatch
                        "^(?:(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)\\/)?(?<component_name>(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-))(?:@(?<instance_name>[\\w][\\w\\.-]{0,127}))?$"
                    ],
              description = String,
              homepage = String,
              interfaces =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                              std.contract.any_of
                                  [
                                    String,
                                    refs."definitions.ComponentInterfaceSpec"
                                  ],
                            "^\\${{\\s*if(.*?)\\s*}}$" =
                              std.contract.Sequence
                                  [
                                    {
                                      _ | std.contract.any_of
                                        [
                                          String,
                                          refs."definitions.ComponentInterfaceSpec"
                                        ]
                                    },
                                    js2n.record.FieldsMatch
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                  ],
                          },
                      properties = {},
                      required = {},
                    },
              keywords = Array String,
              name =
                js2n.string.Matches
                    "^(?:(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)\\/)?(?<component_name>(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-))(?:@(?<instance_name>[\\w][\\w\\.-]{0,127}))?$",
              outputs =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^[a-zA-Z0-9_-]+$" =
                              std.contract.any_of
                                  [
                                    String,
                                    Number,
                                    Bool,
                                    refs."definitions.OutputDefinitionSpec",
                                    js2n.Null
                                  ],
                            "^\\${{\\s*if(.*?)\\s*}}$" =
                              std.contract.Sequence
                                  [
                                    {
                                      _ | std.contract.any_of
                                        [
                                          String,
                                          Number,
                                          Bool,
                                          refs."definitions.OutputDefinitionSpec",
                                          js2n.Null
                                        ]
                                    },
                                    js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$"
                                  ],
                          },
                      properties = {},
                      required = {},
                    },
              secrets =
                std.contract.Sequence
                    [
                      {
                        _ | std.contract.any_of
                          [
                            String,
                            Number,
                            Bool,
                            refs."definitions.SecretDefinitionSpec",
                            js2n.Null
                          ]
                      },
                      js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$"
                    ],
              services =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.ServiceSpec",
                                    { _ | Dyn }
                                  ],
                            "^\\${{\\s*if(.*?)\\s*}}$" =
                              std.contract.Sequence
                                  [
                                    {
                                      _ | std.contract.Sequence
                                        [
                                          refs."definitions.ServiceSpec",
                                          { _ | Dyn }
                                        ]
                                    },
                                    js2n.record.FieldsMatch
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                  ],
                          },
                      properties = {},
                      required = {},
                    },
              tasks =
                js2n.record.Record
                    {
                      additional = 'None,
                      patterns =
                        {
                            "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$" =
                              std.contract.Sequence
                                  [ refs."definitions.TaskSpec", { _ | Dyn } ],
                            "^\\${{\\s*if(.*?)\\s*}}$" =
                              std.contract.Sequence
                                  [
                                    {
                                      _ | std.contract.Sequence
                                        [
                                          refs."definitions.TaskSpec",
                                          { _ | Dyn }
                                        ]
                                    },
                                    js2n.record.FieldsMatch
                                      "^(?!-)(?!.{0,32}--)[a-z0-9-]{1,32}(?<!-)$"
                                  ],
                          },
                      properties = {},
                      required = {},
                    },
            },
        required = { name = true, },
      }