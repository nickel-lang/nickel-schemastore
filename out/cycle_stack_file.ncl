# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.about.oneOf.1" =
        js2n.string.Matches "\\\"?{{(\\$)?([a-z0-9\\-]+)}}\\\"?",
      "properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0" =
        String,
      "properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.2.properties.details.properties.existing" =
        {
            source_id
              | refs."properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.4.properties.details.properties.source_id"
              | String
              | doc "The ID of the image source this image should be built from."
              | optional,
            ..
          },
      "properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.4.properties.details.properties.source_id" =
        String,
      "properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0" =
        String,
      "properties.scoped_variables.oneOf.0.items.properties.identifier.oneOf.0" =
        String,
      "properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.0.properties.details.anyOf.0" =
        {
            "default"
              | std.contract.any_of
                [
                  {
                    backend
                      | std.contract.any_of
                        [
                          {
                            balance
                              | js2n.OneOf
                                [
                                  std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'source,
                                        'first,
                                        'leastconn,
                                        'static-rr,
                                        'roundrobin
                                      |]
                                    ],
                                  std.contract.Sequence
                                    [ refs."properties.about.oneOf.1", String ]
                                ]
                              | doc m%"
                                How connections are balanced across your container instances. Can be one of the following: 
                                 - `roundrobin`: Each container instance is used in turns. 
                                 - `static-rr`: Each container instance is used in turns, but is faster than Round Robin at the expense of being less dynamic. 
                                 - `leastconn`: Routes traffic to the instance with the least number of active connections. 
                                 - `first`: Routes traffic to the first available instance. 
                                 - `source`: The same client IP always reaches the same container instance as long as no instance goes down or up.
                              "%,
                            timeouts
                              | js2n.OneOf
                                [
                                  js2n.Nullable
                                    (js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              connect_ms =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              queue_ms =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              server_fin_ms =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              server_secs =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              tunnel_secs =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                            },
                                        required =
                                          {
                                              connect_ms = true,
                                              queue_ms = true,
                                              server_fin_ms = true,
                                              server_secs = true,
                                              tunnel_secs = true,
                                            },
                                      }),
                                  std.contract.Sequence
                                    [ refs."properties.about.oneOf.1", String ]
                                ]
                              | doc "Various options for handling timeouts when communicating with a container instance behind the load balancer.",
                            ..
                          },
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ],
                    frontend
                      | std.contract.any_of
                        [
                          {
                            max_connections
                              | js2n.OneOf
                                [
                                  js2n.Nullable std.number.Integer,
                                  std.contract.Sequence
                                    [ refs."properties.about.oneOf.1", String ]
                                ]
                              | doc "The number of simultaneous connections that can be processed at a time.",
                            mode
                              | js2n.OneOf
                                [
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'http, 'tcp |] ],
                                  std.contract.Sequence
                                    [ refs."properties.about.oneOf.1", String ]
                                ]
                              | doc m%"
                                The type of traffic expected by the load balancer for this port. Can be either: 
                                 - tcp: Traffic is forwarded without any parsing or additional manipulation. 
                                 - http: Traffic is treated as web traffic. If a LINKED record is configured for a container exposing this port, the domain will be parsed and it will be forwarded to the proper container. This allows multiple services to run on port 80 in the same environment.
                              "%,
                            timeouts
                              | js2n.OneOf
                                [
                                  js2n.Nullable
                                    (js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = {},
                                        properties =
                                          {
                                              client_fin_ms =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              client_secs =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              http_keep_alive_ms =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                              http_request_ms =
                                                js2n.OneOf
                                                    [
                                                      js2n.Nullable
                                                        std.number.Integer,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ],
                                            },
                                        required =
                                          {
                                              client_fin_ms = true,
                                              client_secs = true,
                                              http_keep_alive_ms = true,
                                              http_request_ms = true,
                                            },
                                      }),
                                  std.contract.Sequence
                                    [ refs."properties.about.oneOf.1", String ]
                                ]
                              | doc "Various options for handling timeouts when communicating with the client.",
                            ..
                          },
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ],
                    ..
                  },
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ]
              | doc "Settings that are applied to any port that is not overridden in the following ports section.",
            ports
              | std.contract.any_of
                [
                  {
                    _ | std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.0.properties.details.anyOf.0.properties.default.oneOf.0",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."properties.about.oneOf.1", String ]
                      ]
                  },
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ]
              | doc "An object that defines how HAProxy will act on a specific port. The key is a custom port, and the value is the same settings object found under `default` above.",
            ..
          },
      "properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.0.properties.details.anyOf.0.properties.default.oneOf.0" =
        {
            backend
              | std.contract.any_of
                [
                  {
                    balance
                      | js2n.OneOf
                        [
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                'source,
                                'first,
                                'leastconn,
                                'static-rr,
                                'roundrobin
                              |]
                            ],
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc m%"
                        How connections are balanced across your container instances. Can be one of the following: 
                         - `roundrobin`: Each container instance is used in turns. 
                         - `static-rr`: Each container instance is used in turns, but is faster than Round Robin at the expense of being less dynamic. 
                         - `leastconn`: Routes traffic to the instance with the least number of active connections. 
                         - `first`: Routes traffic to the first available instance. 
                         - `source`: The same client IP always reaches the same container instance as long as no instance goes down or up.
                      "%,
                    timeouts
                      | js2n.OneOf
                        [
                          js2n.Nullable
                            (js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      connect_ms =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      queue_ms =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      server_fin_ms =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      server_secs =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      tunnel_secs =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                    },
                                required =
                                  {
                                      connect_ms = true,
                                      queue_ms = true,
                                      server_fin_ms = true,
                                      server_secs = true,
                                      tunnel_secs = true,
                                    },
                              }),
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc "Various options for handling timeouts when communicating with a container instance behind the load balancer.",
                    ..
                  },
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ],
            frontend
              | std.contract.any_of
                [
                  {
                    max_connections
                      | js2n.OneOf
                        [
                          js2n.Nullable std.number.Integer,
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc "The number of simultaneous connections that can be processed at a time.",
                    mode
                      | js2n.OneOf
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'http, 'tcp |] ],
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc m%"
                        The type of traffic expected by the load balancer for this port. Can be either: 
                         - tcp: Traffic is forwarded without any parsing or additional manipulation. 
                         - http: Traffic is treated as web traffic. If a LINKED record is configured for a container exposing this port, the domain will be parsed and it will be forwarded to the proper container. This allows multiple services to run on port 80 in the same environment.
                      "%,
                    timeouts
                      | js2n.OneOf
                        [
                          js2n.Nullable
                            (js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      client_fin_ms =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      client_secs =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      http_keep_alive_ms =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      http_request_ms =
                                        js2n.OneOf
                                            [
                                              js2n.Nullable std.number.Integer,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                    },
                                required =
                                  {
                                      client_fin_ms = true,
                                      client_secs = true,
                                      http_keep_alive_ms = true,
                                      http_request_ms = true,
                                    },
                              }),
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc "Various options for handling timeouts when communicating with the client.",
                    ..
                  },
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ],
            ..
          },
      "properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0" =
        {
            controller_template
              | std.contract.any_of
                [
                  {
                    identifier
                      | js2n.OneOf
                        [
                          String,
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc "A human-readable identifier for this controller. It will default to the port, i.e. `port-443`, but can be renamed to anything, such as the service this controller represents.",
                    port
                      | std.contract.any_of
                        [
                          std.number.Integer,
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc "The port inbound trafic is accepted on.",
                    transport
                      | js2n.OneOf
                        [
                          js2n.Nullable
                            (js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  {
                                      config =
                                        std.contract.any_of
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        extension =
                                                          std.contract.any_of
                                                              [
                                                                std.contract.Sequence
                                                                  [
                                                                    js2n.OneOf
                                                                      [
                                                                        js2n.record.Record
                                                                          {
                                                                            additional =
                                                                              'Some
                                                                                  Dyn,
                                                                            patterns =
                                                                              {},
                                                                            properties =
                                                                              {
                                                                                  details =
                                                                                    std.contract.any_of
                                                                                        [
                                                                                          js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    connections =
                                                                                                      std.contract.any_of
                                                                                                          [
                                                                                                            {
                                                                                                              _ | js2n.Always
                                                                                                            },
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                    telemetry =
                                                                                                      std.contract.any_of
                                                                                                          [
                                                                                                            {
                                                                                                              _ | js2n.Always
                                                                                                            },
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                  },
                                                                                              required =
                                                                                                {
                                                                                                    connections =
                                                                                                      true,
                                                                                                    telemetry =
                                                                                                      true,
                                                                                                  },
                                                                                            },
                                                                                          std.contract.Sequence
                                                                                            [
                                                                                              refs."properties.about.oneOf.1",
                                                                                              String
                                                                                            ]
                                                                                        ],
                                                                                  type =
                                                                                    std.contract.Sequence
                                                                                        [
                                                                                          std.enum.TagOrString,
                                                                                          [|
                                                                                            'tcp
                                                                                          |]
                                                                                        ],
                                                                                },
                                                                            required =
                                                                              {
                                                                                  details =
                                                                                    true,
                                                                                  type =
                                                                                    true,
                                                                                },
                                                                          },
                                                                        js2n.record.Record
                                                                          {
                                                                            additional =
                                                                              'Some
                                                                                  Dyn,
                                                                            patterns =
                                                                              {},
                                                                            properties =
                                                                              {
                                                                                  details =
                                                                                    std.contract.any_of
                                                                                        [
                                                                                          js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    connections =
                                                                                                      std.contract.any_of
                                                                                                          [
                                                                                                            js2n.record.Record
                                                                                                              {
                                                                                                                additional =
                                                                                                                  'Some
                                                                                                                      Dyn,
                                                                                                                patterns =
                                                                                                                  {},
                                                                                                                properties =
                                                                                                                  {
                                                                                                                      max_idle_conns_per_connection =
                                                                                                                        js2n.OneOf
                                                                                                                            [
                                                                                                                              js2n.Nullable
                                                                                                                                std.number.Integer,
                                                                                                                              std.contract.Sequence
                                                                                                                                [
                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                  String
                                                                                                                                ]
                                                                                                                            ],
                                                                                                                    },
                                                                                                                required =
                                                                                                                  {
                                                                                                                      max_idle_conns_per_connection =
                                                                                                                        true,
                                                                                                                    },
                                                                                                              },
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                    telemetry =
                                                                                                      std.contract.any_of
                                                                                                          [
                                                                                                            js2n.record.Record
                                                                                                              {
                                                                                                                additional =
                                                                                                                  'Some
                                                                                                                      Dyn,
                                                                                                                patterns =
                                                                                                                  {},
                                                                                                                properties =
                                                                                                                  {
                                                                                                                      ignore_paths =
                                                                                                                        js2n.OneOf
                                                                                                                            [
                                                                                                                              js2n.Nullable
                                                                                                                                (js2n.array.ArrayOf
                                                                                                                                  String),
                                                                                                                              std.contract.Sequence
                                                                                                                                [
                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                  String
                                                                                                                                ]
                                                                                                                            ],
                                                                                                                      max_trackable_urls =
                                                                                                                        js2n.OneOf
                                                                                                                            [
                                                                                                                              js2n.Nullable
                                                                                                                                std.number.Integer,
                                                                                                                              std.contract.Sequence
                                                                                                                                [
                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                  String
                                                                                                                                ]
                                                                                                                            ],
                                                                                                                      track_invalid_requests =
                                                                                                                        js2n.OneOf
                                                                                                                            [
                                                                                                                              js2n.Nullable
                                                                                                                                Bool,
                                                                                                                              std.contract.Sequence
                                                                                                                                [
                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                  String
                                                                                                                                ]
                                                                                                                            ],
                                                                                                                    },
                                                                                                                required =
                                                                                                                  {},
                                                                                                              },
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                  },
                                                                                              required =
                                                                                                {
                                                                                                    connections =
                                                                                                      true,
                                                                                                    telemetry =
                                                                                                      true,
                                                                                                  },
                                                                                            },
                                                                                          std.contract.Sequence
                                                                                            [
                                                                                              refs."properties.about.oneOf.1",
                                                                                              String
                                                                                            ]
                                                                                        ],
                                                                                  type =
                                                                                    std.contract.Sequence
                                                                                        [
                                                                                          std.enum.TagOrString,
                                                                                          [|
                                                                                            'http
                                                                                          |]
                                                                                        ],
                                                                                },
                                                                            required =
                                                                              {
                                                                                  details =
                                                                                    true,
                                                                                  type =
                                                                                    true,
                                                                                },
                                                                          },
                                                                        js2n.record.Record
                                                                          {
                                                                            additional =
                                                                              'Some
                                                                                  Dyn,
                                                                            patterns =
                                                                              {},
                                                                            properties =
                                                                              {
                                                                                  details =
                                                                                    std.contract.any_of
                                                                                        [
                                                                                          js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    telemetry =
                                                                                                      std.contract.any_of
                                                                                                          [
                                                                                                            {
                                                                                                              _ | js2n.Always
                                                                                                            },
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                  },
                                                                                              required =
                                                                                                {
                                                                                                    telemetry =
                                                                                                      true,
                                                                                                  },
                                                                                            },
                                                                                          std.contract.Sequence
                                                                                            [
                                                                                              refs."properties.about.oneOf.1",
                                                                                              String
                                                                                            ]
                                                                                        ],
                                                                                  type =
                                                                                    std.contract.Sequence
                                                                                        [
                                                                                          std.enum.TagOrString,
                                                                                          [|
                                                                                            'udp
                                                                                          |]
                                                                                        ],
                                                                                },
                                                                            required =
                                                                              {
                                                                                  details =
                                                                                    true,
                                                                                  type =
                                                                                    true,
                                                                                },
                                                                          }
                                                                      ],
                                                                    { _ | Dyn }
                                                                  ],
                                                                std.contract.Sequence
                                                                  [
                                                                    refs."properties.about.oneOf.1",
                                                                    String
                                                                  ]
                                                              ],
                                                        ingress =
                                                          std.contract.any_of
                                                              [
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          tls =
                                                                            js2n.OneOf
                                                                                [
                                                                                  js2n.Nullable
                                                                                    (js2n.record.Record
                                                                                      {
                                                                                        additional =
                                                                                          'Some
                                                                                              Dyn,
                                                                                        patterns =
                                                                                          {},
                                                                                        properties =
                                                                                          {
                                                                                              enable =
                                                                                                std.contract.any_of
                                                                                                    [
                                                                                                      Bool,
                                                                                                      std.contract.Sequence
                                                                                                        [
                                                                                                          refs."properties.about.oneOf.1",
                                                                                                          String
                                                                                                        ]
                                                                                                    ],
                                                                                            },
                                                                                        required =
                                                                                          {
                                                                                              enable =
                                                                                                true,
                                                                                            },
                                                                                      }),
                                                                                  std.contract.Sequence
                                                                                    [
                                                                                      refs."properties.about.oneOf.1",
                                                                                      String
                                                                                    ]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {},
                                                                  },
                                                                std.contract.Sequence
                                                                  [
                                                                    refs."properties.about.oneOf.1",
                                                                    String
                                                                  ]
                                                              ],
                                                        performance =
                                                          std.contract.any_of
                                                              [
                                                                Bool,
                                                                std.contract.Sequence
                                                                  [
                                                                    refs."properties.about.oneOf.1",
                                                                    String
                                                                  ]
                                                              ],
                                                        timeouts =
                                                          std.contract.any_of
                                                              [
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          idle =
                                                                            js2n.OneOf
                                                                                [
                                                                                  std.contract.Sequence
                                                                                    [
                                                                                      refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                      String
                                                                                    ],
                                                                                  std.contract.Sequence
                                                                                    [
                                                                                      refs."properties.about.oneOf.1",
                                                                                      String
                                                                                    ]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          idle =
                                                                            true,
                                                                        },
                                                                  },
                                                                std.contract.Sequence
                                                                  [
                                                                    refs."properties.about.oneOf.1",
                                                                    String
                                                                  ]
                                                              ],
                                                        verbosity =
                                                          js2n.OneOf
                                                              [
                                                                std.contract.Sequence
                                                                  [
                                                                    std.enum.TagOrString,
                                                                    [|
                                                                      'debug,
                                                                      'high,
                                                                      'normal,
                                                                      'low
                                                                    |]
                                                                  ],
                                                                std.contract.Sequence
                                                                  [
                                                                    refs."properties.about.oneOf.1",
                                                                    String
                                                                  ]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        ingress = true,
                                                        performance = true,
                                                        timeouts = true,
                                                        verbosity = true,
                                                      },
                                                },
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      disable =
                                        std.contract.any_of
                                            [
                                              Bool,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      mode =
                                        js2n.OneOf
                                            [
                                              std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'http, 'udp, 'tcp |]
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                      routers =
                                        std.contract.any_of
                                            [
                                              js2n.array.ArrayOf
                                                (std.contract.any_of
                                                  [
                                                    js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              config =
                                                                std.contract.any_of
                                                                    [
                                                                      js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                destination_prioritization =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            std.enum.TagOrString,
                                                                                            [|
                                                                                              'fixed,
                                                                                              'random,
                                                                                              'latency
                                                                                            |]
                                                                                          ],
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ],
                                                                                        js2n.Null
                                                                                      ],
                                                                                destination_retries =
                                                                                  std.contract.any_of
                                                                                      [
                                                                                        std.number.Integer,
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                extension =
                                                                                  js2n.Nullable
                                                                                      (std.contract.Sequence
                                                                                        [
                                                                                          js2n.OneOf
                                                                                            [
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        Dyn,
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {
                                                                                                        details =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                {
                                                                                                                  _ | js2n.Always
                                                                                                                },
                                                                                                                std.contract.Sequence
                                                                                                                  [
                                                                                                                    refs."properties.about.oneOf.1",
                                                                                                                    String
                                                                                                                  ]
                                                                                                              ],
                                                                                                        type =
                                                                                                          std.contract.Sequence
                                                                                                              [
                                                                                                                std.enum.TagOrString,
                                                                                                                [|
                                                                                                                  'tcp
                                                                                                                |]
                                                                                                              ],
                                                                                                      },
                                                                                                  required =
                                                                                                    {
                                                                                                        details =
                                                                                                          true,
                                                                                                        type =
                                                                                                          true,
                                                                                                      },
                                                                                                },
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        Dyn,
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {
                                                                                                        details =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                js2n.record.Record
                                                                                                                  {
                                                                                                                    additional =
                                                                                                                      'Some
                                                                                                                          Dyn,
                                                                                                                    patterns =
                                                                                                                      {},
                                                                                                                    properties =
                                                                                                                      {
                                                                                                                          caching =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    (js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              files =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        (js2n.array.ArrayOf
                                                                                                                                                          (std.contract.any_of
                                                                                                                                                            [
                                                                                                                                                              js2n.record.Record
                                                                                                                                                                {
                                                                                                                                                                  additional =
                                                                                                                                                                    'Some
                                                                                                                                                                        Dyn,
                                                                                                                                                                  patterns =
                                                                                                                                                                    {},
                                                                                                                                                                  properties =
                                                                                                                                                                    {
                                                                                                                                                                        "match" =
                                                                                                                                                                          js2n.OneOf
                                                                                                                                                                              [
                                                                                                                                                                                String,
                                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                                  [
                                                                                                                                                                                    refs."properties.about.oneOf.1",
                                                                                                                                                                                    String
                                                                                                                                                                                  ]
                                                                                                                                                                              ],
                                                                                                                                                                        ttl =
                                                                                                                                                                          js2n.OneOf
                                                                                                                                                                              [
                                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                                  [
                                                                                                                                                                                    refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                                                                                                    String
                                                                                                                                                                                  ],
                                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                                  [
                                                                                                                                                                                    refs."properties.about.oneOf.1",
                                                                                                                                                                                    String
                                                                                                                                                                                  ]
                                                                                                                                                                              ],
                                                                                                                                                                      },
                                                                                                                                                                  required =
                                                                                                                                                                    {
                                                                                                                                                                        "match" =
                                                                                                                                                                          true,
                                                                                                                                                                        ttl =
                                                                                                                                                                          true,
                                                                                                                                                                      },
                                                                                                                                                                },
                                                                                                                                                              std.contract.Sequence
                                                                                                                                                                [
                                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                                  String
                                                                                                                                                                ]
                                                                                                                                                            ])),
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {},
                                                                                                                                      }),
                                                                                                                                  std.contract.Sequence
                                                                                                                                    [
                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                      String
                                                                                                                                    ]
                                                                                                                                ],
                                                                                                                          forward =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    (js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              content_mod =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        (js2n.record.Record
                                                                                                                                                          {
                                                                                                                                                            additional =
                                                                                                                                                              'Some
                                                                                                                                                                  Dyn,
                                                                                                                                                            patterns =
                                                                                                                                                              {},
                                                                                                                                                            properties =
                                                                                                                                                              {
                                                                                                                                                                  replace =
                                                                                                                                                                    js2n.OneOf
                                                                                                                                                                        [
                                                                                                                                                                          js2n.Nullable
                                                                                                                                                                            (js2n.array.ArrayOf
                                                                                                                                                                              (std.contract.any_of
                                                                                                                                                                                [
                                                                                                                                                                                  js2n.record.Record
                                                                                                                                                                                    {
                                                                                                                                                                                      additional =
                                                                                                                                                                                        'Some
                                                                                                                                                                                            Dyn,
                                                                                                                                                                                      patterns =
                                                                                                                                                                                        {},
                                                                                                                                                                                      properties =
                                                                                                                                                                                        {
                                                                                                                                                                                            "match" =
                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                  [
                                                                                                                                                                                                    String,
                                                                                                                                                                                                    std.contract.Sequence
                                                                                                                                                                                                      [
                                                                                                                                                                                                        refs."properties.about.oneOf.1",
                                                                                                                                                                                                        String
                                                                                                                                                                                                      ]
                                                                                                                                                                                                  ],
                                                                                                                                                                                            value =
                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                  [
                                                                                                                                                                                                    String,
                                                                                                                                                                                                    std.contract.Sequence
                                                                                                                                                                                                      [
                                                                                                                                                                                                        refs."properties.about.oneOf.1",
                                                                                                                                                                                                        String
                                                                                                                                                                                                      ]
                                                                                                                                                                                                  ],
                                                                                                                                                                                          },
                                                                                                                                                                                      required =
                                                                                                                                                                                        {
                                                                                                                                                                                            "match" =
                                                                                                                                                                                              true,
                                                                                                                                                                                            value =
                                                                                                                                                                                              true,
                                                                                                                                                                                          },
                                                                                                                                                                                    },
                                                                                                                                                                                  std.contract.Sequence
                                                                                                                                                                                    [
                                                                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                                                                      String
                                                                                                                                                                                    ]
                                                                                                                                                                                ])),
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                            [
                                                                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                                                                              String
                                                                                                                                                                            ]
                                                                                                                                                                        ],
                                                                                                                                                                },
                                                                                                                                                            required =
                                                                                                                                                              {},
                                                                                                                                                          }),
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              scheme =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        String,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              url =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      String,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {},
                                                                                                                                      }),
                                                                                                                                  std.contract.Sequence
                                                                                                                                    [
                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                      String
                                                                                                                                    ]
                                                                                                                                ],
                                                                                                                          proxy =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    (js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              content_mod =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        (js2n.record.Record
                                                                                                                                                          {
                                                                                                                                                            additional =
                                                                                                                                                              'Some
                                                                                                                                                                  Dyn,
                                                                                                                                                            patterns =
                                                                                                                                                              {},
                                                                                                                                                            properties =
                                                                                                                                                              {
                                                                                                                                                                  replace =
                                                                                                                                                                    js2n.OneOf
                                                                                                                                                                        [
                                                                                                                                                                          js2n.Nullable
                                                                                                                                                                            (js2n.array.ArrayOf
                                                                                                                                                                              (std.contract.any_of
                                                                                                                                                                                [
                                                                                                                                                                                  js2n.record.Record
                                                                                                                                                                                    {
                                                                                                                                                                                      additional =
                                                                                                                                                                                        'Some
                                                                                                                                                                                            Dyn,
                                                                                                                                                                                      patterns =
                                                                                                                                                                                        {},
                                                                                                                                                                                      properties =
                                                                                                                                                                                        {
                                                                                                                                                                                            "match" =
                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                  [
                                                                                                                                                                                                    String,
                                                                                                                                                                                                    std.contract.Sequence
                                                                                                                                                                                                      [
                                                                                                                                                                                                        refs."properties.about.oneOf.1",
                                                                                                                                                                                                        String
                                                                                                                                                                                                      ]
                                                                                                                                                                                                  ],
                                                                                                                                                                                            value =
                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                  [
                                                                                                                                                                                                    String,
                                                                                                                                                                                                    std.contract.Sequence
                                                                                                                                                                                                      [
                                                                                                                                                                                                        refs."properties.about.oneOf.1",
                                                                                                                                                                                                        String
                                                                                                                                                                                                      ]
                                                                                                                                                                                                  ],
                                                                                                                                                                                          },
                                                                                                                                                                                      required =
                                                                                                                                                                                        {
                                                                                                                                                                                            "match" =
                                                                                                                                                                                              true,
                                                                                                                                                                                            value =
                                                                                                                                                                                              true,
                                                                                                                                                                                          },
                                                                                                                                                                                    },
                                                                                                                                                                                  std.contract.Sequence
                                                                                                                                                                                    [
                                                                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                                                                      String
                                                                                                                                                                                    ]
                                                                                                                                                                                ])),
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                            [
                                                                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                                                                              String
                                                                                                                                                                            ]
                                                                                                                                                                        ],
                                                                                                                                                                },
                                                                                                                                                            required =
                                                                                                                                                              {},
                                                                                                                                                          }),
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              domain =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        String,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              url =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      String,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ],
                                                                                                                                                      js2n.Null
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {},
                                                                                                                                      }),
                                                                                                                                  std.contract.Sequence
                                                                                                                                    [
                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                      String
                                                                                                                                    ]
                                                                                                                                ],
                                                                                                                          redirect =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    (js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              auto_https_redirect =
                                                                                                                                                std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      Bool,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              port =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              remove_www =
                                                                                                                                                std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      Bool,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              scheme =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        String,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                              url =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        String,
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {
                                                                                                                                              auto_https_redirect =
                                                                                                                                                true,
                                                                                                                                              remove_www =
                                                                                                                                                true,
                                                                                                                                            },
                                                                                                                                      }),
                                                                                                                                  std.contract.Sequence
                                                                                                                                    [
                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                      String
                                                                                                                                    ]
                                                                                                                                ],
                                                                                                                        },
                                                                                                                    required =
                                                                                                                      {},
                                                                                                                  },
                                                                                                                std.contract.Sequence
                                                                                                                  [
                                                                                                                    refs."properties.about.oneOf.1",
                                                                                                                    String
                                                                                                                  ]
                                                                                                              ],
                                                                                                        type =
                                                                                                          std.contract.Sequence
                                                                                                              [
                                                                                                                std.enum.TagOrString,
                                                                                                                [|
                                                                                                                  'http
                                                                                                                |]
                                                                                                              ],
                                                                                                      },
                                                                                                  required =
                                                                                                    {
                                                                                                        details =
                                                                                                          true,
                                                                                                        type =
                                                                                                          true,
                                                                                                      },
                                                                                                },
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        Dyn,
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {
                                                                                                        details =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                {
                                                                                                                  _ | js2n.Always
                                                                                                                },
                                                                                                                std.contract.Sequence
                                                                                                                  [
                                                                                                                    refs."properties.about.oneOf.1",
                                                                                                                    String
                                                                                                                  ]
                                                                                                              ],
                                                                                                        type =
                                                                                                          std.contract.Sequence
                                                                                                              [
                                                                                                                std.enum.TagOrString,
                                                                                                                [|
                                                                                                                  'udp
                                                                                                                |]
                                                                                                              ],
                                                                                                      },
                                                                                                  required =
                                                                                                    {
                                                                                                        details =
                                                                                                          true,
                                                                                                        type =
                                                                                                          true,
                                                                                                      },
                                                                                                }
                                                                                            ],
                                                                                          {
                                                                                            _ | Dyn
                                                                                          }
                                                                                        ]),
                                                                                sticky_sessions =
                                                                                  std.contract.any_of
                                                                                      [
                                                                                        Bool,
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                timeouts =
                                                                                  std.contract.any_of
                                                                                      [
                                                                                        js2n.record.Record
                                                                                          {
                                                                                            additional =
                                                                                              'Some
                                                                                                  Dyn,
                                                                                            patterns =
                                                                                              {},
                                                                                            properties =
                                                                                              {
                                                                                                  destination_connection =
                                                                                                    js2n.OneOf
                                                                                                        [
                                                                                                          std.contract.Sequence
                                                                                                            [
                                                                                                              refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                              String
                                                                                                            ],
                                                                                                          std.contract.Sequence
                                                                                                            [
                                                                                                              refs."properties.about.oneOf.1",
                                                                                                              String
                                                                                                            ]
                                                                                                        ],
                                                                                                },
                                                                                            required =
                                                                                              {
                                                                                                  destination_connection =
                                                                                                    true,
                                                                                                },
                                                                                          },
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                tls =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        js2n.Nullable
                                                                                          (js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    allow_insecure =
                                                                                                      js2n.OneOf
                                                                                                          [
                                                                                                            js2n.Nullable
                                                                                                              Bool,
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                    client_auth =
                                                                                                      js2n.OneOf
                                                                                                          [
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                std.enum.TagOrString,
                                                                                                                [|
                                                                                                                  'require-verify,
                                                                                                                  'require,
                                                                                                                  'request,
                                                                                                                  'none
                                                                                                                |]
                                                                                                              ],
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ],
                                                                                                            js2n.Null
                                                                                                          ],
                                                                                                    client_cert_auth =
                                                                                                      js2n.OneOf
                                                                                                          [
                                                                                                            js2n.Nullable
                                                                                                              String,
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                    server_name =
                                                                                                      js2n.OneOf
                                                                                                          [
                                                                                                            js2n.Nullable
                                                                                                              String,
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                  },
                                                                                              required =
                                                                                                {},
                                                                                            }),
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                              },
                                                                          required =
                                                                            {
                                                                                destination_retries =
                                                                                  true,
                                                                                sticky_sessions =
                                                                                  true,
                                                                                timeouts =
                                                                                  true,
                                                                              },
                                                                        },
                                                                      std.contract.Sequence
                                                                        [
                                                                          refs."properties.about.oneOf.1",
                                                                          String
                                                                        ]
                                                                    ],
                                                              "match" =
                                                                std.contract.any_of
                                                                    [
                                                                      js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                containers =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        js2n.Nullable
                                                                                          (js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    exclude =
                                                                                                      js2n.OneOf
                                                                                                          [
                                                                                                            js2n.Nullable
                                                                                                              (js2n.array.ArrayOf
                                                                                                                (std.contract.Sequence
                                                                                                                  [
                                                                                                                    refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0",
                                                                                                                    String
                                                                                                                  ])),
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                    include =
                                                                                                      js2n.OneOf
                                                                                                          [
                                                                                                            js2n.Nullable
                                                                                                              (js2n.array.ArrayOf
                                                                                                                (std.contract.Sequence
                                                                                                                  [
                                                                                                                    refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0",
                                                                                                                    String
                                                                                                                  ])),
                                                                                                            std.contract.Sequence
                                                                                                              [
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                String
                                                                                                              ]
                                                                                                          ],
                                                                                                  },
                                                                                              required =
                                                                                                {},
                                                                                            }),
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                domains =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        js2n.Nullable
                                                                                          (js2n.array.ArrayOf
                                                                                            String),
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                internal_ports =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        js2n.Nullable
                                                                                          (js2n.array.ArrayOf
                                                                                            std.number.Integer),
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                                path =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        js2n.Nullable
                                                                                          String,
                                                                                        std.contract.Sequence
                                                                                          [
                                                                                            refs."properties.about.oneOf.1",
                                                                                            String
                                                                                          ]
                                                                                      ],
                                                                              },
                                                                          required =
                                                                            {
                                                                                domains =
                                                                                  true,
                                                                                internal_ports =
                                                                                  true,
                                                                              },
                                                                        },
                                                                      std.contract.Sequence
                                                                        [
                                                                          refs."properties.about.oneOf.1",
                                                                          String
                                                                        ]
                                                                    ],
                                                              mode =
                                                                js2n.OneOf
                                                                    [
                                                                      std.contract.Sequence
                                                                        [
                                                                          std.enum.TagOrString,
                                                                          [|
                                                                            'source-ip,
                                                                            'round-robin,
                                                                            'random
                                                                          |]
                                                                        ],
                                                                      std.contract.Sequence
                                                                        [
                                                                          refs."properties.about.oneOf.1",
                                                                          String
                                                                        ]
                                                                    ],
                                                            },
                                                        required =
                                                          {
                                                              config = true,
                                                              "match" = true,
                                                              mode = true,
                                                            },
                                                      },
                                                    std.contract.Sequence
                                                      [
                                                        refs."properties.about.oneOf.1",
                                                        String
                                                      ]
                                                  ]),
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ],
                                    },
                                required =
                                  {
                                      config = true,
                                      disable = true,
                                      mode = true,
                                      routers = true,
                                    },
                              }),
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ]
                      | doc "Defines how traffic comes in to the load balancer, and how the load balancer handles it."
                      | optional,
                    waf
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.waf.anyOf.0",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ],
                          js2n.Null
                        ]
                      | optional,
                    ..
                  },
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ],
                  js2n.Null
                ]
              | optional,
            controllers
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.controller_template.anyOf.0",
                        { _ | Dyn }
                      ]
                  ),
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ]
              | doc "A configuration for a specific port.",
            waf
              | std.contract.any_of
                [
                  {
                    rules
                      | std.contract.any_of
                        [
                          Array (
                            std.contract.any_of
                              [
                                {
                                  conditions
                                    | std.contract.any_of
                                      [
                                        Array (
                                          std.contract.any_of
                                            [
                                              {
                                                operator
                                                  | js2n.OneOf
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            '"<=",
                                                            '">=",
                                                            '"<",
                                                            '">",
                                                            '"!=",
                                                            '"=="
                                                          |]
                                                        ],
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ]
                                                  | doc "A string that indicates the range of values relative to the value property.",
                                                type
                                                  | js2n.OneOf
                                                    [
                                                      std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            'header-match,
                                                            'method-match,
                                                            'url-match,
                                                            'geo-match,
                                                            'ip-match
                                                          |]
                                                        ],
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ]
                                                  | doc "A string that describes the match type for the condition.",
                                                value
                                                  | js2n.OneOf
                                                    [
                                                      String,
                                                      std.contract.Sequence
                                                        [
                                                          refs."properties.about.oneOf.1",
                                                          String
                                                        ]
                                                    ]
                                                  | doc "The value corresponding to the condition type.",
                                                ..
                                              },
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ]
                                        ),
                                        std.contract.Sequence
                                          [
                                            refs."properties.about.oneOf.1",
                                            String
                                          ]
                                      ]
                                    | doc "An array of the specific conditions for the rule.",
                                  description
                                    | js2n.OneOf
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."properties.about.oneOf.1",
                                            String
                                          ]
                                      ]
                                    | doc "Some information about the rule.",
                                  expires
                                    | js2n.OneOf
                                      [
                                        String,
                                        std.contract.Sequence
                                          [
                                            refs."properties.about.oneOf.1",
                                            String
                                          ],
                                        js2n.Null
                                      ]
                                    | doc "The expiration date of the WAF config, if present."
                                    | optional,
                                  "match"
                                    | js2n.OneOf
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'all, 'any |]
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."properties.about.oneOf.1",
                                            String
                                          ]
                                      ]
                                    | doc "A string that describes if both attributes need to be true (match all) or if only one of the conditions needs to be true (match any)."
                                    | optional,
                                  skip
                                    | std.contract.any_of
                                      [
                                        Bool,
                                        std.contract.Sequence
                                          [
                                            refs."properties.about.oneOf.1",
                                            String
                                          ]
                                      ]
                                    | doc "A boolean that indicates if the rule should be active or skipped.",
                                  type
                                    | js2n.OneOf
                                      [
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'deny, 'allow |]
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."properties.about.oneOf.1",
                                            String
                                          ]
                                      ]
                                    | doc "A string that describes if the role should allow or deny traffic based on the conditions.",
                                  ..
                                },
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ]
                              ]
                          ),
                          std.contract.Sequence
                            [ refs."properties.about.oneOf.1", String ]
                        ],
                    ..
                  },
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ],
                  js2n.Null
                ]
              | optional,
            ..
          },
      "properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.controller_template.anyOf.0" =
        {
            identifier
              | js2n.OneOf
                [
                  String,
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ]
              | doc "A human-readable identifier for this controller. It will default to the port, i.e. `port-443`, but can be renamed to anything, such as the service this controller represents.",
            port
              | std.contract.any_of
                [
                  std.number.Integer,
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ]
              | doc "The port inbound trafic is accepted on.",
            transport
              | js2n.OneOf
                [
                  js2n.Nullable
                    (js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              config =
                                std.contract.any_of
                                    [
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                extension =
                                                  std.contract.any_of
                                                      [
                                                        std.contract.Sequence
                                                          [
                                                            js2n.OneOf
                                                              [
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          details =
                                                                            std.contract.any_of
                                                                                [
                                                                                  js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'Some
                                                                                            Dyn,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            connections =
                                                                                              std.contract.any_of
                                                                                                  [
                                                                                                    {
                                                                                                      _ | js2n.Always
                                                                                                    },
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                            telemetry =
                                                                                              std.contract.any_of
                                                                                                  [
                                                                                                    {
                                                                                                      _ | js2n.Always
                                                                                                    },
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            connections =
                                                                                              true,
                                                                                            telemetry =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                                  std.contract.Sequence
                                                                                    [
                                                                                      refs."properties.about.oneOf.1",
                                                                                      String
                                                                                    ]
                                                                                ],
                                                                          type =
                                                                            std.contract.Sequence
                                                                                [
                                                                                  std.enum.TagOrString,
                                                                                  [|
                                                                                    'tcp
                                                                                  |]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          details =
                                                                            true,
                                                                          type =
                                                                            true,
                                                                        },
                                                                  },
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          details =
                                                                            std.contract.any_of
                                                                                [
                                                                                  js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'Some
                                                                                            Dyn,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            connections =
                                                                                              std.contract.any_of
                                                                                                  [
                                                                                                    js2n.record.Record
                                                                                                      {
                                                                                                        additional =
                                                                                                          'Some
                                                                                                              Dyn,
                                                                                                        patterns =
                                                                                                          {},
                                                                                                        properties =
                                                                                                          {
                                                                                                              max_idle_conns_per_connection =
                                                                                                                js2n.OneOf
                                                                                                                    [
                                                                                                                      js2n.Nullable
                                                                                                                        std.number.Integer,
                                                                                                                      std.contract.Sequence
                                                                                                                        [
                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                          String
                                                                                                                        ]
                                                                                                                    ],
                                                                                                            },
                                                                                                        required =
                                                                                                          {
                                                                                                              max_idle_conns_per_connection =
                                                                                                                true,
                                                                                                            },
                                                                                                      },
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                            telemetry =
                                                                                              std.contract.any_of
                                                                                                  [
                                                                                                    js2n.record.Record
                                                                                                      {
                                                                                                        additional =
                                                                                                          'Some
                                                                                                              Dyn,
                                                                                                        patterns =
                                                                                                          {},
                                                                                                        properties =
                                                                                                          {
                                                                                                              ignore_paths =
                                                                                                                js2n.OneOf
                                                                                                                    [
                                                                                                                      js2n.Nullable
                                                                                                                        (js2n.array.ArrayOf
                                                                                                                          String),
                                                                                                                      std.contract.Sequence
                                                                                                                        [
                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                          String
                                                                                                                        ]
                                                                                                                    ],
                                                                                                              max_trackable_urls =
                                                                                                                js2n.OneOf
                                                                                                                    [
                                                                                                                      js2n.Nullable
                                                                                                                        std.number.Integer,
                                                                                                                      std.contract.Sequence
                                                                                                                        [
                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                          String
                                                                                                                        ]
                                                                                                                    ],
                                                                                                              track_invalid_requests =
                                                                                                                js2n.OneOf
                                                                                                                    [
                                                                                                                      js2n.Nullable
                                                                                                                        Bool,
                                                                                                                      std.contract.Sequence
                                                                                                                        [
                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                          String
                                                                                                                        ]
                                                                                                                    ],
                                                                                                            },
                                                                                                        required =
                                                                                                          {},
                                                                                                      },
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            connections =
                                                                                              true,
                                                                                            telemetry =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                                  std.contract.Sequence
                                                                                    [
                                                                                      refs."properties.about.oneOf.1",
                                                                                      String
                                                                                    ]
                                                                                ],
                                                                          type =
                                                                            std.contract.Sequence
                                                                                [
                                                                                  std.enum.TagOrString,
                                                                                  [|
                                                                                    'http
                                                                                  |]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          details =
                                                                            true,
                                                                          type =
                                                                            true,
                                                                        },
                                                                  },
                                                                js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          details =
                                                                            std.contract.any_of
                                                                                [
                                                                                  js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'Some
                                                                                            Dyn,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            telemetry =
                                                                                              std.contract.any_of
                                                                                                  [
                                                                                                    {
                                                                                                      _ | js2n.Always
                                                                                                    },
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            telemetry =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                                  std.contract.Sequence
                                                                                    [
                                                                                      refs."properties.about.oneOf.1",
                                                                                      String
                                                                                    ]
                                                                                ],
                                                                          type =
                                                                            std.contract.Sequence
                                                                                [
                                                                                  std.enum.TagOrString,
                                                                                  [|
                                                                                    'udp
                                                                                  |]
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          details =
                                                                            true,
                                                                          type =
                                                                            true,
                                                                        },
                                                                  }
                                                              ],
                                                            { _ | Dyn }
                                                          ],
                                                        std.contract.Sequence
                                                          [
                                                            refs."properties.about.oneOf.1",
                                                            String
                                                          ]
                                                      ],
                                                ingress =
                                                  std.contract.any_of
                                                      [
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  tls =
                                                                    js2n.OneOf
                                                                        [
                                                                          js2n.Nullable
                                                                            (js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'Some
                                                                                      Dyn,
                                                                                patterns =
                                                                                  {},
                                                                                properties =
                                                                                  {
                                                                                      enable =
                                                                                        std.contract.any_of
                                                                                            [
                                                                                              Bool,
                                                                                              std.contract.Sequence
                                                                                                [
                                                                                                  refs."properties.about.oneOf.1",
                                                                                                  String
                                                                                                ]
                                                                                            ],
                                                                                    },
                                                                                required =
                                                                                  {
                                                                                      enable =
                                                                                        true,
                                                                                    },
                                                                              }),
                                                                          std.contract.Sequence
                                                                            [
                                                                              refs."properties.about.oneOf.1",
                                                                              String
                                                                            ]
                                                                        ],
                                                                },
                                                            required = {},
                                                          },
                                                        std.contract.Sequence
                                                          [
                                                            refs."properties.about.oneOf.1",
                                                            String
                                                          ]
                                                      ],
                                                performance =
                                                  std.contract.any_of
                                                      [
                                                        Bool,
                                                        std.contract.Sequence
                                                          [
                                                            refs."properties.about.oneOf.1",
                                                            String
                                                          ]
                                                      ],
                                                timeouts =
                                                  std.contract.any_of
                                                      [
                                                        js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  idle =
                                                                    js2n.OneOf
                                                                        [
                                                                          std.contract.Sequence
                                                                            [
                                                                              refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                              String
                                                                            ],
                                                                          std.contract.Sequence
                                                                            [
                                                                              refs."properties.about.oneOf.1",
                                                                              String
                                                                            ]
                                                                        ],
                                                                },
                                                            required =
                                                              { idle = true, },
                                                          },
                                                        std.contract.Sequence
                                                          [
                                                            refs."properties.about.oneOf.1",
                                                            String
                                                          ]
                                                      ],
                                                verbosity =
                                                  js2n.OneOf
                                                      [
                                                        std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              'debug,
                                                              'high,
                                                              'normal,
                                                              'low
                                                            |]
                                                          ],
                                                        std.contract.Sequence
                                                          [
                                                            refs."properties.about.oneOf.1",
                                                            String
                                                          ]
                                                      ],
                                              },
                                          required =
                                            {
                                                ingress = true,
                                                performance = true,
                                                timeouts = true,
                                                verbosity = true,
                                              },
                                        },
                                      std.contract.Sequence
                                        [
                                          refs."properties.about.oneOf.1",
                                          String
                                        ]
                                    ],
                              disable =
                                std.contract.any_of
                                    [
                                      Bool,
                                      std.contract.Sequence
                                        [
                                          refs."properties.about.oneOf.1",
                                          String
                                        ]
                                    ],
                              mode =
                                js2n.OneOf
                                    [
                                      std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'http, 'udp, 'tcp |]
                                        ],
                                      std.contract.Sequence
                                        [
                                          refs."properties.about.oneOf.1",
                                          String
                                        ]
                                    ],
                              routers =
                                std.contract.any_of
                                    [
                                      js2n.array.ArrayOf
                                        (std.contract.any_of
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      config =
                                                        std.contract.any_of
                                                            [
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        destination_prioritization =
                                                                          js2n.OneOf
                                                                              [
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    std.enum.TagOrString,
                                                                                    [|
                                                                                      'fixed,
                                                                                      'random,
                                                                                      'latency
                                                                                    |]
                                                                                  ],
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ],
                                                                                js2n.Null
                                                                              ],
                                                                        destination_retries =
                                                                          std.contract.any_of
                                                                              [
                                                                                std.number.Integer,
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        extension =
                                                                          js2n.Nullable
                                                                              (std.contract.Sequence
                                                                                [
                                                                                  js2n.OneOf
                                                                                    [
                                                                                      js2n.record.Record
                                                                                        {
                                                                                          additional =
                                                                                            'Some
                                                                                                Dyn,
                                                                                          patterns =
                                                                                            {},
                                                                                          properties =
                                                                                            {
                                                                                                details =
                                                                                                  std.contract.any_of
                                                                                                      [
                                                                                                        {
                                                                                                          _ | js2n.Always
                                                                                                        },
                                                                                                        std.contract.Sequence
                                                                                                          [
                                                                                                            refs."properties.about.oneOf.1",
                                                                                                            String
                                                                                                          ]
                                                                                                      ],
                                                                                                type =
                                                                                                  std.contract.Sequence
                                                                                                      [
                                                                                                        std.enum.TagOrString,
                                                                                                        [|
                                                                                                          'tcp
                                                                                                        |]
                                                                                                      ],
                                                                                              },
                                                                                          required =
                                                                                            {
                                                                                                details =
                                                                                                  true,
                                                                                                type =
                                                                                                  true,
                                                                                              },
                                                                                        },
                                                                                      js2n.record.Record
                                                                                        {
                                                                                          additional =
                                                                                            'Some
                                                                                                Dyn,
                                                                                          patterns =
                                                                                            {},
                                                                                          properties =
                                                                                            {
                                                                                                details =
                                                                                                  std.contract.any_of
                                                                                                      [
                                                                                                        js2n.record.Record
                                                                                                          {
                                                                                                            additional =
                                                                                                              'Some
                                                                                                                  Dyn,
                                                                                                            patterns =
                                                                                                              {},
                                                                                                            properties =
                                                                                                              {
                                                                                                                  caching =
                                                                                                                    js2n.OneOf
                                                                                                                        [
                                                                                                                          js2n.Nullable
                                                                                                                            (js2n.record.Record
                                                                                                                              {
                                                                                                                                additional =
                                                                                                                                  'Some
                                                                                                                                      Dyn,
                                                                                                                                patterns =
                                                                                                                                  {},
                                                                                                                                properties =
                                                                                                                                  {
                                                                                                                                      files =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                (js2n.array.ArrayOf
                                                                                                                                                  (std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      js2n.record.Record
                                                                                                                                                        {
                                                                                                                                                          additional =
                                                                                                                                                            'Some
                                                                                                                                                                Dyn,
                                                                                                                                                          patterns =
                                                                                                                                                            {},
                                                                                                                                                          properties =
                                                                                                                                                            {
                                                                                                                                                                "match" =
                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                      [
                                                                                                                                                                        String,
                                                                                                                                                                        std.contract.Sequence
                                                                                                                                                                          [
                                                                                                                                                                            refs."properties.about.oneOf.1",
                                                                                                                                                                            String
                                                                                                                                                                          ]
                                                                                                                                                                      ],
                                                                                                                                                                ttl =
                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                      [
                                                                                                                                                                        std.contract.Sequence
                                                                                                                                                                          [
                                                                                                                                                                            refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                                                                                            String
                                                                                                                                                                          ],
                                                                                                                                                                        std.contract.Sequence
                                                                                                                                                                          [
                                                                                                                                                                            refs."properties.about.oneOf.1",
                                                                                                                                                                            String
                                                                                                                                                                          ]
                                                                                                                                                                      ],
                                                                                                                                                              },
                                                                                                                                                          required =
                                                                                                                                                            {
                                                                                                                                                                "match" =
                                                                                                                                                                  true,
                                                                                                                                                                ttl =
                                                                                                                                                                  true,
                                                                                                                                                              },
                                                                                                                                                        },
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          refs."properties.about.oneOf.1",
                                                                                                                                                          String
                                                                                                                                                        ]
                                                                                                                                                    ])),
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                    },
                                                                                                                                required =
                                                                                                                                  {},
                                                                                                                              }),
                                                                                                                          std.contract.Sequence
                                                                                                                            [
                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                              String
                                                                                                                            ]
                                                                                                                        ],
                                                                                                                  forward =
                                                                                                                    js2n.OneOf
                                                                                                                        [
                                                                                                                          js2n.Nullable
                                                                                                                            (js2n.record.Record
                                                                                                                              {
                                                                                                                                additional =
                                                                                                                                  'Some
                                                                                                                                      Dyn,
                                                                                                                                patterns =
                                                                                                                                  {},
                                                                                                                                properties =
                                                                                                                                  {
                                                                                                                                      content_mod =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                (js2n.record.Record
                                                                                                                                                  {
                                                                                                                                                    additional =
                                                                                                                                                      'Some
                                                                                                                                                          Dyn,
                                                                                                                                                    patterns =
                                                                                                                                                      {},
                                                                                                                                                    properties =
                                                                                                                                                      {
                                                                                                                                                          replace =
                                                                                                                                                            js2n.OneOf
                                                                                                                                                                [
                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                    (js2n.array.ArrayOf
                                                                                                                                                                      (std.contract.any_of
                                                                                                                                                                        [
                                                                                                                                                                          js2n.record.Record
                                                                                                                                                                            {
                                                                                                                                                                              additional =
                                                                                                                                                                                'Some
                                                                                                                                                                                    Dyn,
                                                                                                                                                                              patterns =
                                                                                                                                                                                {},
                                                                                                                                                                              properties =
                                                                                                                                                                                {
                                                                                                                                                                                    "match" =
                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                          [
                                                                                                                                                                                            String,
                                                                                                                                                                                            std.contract.Sequence
                                                                                                                                                                                              [
                                                                                                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                                                                                                String
                                                                                                                                                                                              ]
                                                                                                                                                                                          ],
                                                                                                                                                                                    value =
                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                          [
                                                                                                                                                                                            String,
                                                                                                                                                                                            std.contract.Sequence
                                                                                                                                                                                              [
                                                                                                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                                                                                                String
                                                                                                                                                                                              ]
                                                                                                                                                                                          ],
                                                                                                                                                                                  },
                                                                                                                                                                              required =
                                                                                                                                                                                {
                                                                                                                                                                                    "match" =
                                                                                                                                                                                      true,
                                                                                                                                                                                    value =
                                                                                                                                                                                      true,
                                                                                                                                                                                  },
                                                                                                                                                                            },
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                            [
                                                                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                                                                              String
                                                                                                                                                                            ]
                                                                                                                                                                        ])),
                                                                                                                                                                  std.contract.Sequence
                                                                                                                                                                    [
                                                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                                                      String
                                                                                                                                                                    ]
                                                                                                                                                                ],
                                                                                                                                                        },
                                                                                                                                                    required =
                                                                                                                                                      {},
                                                                                                                                                  }),
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      scheme =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                String,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      url =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              String,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                    },
                                                                                                                                required =
                                                                                                                                  {},
                                                                                                                              }),
                                                                                                                          std.contract.Sequence
                                                                                                                            [
                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                              String
                                                                                                                            ]
                                                                                                                        ],
                                                                                                                  proxy =
                                                                                                                    js2n.OneOf
                                                                                                                        [
                                                                                                                          js2n.Nullable
                                                                                                                            (js2n.record.Record
                                                                                                                              {
                                                                                                                                additional =
                                                                                                                                  'Some
                                                                                                                                      Dyn,
                                                                                                                                patterns =
                                                                                                                                  {},
                                                                                                                                properties =
                                                                                                                                  {
                                                                                                                                      content_mod =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                (js2n.record.Record
                                                                                                                                                  {
                                                                                                                                                    additional =
                                                                                                                                                      'Some
                                                                                                                                                          Dyn,
                                                                                                                                                    patterns =
                                                                                                                                                      {},
                                                                                                                                                    properties =
                                                                                                                                                      {
                                                                                                                                                          replace =
                                                                                                                                                            js2n.OneOf
                                                                                                                                                                [
                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                    (js2n.array.ArrayOf
                                                                                                                                                                      (std.contract.any_of
                                                                                                                                                                        [
                                                                                                                                                                          js2n.record.Record
                                                                                                                                                                            {
                                                                                                                                                                              additional =
                                                                                                                                                                                'Some
                                                                                                                                                                                    Dyn,
                                                                                                                                                                              patterns =
                                                                                                                                                                                {},
                                                                                                                                                                              properties =
                                                                                                                                                                                {
                                                                                                                                                                                    "match" =
                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                          [
                                                                                                                                                                                            String,
                                                                                                                                                                                            std.contract.Sequence
                                                                                                                                                                                              [
                                                                                                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                                                                                                String
                                                                                                                                                                                              ]
                                                                                                                                                                                          ],
                                                                                                                                                                                    value =
                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                          [
                                                                                                                                                                                            String,
                                                                                                                                                                                            std.contract.Sequence
                                                                                                                                                                                              [
                                                                                                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                                                                                                String
                                                                                                                                                                                              ]
                                                                                                                                                                                          ],
                                                                                                                                                                                  },
                                                                                                                                                                              required =
                                                                                                                                                                                {
                                                                                                                                                                                    "match" =
                                                                                                                                                                                      true,
                                                                                                                                                                                    value =
                                                                                                                                                                                      true,
                                                                                                                                                                                  },
                                                                                                                                                                            },
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                            [
                                                                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                                                                              String
                                                                                                                                                                            ]
                                                                                                                                                                        ])),
                                                                                                                                                                  std.contract.Sequence
                                                                                                                                                                    [
                                                                                                                                                                      refs."properties.about.oneOf.1",
                                                                                                                                                                      String
                                                                                                                                                                    ]
                                                                                                                                                                ],
                                                                                                                                                        },
                                                                                                                                                    required =
                                                                                                                                                      {},
                                                                                                                                                  }),
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      domain =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                String,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      url =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              String,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ],
                                                                                                                                              js2n.Null
                                                                                                                                            ],
                                                                                                                                    },
                                                                                                                                required =
                                                                                                                                  {},
                                                                                                                              }),
                                                                                                                          std.contract.Sequence
                                                                                                                            [
                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                              String
                                                                                                                            ]
                                                                                                                        ],
                                                                                                                  redirect =
                                                                                                                    js2n.OneOf
                                                                                                                        [
                                                                                                                          js2n.Nullable
                                                                                                                            (js2n.record.Record
                                                                                                                              {
                                                                                                                                additional =
                                                                                                                                  'Some
                                                                                                                                      Dyn,
                                                                                                                                patterns =
                                                                                                                                  {},
                                                                                                                                properties =
                                                                                                                                  {
                                                                                                                                      auto_https_redirect =
                                                                                                                                        std.contract.any_of
                                                                                                                                            [
                                                                                                                                              Bool,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      port =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                std.number.Integer,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      remove_www =
                                                                                                                                        std.contract.any_of
                                                                                                                                            [
                                                                                                                                              Bool,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      scheme =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                String,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                      url =
                                                                                                                                        js2n.OneOf
                                                                                                                                            [
                                                                                                                                              js2n.Nullable
                                                                                                                                                String,
                                                                                                                                              std.contract.Sequence
                                                                                                                                                [
                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                  String
                                                                                                                                                ]
                                                                                                                                            ],
                                                                                                                                    },
                                                                                                                                required =
                                                                                                                                  {
                                                                                                                                      auto_https_redirect =
                                                                                                                                        true,
                                                                                                                                      remove_www =
                                                                                                                                        true,
                                                                                                                                    },
                                                                                                                              }),
                                                                                                                          std.contract.Sequence
                                                                                                                            [
                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                              String
                                                                                                                            ]
                                                                                                                        ],
                                                                                                                },
                                                                                                            required =
                                                                                                              {},
                                                                                                          },
                                                                                                        std.contract.Sequence
                                                                                                          [
                                                                                                            refs."properties.about.oneOf.1",
                                                                                                            String
                                                                                                          ]
                                                                                                      ],
                                                                                                type =
                                                                                                  std.contract.Sequence
                                                                                                      [
                                                                                                        std.enum.TagOrString,
                                                                                                        [|
                                                                                                          'http
                                                                                                        |]
                                                                                                      ],
                                                                                              },
                                                                                          required =
                                                                                            {
                                                                                                details =
                                                                                                  true,
                                                                                                type =
                                                                                                  true,
                                                                                              },
                                                                                        },
                                                                                      js2n.record.Record
                                                                                        {
                                                                                          additional =
                                                                                            'Some
                                                                                                Dyn,
                                                                                          patterns =
                                                                                            {},
                                                                                          properties =
                                                                                            {
                                                                                                details =
                                                                                                  std.contract.any_of
                                                                                                      [
                                                                                                        {
                                                                                                          _ | js2n.Always
                                                                                                        },
                                                                                                        std.contract.Sequence
                                                                                                          [
                                                                                                            refs."properties.about.oneOf.1",
                                                                                                            String
                                                                                                          ]
                                                                                                      ],
                                                                                                type =
                                                                                                  std.contract.Sequence
                                                                                                      [
                                                                                                        std.enum.TagOrString,
                                                                                                        [|
                                                                                                          'udp
                                                                                                        |]
                                                                                                      ],
                                                                                              },
                                                                                          required =
                                                                                            {
                                                                                                details =
                                                                                                  true,
                                                                                                type =
                                                                                                  true,
                                                                                              },
                                                                                        }
                                                                                    ],
                                                                                  {
                                                                                    _ | Dyn
                                                                                  }
                                                                                ]),
                                                                        sticky_sessions =
                                                                          std.contract.any_of
                                                                              [
                                                                                Bool,
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        timeouts =
                                                                          std.contract.any_of
                                                                              [
                                                                                js2n.record.Record
                                                                                  {
                                                                                    additional =
                                                                                      'Some
                                                                                          Dyn,
                                                                                    patterns =
                                                                                      {},
                                                                                    properties =
                                                                                      {
                                                                                          destination_connection =
                                                                                            js2n.OneOf
                                                                                                [
                                                                                                  std.contract.Sequence
                                                                                                    [
                                                                                                      refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                      String
                                                                                                    ],
                                                                                                  std.contract.Sequence
                                                                                                    [
                                                                                                      refs."properties.about.oneOf.1",
                                                                                                      String
                                                                                                    ]
                                                                                                ],
                                                                                        },
                                                                                    required =
                                                                                      {
                                                                                          destination_connection =
                                                                                            true,
                                                                                        },
                                                                                  },
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        tls =
                                                                          js2n.OneOf
                                                                              [
                                                                                js2n.Nullable
                                                                                  (js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'Some
                                                                                            Dyn,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            allow_insecure =
                                                                                              js2n.OneOf
                                                                                                  [
                                                                                                    js2n.Nullable
                                                                                                      Bool,
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                            client_auth =
                                                                                              js2n.OneOf
                                                                                                  [
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        std.enum.TagOrString,
                                                                                                        [|
                                                                                                          'require-verify,
                                                                                                          'require,
                                                                                                          'request,
                                                                                                          'none
                                                                                                        |]
                                                                                                      ],
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ],
                                                                                                    js2n.Null
                                                                                                  ],
                                                                                            client_cert_auth =
                                                                                              js2n.OneOf
                                                                                                  [
                                                                                                    js2n.Nullable
                                                                                                      String,
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                            server_name =
                                                                                              js2n.OneOf
                                                                                                  [
                                                                                                    js2n.Nullable
                                                                                                      String,
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                          },
                                                                                      required =
                                                                                        {},
                                                                                    }),
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        destination_retries =
                                                                          true,
                                                                        sticky_sessions =
                                                                          true,
                                                                        timeouts =
                                                                          true,
                                                                      },
                                                                },
                                                              std.contract.Sequence
                                                                [
                                                                  refs."properties.about.oneOf.1",
                                                                  String
                                                                ]
                                                            ],
                                                      "match" =
                                                        std.contract.any_of
                                                            [
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        containers =
                                                                          js2n.OneOf
                                                                              [
                                                                                js2n.Nullable
                                                                                  (js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'Some
                                                                                            Dyn,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            exclude =
                                                                                              js2n.OneOf
                                                                                                  [
                                                                                                    js2n.Nullable
                                                                                                      (js2n.array.ArrayOf
                                                                                                        (std.contract.Sequence
                                                                                                          [
                                                                                                            refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0",
                                                                                                            String
                                                                                                          ])),
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                            include =
                                                                                              js2n.OneOf
                                                                                                  [
                                                                                                    js2n.Nullable
                                                                                                      (js2n.array.ArrayOf
                                                                                                        (std.contract.Sequence
                                                                                                          [
                                                                                                            refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0",
                                                                                                            String
                                                                                                          ])),
                                                                                                    std.contract.Sequence
                                                                                                      [
                                                                                                        refs."properties.about.oneOf.1",
                                                                                                        String
                                                                                                      ]
                                                                                                  ],
                                                                                          },
                                                                                      required =
                                                                                        {},
                                                                                    }),
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        domains =
                                                                          js2n.OneOf
                                                                              [
                                                                                js2n.Nullable
                                                                                  (js2n.array.ArrayOf
                                                                                    String),
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        internal_ports =
                                                                          js2n.OneOf
                                                                              [
                                                                                js2n.Nullable
                                                                                  (js2n.array.ArrayOf
                                                                                    std.number.Integer),
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                        path =
                                                                          js2n.OneOf
                                                                              [
                                                                                js2n.Nullable
                                                                                  String,
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    refs."properties.about.oneOf.1",
                                                                                    String
                                                                                  ]
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        domains =
                                                                          true,
                                                                        internal_ports =
                                                                          true,
                                                                      },
                                                                },
                                                              std.contract.Sequence
                                                                [
                                                                  refs."properties.about.oneOf.1",
                                                                  String
                                                                ]
                                                            ],
                                                      mode =
                                                        js2n.OneOf
                                                            [
                                                              std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'source-ip,
                                                                    'round-robin,
                                                                    'random
                                                                  |]
                                                                ],
                                                              std.contract.Sequence
                                                                [
                                                                  refs."properties.about.oneOf.1",
                                                                  String
                                                                ]
                                                            ],
                                                    },
                                                required =
                                                  {
                                                      config = true,
                                                      "match" = true,
                                                      mode = true,
                                                    },
                                              },
                                            std.contract.Sequence
                                              [
                                                refs."properties.about.oneOf.1",
                                                String
                                              ]
                                          ]),
                                      std.contract.Sequence
                                        [
                                          refs."properties.about.oneOf.1",
                                          String
                                        ]
                                    ],
                            },
                        required =
                          {
                              config = true,
                              disable = true,
                              mode = true,
                              routers = true,
                            },
                      }),
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ]
              | doc "Defines how traffic comes in to the load balancer, and how the load balancer handles it."
              | optional,
            waf
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.waf.anyOf.0",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ],
                  js2n.Null
                ]
              | optional,
            ..
          },
      "properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.waf.anyOf.0" =
        {
            rules
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        {
                          conditions
                            | std.contract.any_of
                              [
                                Array (
                                  std.contract.any_of
                                    [
                                      {
                                        operator
                                          | js2n.OneOf
                                            [
                                              std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [|
                                                    '"<=",
                                                    '">=",
                                                    '"<",
                                                    '">",
                                                    '"!=",
                                                    '"=="
                                                  |]
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ]
                                          | doc "A string that indicates the range of values relative to the value property.",
                                        type
                                          | js2n.OneOf
                                            [
                                              std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [|
                                                    'header-match,
                                                    'method-match,
                                                    'url-match,
                                                    'geo-match,
                                                    'ip-match
                                                  |]
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ]
                                          | doc "A string that describes the match type for the condition.",
                                        value
                                          | js2n.OneOf
                                            [
                                              String,
                                              std.contract.Sequence
                                                [
                                                  refs."properties.about.oneOf.1",
                                                  String
                                                ]
                                            ]
                                          | doc "The value corresponding to the condition type.",
                                        ..
                                      },
                                      std.contract.Sequence
                                        [
                                          refs."properties.about.oneOf.1",
                                          String
                                        ]
                                    ]
                                ),
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ]
                              ]
                            | doc "An array of the specific conditions for the rule.",
                          description
                            | js2n.OneOf
                              [
                                String,
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ]
                              ]
                            | doc "Some information about the rule.",
                          expires
                            | js2n.OneOf
                              [
                                String,
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ],
                                js2n.Null
                              ]
                            | doc "The expiration date of the WAF config, if present."
                            | optional,
                          "match"
                            | js2n.OneOf
                              [
                                std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'all, 'any |] ],
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ]
                              ]
                            | doc "A string that describes if both attributes need to be true (match all) or if only one of the conditions needs to be true (match any)."
                            | optional,
                          skip
                            | std.contract.any_of
                              [
                                Bool,
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ]
                              ]
                            | doc "A boolean that indicates if the rule should be active or skipped.",
                          type
                            | js2n.OneOf
                              [
                                std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'deny, 'allow |] ],
                                std.contract.Sequence
                                  [ refs."properties.about.oneOf.1", String ]
                              ]
                            | doc "A string that describes if the role should allow or deny traffic based on the conditions.",
                          ..
                        },
                        std.contract.Sequence
                          [ refs."properties.about.oneOf.1", String ]
                      ]
                  ),
                  std.contract.Sequence
                    [ refs."properties.about.oneOf.1", String ]
                ],
            ..
          },
      "properties.services.oneOf.0.properties.vpn.anyOf.0.properties.service.anyOf.0" =
        {
            auto_update
              | Bool
              | doc "Whether or not Cycle should automatically update this service when a new version is released."
              | optional,
            enable
              | Bool
              | doc "Whether or not this service should be enabled."
              | optional,
            high_availability
              | Bool
              | doc "Whether or not Cycle should run multiple instances of this service for high availability."
              | optional,
            ..
          },
    }
    in
  {
      about
        | js2n.OneOf
          [
            js2n.Nullable
              (js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { description = String, version = String, },
                  required = { description = true, version = true, },
                }),
            js2n.string.Matches "\\\"?{{(\\$)?([a-z0-9\\-]+)}}\\\"?"
          ]
        | optional,
      annotations
        | std.contract.any_of [ {  .. }, refs."properties.about.oneOf.1" ]
        | doc "Additional meta info about the stack."
        | optional,
      containers
        | std.contract.any_of
          [
            {
              _ | {
                annotations
                  | js2n.OneOf
                    [
                      js2n.Nullable ({ _ | js2n.Always }),
                      refs."properties.about.oneOf.1"
                    ]
                  | optional,
                config
                  | std.contract.any_of
                    [
                      {
                        deploy
                          | std.contract.any_of
                            [
                              {
                                constraints
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  node =
                                                    js2n.Nullable
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  tags =
                                                                    std.contract.any_of
                                                                        [
                                                                          js2n.record.Record
                                                                            {
                                                                              additional =
                                                                                'Some
                                                                                    Dyn,
                                                                              patterns =
                                                                                {},
                                                                              properties =
                                                                                {
                                                                                    all =
                                                                                      std.contract.any_of
                                                                                          [
                                                                                            js2n.array.ArrayOf
                                                                                              String,
                                                                                            refs."properties.about.oneOf.1"
                                                                                          ],
                                                                                    any =
                                                                                      std.contract.any_of
                                                                                          [
                                                                                            js2n.array.ArrayOf
                                                                                              String,
                                                                                            refs."properties.about.oneOf.1"
                                                                                          ],
                                                                                  },
                                                                              required =
                                                                                {},
                                                                            },
                                                                          refs."properties.about.oneOf.1"
                                                                        ],
                                                                },
                                                            required =
                                                              { tags = true, },
                                                          }),
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options that provide the ability to set restrictions on which nodes instances of this container are able to be deployed to. (i.e. if you have a GPU container, it should only go on nodes with a GPU)."
                                  | optional,
                                function
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  max_pool_size =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable
                                                            std.number.Integer,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  max_queue_time =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                  max_runtime =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                  max_shard_concurrency =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable
                                                            std.number.Integer,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for containers using the 'function' deployment strategy."
                                  | optional,
                                health_check
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  command =
                                                    js2n.OneOf
                                                        [
                                                          String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  delay =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                  interval =
                                                    js2n.OneOf
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  restart =
                                                    std.contract.any_of
                                                        [
                                                          Bool,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  retries =
                                                    std.contract.any_of
                                                        [
                                                          std.number.Integer,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  timeout =
                                                    js2n.OneOf
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required =
                                              {
                                                  command = true,
                                                  interval = true,
                                                  restart = true,
                                                  retries = true,
                                                  timeout = true,
                                                },
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for automated container health checks."
                                  | optional,
                                instances
                                  | std.contract.any_of
                                    [
                                      std.number.Integer,
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "The number of desired instances to deploy.",
                                restart
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  condition =
                                                    js2n.OneOf
                                                        [
                                                          std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'failure,
                                                                'never,
                                                                'always
                                                              |]
                                                            ],
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  delay =
                                                    js2n.OneOf
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  max_attempts =
                                                    std.contract.any_of
                                                        [
                                                          std.number.Integer,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required =
                                              {
                                                  condition = true,
                                                  delay = true,
                                                  max_attempts = true,
                                                },
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for how Cycle should handle restarting this container (i.e. in case the process inside the container dies)."
                                  | optional,
                                shutdown
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  graceful_timeout =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                  signals =
                                                    std.contract.any_of
                                                        [
                                                          js2n.array.ArrayOf
                                                            (std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'SIGQUIT,
                                                                  'SIGHUP,
                                                                  'SIGUSR2,
                                                                  'SIGUSR1,
                                                                  'SIGINT,
                                                                  'SIGTERM
                                                                |]
                                                              ]),
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for how this container behaves during shutdown."
                                  | optional,
                                startup
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  delay =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for how this container behaves during startup."
                                  | optional,
                                stateful
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  options =
                                                    js2n.Nullable
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  use_base_hostname =
                                                                    js2n.Nullable
                                                                        Bool,
                                                                },
                                                            required = {},
                                                          }),
                                                },
                                            required = { options = true, },
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for stateful containers."
                                  | optional,
                                strategy
                                  | js2n.OneOf
                                    [
                                      std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'function,
                                            'edge,
                                            'node,
                                            'first-available,
                                            'high-availability,
                                            'manual,
                                            'resource-density
                                          |]
                                        ],
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc m%"
                                    The strategy Cycle will apply when deploying instances of this container.
                                    
                                    - ** resource-density **: Cycle will distribute instances across servers to maintain balanced resource usage.
                                    - ** high-availability **: Cycle will deploy instances across servers with an emphasis on geographic and physical separation. Requires multiple locations.
                                    - ** distributed **: Cycle will deploy instances across servers with an emphasis on physical separation. Does not require multiple locations.
                                    - ** first-available **: Cycle will deploy one instance to every server that matches the specified criteria. (default)
                                    - ** node **: Cycle will deploy one instance to every server that matches the specified criteria.
                                    - ** edge **: Cycle will prioritize geographic distribution of instances.
                                    - ** function **: Every ingress request/connection receives its own instance. 
                                    - ** manual **: Cycle will not make any decisions on where instances are deployed. Instead, instances must be deployed manually using the portal or API.
                                    
                                  "%
                                  | optional,
                                telemetry
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  disable =
                                                    std.contract.any_of
                                                        [
                                                          Bool,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  interval =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                  retention =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                  webhook =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required = { disable = true, },
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for how the instance telemetry (CPU usage, etc) is handled."
                                  | optional,
                                update
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  stagger =
                                                    std.contract.any_of
                                                        [
                                                          refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                          refs."properties.about.oneOf.1",
                                                          js2n.Null
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configurations for how the container behaves during updates."
                                  | optional,
                                ..
                              },
                              refs."properties.about.oneOf.1"
                            ],
                        integrations
                          | std.contract.any_of
                            [
                              {
                                backups
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (std.contract.Sequence
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      backup =
                                                        std.contract.any_of
                                                            [
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        command =
                                                                          js2n.OneOf
                                                                              [
                                                                                String,
                                                                                refs."properties.about.oneOf.1"
                                                                              ],
                                                                        cron_string =
                                                                          js2n.OneOf
                                                                              [
                                                                                js2n.Nullable
                                                                                  String,
                                                                                refs."properties.about.oneOf.1"
                                                                              ],
                                                                        timeout =
                                                                          std.contract.any_of
                                                                              [
                                                                                refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                refs."properties.about.oneOf.1",
                                                                                js2n.Null
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        command =
                                                                          true,
                                                                        cron_string =
                                                                          true,
                                                                        timeout =
                                                                          true,
                                                                      },
                                                                },
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      integration_id =
                                                        js2n.OneOf
                                                            [
                                                              String,
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      restore =
                                                        js2n.OneOf
                                                            [
                                                              js2n.Nullable
                                                                (js2n.record.Record
                                                                  {
                                                                    additional =
                                                                      'Some Dyn,
                                                                    patterns =
                                                                      {},
                                                                    properties =
                                                                      {
                                                                          command =
                                                                            js2n.OneOf
                                                                                [
                                                                                  String,
                                                                                  refs."properties.about.oneOf.1"
                                                                                ],
                                                                          timeout =
                                                                            std.contract.any_of
                                                                                [
                                                                                  refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                  refs."properties.about.oneOf.1",
                                                                                  js2n.Null
                                                                                ],
                                                                        },
                                                                    required =
                                                                      {
                                                                          command =
                                                                            true,
                                                                          timeout =
                                                                            true,
                                                                        },
                                                                  }),
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      retention =
                                                        std.contract.any_of
                                                            [
                                                              refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                              refs."properties.about.oneOf.1",
                                                              js2n.Null
                                                            ],
                                                    },
                                                required =
                                                  {
                                                      backup = true,
                                                      restore = true,
                                                      retention = true,
                                                    },
                                              },
                                            js2n.record.Required
                                              [ "destination" ]
                                          ]),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "When enabled, Cycle will automatically manage backups of this container. This is only available for stateful containers."
                                  | optional,
                                files
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.array.ArrayOf
                                          (js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    destination =
                                                      js2n.OneOf
                                                          [
                                                            String,
                                                            refs."properties.about.oneOf.1"
                                                          ],
                                                    source =
                                                      js2n.OneOf
                                                          [
                                                            refs."properties.about.oneOf.1",
                                                            String
                                                          ],
                                                  },
                                              required =
                                                {
                                                    destination = true,
                                                    source = true,
                                                  },
                                            })),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "When enabled, Cycle will fetch and inject remote files into the container at the specified destination during runtime."
                                  | optional,
                                lets_encrypt
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  additional_certs_path =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  bundle_path =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  certificate_path =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  chain_path =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  key_path =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "When enabled, this integration will configure Let's Encrypt certificates that will be injected into the container at runtime. The certificates will be managed by the platform and renewed automatically."
                                  | optional,
                                shared_file_systems
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional =
                                              'Some
                                                  (std.contract.any_of
                                                    [
                                                      js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                mount_point =
                                                                  js2n.OneOf
                                                                      [
                                                                        refs."properties.about.oneOf.1",
                                                                        String
                                                                      ],
                                                                writable =
                                                                  std.contract.any_of
                                                                      [
                                                                        Bool,
                                                                        refs."properties.about.oneOf.1"
                                                                      ],
                                                              },
                                                          required =
                                                            {
                                                                mount_point =
                                                                  true,
                                                                writable = true,
                                                              },
                                                        },
                                                      refs."properties.about.oneOf.1"
                                                    ]),
                                            patterns = {},
                                            properties = {},
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "When enabled, Cycle will mount a shared host directory into this container. The directory will be shared with all other containers that mount it."
                                  | optional,
                                webhooks
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  config =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable String,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  events =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable
                                                            (js2n.record.Record
                                                              {
                                                                additional =
                                                                  'Some Dyn,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      deploy =
                                                                        js2n.OneOf
                                                                            [
                                                                              js2n.Nullable
                                                                                String,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                      start =
                                                                        js2n.OneOf
                                                                            [
                                                                              js2n.Nullable
                                                                                String,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                      stop =
                                                                        js2n.OneOf
                                                                            [
                                                                              js2n.Nullable
                                                                                String,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                    },
                                                                required = {},
                                                              }),
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Enable additional webhooks that Cycle will call out to during the course of a container's lifetime. All webhooks send a payload as an object containing the instance, container, server, and environment IDs."
                                  | optional,
                                ..
                              },
                              refs."properties.about.oneOf.1",
                              js2n.Null
                            ]
                          | optional,
                        network
                          | std.contract.any_of
                            [
                              {
                                hostname
                                  | js2n.OneOf
                                    [ String, refs."properties.about.oneOf.1" ]
                                  | doc "The hostname of the container. This is how it can be referenced by other containers in the same environment.",
                                ports
                                  | std.contract.any_of
                                    [
                                      Array String,
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "A list of port mappings on this container."
                                  | optional,
                                public
                                  | js2n.OneOf
                                    [
                                      std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'egress-only, 'disable, 'enable |]
                                        ],
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "The level of public network access this container should have.",
                                ..
                              },
                              refs."properties.about.oneOf.1"
                            ],
                        resources
                          | std.contract.any_of
                            [
                              {
                                cpu
                                  | std.contract.any_of
                                    [
                                      {
                                        cpus | String | optional,
                                        shares
                                          | std.contract.any_of
                                            [
                                              {
                                                limit
                                                  | std.contract.any_of
                                                    [
                                                      std.number.Integer,
                                                      refs."properties.about.oneOf.1"
                                                    ],
                                                reserve
                                                  | std.contract.any_of
                                                    [
                                                      std.number.Integer,
                                                      refs."properties.about.oneOf.1"
                                                    ],
                                                ..
                                              },
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | optional,
                                        ..
                                      },
                                      refs."properties.about.oneOf.1"
                                    ],
                                ram
                                  | std.contract.any_of
                                    [
                                      {
                                        limit
                                          | js2n.OneOf
                                            [
                                              String,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | optional,
                                        reserve
                                          | js2n.OneOf
                                            [
                                              String,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | optional,
                                        swappiness
                                          | std.contract.any_of
                                            [
                                              Number,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | optional,
                                        ..
                                      },
                                      refs."properties.about.oneOf.1"
                                    ],
                                ..
                              },
                              refs."properties.about.oneOf.1",
                              js2n.Null
                            ]
                          | optional,
                        runtime
                          | std.contract.any_of
                            [
                              {
                                capabilities
                                  | std.contract.any_of
                                    [
                                      Array (
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              'CAP_WAKE_ALARM,
                                              'CAP_LEASE,
                                              'CAP_BLOCK_SUSPEND,
                                              'CAP_MAC_OVERRIDE,
                                              'CAP_MAC_ADMIN,
                                              'CAP_LINUX_IMMUTABLE,
                                              'CAP_IPC_OWNER,
                                              'CAP_IPC_LOCK,
                                              'CAP_AUDIT_READ,
                                              'CAP_AUDIT_CONTROL,
                                              'CAP_SYSLOG,
                                              'CAP_SYS_TTY_CONFIG,
                                              'CAP_SYS_TIME,
                                              'CAP_SYS_BOOT,
                                              'CAP_SYS_RESOURCE,
                                              'CAP_SYS_RAWIO,
                                              'CAP_SYS_PTRACE,
                                              'CAP_SYS_PACCT,
                                              'CAP_SYS_NICE,
                                              'CAP_SYS_MODULE,
                                              'CAP_SYS_ADMIN,
                                              'CAP_NET_BROADCAST,
                                              'CAP_NET_ADMIN,
                                              'CAP_DAC_READ_SEARCH,
                                              'CAP_SETPCAP,
                                              'CAP_SYS_CHROOT,
                                              'CAP_AUDIT_WRITE,
                                              'CAP_NET_RAW,
                                              'CAP_NET_BIND_SERVICE,
                                              'CAP_MKNOD,
                                              'CAP_KILL,
                                              'CAP_SETUID,
                                              'CAP_SETGID,
                                              'CAP_SETFCAP,
                                              'CAP_FOWNER,
                                              'CAP_DAC_OVERRIDE,
                                              'CAP_FSETID,
                                              'CAP_CHOWN
                                            |]
                                          ]
                                      ),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Additional Linux kernel capabilities to apply to this container process."
                                  | optional,
                                command
                                  | std.contract.any_of
                                    [
                                      {
                                        args
                                          | js2n.OneOf
                                            [
                                              String,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | optional,
                                        path
                                          | js2n.OneOf
                                            [
                                              String,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | optional,
                                        ..
                                      },
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "The command to execute when this container starts. Will override the default specified in the container."
                                  | optional,
                                environment_vars
                                  | std.contract.any_of
                                    [
                                      {
                                        _ | js2n.OneOf
                                          [
                                            String,
                                            refs."properties.about.oneOf.1"
                                          ]
                                      },
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "A map of environment variables that will be injected into the container."
                                  | optional,
                                host
                                  | js2n.OneOf
                                    [
                                      js2n.Nullable
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  expose_cgroups =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable Bool,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  expose_proc =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable Bool,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                  power_management =
                                                    js2n.OneOf
                                                        [
                                                          js2n.Nullable Bool,
                                                          refs."properties.about.oneOf.1"
                                                        ],
                                                },
                                            required = {},
                                          }),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options regarding the underlying host."
                                  | optional,
                                namespaces
                                  | std.contract.any_of
                                    [
                                      Array (
                                        std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [|
                                              'cgroup,
                                              'user,
                                              'mount,
                                              'network,
                                              'uts,
                                              'pid,
                                              'ipc
                                            |]
                                          ]
                                      ),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Container namespaces to apply. By default, all are applied. Removing/changing this can have security implications."
                                  | optional,
                                privileged
                                  | std.contract.any_of
                                    [ Bool, refs."properties.about.oneOf.1" ]
                                  | doc "If true, the container process will run in fully-privileged mode. **WARNING** This is considered insecure, and should only be done if you know what you're doing."
                                  | optional,
                                rlimits
                                  | std.contract.any_of
                                    [
                                      {
                                        _ | {
                                          hard
                                            | std.contract.any_of
                                              [
                                                std.number.Integer,
                                                refs."properties.about.oneOf.1"
                                              ],
                                          soft
                                            | std.contract.any_of
                                              [
                                                std.number.Integer,
                                                refs."properties.about.oneOf.1"
                                              ],
                                          ..
                                        }
                                      },
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "RLIMIT options to apply."
                                  | optional,
                                rootfs
                                  | std.contract.any_of
                                    [
                                      {
                                        readonly
                                          | std.contract.any_of
                                            [
                                              Bool,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | doc "If true, the container's filesystem will be read-only.",
                                        ..
                                      },
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for the root filesystem."
                                  | optional,
                                seccomp
                                  | std.contract.any_of
                                    [
                                      {
                                        disable
                                          | std.contract.any_of
                                            [
                                              Bool,
                                              refs."properties.about.oneOf.1"
                                            ],
                                        rules
                                          | std.contract.any_of
                                            [
                                              Array (
                                                std.contract.any_of
                                                  [
                                                    {
                                                      capabilities
                                                        | std.contract.any_of
                                                          [
                                                            {
                                                              excludes
                                                                | js2n.OneOf
                                                                  [
                                                                    String,
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                              includes
                                                                | js2n.OneOf
                                                                  [
                                                                    String,
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                              ..
                                                            },
                                                            refs."properties.about.oneOf.1"
                                                          ],
                                                      syscall
                                                        | std.contract.any_of
                                                          [
                                                            {
                                                              action
                                                                | std.enum.TagOrString
                                                                | [|
                                                                  'SCMP_ACT_NOTIFY,
                                                                  'SCMP_ACT_LOG,
                                                                  'SCMP_ACT_ALLOW,
                                                                  'SCMP_ACT_TRACE,
                                                                  'SCMP_ACT_ERRNO,
                                                                  'SCMP_ACT_TRAP,
                                                                  'SCMP_ACT_KILL_THREAD,
                                                                  'SCMP_ACT_KILL_PROCESS,
                                                                  'SCMP_ACT_KILL
                                                                |],
                                                              args
                                                                | Array
                                                                  {
                                                                    index
                                                                      | std.number.Integer,
                                                                    op
                                                                      | std.enum.TagOrString
                                                                      | [|
                                                                        'SCMP_CMP_MASKED_EQ,
                                                                        'SCMP_CMP_GT,
                                                                        'SCMP_CMP_GE,
                                                                        'SCMP_CMP_EQ,
                                                                        'SCMP_CMP_LE,
                                                                        'SCMP_CMP_LT,
                                                                        'SCMP_CMP_NE
                                                                      |],
                                                                    value
                                                                      | std.number.Integer,
                                                                    valuetwo
                                                                      | std.number.Integer
                                                                      | optional,
                                                                    ..
                                                                  }
                                                                | optional,
                                                              errnoRet
                                                                | std.number.Integer
                                                                | optional,
                                                              names
                                                                | Array String,
                                                              ..
                                                            },
                                                            refs."properties.about.oneOf.1"
                                                          ],
                                                      ..
                                                    },
                                                    refs."properties.about.oneOf.1"
                                                  ]
                                              ),
                                              refs."properties.about.oneOf.1"
                                            ],
                                        ..
                                      },
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Configuration options for seccomp. Cycle enables seccomp by default."
                                  | optional,
                                sysctl
                                  | std.contract.any_of
                                    [
                                      {
                                        _ | js2n.OneOf
                                          [
                                            String,
                                            refs."properties.about.oneOf.1"
                                          ]
                                      },
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Sysctl options to apply."
                                  | optional,
                                workdir
                                  | js2n.OneOf
                                    [ String, refs."properties.about.oneOf.1" ]
                                  | doc "The working directory to execute the command in."
                                  | optional,
                                ..
                              },
                              refs."properties.about.oneOf.1",
                              js2n.Null
                            ]
                          | optional,
                        scaling
                          | std.contract.any_of
                            [
                              {
                                autoscale_group
                                  | std.contract.any_of
                                    [
                                      refs."properties.scoped_variables.oneOf.0.items.properties.identifier.oneOf.0",
                                      refs."properties.about.oneOf.1",
                                      js2n.Null
                                    ]
                                  | doc "The identifier of the auto-scaling group assigned to this container. The auto-scale group determines which infrastructure this container can spin up if it needs more resources to meet demand. Setting it to `null` will limit auto-scaling to only instances.",
                                instances
                                  | std.contract.any_of
                                    [
                                      {
                                        max
                                          | std.contract.any_of
                                            [
                                              std.number.Integer,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | doc "Maximum additional instances the auto-scaler will run at any time.",
                                        max_server
                                          | std.contract.any_of
                                            [
                                              std.number.Integer,
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | doc "Minimum number of instances per server.",
                                        min_ttl
                                          | js2n.OneOf
                                            [
                                              refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                              refs."properties.about.oneOf.1"
                                            ]
                                          | doc "Minimum amount of time an instance will live.",
                                        ..
                                      },
                                      refs."properties.about.oneOf.1"
                                    ],
                                thresholds
                                  | std.contract.any_of
                                    [
                                      Array (
                                        std.contract.Sequence
                                          [
                                            js2n.OneOf
                                              [
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          details =
                                                            js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        usage =
                                                                          String,
                                                                      },
                                                                  required =
                                                                    {
                                                                        usage =
                                                                          true,
                                                                      },
                                                                },
                                                          type =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [| 'ram |]
                                                                ],
                                                        },
                                                    required =
                                                      {
                                                          details = true,
                                                          type = true,
                                                        },
                                                  },
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          details =
                                                            js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        utilization =
                                                                          std.number.Integer,
                                                                      },
                                                                  required =
                                                                    {
                                                                        utilization =
                                                                          true,
                                                                      },
                                                                },
                                                          type =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [| 'cpu |]
                                                                ],
                                                        },
                                                    required =
                                                      {
                                                          details = true,
                                                          type = true,
                                                        },
                                                  },
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          details =
                                                            js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        connections_total =
                                                                          std.number.Integer,
                                                                      },
                                                                  required =
                                                                    {
                                                                        connections_total =
                                                                          true,
                                                                      },
                                                                },
                                                          type =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'network-connections
                                                                  |]
                                                                ],
                                                        },
                                                    required =
                                                      {
                                                          details = true,
                                                          type = true,
                                                        },
                                                  },
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          details =
                                                            js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        requests_total =
                                                                          std.number.Integer,
                                                                      },
                                                                  required =
                                                                    {
                                                                        requests_total =
                                                                          true,
                                                                      },
                                                                },
                                                          type =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'network-requests
                                                                  |]
                                                                ],
                                                        },
                                                    required =
                                                      {
                                                          details = true,
                                                          type = true,
                                                        },
                                                  },
                                                js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          details =
                                                            js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        bandwidth =
                                                                          String,
                                                                        private =
                                                                          Bool,
                                                                      },
                                                                  required =
                                                                    {
                                                                        bandwidth =
                                                                          true,
                                                                        private =
                                                                          true,
                                                                      },
                                                                },
                                                          type =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'network-throughput
                                                                  |]
                                                                ],
                                                        },
                                                    required =
                                                      {
                                                          details = true,
                                                          type = true,
                                                        },
                                                  }
                                              ],
                                            { _ | Dyn }
                                          ]
                                      ),
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "An array of rules that dictate when a scaling event will be triggered.",
                                window
                                  | js2n.OneOf
                                    [
                                      refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                      refs."properties.about.oneOf.1"
                                    ]
                                  | doc "Duration in which the auto-scaler will watch for changes.",
                                ..
                              },
                              refs."properties.about.oneOf.1",
                              js2n.Null
                            ]
                          | doc "Configuration options for auto-scaling."
                          | optional,
                        ..
                      },
                      refs."properties.about.oneOf.1"
                    ],
                deprecate
                  | std.contract.any_of
                    [ Bool, refs."properties.about.oneOf.1" ]
                  | doc "If true, the container is marked as `deprecated`, and cannot be started anymore. Deprecated containers also don't count toward resource utilization."
                  | optional,
                image
                  | std.contract.any_of
                    [
                      {
                        build
                          | js2n.OneOf
                            [
                              js2n.Nullable
                                (js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          args =
                                            std.contract.any_of
                                                [
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some String,
                                                      patterns = {},
                                                      properties = {},
                                                      required = {},
                                                    },
                                                  refs."properties.about.oneOf.1"
                                                ],
                                        },
                                    required = { args = true, },
                                  }),
                              refs."properties.about.oneOf.1"
                            ]
                          | doc "Additional details applied when building an image."
                          | optional,
                        builder
                          | js2n.OneOf
                            [
                              js2n.Nullable
                                (js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          integration_id =
                                            refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0",
                                        },
                                    required = { integration_id = true, },
                                  }),
                              refs."properties.about.oneOf.1"
                            ]
                          | doc "A specific builder to use. By default, Cycle uses its factory service and a standard build command to build images, but this can be enhanced by using an image builder integration."
                          | optional,
                        name
                          | js2n.OneOf
                            [
                              js2n.Nullable String,
                              refs."properties.about.oneOf.1"
                            ]
                          | doc "The human-readable name of this image."
                          | optional,
                        origin
                          | std.contract.any_of
                            [
                              std.contract.Sequence
                                [
                                  js2n.OneOf
                                    [
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                details =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              existing =
                                                                js2n.Nullable
                                                                    refs."properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.2.properties.details.properties.existing",
                                                              target = String,
                                                              token = String,
                                                              username = String,
                                                            },
                                                        required =
                                                          { target = true, },
                                                      },
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'docker-hub |]
                                                      ],
                                              },
                                          required =
                                            { details = true, type = true, },
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                details =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              build_file =
                                                                js2n.Nullable
                                                                    String,
                                                              context_dir =
                                                                js2n.Nullable
                                                                    String,
                                                              credentials =
                                                                js2n.Nullable
                                                                    (js2n.array.ArrayOf
                                                                      (js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                token =
                                                                                  String,
                                                                                url =
                                                                                  String,
                                                                                username =
                                                                                  String,
                                                                              },
                                                                          required =
                                                                            {},
                                                                        })),
                                                              existing =
                                                                js2n.Nullable
                                                                    refs."properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.2.properties.details.properties.existing",
                                                              repo =
                                                                js2n.Nullable
                                                                    (js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              auth =
                                                                                js2n.Nullable
                                                                                    (std.contract.Sequence
                                                                                      [
                                                                                        js2n.OneOf
                                                                                          [
                                                                                            js2n.record.Record
                                                                                              {
                                                                                                additional =
                                                                                                  'Some
                                                                                                      Dyn,
                                                                                                patterns =
                                                                                                  {},
                                                                                                properties =
                                                                                                  {
                                                                                                      credentials =
                                                                                                        js2n.record.Record
                                                                                                            {
                                                                                                              additional =
                                                                                                                'Some
                                                                                                                    Dyn,
                                                                                                              patterns =
                                                                                                                {},
                                                                                                              properties =
                                                                                                                {
                                                                                                                    password =
                                                                                                                      String,
                                                                                                                    username =
                                                                                                                      String,
                                                                                                                  },
                                                                                                              required =
                                                                                                                {
                                                                                                                    password =
                                                                                                                      true,
                                                                                                                    username =
                                                                                                                      true,
                                                                                                                  },
                                                                                                            },
                                                                                                      type =
                                                                                                        std.contract.Sequence
                                                                                                            [
                                                                                                              std.enum.TagOrString,
                                                                                                              [|
                                                                                                                'http
                                                                                                              |]
                                                                                                            ],
                                                                                                    },
                                                                                                required =
                                                                                                  {
                                                                                                      credentials =
                                                                                                        true,
                                                                                                      type =
                                                                                                        true,
                                                                                                    },
                                                                                              },
                                                                                            js2n.record.Record
                                                                                              {
                                                                                                additional =
                                                                                                  'Some
                                                                                                      Dyn,
                                                                                                patterns =
                                                                                                  {},
                                                                                                properties =
                                                                                                  {
                                                                                                      credentials =
                                                                                                        js2n.record.Record
                                                                                                            {
                                                                                                              additional =
                                                                                                                'Some
                                                                                                                    Dyn,
                                                                                                              patterns =
                                                                                                                {},
                                                                                                              properties =
                                                                                                                {
                                                                                                                    passphrase =
                                                                                                                      String,
                                                                                                                    private_key =
                                                                                                                      String,
                                                                                                                    username =
                                                                                                                      String,
                                                                                                                  },
                                                                                                              required =
                                                                                                                {
                                                                                                                    passphrase =
                                                                                                                      true,
                                                                                                                    private_key =
                                                                                                                      true,
                                                                                                                    username =
                                                                                                                      true,
                                                                                                                  },
                                                                                                            },
                                                                                                      type =
                                                                                                        std.contract.Sequence
                                                                                                            [
                                                                                                              std.enum.TagOrString,
                                                                                                              [|
                                                                                                                'ssh
                                                                                                              |]
                                                                                                            ],
                                                                                                    },
                                                                                                required =
                                                                                                  {
                                                                                                      credentials =
                                                                                                        true,
                                                                                                      type =
                                                                                                        true,
                                                                                                    },
                                                                                              }
                                                                                          ],
                                                                                        {
                                                                                          _ | Dyn
                                                                                        }
                                                                                      ]),
                                                                              branch =
                                                                                String,
                                                                              ref =
                                                                                js2n.Nullable
                                                                                    (js2n.record.Record
                                                                                      {
                                                                                        additional =
                                                                                          'Some
                                                                                              Dyn,
                                                                                        patterns =
                                                                                          {},
                                                                                        properties =
                                                                                          {
                                                                                              type =
                                                                                                String,
                                                                                              value =
                                                                                                String,
                                                                                            },
                                                                                        required =
                                                                                          {
                                                                                              type =
                                                                                                true,
                                                                                              value =
                                                                                                true,
                                                                                            },
                                                                                      }),
                                                                              url =
                                                                                String,
                                                                            },
                                                                        required =
                                                                          {
                                                                              url =
                                                                                true,
                                                                            },
                                                                      }),
                                                              targz_url =
                                                                js2n.Nullable
                                                                    String,
                                                            },
                                                        required = {},
                                                      },
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'docker-file |]
                                                      ],
                                              },
                                          required =
                                            { details = true, type = true, },
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                details =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              existing =
                                                                js2n.record.Record
                                                                    {
                                                                      additional =
                                                                        'Some
                                                                            Dyn,
                                                                      patterns =
                                                                        {},
                                                                      properties =
                                                                        {
                                                                            source_id =
                                                                              refs."properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.4.properties.details.properties.source_id",
                                                                          },
                                                                      required =
                                                                        {},
                                                                    },
                                                              password = String,
                                                              target = String,
                                                              token = String,
                                                              url = String,
                                                              username = String,
                                                            },
                                                        required =
                                                          {
                                                              target = true,
                                                              url = true,
                                                            },
                                                      },
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'docker-registry |]
                                                      ],
                                              },
                                          required =
                                            { details = true, type = true, },
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                details =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              auth =
                                                                js2n.Nullable
                                                                    (std.contract.Sequence
                                                                      [
                                                                        js2n.OneOf
                                                                          [
                                                                            js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'Some
                                                                                      Dyn,
                                                                                patterns =
                                                                                  {},
                                                                                properties =
                                                                                  {
                                                                                      details =
                                                                                        js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    token =
                                                                                                      String,
                                                                                                    username =
                                                                                                      String,
                                                                                                  },
                                                                                              required =
                                                                                                {},
                                                                                            },
                                                                                      type =
                                                                                        std.contract.Sequence
                                                                                            [
                                                                                              std.enum.TagOrString,
                                                                                              [|
                                                                                                'user
                                                                                              |]
                                                                                            ],
                                                                                    },
                                                                                required =
                                                                                  {
                                                                                      details =
                                                                                        true,
                                                                                      type =
                                                                                        true,
                                                                                    },
                                                                              },
                                                                            js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'Some
                                                                                      Dyn,
                                                                                patterns =
                                                                                  {},
                                                                                properties =
                                                                                  {
                                                                                      details =
                                                                                        js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    credentials =
                                                                                                      js2n.record.Record
                                                                                                          {
                                                                                                            additional =
                                                                                                              'Some
                                                                                                                  Dyn,
                                                                                                            patterns =
                                                                                                              {},
                                                                                                            properties =
                                                                                                              {
                                                                                                                  api_key =
                                                                                                                    String,
                                                                                                                  client_id =
                                                                                                                    String,
                                                                                                                  config =
                                                                                                                    String,
                                                                                                                  namespace =
                                                                                                                    String,
                                                                                                                  region =
                                                                                                                    String,
                                                                                                                  secret =
                                                                                                                    String,
                                                                                                                  subscription_id =
                                                                                                                    String,
                                                                                                                },
                                                                                                            required =
                                                                                                              {},
                                                                                                          },
                                                                                                    flavor =
                                                                                                      std.contract.Sequence
                                                                                                          [
                                                                                                            std.enum.TagOrString,
                                                                                                            [|
                                                                                                              'ecr
                                                                                                            |]
                                                                                                          ],
                                                                                                  },
                                                                                              required =
                                                                                                {
                                                                                                    credentials =
                                                                                                      true,
                                                                                                    flavor =
                                                                                                      true,
                                                                                                  },
                                                                                            },
                                                                                      type =
                                                                                        std.contract.Sequence
                                                                                            [
                                                                                              std.enum.TagOrString,
                                                                                              [|
                                                                                                'provider
                                                                                              |]
                                                                                            ],
                                                                                    },
                                                                                required =
                                                                                  {
                                                                                      details =
                                                                                        true,
                                                                                      type =
                                                                                        true,
                                                                                    },
                                                                              },
                                                                            js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'Some
                                                                                      Dyn,
                                                                                patterns =
                                                                                  {},
                                                                                properties =
                                                                                  {
                                                                                      details =
                                                                                        js2n.record.Record
                                                                                            {
                                                                                              additional =
                                                                                                'Some
                                                                                                    Dyn,
                                                                                              patterns =
                                                                                                {},
                                                                                              properties =
                                                                                                {
                                                                                                    url =
                                                                                                      String,
                                                                                                  },
                                                                                              required =
                                                                                                {
                                                                                                    url =
                                                                                                      true,
                                                                                                  },
                                                                                            },
                                                                                      type =
                                                                                        std.contract.Sequence
                                                                                            [
                                                                                              std.enum.TagOrString,
                                                                                              [|
                                                                                                'webhook
                                                                                              |]
                                                                                            ],
                                                                                    },
                                                                                required =
                                                                                  {
                                                                                      details =
                                                                                        true,
                                                                                      type =
                                                                                        true,
                                                                                    },
                                                                              }
                                                                          ],
                                                                        {
                                                                          _ | Dyn
                                                                        }
                                                                      ]),
                                                              existing =
                                                                refs."properties.containers.oneOf.0.additionalProperties.properties.image.oneOf.0.properties.origin.oneOf.0.oneOf.2.properties.details.properties.existing",
                                                              target = String,
                                                              url = String,
                                                            },
                                                        required =
                                                          {
                                                              target = true,
                                                              url = true,
                                                            },
                                                      },
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'oci-registry |]
                                                      ],
                                              },
                                          required =
                                            { details = true, type = true, },
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                details =
                                                  js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              source_id =
                                                                String,
                                                            },
                                                        required =
                                                          { source_id = true, },
                                                      },
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'cycle-source |]
                                                      ],
                                              },
                                          required =
                                            { details = true, type = true, },
                                        }
                                    ],
                                  { _ | Dyn }
                                ],
                              refs."properties.about.oneOf.1"
                            ]
                          | doc "Instructions on how to fetch or build this image.",
                        ..
                      },
                      refs."properties.about.oneOf.1"
                    ]
                  | doc "Details about the image used for this container.",
                lock
                  | std.contract.any_of
                    [ Bool, refs."properties.about.oneOf.1" ]
                  | doc "If true, the container is marked as `locked` and cannot be deleted in any way until the lock is lifted."
                  | optional,
                name
                  | String
                  | doc "The human-readable name of this container.",
                role
                  | std.enum.TagOrString
                  | [| 'conductor |]
                  | doc "The role applied to this container. **Not yet implemented**"
                  | optional,
                stateful
                  | std.contract.any_of
                    [ Bool, refs."properties.about.oneOf.1" ]
                  | doc "Whether or not to mark the container as stateful when deployed. Stateful containers can utilize volumes (stateful data) and are generally used for running databases or other data management applications.",
                volumes
                  | js2n.OneOf
                    [
                      js2n.Nullable
                        (js2n.array.ArrayOf
                          (js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    block_device =
                                      std.contract.any_of
                                          [
                                            Bool,
                                            refs."properties.about.oneOf.1"
                                          ],
                                    destination =
                                      js2n.OneOf
                                          [
                                            String,
                                            refs."properties.about.oneOf.1"
                                          ],
                                    local =
                                      std.contract.any_of
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      max_size =
                                                        js2n.OneOf
                                                            [
                                                              String,
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      storage_pool =
                                                        std.contract.any_of
                                                            [
                                                              Bool,
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                    },
                                                required = { max_size = true, },
                                              },
                                            refs."properties.about.oneOf.1"
                                          ],
                                    read_only =
                                      std.contract.any_of
                                          [
                                            Bool,
                                            refs."properties.about.oneOf.1"
                                          ],
                                    remote_access =
                                      std.contract.any_of
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      enable =
                                                        std.contract.any_of
                                                            [
                                                              Bool,
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      ips =
                                                        std.contract.any_of
                                                            [
                                                              js2n.array.ArrayOf
                                                                String,
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      password =
                                                        std.contract.any_of
                                                            [
                                                              js2n.record.Record
                                                                {
                                                                  additional =
                                                                    'Some Dyn,
                                                                  patterns = {},
                                                                  properties =
                                                                    {
                                                                        algorithm =
                                                                          js2n.OneOf
                                                                              [
                                                                                std.contract.Sequence
                                                                                  [
                                                                                    std.enum.TagOrString,
                                                                                    [|
                                                                                      'md5,
                                                                                      'sha512,
                                                                                      'raw
                                                                                    |]
                                                                                  ],
                                                                                refs."properties.about.oneOf.1"
                                                                              ],
                                                                        data =
                                                                          js2n.OneOf
                                                                              [
                                                                                String,
                                                                                refs."properties.about.oneOf.1"
                                                                              ],
                                                                      },
                                                                  required =
                                                                    {
                                                                        algorithm =
                                                                          true,
                                                                        data =
                                                                          true,
                                                                      },
                                                                },
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                      webhook =
                                                        js2n.OneOf
                                                            [
                                                              String,
                                                              refs."properties.about.oneOf.1"
                                                            ],
                                                    },
                                                required =
                                                  {
                                                      enable = true,
                                                      password = true,
                                                    },
                                              },
                                            refs."properties.about.oneOf.1"
                                          ],
                                  },
                              required = { destination = true, },
                            })),
                      refs."properties.about.oneOf.1"
                    ]
                  | doc "A list of configurations for volumes that will be attached to the container. Only applicable if the container is set to `stateful`."
                  | optional,
                ..
              }
            },
            refs."properties.about.oneOf.1"
          ],
      monitoring
        | std.contract.any_of
          [
            {
              logs
                | std.contract.any_of
                  [
                    {
                      logs
                        | std.contract.any_of
                          [
                            {
                              drain
                                | std.contract.any_of
                                  [
                                    {
                                      format
                                        | js2n.OneOf
                                          [
                                            std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [|
                                                  'ndjson-raw,
                                                  'ndjson-headers
                                                |]
                                              ],
                                            js2n.Null,
                                            refs."properties.about.oneOf.1"
                                          ]
                                        | doc "The format Cycle will use to send the logs."
                                        | optional,
                                      url
                                        | js2n.OneOf
                                          [
                                            String,
                                            refs."properties.about.oneOf.1"
                                          ]
                                        | doc "The URL to the third party logging service where logs will be sent.",
                                      ..
                                    },
                                    js2n.Null,
                                    refs."properties.about.oneOf.1"
                                  ]
                                | doc "When enabled, log drain allows logs to be exported to a third party service."
                                | optional,
                              ..
                            },
                            js2n.Null,
                            refs."properties.about.oneOf.1"
                          ]
                        | optional,
                      ..
                    },
                    js2n.Null,
                    refs."properties.about.oneOf.1"
                  ]
                | optional,
              ..
            },
            refs."properties.about.oneOf.1"
          ]
        | doc "Monitoring options for containers within this stack."
        | optional,
      scoped_variables
        | js2n.OneOf
          [
            js2n.Nullable
              (js2n.array.ArrayOf
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          access =
                            std.contract.any_of
                                [
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            env_variable =
                                              std.contract.any_of
                                                  [
                                                    js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              key =
                                                                js2n.OneOf
                                                                    [
                                                                      String,
                                                                      refs."properties.about.oneOf.1"
                                                                    ],
                                                            },
                                                        required =
                                                          { key = true, },
                                                      },
                                                    refs."properties.about.oneOf.1",
                                                    js2n.Null
                                                  ],
                                            file =
                                              js2n.OneOf
                                                  [
                                                    js2n.Nullable
                                                      (js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                decode =
                                                                  std.contract.any_of
                                                                      [
                                                                        Bool,
                                                                        refs."properties.about.oneOf.1"
                                                                      ],
                                                                gid =
                                                                  js2n.OneOf
                                                                      [
                                                                        js2n.Nullable
                                                                          std.number.Integer,
                                                                        refs."properties.about.oneOf.1"
                                                                      ],
                                                                path =
                                                                  js2n.OneOf
                                                                      [
                                                                        js2n.Nullable
                                                                          String,
                                                                        refs."properties.about.oneOf.1"
                                                                      ],
                                                                permissions =
                                                                  js2n.OneOf
                                                                      [
                                                                        js2n.Nullable
                                                                          String,
                                                                        refs."properties.about.oneOf.1"
                                                                      ],
                                                                uid =
                                                                  js2n.OneOf
                                                                      [
                                                                        js2n.Nullable
                                                                          std.number.Integer,
                                                                        refs."properties.about.oneOf.1"
                                                                      ],
                                                              },
                                                          required =
                                                            {
                                                                decode = true,
                                                                path = true,
                                                              },
                                                        }),
                                                    refs."properties.about.oneOf.1"
                                                  ],
                                            internal_api =
                                              js2n.OneOf
                                                  [
                                                    js2n.Nullable
                                                      (js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some Dyn,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                duration =
                                                                  std.contract.any_of
                                                                      [
                                                                        String,
                                                                        refs."properties.about.oneOf.1",
                                                                        js2n.Null
                                                                      ],
                                                              },
                                                          required = {},
                                                        }),
                                                    refs."properties.about.oneOf.1"
                                                  ],
                                          },
                                      required = {},
                                    },
                                  refs."properties.about.oneOf.1"
                                ],
                          identifier =
                            js2n.OneOf
                                [ String, refs."properties.about.oneOf.1" ],
                          scope =
                            std.contract.any_of
                                [
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            containers =
                                              std.contract.any_of
                                                  [
                                                    js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              global =
                                                                std.contract.any_of
                                                                    [
                                                                      Bool,
                                                                      refs."properties.about.oneOf.1"
                                                                    ],
                                                              identifiers =
                                                                js2n.OneOf
                                                                    [
                                                                      js2n.Nullable
                                                                        (js2n.array.ArrayOf
                                                                          refs."properties.scoped_variables.oneOf.0.items.properties.identifier.oneOf.0"),
                                                                      refs."properties.about.oneOf.1"
                                                                    ],
                                                              ids =
                                                                js2n.OneOf
                                                                    [
                                                                      js2n.Nullable
                                                                        (js2n.array.ArrayOf
                                                                          String),
                                                                      refs."properties.about.oneOf.1"
                                                                    ],
                                                            },
                                                        required =
                                                          { global = true, },
                                                      },
                                                    refs."properties.about.oneOf.1"
                                                  ],
                                          },
                                      required = { containers = true, },
                                    },
                                  refs."properties.about.oneOf.1"
                                ],
                          source =
                            std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [
                                      js2n.OneOf
                                        [
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    details =
                                                      std.contract.any_of
                                                          [
                                                            js2n.record.Record
                                                              {
                                                                additional =
                                                                  'Some Dyn,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      auth_token_url =
                                                                        js2n.OneOf
                                                                            [
                                                                              js2n.Nullable
                                                                                String,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                      headers =
                                                                        std.contract.any_of
                                                                            [
                                                                              {
                                                                                _ | js2n.Always
                                                                              },
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                      url =
                                                                        js2n.OneOf
                                                                            [
                                                                              String,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                    },
                                                                required =
                                                                  {
                                                                      auth_token_url =
                                                                        true,
                                                                      headers =
                                                                        true,
                                                                      url =
                                                                        true,
                                                                    },
                                                              },
                                                            refs."properties.about.oneOf.1"
                                                          ],
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'url |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    details = true,
                                                    type = true,
                                                  },
                                            },
                                          js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = {},
                                              properties =
                                                {
                                                    details =
                                                      std.contract.any_of
                                                          [
                                                            js2n.record.Record
                                                              {
                                                                additional =
                                                                  'Some Dyn,
                                                                patterns = {},
                                                                properties =
                                                                  {
                                                                      blob =
                                                                        std.contract.any_of
                                                                            [
                                                                              Bool,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                      secret =
                                                                        js2n.OneOf
                                                                            [
                                                                              js2n.Nullable
                                                                                (js2n.record.Record
                                                                                  {
                                                                                    additional =
                                                                                      'Some
                                                                                          Dyn,
                                                                                    patterns =
                                                                                      {},
                                                                                    properties =
                                                                                      {
                                                                                          hint =
                                                                                            js2n.OneOf
                                                                                                [
                                                                                                  String,
                                                                                                  refs."properties.about.oneOf.1"
                                                                                                ],
                                                                                          iv =
                                                                                            js2n.OneOf
                                                                                                [
                                                                                                  String,
                                                                                                  refs."properties.about.oneOf.1"
                                                                                                ],
                                                                                        },
                                                                                    required =
                                                                                      {},
                                                                                  }),
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                      value =
                                                                        js2n.OneOf
                                                                            [
                                                                              String,
                                                                              refs."properties.about.oneOf.1"
                                                                            ],
                                                                    },
                                                                required =
                                                                  {
                                                                      blob =
                                                                        true,
                                                                      value =
                                                                        true,
                                                                    },
                                                              },
                                                            refs."properties.about.oneOf.1"
                                                          ],
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'raw |]
                                                          ],
                                                  },
                                              required =
                                                {
                                                    details = true,
                                                    type = true,
                                                  },
                                            }
                                        ],
                                      { _ | Dyn }
                                    ],
                                  refs."properties.about.oneOf.1",
                                  js2n.Null
                                ],
                        },
                    required =
                      { access = true, identifier = true, scope = true, },
                  })),
            refs."properties.about.oneOf.1"
          ]
        | doc "Describes variables that are assigned to one or more containers at runtime. Can be assigned as an environment variable, written as a file inside the container(s), or accessed over the internal API."
        | optional,
      services
        | js2n.OneOf
          [
            js2n.Nullable
              (js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        discovery =
                          std.contract.any_of
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          config =
                                            std.contract.any_of
                                                [
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            custom_resolvers =
                                                              std.contract.any_of
                                                                  [
                                                                    js2n.array.ArrayOf
                                                                      String,
                                                                    refs."properties.about.oneOf.1",
                                                                    js2n.Null
                                                                  ],
                                                            dual_stack_legacy =
                                                              std.contract.any_of
                                                                  [
                                                                    Bool,
                                                                    refs."properties.about.oneOf.1",
                                                                    js2n.Null
                                                                  ],
                                                            empty_set_delay =
                                                              std.contract.any_of
                                                                  [
                                                                    refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                    refs."properties.about.oneOf.1",
                                                                    js2n.Null
                                                                  ],
                                                            hosts =
                                                              js2n.OneOf
                                                                  [
                                                                    js2n.Nullable
                                                                      (js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                (js2n.record.Record
                                                                                  {
                                                                                    additional =
                                                                                      'Some
                                                                                          Dyn,
                                                                                    patterns =
                                                                                      {},
                                                                                    properties =
                                                                                      {
                                                                                          ipv4 =
                                                                                            js2n.OneOf
                                                                                                [
                                                                                                  js2n.Nullable
                                                                                                    (js2n.array.ArrayOf
                                                                                                      String),
                                                                                                  refs."properties.about.oneOf.1"
                                                                                                ],
                                                                                          ipv6 =
                                                                                            js2n.OneOf
                                                                                                [
                                                                                                  js2n.Nullable
                                                                                                    (js2n.array.ArrayOf
                                                                                                      String),
                                                                                                  refs."properties.about.oneOf.1"
                                                                                                ],
                                                                                        },
                                                                                    required =
                                                                                      {},
                                                                                  }),
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {},
                                                                          required =
                                                                            {},
                                                                        }),
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                          },
                                                      required = {},
                                                    },
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                          service =
                                            std.contract.any_of
                                                [
                                                  refs."properties.services.oneOf.0.properties.vpn.anyOf.0.properties.service.anyOf.0",
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                        },
                                    required = {},
                                  },
                                refs."properties.about.oneOf.1",
                                js2n.Null
                              ],
                        loadbalancer =
                          std.contract.any_of
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          config =
                                            std.contract.any_of
                                                [
                                                  std.contract.Sequence
                                                    [
                                                      js2n.OneOf
                                                        [
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    details =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'Some
                                                                                      Dyn,
                                                                                patterns =
                                                                                  {},
                                                                                properties =
                                                                                  {
                                                                                      "default" =
                                                                                        std.contract.any_of
                                                                                            [
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        Dyn,
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {
                                                                                                        backend =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                js2n.record.Record
                                                                                                                  {
                                                                                                                    additional =
                                                                                                                      'Some
                                                                                                                          Dyn,
                                                                                                                    patterns =
                                                                                                                      {},
                                                                                                                    properties =
                                                                                                                      {
                                                                                                                          balance =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  std.contract.Sequence
                                                                                                                                    [
                                                                                                                                      std.enum.TagOrString,
                                                                                                                                      [|
                                                                                                                                        'source,
                                                                                                                                        'first,
                                                                                                                                        'leastconn,
                                                                                                                                        'static-rr,
                                                                                                                                        'roundrobin
                                                                                                                                      |]
                                                                                                                                    ],
                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                ],
                                                                                                                          timeouts =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    (js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              connect_ms =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              queue_ms =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              server_fin_ms =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              server_secs =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              tunnel_secs =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {
                                                                                                                                              connect_ms =
                                                                                                                                                true,
                                                                                                                                              queue_ms =
                                                                                                                                                true,
                                                                                                                                              server_fin_ms =
                                                                                                                                                true,
                                                                                                                                              server_secs =
                                                                                                                                                true,
                                                                                                                                              tunnel_secs =
                                                                                                                                                true,
                                                                                                                                            },
                                                                                                                                      }),
                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                ],
                                                                                                                        },
                                                                                                                    required =
                                                                                                                      {
                                                                                                                          balance =
                                                                                                                            true,
                                                                                                                          timeouts =
                                                                                                                            true,
                                                                                                                        },
                                                                                                                  },
                                                                                                                refs."properties.about.oneOf.1"
                                                                                                              ],
                                                                                                        frontend =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                js2n.record.Record
                                                                                                                  {
                                                                                                                    additional =
                                                                                                                      'Some
                                                                                                                          Dyn,
                                                                                                                    patterns =
                                                                                                                      {},
                                                                                                                    properties =
                                                                                                                      {
                                                                                                                          max_connections =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    std.number.Integer,
                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                ],
                                                                                                                          mode =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  std.contract.Sequence
                                                                                                                                    [
                                                                                                                                      std.enum.TagOrString,
                                                                                                                                      [|
                                                                                                                                        'http,
                                                                                                                                        'tcp
                                                                                                                                      |]
                                                                                                                                    ],
                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                ],
                                                                                                                          timeouts =
                                                                                                                            js2n.OneOf
                                                                                                                                [
                                                                                                                                  js2n.Nullable
                                                                                                                                    (js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              client_fin_ms =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              client_secs =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              http_keep_alive_ms =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              http_request_ms =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      js2n.Nullable
                                                                                                                                                        std.number.Integer,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {
                                                                                                                                              client_fin_ms =
                                                                                                                                                true,
                                                                                                                                              client_secs =
                                                                                                                                                true,
                                                                                                                                              http_keep_alive_ms =
                                                                                                                                                true,
                                                                                                                                              http_request_ms =
                                                                                                                                                true,
                                                                                                                                            },
                                                                                                                                      }),
                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                ],
                                                                                                                        },
                                                                                                                    required =
                                                                                                                      {
                                                                                                                          max_connections =
                                                                                                                            true,
                                                                                                                          mode =
                                                                                                                            true,
                                                                                                                          timeouts =
                                                                                                                            true,
                                                                                                                        },
                                                                                                                  },
                                                                                                                refs."properties.about.oneOf.1"
                                                                                                              ],
                                                                                                      },
                                                                                                  required =
                                                                                                    {
                                                                                                        backend =
                                                                                                          true,
                                                                                                        frontend =
                                                                                                          true,
                                                                                                      },
                                                                                                },
                                                                                              refs."properties.about.oneOf.1"
                                                                                            ],
                                                                                      ports =
                                                                                        std.contract.any_of
                                                                                            [
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        (std.contract.any_of
                                                                                                          [
                                                                                                            refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.0.properties.details.anyOf.0.properties.default.oneOf.0",
                                                                                                            refs."properties.about.oneOf.1"
                                                                                                          ]),
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {},
                                                                                                  required =
                                                                                                    {},
                                                                                                },
                                                                                              refs."properties.about.oneOf.1"
                                                                                            ],
                                                                                    },
                                                                                required =
                                                                                  {
                                                                                      "default" =
                                                                                        true,
                                                                                      ports =
                                                                                        true,
                                                                                    },
                                                                              },
                                                                            refs."properties.about.oneOf.1",
                                                                            js2n.Null
                                                                          ],
                                                                    ipv4 =
                                                                      std.contract.any_of
                                                                          [
                                                                            Bool,
                                                                            refs."properties.about.oneOf.1"
                                                                          ],
                                                                    ipv6 =
                                                                      std.contract.any_of
                                                                          [
                                                                            Bool,
                                                                            refs."properties.about.oneOf.1"
                                                                          ],
                                                                    type =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'haproxy
                                                                            |]
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    details =
                                                                      true,
                                                                    ipv4 = true,
                                                                    ipv6 = true,
                                                                    type = true,
                                                                  },
                                                            },
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    details =
                                                                      std.contract.any_of
                                                                          [
                                                                            js2n.record.Record
                                                                              {
                                                                                additional =
                                                                                  'Some
                                                                                      Dyn,
                                                                                patterns =
                                                                                  {},
                                                                                properties =
                                                                                  {
                                                                                      controller_template =
                                                                                        std.contract.any_of
                                                                                            [
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        Dyn,
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {
                                                                                                        identifier =
                                                                                                          js2n.OneOf
                                                                                                              [
                                                                                                                String,
                                                                                                                refs."properties.about.oneOf.1"
                                                                                                              ],
                                                                                                        port =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                std.number.Integer,
                                                                                                                refs."properties.about.oneOf.1"
                                                                                                              ],
                                                                                                        transport =
                                                                                                          js2n.OneOf
                                                                                                              [
                                                                                                                js2n.Nullable
                                                                                                                  (js2n.record.Record
                                                                                                                    {
                                                                                                                      additional =
                                                                                                                        'Some
                                                                                                                            Dyn,
                                                                                                                      patterns =
                                                                                                                        {},
                                                                                                                      properties =
                                                                                                                        {
                                                                                                                            config =
                                                                                                                              std.contract.any_of
                                                                                                                                  [
                                                                                                                                    js2n.record.Record
                                                                                                                                      {
                                                                                                                                        additional =
                                                                                                                                          'Some
                                                                                                                                              Dyn,
                                                                                                                                        patterns =
                                                                                                                                          {},
                                                                                                                                        properties =
                                                                                                                                          {
                                                                                                                                              extension =
                                                                                                                                                std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          js2n.OneOf
                                                                                                                                                            [
                                                                                                                                                              js2n.record.Record
                                                                                                                                                                {
                                                                                                                                                                  additional =
                                                                                                                                                                    'Some
                                                                                                                                                                        Dyn,
                                                                                                                                                                  patterns =
                                                                                                                                                                    {},
                                                                                                                                                                  properties =
                                                                                                                                                                    {
                                                                                                                                                                        details =
                                                                                                                                                                          std.contract.any_of
                                                                                                                                                                              [
                                                                                                                                                                                js2n.record.Record
                                                                                                                                                                                  {
                                                                                                                                                                                    additional =
                                                                                                                                                                                      'Some
                                                                                                                                                                                          Dyn,
                                                                                                                                                                                    patterns =
                                                                                                                                                                                      {},
                                                                                                                                                                                    properties =
                                                                                                                                                                                      {
                                                                                                                                                                                          connections =
                                                                                                                                                                                            std.contract.any_of
                                                                                                                                                                                                [
                                                                                                                                                                                                  {
                                                                                                                                                                                                    _ | js2n.Always
                                                                                                                                                                                                  },
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                          telemetry =
                                                                                                                                                                                            std.contract.any_of
                                                                                                                                                                                                [
                                                                                                                                                                                                  {
                                                                                                                                                                                                    _ | js2n.Always
                                                                                                                                                                                                  },
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                        },
                                                                                                                                                                                    required =
                                                                                                                                                                                      {
                                                                                                                                                                                          connections =
                                                                                                                                                                                            true,
                                                                                                                                                                                          telemetry =
                                                                                                                                                                                            true,
                                                                                                                                                                                        },
                                                                                                                                                                                  },
                                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                                              ],
                                                                                                                                                                        type =
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                              [
                                                                                                                                                                                std.enum.TagOrString,
                                                                                                                                                                                [|
                                                                                                                                                                                  'tcp
                                                                                                                                                                                |]
                                                                                                                                                                              ],
                                                                                                                                                                      },
                                                                                                                                                                  required =
                                                                                                                                                                    {
                                                                                                                                                                        details =
                                                                                                                                                                          true,
                                                                                                                                                                        type =
                                                                                                                                                                          true,
                                                                                                                                                                      },
                                                                                                                                                                },
                                                                                                                                                              js2n.record.Record
                                                                                                                                                                {
                                                                                                                                                                  additional =
                                                                                                                                                                    'Some
                                                                                                                                                                        Dyn,
                                                                                                                                                                  patterns =
                                                                                                                                                                    {},
                                                                                                                                                                  properties =
                                                                                                                                                                    {
                                                                                                                                                                        details =
                                                                                                                                                                          std.contract.any_of
                                                                                                                                                                              [
                                                                                                                                                                                js2n.record.Record
                                                                                                                                                                                  {
                                                                                                                                                                                    additional =
                                                                                                                                                                                      'Some
                                                                                                                                                                                          Dyn,
                                                                                                                                                                                    patterns =
                                                                                                                                                                                      {},
                                                                                                                                                                                    properties =
                                                                                                                                                                                      {
                                                                                                                                                                                          connections =
                                                                                                                                                                                            std.contract.any_of
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.record.Record
                                                                                                                                                                                                    {
                                                                                                                                                                                                      additional =
                                                                                                                                                                                                        'Some
                                                                                                                                                                                                            Dyn,
                                                                                                                                                                                                      patterns =
                                                                                                                                                                                                        {},
                                                                                                                                                                                                      properties =
                                                                                                                                                                                                        {
                                                                                                                                                                                                            max_idle_conns_per_connection =
                                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                                  [
                                                                                                                                                                                                                    js2n.Nullable
                                                                                                                                                                                                                      std.number.Integer,
                                                                                                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                                                                                                  ],
                                                                                                                                                                                                          },
                                                                                                                                                                                                      required =
                                                                                                                                                                                                        {
                                                                                                                                                                                                            max_idle_conns_per_connection =
                                                                                                                                                                                                              true,
                                                                                                                                                                                                          },
                                                                                                                                                                                                    },
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                          telemetry =
                                                                                                                                                                                            std.contract.any_of
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.record.Record
                                                                                                                                                                                                    {
                                                                                                                                                                                                      additional =
                                                                                                                                                                                                        'Some
                                                                                                                                                                                                            Dyn,
                                                                                                                                                                                                      patterns =
                                                                                                                                                                                                        {},
                                                                                                                                                                                                      properties =
                                                                                                                                                                                                        {
                                                                                                                                                                                                            ignore_paths =
                                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                                  [
                                                                                                                                                                                                                    js2n.Nullable
                                                                                                                                                                                                                      (js2n.array.ArrayOf
                                                                                                                                                                                                                        String),
                                                                                                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                                                                                                  ],
                                                                                                                                                                                                            max_trackable_urls =
                                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                                  [
                                                                                                                                                                                                                    js2n.Nullable
                                                                                                                                                                                                                      std.number.Integer,
                                                                                                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                                                                                                  ],
                                                                                                                                                                                                            track_invalid_requests =
                                                                                                                                                                                                              js2n.OneOf
                                                                                                                                                                                                                  [
                                                                                                                                                                                                                    js2n.Nullable
                                                                                                                                                                                                                      Bool,
                                                                                                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                                                                                                  ],
                                                                                                                                                                                                          },
                                                                                                                                                                                                      required =
                                                                                                                                                                                                        {},
                                                                                                                                                                                                    },
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                        },
                                                                                                                                                                                    required =
                                                                                                                                                                                      {
                                                                                                                                                                                          connections =
                                                                                                                                                                                            true,
                                                                                                                                                                                          telemetry =
                                                                                                                                                                                            true,
                                                                                                                                                                                        },
                                                                                                                                                                                  },
                                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                                              ],
                                                                                                                                                                        type =
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                              [
                                                                                                                                                                                std.enum.TagOrString,
                                                                                                                                                                                [|
                                                                                                                                                                                  'http
                                                                                                                                                                                |]
                                                                                                                                                                              ],
                                                                                                                                                                      },
                                                                                                                                                                  required =
                                                                                                                                                                    {
                                                                                                                                                                        details =
                                                                                                                                                                          true,
                                                                                                                                                                        type =
                                                                                                                                                                          true,
                                                                                                                                                                      },
                                                                                                                                                                },
                                                                                                                                                              js2n.record.Record
                                                                                                                                                                {
                                                                                                                                                                  additional =
                                                                                                                                                                    'Some
                                                                                                                                                                        Dyn,
                                                                                                                                                                  patterns =
                                                                                                                                                                    {},
                                                                                                                                                                  properties =
                                                                                                                                                                    {
                                                                                                                                                                        details =
                                                                                                                                                                          std.contract.any_of
                                                                                                                                                                              [
                                                                                                                                                                                js2n.record.Record
                                                                                                                                                                                  {
                                                                                                                                                                                    additional =
                                                                                                                                                                                      'Some
                                                                                                                                                                                          Dyn,
                                                                                                                                                                                    patterns =
                                                                                                                                                                                      {},
                                                                                                                                                                                    properties =
                                                                                                                                                                                      {
                                                                                                                                                                                          telemetry =
                                                                                                                                                                                            std.contract.any_of
                                                                                                                                                                                                [
                                                                                                                                                                                                  {
                                                                                                                                                                                                    _ | js2n.Always
                                                                                                                                                                                                  },
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                        },
                                                                                                                                                                                    required =
                                                                                                                                                                                      {
                                                                                                                                                                                          telemetry =
                                                                                                                                                                                            true,
                                                                                                                                                                                        },
                                                                                                                                                                                  },
                                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                                              ],
                                                                                                                                                                        type =
                                                                                                                                                                          std.contract.Sequence
                                                                                                                                                                              [
                                                                                                                                                                                std.enum.TagOrString,
                                                                                                                                                                                [|
                                                                                                                                                                                  'udp
                                                                                                                                                                                |]
                                                                                                                                                                              ],
                                                                                                                                                                      },
                                                                                                                                                                  required =
                                                                                                                                                                    {
                                                                                                                                                                        details =
                                                                                                                                                                          true,
                                                                                                                                                                        type =
                                                                                                                                                                          true,
                                                                                                                                                                      },
                                                                                                                                                                }
                                                                                                                                                            ],
                                                                                                                                                          {
                                                                                                                                                            _ | Dyn
                                                                                                                                                          }
                                                                                                                                                        ],
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              ingress =
                                                                                                                                                std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      js2n.record.Record
                                                                                                                                                        {
                                                                                                                                                          additional =
                                                                                                                                                            'Some
                                                                                                                                                                Dyn,
                                                                                                                                                          patterns =
                                                                                                                                                            {},
                                                                                                                                                          properties =
                                                                                                                                                            {
                                                                                                                                                                tls =
                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                      [
                                                                                                                                                                        js2n.Nullable
                                                                                                                                                                          (js2n.record.Record
                                                                                                                                                                            {
                                                                                                                                                                              additional =
                                                                                                                                                                                'Some
                                                                                                                                                                                    Dyn,
                                                                                                                                                                              patterns =
                                                                                                                                                                                {},
                                                                                                                                                                              properties =
                                                                                                                                                                                {
                                                                                                                                                                                    enable =
                                                                                                                                                                                      std.contract.any_of
                                                                                                                                                                                          [
                                                                                                                                                                                            Bool,
                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                          ],
                                                                                                                                                                                  },
                                                                                                                                                                              required =
                                                                                                                                                                                {
                                                                                                                                                                                    enable =
                                                                                                                                                                                      true,
                                                                                                                                                                                  },
                                                                                                                                                                            }),
                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                      ],
                                                                                                                                                              },
                                                                                                                                                          required =
                                                                                                                                                            {},
                                                                                                                                                        },
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              performance =
                                                                                                                                                std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      Bool,
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              timeouts =
                                                                                                                                                std.contract.any_of
                                                                                                                                                    [
                                                                                                                                                      js2n.record.Record
                                                                                                                                                        {
                                                                                                                                                          additional =
                                                                                                                                                            'Some
                                                                                                                                                                Dyn,
                                                                                                                                                          patterns =
                                                                                                                                                            {},
                                                                                                                                                          properties =
                                                                                                                                                            {
                                                                                                                                                                idle =
                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                      [
                                                                                                                                                                        refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                      ],
                                                                                                                                                              },
                                                                                                                                                          required =
                                                                                                                                                            {
                                                                                                                                                                idle =
                                                                                                                                                                  true,
                                                                                                                                                              },
                                                                                                                                                        },
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                              verbosity =
                                                                                                                                                js2n.OneOf
                                                                                                                                                    [
                                                                                                                                                      std.contract.Sequence
                                                                                                                                                        [
                                                                                                                                                          std.enum.TagOrString,
                                                                                                                                                          [|
                                                                                                                                                            'debug,
                                                                                                                                                            'high,
                                                                                                                                                            'normal,
                                                                                                                                                            'low
                                                                                                                                                          |]
                                                                                                                                                        ],
                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                    ],
                                                                                                                                            },
                                                                                                                                        required =
                                                                                                                                          {
                                                                                                                                              ingress =
                                                                                                                                                true,
                                                                                                                                              performance =
                                                                                                                                                true,
                                                                                                                                              timeouts =
                                                                                                                                                true,
                                                                                                                                              verbosity =
                                                                                                                                                true,
                                                                                                                                            },
                                                                                                                                      },
                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                  ],
                                                                                                                            disable =
                                                                                                                              std.contract.any_of
                                                                                                                                  [
                                                                                                                                    Bool,
                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                  ],
                                                                                                                            mode =
                                                                                                                              js2n.OneOf
                                                                                                                                  [
                                                                                                                                    std.contract.Sequence
                                                                                                                                      [
                                                                                                                                        std.enum.TagOrString,
                                                                                                                                        [|
                                                                                                                                          'http,
                                                                                                                                          'udp,
                                                                                                                                          'tcp
                                                                                                                                        |]
                                                                                                                                      ],
                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                  ],
                                                                                                                            routers =
                                                                                                                              std.contract.any_of
                                                                                                                                  [
                                                                                                                                    js2n.array.ArrayOf
                                                                                                                                      (std.contract.any_of
                                                                                                                                        [
                                                                                                                                          js2n.record.Record
                                                                                                                                            {
                                                                                                                                              additional =
                                                                                                                                                'Some
                                                                                                                                                    Dyn,
                                                                                                                                              patterns =
                                                                                                                                                {},
                                                                                                                                              properties =
                                                                                                                                                {
                                                                                                                                                    config =
                                                                                                                                                      std.contract.any_of
                                                                                                                                                          [
                                                                                                                                                            js2n.record.Record
                                                                                                                                                              {
                                                                                                                                                                additional =
                                                                                                                                                                  'Some
                                                                                                                                                                      Dyn,
                                                                                                                                                                patterns =
                                                                                                                                                                  {},
                                                                                                                                                                properties =
                                                                                                                                                                  {
                                                                                                                                                                      destination_prioritization =
                                                                                                                                                                        js2n.OneOf
                                                                                                                                                                            [
                                                                                                                                                                              std.contract.Sequence
                                                                                                                                                                                [
                                                                                                                                                                                  std.enum.TagOrString,
                                                                                                                                                                                  [|
                                                                                                                                                                                    'fixed,
                                                                                                                                                                                    'random,
                                                                                                                                                                                    'latency
                                                                                                                                                                                  |]
                                                                                                                                                                                ],
                                                                                                                                                                              refs."properties.about.oneOf.1",
                                                                                                                                                                              js2n.Null
                                                                                                                                                                            ],
                                                                                                                                                                      destination_retries =
                                                                                                                                                                        std.contract.any_of
                                                                                                                                                                            [
                                                                                                                                                                              std.number.Integer,
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                      extension =
                                                                                                                                                                        js2n.Nullable
                                                                                                                                                                            (std.contract.Sequence
                                                                                                                                                                              [
                                                                                                                                                                                js2n.OneOf
                                                                                                                                                                                  [
                                                                                                                                                                                    js2n.record.Record
                                                                                                                                                                                      {
                                                                                                                                                                                        additional =
                                                                                                                                                                                          'Some
                                                                                                                                                                                              Dyn,
                                                                                                                                                                                        patterns =
                                                                                                                                                                                          {},
                                                                                                                                                                                        properties =
                                                                                                                                                                                          {
                                                                                                                                                                                              details =
                                                                                                                                                                                                std.contract.any_of
                                                                                                                                                                                                    [
                                                                                                                                                                                                      {
                                                                                                                                                                                                        _ | js2n.Always
                                                                                                                                                                                                      },
                                                                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                                                                    ],
                                                                                                                                                                                              type =
                                                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                                                    [
                                                                                                                                                                                                      std.enum.TagOrString,
                                                                                                                                                                                                      [|
                                                                                                                                                                                                        'tcp
                                                                                                                                                                                                      |]
                                                                                                                                                                                                    ],
                                                                                                                                                                                            },
                                                                                                                                                                                        required =
                                                                                                                                                                                          {
                                                                                                                                                                                              details =
                                                                                                                                                                                                true,
                                                                                                                                                                                              type =
                                                                                                                                                                                                true,
                                                                                                                                                                                            },
                                                                                                                                                                                      },
                                                                                                                                                                                    js2n.record.Record
                                                                                                                                                                                      {
                                                                                                                                                                                        additional =
                                                                                                                                                                                          'Some
                                                                                                                                                                                              Dyn,
                                                                                                                                                                                        patterns =
                                                                                                                                                                                          {},
                                                                                                                                                                                        properties =
                                                                                                                                                                                          {
                                                                                                                                                                                              details =
                                                                                                                                                                                                std.contract.any_of
                                                                                                                                                                                                    [
                                                                                                                                                                                                      js2n.record.Record
                                                                                                                                                                                                        {
                                                                                                                                                                                                          additional =
                                                                                                                                                                                                            'Some
                                                                                                                                                                                                                Dyn,
                                                                                                                                                                                                          patterns =
                                                                                                                                                                                                            {},
                                                                                                                                                                                                          properties =
                                                                                                                                                                                                            {
                                                                                                                                                                                                                caching =
                                                                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                                                                      [
                                                                                                                                                                                                                        js2n.Nullable
                                                                                                                                                                                                                          (js2n.record.Record
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              additional =
                                                                                                                                                                                                                                'Some
                                                                                                                                                                                                                                    Dyn,
                                                                                                                                                                                                                              patterns =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                              properties =
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    files =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              (js2n.array.ArrayOf
                                                                                                                                                                                                                                                (std.contract.any_of
                                                                                                                                                                                                                                                  [
                                                                                                                                                                                                                                                    js2n.record.Record
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        additional =
                                                                                                                                                                                                                                                          'Some
                                                                                                                                                                                                                                                              Dyn,
                                                                                                                                                                                                                                                        patterns =
                                                                                                                                                                                                                                                          {},
                                                                                                                                                                                                                                                        properties =
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                              "match" =
                                                                                                                                                                                                                                                                js2n.OneOf
                                                                                                                                                                                                                                                                    [
                                                                                                                                                                                                                                                                      String,
                                                                                                                                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                                                              ttl =
                                                                                                                                                                                                                                                                js2n.OneOf
                                                                                                                                                                                                                                                                    [
                                                                                                                                                                                                                                                                      refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                                                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                    ],
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                        required =
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                              "match" =
                                                                                                                                                                                                                                                                true,
                                                                                                                                                                                                                                                              ttl =
                                                                                                                                                                                                                                                                true,
                                                                                                                                                                                                                                                            },
                                                                                                                                                                                                                                                      },
                                                                                                                                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                  ])),
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                  },
                                                                                                                                                                                                                              required =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                            }),
                                                                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                                                                      ],
                                                                                                                                                                                                                forward =
                                                                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                                                                      [
                                                                                                                                                                                                                        js2n.Nullable
                                                                                                                                                                                                                          (js2n.record.Record
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              additional =
                                                                                                                                                                                                                                'Some
                                                                                                                                                                                                                                    Dyn,
                                                                                                                                                                                                                              patterns =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                              properties =
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    content_mod =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              (js2n.record.Record
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  additional =
                                                                                                                                                                                                                                                    'Some
                                                                                                                                                                                                                                                        Dyn,
                                                                                                                                                                                                                                                  patterns =
                                                                                                                                                                                                                                                    {},
                                                                                                                                                                                                                                                  properties =
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                        replace =
                                                                                                                                                                                                                                                          js2n.OneOf
                                                                                                                                                                                                                                                              [
                                                                                                                                                                                                                                                                js2n.Nullable
                                                                                                                                                                                                                                                                  (js2n.array.ArrayOf
                                                                                                                                                                                                                                                                    (std.contract.any_of
                                                                                                                                                                                                                                                                      [
                                                                                                                                                                                                                                                                        js2n.record.Record
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            additional =
                                                                                                                                                                                                                                                                              'Some
                                                                                                                                                                                                                                                                                  Dyn,
                                                                                                                                                                                                                                                                            patterns =
                                                                                                                                                                                                                                                                              {},
                                                                                                                                                                                                                                                                            properties =
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                  "match" =
                                                                                                                                                                                                                                                                                    js2n.OneOf
                                                                                                                                                                                                                                                                                        [
                                                                                                                                                                                                                                                                                          String,
                                                                                                                                                                                                                                                                                          refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                                                                  value =
                                                                                                                                                                                                                                                                                    js2n.OneOf
                                                                                                                                                                                                                                                                                        [
                                                                                                                                                                                                                                                                                          String,
                                                                                                                                                                                                                                                                                          refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                            required =
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                  "match" =
                                                                                                                                                                                                                                                                                    true,
                                                                                                                                                                                                                                                                                  value =
                                                                                                                                                                                                                                                                                    true,
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                          },
                                                                                                                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                      ])),
                                                                                                                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                              ],
                                                                                                                                                                                                                                                      },
                                                                                                                                                                                                                                                  required =
                                                                                                                                                                                                                                                    {},
                                                                                                                                                                                                                                                }),
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    scheme =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              String,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    url =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            String,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                  },
                                                                                                                                                                                                                              required =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                            }),
                                                                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                                                                      ],
                                                                                                                                                                                                                proxy =
                                                                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                                                                      [
                                                                                                                                                                                                                        js2n.Nullable
                                                                                                                                                                                                                          (js2n.record.Record
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              additional =
                                                                                                                                                                                                                                'Some
                                                                                                                                                                                                                                    Dyn,
                                                                                                                                                                                                                              patterns =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                              properties =
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    content_mod =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              (js2n.record.Record
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  additional =
                                                                                                                                                                                                                                                    'Some
                                                                                                                                                                                                                                                        Dyn,
                                                                                                                                                                                                                                                  patterns =
                                                                                                                                                                                                                                                    {},
                                                                                                                                                                                                                                                  properties =
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                        replace =
                                                                                                                                                                                                                                                          js2n.OneOf
                                                                                                                                                                                                                                                              [
                                                                                                                                                                                                                                                                js2n.Nullable
                                                                                                                                                                                                                                                                  (js2n.array.ArrayOf
                                                                                                                                                                                                                                                                    (std.contract.any_of
                                                                                                                                                                                                                                                                      [
                                                                                                                                                                                                                                                                        js2n.record.Record
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            additional =
                                                                                                                                                                                                                                                                              'Some
                                                                                                                                                                                                                                                                                  Dyn,
                                                                                                                                                                                                                                                                            patterns =
                                                                                                                                                                                                                                                                              {},
                                                                                                                                                                                                                                                                            properties =
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                  "match" =
                                                                                                                                                                                                                                                                                    js2n.OneOf
                                                                                                                                                                                                                                                                                        [
                                                                                                                                                                                                                                                                                          String,
                                                                                                                                                                                                                                                                                          refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                                                                  value =
                                                                                                                                                                                                                                                                                    js2n.OneOf
                                                                                                                                                                                                                                                                                        [
                                                                                                                                                                                                                                                                                          String,
                                                                                                                                                                                                                                                                                          refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                            required =
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                  "match" =
                                                                                                                                                                                                                                                                                    true,
                                                                                                                                                                                                                                                                                  value =
                                                                                                                                                                                                                                                                                    true,
                                                                                                                                                                                                                                                                                },
                                                                                                                                                                                                                                                                          },
                                                                                                                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                                      ])),
                                                                                                                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                                              ],
                                                                                                                                                                                                                                                      },
                                                                                                                                                                                                                                                  required =
                                                                                                                                                                                                                                                    {},
                                                                                                                                                                                                                                                }),
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    domain =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              String,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    url =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            String,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1",
                                                                                                                                                                                                                                            js2n.Null
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                  },
                                                                                                                                                                                                                              required =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                            }),
                                                                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                                                                      ],
                                                                                                                                                                                                                redirect =
                                                                                                                                                                                                                  js2n.OneOf
                                                                                                                                                                                                                      [
                                                                                                                                                                                                                        js2n.Nullable
                                                                                                                                                                                                                          (js2n.record.Record
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              additional =
                                                                                                                                                                                                                                'Some
                                                                                                                                                                                                                                    Dyn,
                                                                                                                                                                                                                              patterns =
                                                                                                                                                                                                                                {},
                                                                                                                                                                                                                              properties =
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    auto_https_redirect =
                                                                                                                                                                                                                                      std.contract.any_of
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            Bool,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    port =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              std.number.Integer,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    remove_www =
                                                                                                                                                                                                                                      std.contract.any_of
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            Bool,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    scheme =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              String,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                    url =
                                                                                                                                                                                                                                      js2n.OneOf
                                                                                                                                                                                                                                          [
                                                                                                                                                                                                                                            js2n.Nullable
                                                                                                                                                                                                                                              String,
                                                                                                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                                                                                                          ],
                                                                                                                                                                                                                                  },
                                                                                                                                                                                                                              required =
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    auto_https_redirect =
                                                                                                                                                                                                                                      true,
                                                                                                                                                                                                                                    remove_www =
                                                                                                                                                                                                                                      true,
                                                                                                                                                                                                                                  },
                                                                                                                                                                                                                            }),
                                                                                                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                                                                                                      ],
                                                                                                                                                                                                              },
                                                                                                                                                                                                          required =
                                                                                                                                                                                                            {},
                                                                                                                                                                                                        },
                                                                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                                                                    ],
                                                                                                                                                                                              type =
                                                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                                                    [
                                                                                                                                                                                                      std.enum.TagOrString,
                                                                                                                                                                                                      [|
                                                                                                                                                                                                        'http
                                                                                                                                                                                                      |]
                                                                                                                                                                                                    ],
                                                                                                                                                                                            },
                                                                                                                                                                                        required =
                                                                                                                                                                                          {
                                                                                                                                                                                              details =
                                                                                                                                                                                                true,
                                                                                                                                                                                              type =
                                                                                                                                                                                                true,
                                                                                                                                                                                            },
                                                                                                                                                                                      },
                                                                                                                                                                                    js2n.record.Record
                                                                                                                                                                                      {
                                                                                                                                                                                        additional =
                                                                                                                                                                                          'Some
                                                                                                                                                                                              Dyn,
                                                                                                                                                                                        patterns =
                                                                                                                                                                                          {},
                                                                                                                                                                                        properties =
                                                                                                                                                                                          {
                                                                                                                                                                                              details =
                                                                                                                                                                                                std.contract.any_of
                                                                                                                                                                                                    [
                                                                                                                                                                                                      {
                                                                                                                                                                                                        _ | js2n.Always
                                                                                                                                                                                                      },
                                                                                                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                                                                                                    ],
                                                                                                                                                                                              type =
                                                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                                                    [
                                                                                                                                                                                                      std.enum.TagOrString,
                                                                                                                                                                                                      [|
                                                                                                                                                                                                        'udp
                                                                                                                                                                                                      |]
                                                                                                                                                                                                    ],
                                                                                                                                                                                            },
                                                                                                                                                                                        required =
                                                                                                                                                                                          {
                                                                                                                                                                                              details =
                                                                                                                                                                                                true,
                                                                                                                                                                                              type =
                                                                                                                                                                                                true,
                                                                                                                                                                                            },
                                                                                                                                                                                      }
                                                                                                                                                                                  ],
                                                                                                                                                                                {
                                                                                                                                                                                  _ | Dyn
                                                                                                                                                                                }
                                                                                                                                                                              ]),
                                                                                                                                                                      sticky_sessions =
                                                                                                                                                                        std.contract.any_of
                                                                                                                                                                            [
                                                                                                                                                                              Bool,
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                      timeouts =
                                                                                                                                                                        std.contract.any_of
                                                                                                                                                                            [
                                                                                                                                                                              js2n.record.Record
                                                                                                                                                                                {
                                                                                                                                                                                  additional =
                                                                                                                                                                                    'Some
                                                                                                                                                                                        Dyn,
                                                                                                                                                                                  patterns =
                                                                                                                                                                                    {},
                                                                                                                                                                                  properties =
                                                                                                                                                                                    {
                                                                                                                                                                                        destination_connection =
                                                                                                                                                                                          js2n.OneOf
                                                                                                                                                                                              [
                                                                                                                                                                                                refs."properties.scoped_variables.oneOf.0.items.properties.access.oneOf.0.properties.internal_api.oneOf.0.properties.duration.anyOf.0",
                                                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                                                              ],
                                                                                                                                                                                      },
                                                                                                                                                                                  required =
                                                                                                                                                                                    {
                                                                                                                                                                                        destination_connection =
                                                                                                                                                                                          true,
                                                                                                                                                                                      },
                                                                                                                                                                                },
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                      tls =
                                                                                                                                                                        js2n.OneOf
                                                                                                                                                                            [
                                                                                                                                                                              js2n.Nullable
                                                                                                                                                                                (js2n.record.Record
                                                                                                                                                                                  {
                                                                                                                                                                                    additional =
                                                                                                                                                                                      'Some
                                                                                                                                                                                          Dyn,
                                                                                                                                                                                    patterns =
                                                                                                                                                                                      {},
                                                                                                                                                                                    properties =
                                                                                                                                                                                      {
                                                                                                                                                                                          allow_insecure =
                                                                                                                                                                                            js2n.OneOf
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                                                    Bool,
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                          client_auth =
                                                                                                                                                                                            js2n.OneOf
                                                                                                                                                                                                [
                                                                                                                                                                                                  std.contract.Sequence
                                                                                                                                                                                                    [
                                                                                                                                                                                                      std.enum.TagOrString,
                                                                                                                                                                                                      [|
                                                                                                                                                                                                        'require-verify,
                                                                                                                                                                                                        'require,
                                                                                                                                                                                                        'request,
                                                                                                                                                                                                        'none
                                                                                                                                                                                                      |]
                                                                                                                                                                                                    ],
                                                                                                                                                                                                  refs."properties.about.oneOf.1",
                                                                                                                                                                                                  js2n.Null
                                                                                                                                                                                                ],
                                                                                                                                                                                          client_cert_auth =
                                                                                                                                                                                            js2n.OneOf
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                                                    String,
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                          server_name =
                                                                                                                                                                                            js2n.OneOf
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                                                    String,
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                        },
                                                                                                                                                                                    required =
                                                                                                                                                                                      {},
                                                                                                                                                                                  }),
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                    },
                                                                                                                                                                required =
                                                                                                                                                                  {
                                                                                                                                                                      destination_retries =
                                                                                                                                                                        true,
                                                                                                                                                                      sticky_sessions =
                                                                                                                                                                        true,
                                                                                                                                                                      timeouts =
                                                                                                                                                                        true,
                                                                                                                                                                    },
                                                                                                                                                              },
                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                          ],
                                                                                                                                                    "match" =
                                                                                                                                                      std.contract.any_of
                                                                                                                                                          [
                                                                                                                                                            js2n.record.Record
                                                                                                                                                              {
                                                                                                                                                                additional =
                                                                                                                                                                  'Some
                                                                                                                                                                      Dyn,
                                                                                                                                                                patterns =
                                                                                                                                                                  {},
                                                                                                                                                                properties =
                                                                                                                                                                  {
                                                                                                                                                                      containers =
                                                                                                                                                                        js2n.OneOf
                                                                                                                                                                            [
                                                                                                                                                                              js2n.Nullable
                                                                                                                                                                                (js2n.record.Record
                                                                                                                                                                                  {
                                                                                                                                                                                    additional =
                                                                                                                                                                                      'Some
                                                                                                                                                                                          Dyn,
                                                                                                                                                                                    patterns =
                                                                                                                                                                                      {},
                                                                                                                                                                                    properties =
                                                                                                                                                                                      {
                                                                                                                                                                                          exclude =
                                                                                                                                                                                            js2n.OneOf
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                                                    (js2n.array.ArrayOf
                                                                                                                                                                                                      refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0"),
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                          include =
                                                                                                                                                                                            js2n.OneOf
                                                                                                                                                                                                [
                                                                                                                                                                                                  js2n.Nullable
                                                                                                                                                                                                    (js2n.array.ArrayOf
                                                                                                                                                                                                      refs."properties.containers.oneOf.0.additionalProperties.properties.config.oneOf.0.properties.integrations.anyOf.0.properties.backups.oneOf.0.properties.integration_id.oneOf.0"),
                                                                                                                                                                                                  refs."properties.about.oneOf.1"
                                                                                                                                                                                                ],
                                                                                                                                                                                        },
                                                                                                                                                                                    required =
                                                                                                                                                                                      {},
                                                                                                                                                                                  }),
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                      domains =
                                                                                                                                                                        js2n.OneOf
                                                                                                                                                                            [
                                                                                                                                                                              js2n.Nullable
                                                                                                                                                                                (js2n.array.ArrayOf
                                                                                                                                                                                  String),
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                      internal_ports =
                                                                                                                                                                        js2n.OneOf
                                                                                                                                                                            [
                                                                                                                                                                              js2n.Nullable
                                                                                                                                                                                (js2n.array.ArrayOf
                                                                                                                                                                                  std.number.Integer),
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                      path =
                                                                                                                                                                        js2n.OneOf
                                                                                                                                                                            [
                                                                                                                                                                              js2n.Nullable
                                                                                                                                                                                String,
                                                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                                                            ],
                                                                                                                                                                    },
                                                                                                                                                                required =
                                                                                                                                                                  {
                                                                                                                                                                      domains =
                                                                                                                                                                        true,
                                                                                                                                                                      internal_ports =
                                                                                                                                                                        true,
                                                                                                                                                                    },
                                                                                                                                                              },
                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                          ],
                                                                                                                                                    mode =
                                                                                                                                                      js2n.OneOf
                                                                                                                                                          [
                                                                                                                                                            std.contract.Sequence
                                                                                                                                                              [
                                                                                                                                                                std.enum.TagOrString,
                                                                                                                                                                [|
                                                                                                                                                                  'source-ip,
                                                                                                                                                                  'round-robin,
                                                                                                                                                                  'random
                                                                                                                                                                |]
                                                                                                                                                              ],
                                                                                                                                                            refs."properties.about.oneOf.1"
                                                                                                                                                          ],
                                                                                                                                                  },
                                                                                                                                              required =
                                                                                                                                                {
                                                                                                                                                    config =
                                                                                                                                                      true,
                                                                                                                                                    "match" =
                                                                                                                                                      true,
                                                                                                                                                    mode =
                                                                                                                                                      true,
                                                                                                                                                  },
                                                                                                                                            },
                                                                                                                                          refs."properties.about.oneOf.1"
                                                                                                                                        ]),
                                                                                                                                    refs."properties.about.oneOf.1"
                                                                                                                                  ],
                                                                                                                          },
                                                                                                                      required =
                                                                                                                        {
                                                                                                                            config =
                                                                                                                              true,
                                                                                                                            disable =
                                                                                                                              true,
                                                                                                                            mode =
                                                                                                                              true,
                                                                                                                            routers =
                                                                                                                              true,
                                                                                                                          },
                                                                                                                    }),
                                                                                                                refs."properties.about.oneOf.1"
                                                                                                              ],
                                                                                                        waf =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.waf.anyOf.0",
                                                                                                                refs."properties.about.oneOf.1",
                                                                                                                js2n.Null
                                                                                                              ],
                                                                                                      },
                                                                                                  required =
                                                                                                    {
                                                                                                        identifier =
                                                                                                          true,
                                                                                                        port =
                                                                                                          true,
                                                                                                      },
                                                                                                },
                                                                                              refs."properties.about.oneOf.1",
                                                                                              js2n.Null
                                                                                            ],
                                                                                      controllers =
                                                                                        std.contract.any_of
                                                                                            [
                                                                                              js2n.array.ArrayOf
                                                                                                refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0.properties.controller_template.anyOf.0",
                                                                                              refs."properties.about.oneOf.1"
                                                                                            ],
                                                                                      waf =
                                                                                        std.contract.any_of
                                                                                            [
                                                                                              js2n.record.Record
                                                                                                {
                                                                                                  additional =
                                                                                                    'Some
                                                                                                        Dyn,
                                                                                                  patterns =
                                                                                                    {},
                                                                                                  properties =
                                                                                                    {
                                                                                                        rules =
                                                                                                          std.contract.any_of
                                                                                                              [
                                                                                                                js2n.array.ArrayOf
                                                                                                                  (std.contract.any_of
                                                                                                                    [
                                                                                                                      js2n.record.Record
                                                                                                                        {
                                                                                                                          additional =
                                                                                                                            'Some
                                                                                                                                Dyn,
                                                                                                                          patterns =
                                                                                                                            {},
                                                                                                                          properties =
                                                                                                                            {
                                                                                                                                conditions =
                                                                                                                                  std.contract.any_of
                                                                                                                                      [
                                                                                                                                        js2n.array.ArrayOf
                                                                                                                                          (std.contract.any_of
                                                                                                                                            [
                                                                                                                                              js2n.record.Record
                                                                                                                                                {
                                                                                                                                                  additional =
                                                                                                                                                    'Some
                                                                                                                                                        Dyn,
                                                                                                                                                  patterns =
                                                                                                                                                    {},
                                                                                                                                                  properties =
                                                                                                                                                    {
                                                                                                                                                        operator =
                                                                                                                                                          js2n.OneOf
                                                                                                                                                              [
                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                  [
                                                                                                                                                                    std.enum.TagOrString,
                                                                                                                                                                    [|
                                                                                                                                                                      '"<=",
                                                                                                                                                                      '">=",
                                                                                                                                                                      '"<",
                                                                                                                                                                      '">",
                                                                                                                                                                      '"!=",
                                                                                                                                                                      '"=="
                                                                                                                                                                    |]
                                                                                                                                                                  ],
                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                              ],
                                                                                                                                                        type =
                                                                                                                                                          js2n.OneOf
                                                                                                                                                              [
                                                                                                                                                                std.contract.Sequence
                                                                                                                                                                  [
                                                                                                                                                                    std.enum.TagOrString,
                                                                                                                                                                    [|
                                                                                                                                                                      'header-match,
                                                                                                                                                                      'method-match,
                                                                                                                                                                      'url-match,
                                                                                                                                                                      'geo-match,
                                                                                                                                                                      'ip-match
                                                                                                                                                                    |]
                                                                                                                                                                  ],
                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                              ],
                                                                                                                                                        value =
                                                                                                                                                          js2n.OneOf
                                                                                                                                                              [
                                                                                                                                                                String,
                                                                                                                                                                refs."properties.about.oneOf.1"
                                                                                                                                                              ],
                                                                                                                                                      },
                                                                                                                                                  required =
                                                                                                                                                    {
                                                                                                                                                        operator =
                                                                                                                                                          true,
                                                                                                                                                        type =
                                                                                                                                                          true,
                                                                                                                                                        value =
                                                                                                                                                          true,
                                                                                                                                                      },
                                                                                                                                                },
                                                                                                                                              refs."properties.about.oneOf.1"
                                                                                                                                            ]),
                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                      ],
                                                                                                                                description =
                                                                                                                                  js2n.OneOf
                                                                                                                                      [
                                                                                                                                        String,
                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                      ],
                                                                                                                                expires =
                                                                                                                                  js2n.OneOf
                                                                                                                                      [
                                                                                                                                        String,
                                                                                                                                        refs."properties.about.oneOf.1",
                                                                                                                                        js2n.Null
                                                                                                                                      ],
                                                                                                                                "match" =
                                                                                                                                  js2n.OneOf
                                                                                                                                      [
                                                                                                                                        std.contract.Sequence
                                                                                                                                          [
                                                                                                                                            std.enum.TagOrString,
                                                                                                                                            [|
                                                                                                                                              'all,
                                                                                                                                              'any
                                                                                                                                            |]
                                                                                                                                          ],
                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                      ],
                                                                                                                                skip =
                                                                                                                                  std.contract.any_of
                                                                                                                                      [
                                                                                                                                        Bool,
                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                      ],
                                                                                                                                type =
                                                                                                                                  js2n.OneOf
                                                                                                                                      [
                                                                                                                                        std.contract.Sequence
                                                                                                                                          [
                                                                                                                                            std.enum.TagOrString,
                                                                                                                                            [|
                                                                                                                                              'deny,
                                                                                                                                              'allow
                                                                                                                                            |]
                                                                                                                                          ],
                                                                                                                                        refs."properties.about.oneOf.1"
                                                                                                                                      ],
                                                                                                                              },
                                                                                                                          required =
                                                                                                                            {
                                                                                                                                conditions =
                                                                                                                                  true,
                                                                                                                                description =
                                                                                                                                  true,
                                                                                                                                skip =
                                                                                                                                  true,
                                                                                                                                type =
                                                                                                                                  true,
                                                                                                                              },
                                                                                                                        },
                                                                                                                      refs."properties.about.oneOf.1"
                                                                                                                    ]),
                                                                                                                refs."properties.about.oneOf.1"
                                                                                                              ],
                                                                                                      },
                                                                                                  required =
                                                                                                    {
                                                                                                        rules =
                                                                                                          true,
                                                                                                      },
                                                                                                },
                                                                                              refs."properties.about.oneOf.1",
                                                                                              js2n.Null
                                                                                            ],
                                                                                    },
                                                                                required =
                                                                                  {
                                                                                      controllers =
                                                                                        true,
                                                                                    },
                                                                              },
                                                                            refs."properties.about.oneOf.1"
                                                                          ],
                                                                    ipv4 =
                                                                      std.contract.any_of
                                                                          [
                                                                            Bool,
                                                                            refs."properties.about.oneOf.1"
                                                                          ],
                                                                    ipv6 =
                                                                      std.contract.any_of
                                                                          [
                                                                            Bool,
                                                                            refs."properties.about.oneOf.1"
                                                                          ],
                                                                    type =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              'v1
                                                                            |]
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    details =
                                                                      true,
                                                                    ipv4 = true,
                                                                    ipv6 = true,
                                                                    type = true,
                                                                  },
                                                            },
                                                          js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    details =
                                                                      js2n.OneOf
                                                                          [
                                                                            refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.0.properties.details.anyOf.0",
                                                                            refs."properties.services.oneOf.0.properties.loadbalancer.anyOf.0.properties.config.anyOf.0.oneOf.1.properties.details.oneOf.0",
                                                                            js2n.Null
                                                                          ],
                                                                    ipv4 = Bool,
                                                                    ipv6 = Bool,
                                                                    type =
                                                                      std.contract.Sequence
                                                                          [
                                                                            std.enum.TagOrString,
                                                                            [|
                                                                              '"default"
                                                                            |]
                                                                          ],
                                                                  },
                                                              required =
                                                                {
                                                                    details =
                                                                      true,
                                                                    ipv4 = true,
                                                                    ipv6 = true,
                                                                    type = true,
                                                                  },
                                                            }
                                                        ],
                                                      { _ | Dyn }
                                                    ],
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                          service =
                                            std.contract.any_of
                                                [
                                                  refs."properties.services.oneOf.0.properties.vpn.anyOf.0.properties.service.anyOf.0",
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                        },
                                    required = {},
                                  },
                                refs."properties.about.oneOf.1",
                                js2n.Null
                              ],
                        scheduler =
                          std.contract.any_of
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          config =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            access_keys =
                                                              std.contract.any_of
                                                                  [
                                                                    js2n.array.ArrayOf
                                                                      (js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'Some
                                                                                Dyn,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                ips =
                                                                                  std.contract.any_of
                                                                                      [
                                                                                        js2n.array.ArrayOf
                                                                                          String,
                                                                                        refs."properties.about.oneOf.1"
                                                                                      ],
                                                                                name =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        String,
                                                                                        refs."properties.about.oneOf.1"
                                                                                      ],
                                                                                secret =
                                                                                  js2n.OneOf
                                                                                      [
                                                                                        String,
                                                                                        refs."properties.about.oneOf.1"
                                                                                      ],
                                                                              },
                                                                          required =
                                                                            {
                                                                                name =
                                                                                  true,
                                                                                secret =
                                                                                  true,
                                                                              },
                                                                        }),
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                            public =
                                                              std.contract.any_of
                                                                  [
                                                                    Bool,
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                          },
                                                      required =
                                                        { public = true, },
                                                    },
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                          service =
                                            std.contract.any_of
                                                [
                                                  refs."properties.services.oneOf.0.properties.vpn.anyOf.0.properties.service.anyOf.0",
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                        },
                                    required = {},
                                  },
                                refs."properties.about.oneOf.1",
                                js2n.Null
                              ],
                        vpn =
                          std.contract.any_of
                              [
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          config =
                                            std.contract.any_of
                                                [
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            allow_internet =
                                                              std.contract.any_of
                                                                  [
                                                                    Bool,
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                            auth =
                                                              std.contract.any_of
                                                                  [
                                                                    js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              cycle_accounts =
                                                                                std.contract.any_of
                                                                                    [
                                                                                      Bool,
                                                                                      refs."properties.about.oneOf.1"
                                                                                    ],
                                                                              vpn_accounts =
                                                                                std.contract.any_of
                                                                                    [
                                                                                      Bool,
                                                                                      refs."properties.about.oneOf.1"
                                                                                    ],
                                                                              webhook =
                                                                                js2n.OneOf
                                                                                    [
                                                                                      String,
                                                                                      refs."properties.about.oneOf.1"
                                                                                    ],
                                                                            },
                                                                        required =
                                                                          {
                                                                              cycle_accounts =
                                                                                true,
                                                                              vpn_accounts =
                                                                                true,
                                                                            },
                                                                      },
                                                                    refs."properties.about.oneOf.1"
                                                                  ],
                                                          },
                                                      required =
                                                        {
                                                            allow_internet =
                                                              true,
                                                            auth = true,
                                                          },
                                                    },
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                          service =
                                            std.contract.any_of
                                                [
                                                  js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            auto_update = Bool,
                                                            enable = Bool,
                                                            high_availability =
                                                              Bool,
                                                          },
                                                      required = {},
                                                    },
                                                  refs."properties.about.oneOf.1",
                                                  js2n.Null
                                                ],
                                        },
                                    required = {},
                                  },
                                refs."properties.about.oneOf.1",
                                js2n.Null
                              ],
                      },
                  required = {},
                }),
            refs."properties.about.oneOf.1"
          ]
        | doc "Settings for any auxillary services deployed as part of the environment, such as load balancer and discovery services."
        | optional,
      version
        | std.enum.TagOrString
        | [| '"1.0" |]
        | doc "The version of the Cycle stack file used.",
      ..
    }