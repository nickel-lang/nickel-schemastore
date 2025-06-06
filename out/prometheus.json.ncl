# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.auth" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { basic_auth = js2n.Const null, },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      authorization | std.contract.Equal null | optional,
                      bearer_token | std.contract.Equal null | optional,
                      bearer_token_file | std.contract.Equal null | optional,
                      oauth2 | std.contract.Equal null | optional,
                      sigv4 | std.contract.Equal null | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { authorization = js2n.Const null, },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      basic_auth | std.contract.Equal null | optional,
                      bearer_token | std.contract.Equal null | optional,
                      bearer_token_file | std.contract.Equal null | optional,
                      oauth2 | std.contract.Equal null | optional,
                      sigv4 | std.contract.Equal null | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { sigv4 = js2n.Const null, },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      authorization | std.contract.Equal null | optional,
                      basic_auth | std.contract.Equal null | optional,
                      bearer_token | std.contract.Equal null | optional,
                      bearer_token_file | std.contract.Equal null | optional,
                      oauth2 | std.contract.Equal null | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { oauth2 = js2n.Const null, },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      authorization | std.contract.Equal null | optional,
                      basic_auth | std.contract.Equal null | optional,
                      bearer_token | std.contract.Equal null | optional,
                      bearer_token_file | std.contract.Equal null | optional,
                      sigv4 | std.contract.Equal null | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { bearer_token = js2n.Const null, },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      authorization | std.contract.Equal null | optional,
                      basic_auth | std.contract.Equal null | optional,
                      bearer_token_file | std.contract.Equal null | optional,
                      oauth2 | std.contract.Equal null | optional,
                      sigv4 | std.contract.Equal null | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.not
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
                          properties = { bearer_token_file = js2n.Const null, },
                          required = {},
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      authorization | std.contract.Equal null | optional,
                      basic_auth | std.contract.Equal null | optional,
                      bearer_token | std.contract.Equal null | optional,
                      oauth2 | std.contract.Equal null | optional,
                      sigv4 | std.contract.Equal null | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always
            ],
      "definitions.authorization" =
        std.contract.Sequence
            [
              js2n.Nullable
                {
                  credentials
                    | js2n.Nullable String
                    | doc "Sets the credentials of the request. It is mutually exclusive with `credentials_file`."
                    | optional,
                  credentials_file
                    | refs."definitions.filepath"
                    | js2n.Nullable String
                    | doc "Sets the credentials of the request with the credentials read from the configured file. It is mutually exclusive with `credentials`."
                    | optional,
                  type
                    | js2n.Nullable String
                    | doc "Sets the authentication type of the request."
                    | optional,
                },
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "credentials" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "credentials_file" ],
                      Array Dyn
                    ]
                ]
            ],
      "definitions.azure_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.azuread" =
        js2n.Nullable
            {
              cloud | js2n.Never | optional,
              managed_identity
                | { client_id | String | optional, .. }
                | optional,
              oauth2
                | {
                  client_id | String | optional,
                  client_secret | js2n.Nullable String | optional,
                  tenant_id | String | optional,
                  ..
                }
                | optional,
              sdk
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    { tenant_id | String | optional, .. },
                    Array Dyn
                  ]
                | optional,
              ..
            },
      "definitions.basic_auth" =
        std.contract.Sequence
            [
              js2n.Nullable
                {
                  password | js2n.Nullable String | optional,
                  password_file
                    | refs."definitions.filepath"
                    | js2n.Nullable String
                    | optional,
                  username | String,
                },
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "password" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "password_file" ],
                      Array Dyn
                    ]
                ]
            ],
      "definitions.bearer_token" = js2n.Nullable String,
      "definitions.bearer_token_file" =
        std.contract.Sequence
            [ refs."definitions.filepath", js2n.Nullable String ],
      "definitions.consul_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.digitalocean_sd_configs" =
        js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.dns_sd_configs" =
        js2n.Nullable
            (Array
              {
                names
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "A list of DNS domain names to be queried.",
                port
                  | js2n.Nullable std.number.Integer
                  | doc "The port number used if the query type is not SRV."
                  | optional,
                refresh_interval
                  | refs."definitions.duration"
                  | js2n.Nullable String
                  | doc "The time after which the provided names are refreshed."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'AAAA, 'A, 'SRV |]
                  | doc "The type of DNS query to perform. One of SRV, A, or AAAA."
                  | optional,
              }),
      "definitions.docker_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.dockerswarm_sd_configs" =
        js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.duration" =
        js2n.Nullable (js2n.string.Matches "^[0-9]+(ms|[smhdwy])$"),
      "definitions.ec2_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.eureka_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.file_sd_configs" =
        js2n.Nullable
            (Array
              {
                files
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "Patterns for files from which target groups are extracted. Where the pattern may be a path ending in .json, .yml or .yaml. The last path segment may contain a single * that matches any character sequence, e.g. my/path/tg_*.json."
                  | optional,
                refresh_interval
                  | refs."definitions.duration"
                  | js2n.Nullable String
                  | doc "Refresh interval to re-read the files."
                  | optional,
                ..
              }),
      "definitions.filepath" = js2n.Nullable String,
      "definitions.filepath_glob" = String,
      "definitions.gce_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.google_iam" = { credentials_file | String | optional, .. },
      "definitions.hetzner_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.http_sd_configs" =
        js2n.Nullable
            (Array (
              std.contract.Sequence
                [
                  refs."definitions.auth",
                  {
                    authorization
                      | refs."definitions.authorization"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    basic_auth
                      | refs."definitions.basic_auth"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    bearer_token
                      | refs."definitions.bearer_token"
                      | js2n.Nullable String
                      | optional,
                    bearer_token_file
                      | refs."definitions.bearer_token_file"
                      | js2n.Nullable String
                      | optional,
                    follow_redirects
                      | js2n.Nullable Bool
                      | doc "Configure whether HTTP requests follow HTTP 3xx redirects."
                      | optional,
                    oauth2
                      | refs."definitions.oauth2"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    proxy_url
                      | js2n.Nullable String
                      | doc "Optional proxy URL."
                      | optional,
                    refresh_interval
                      | refs."definitions.duration"
                      | js2n.Nullable String
                      | doc "Refresh interval to re-query the endpoint."
                      | optional,
                    tls_config
                      | refs."definitions.tls_config"
                      | js2n.Nullable ({ _ | Dyn })
                      | doc "TLS configuration."
                      | optional,
                    url
                      | String
                      | doc "URL from which the targets are fetched.",
                  }
                ]
            )),
      "definitions.kubernetes_sd_configs" =
        js2n.Nullable
            (Array (
              std.contract.Sequence
                [
                  refs."definitions.auth",
                  {
                    api_server
                      | js2n.Nullable String
                      | doc "The API server addresses. If left empty, Prometheus is assumed to run inside of the cluster and will discover API servers automatically and use the pod's CA certificate and bearer token file at /var/run/secrets/kubernetes.io/serviceaccount/."
                      | optional,
                    authorization
                      | refs."definitions.authorization"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    basic_auth
                      | refs."definitions.basic_auth"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    bearer_token
                      | refs."definitions.bearer_token"
                      | js2n.Nullable String
                      | optional,
                    bearer_token_file
                      | refs."definitions.bearer_token_file"
                      | js2n.Nullable String
                      | optional,
                    follow_redirects
                      | js2n.Nullable Bool
                      | doc "Configure whether scrape requests follow HTTP 3xx redirects."
                      | optional,
                    kubeconfig_file
                      | refs."definitions.filepath"
                      | js2n.Nullable String
                      | optional,
                    namespaces
                      | js2n.Nullable
                        {
                          names | Array String | optional,
                          own_namespace | Bool | optional,
                        }
                      | doc "Optional namespace discovery. If omitted, all namespaces are used."
                      | optional,
                    oauth2
                      | refs."definitions.oauth2"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    proxy_url
                      | js2n.Nullable String
                      | doc "Optional proxy URL."
                      | optional,
                    role
                      | std.enum.TagOrString
                      | [| 'ingress, 'node, 'pod, 'service, 'endpoints |]
                      | doc "The Kubernetes role of entities that should be discovered. One of endpoints, service, pod, node, or ingress."
                      | optional,
                    selectors
                      | js2n.Nullable
                        (Array
                          {
                            field | js2n.Nullable String | optional,
                            label | js2n.Nullable String | optional,
                            role | String,
                          })
                      | doc "Optional label and field selectors to limit the discovery process to a subset of available resources."
                      | optional,
                    tls_config
                      | refs."definitions.tls_config"
                      | js2n.Nullable ({ _ | Dyn })
                      | doc "TLS configuration."
                      | optional,
                  }
                ]
            )),
      "definitions.kuma_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.label_name" = js2n.string.Matches "^[a-zA-Z_][a-zA-Z0-9_]*$",
      "definitions.label_value" = String,
      "definitions.labels" =
        js2n.Nullable
            (std.contract.Sequence
              [
                {
                  _ | std.contract.Sequence
                    [ refs."definitions.label_value", String ]
                },
                js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_]*$"
              ]),
      "definitions.lightsail_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.linode_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.marathon_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.nerve_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.oauth2" =
        std.contract.Sequence
            [
              js2n.Nullable
                {
                  client_id | String,
                  client_secret | js2n.Nullable String | optional,
                  client_secret_file
                    | refs."definitions.filepath"
                    | js2n.Nullable String
                    | doc "Read the client secret from a file. It is mutually exclusive with `client_secret`."
                    | optional,
                  endpoint_params
                    | js2n.Nullable ({ _ | String })
                    | doc "Optional parameters to append to the token URL."
                    | optional,
                  scopes
                    | js2n.Nullable (Array (js2n.Nullable String))
                    | doc "Scopes for the token request."
                    | optional,
                  tls_config
                    | refs."definitions.tls_config"
                    | js2n.Nullable ({ _ | Dyn })
                    | doc "Configures the token request's TLS settings."
                    | optional,
                  token_url | String | doc "The URL to fetch the token from.",
                },
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "client_secret" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "client_secret_file" ],
                      Array Dyn
                    ]
                ]
            ],
      "definitions.openstack_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.puppetdb_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.relabel_configs" =
        js2n.Nullable
            (Array (
              std.contract.Sequence
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
                            properties = { action = js2n.Const "replace", },
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
                        js2n.record.Required [ "target_label" ],
                        Array Dyn
                      ]) js2n.Always,
                  {
                    action
                      | std.enum.TagOrString
                      | [|
                        'labelkeep,
                        'labeldrop,
                        'labelmap,
                        'hashmod,
                        'dropequal,
                        'keepequal,
                        'drop,
                        'keep,
                        'uppercase,
                        'lowercase,
                        'replace
                      |]
                      | doc "Action to perform based on regex matching."
                      | optional,
                    modulus
                      | std.number.Integer
                      | doc "Modulus to take of the hash of the source label values."
                      | optional,
                    regex
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "Regular expression against which the extracted value is matched."
                      | optional,
                    replacement
                      | String
                      | doc "Replacement value against which a regex replace is performed if the regular expression matches. Regex capture groups are available."
                      | optional,
                    separator
                      | String
                      | doc "Separator placed between concatenated source label values."
                      | optional,
                    source_labels
                      | Array (
                        std.contract.Sequence
                          [ refs."definitions.label_name", String ]
                      )
                      | doc "The source labels select values from existing labels. Their content is concatenated using the configured separator and matched against the configured regular expression for the replace, keep, and drop actions."
                      | optional,
                    target_label
                      | String
                      | doc "Label to which the resulting value is written in a replace action. It is mandatory for replace actions. Regex capture groups are available."
                      | optional,
                    ..
                  }
                ]
            )),
      "definitions.scaleway_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.scheme" = js2n.Enum [ "http", "https", null ],
      "definitions.serverset_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.sigv4" =
        js2n.Nullable
            {
              access_key
                | js2n.Nullable String
                | doc "The AWS API keys. If blank, the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` are used."
                | optional,
              profile
                | js2n.Nullable String
                | doc "Named AWS profile used to authenticate."
                | optional,
              region
                | js2n.Nullable String
                | doc "The AWS region. If blank, the region from the default credentials chain is used."
                | optional,
              role_arn
                | js2n.Nullable String
                | doc "AWS Role ARN, an alternative to using AWS API keys."
                | optional,
              secret_key
                | js2n.Nullable String
                | doc "The AWS API keys. If blank, the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` are used."
                | optional,
            },
      "definitions.static_configs" =
        js2n.Nullable
            (Array
              {
                labels
                  | refs."definitions.labels"
                  | js2n.Nullable ({ _ | Dyn })
                  | doc "Labels assigned to all metrics scraped from the targets."
                  | optional,
                targets
                  | js2n.Nullable (Array String)
                  | doc "The targets specified by the static config."
                  | optional,
                ..
              }),
      "definitions.tls_config" =
        js2n.Nullable
            {
              ca_file
                | refs."definitions.filepath"
                | js2n.Nullable String
                | doc "CA certificate to validate API server certificate with."
                | optional,
              cert_file
                | refs."definitions.filepath"
                | js2n.Nullable String
                | doc "Certificate file for client cert authentication to the server."
                | optional,
              insecure_skip_verify
                | js2n.Nullable Bool
                | doc "Disable validation of the server certificate."
                | optional,
              key_file
                | refs."definitions.filepath"
                | js2n.Nullable String
                | doc "Key file for client cert authentication to the server."
                | optional,
              server_name
                | js2n.Nullable String
                | doc "ServerName extension to indicate the name of the server."
                | optional,
            },
      "definitions.triton_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
      "definitions.uyuni_sd_configs" = js2n.Nullable (Array ({ _ | Dyn })),
    }
    in
  js2n.Nullable
      {
        alerting
          | js2n.Nullable
            {
              alert_relabel_configs
                | refs."definitions.relabel_configs"
                | optional,
              alertmanagers
                | js2n.Nullable
                  (Array (
                    std.contract.Sequence
                      [
                        refs."definitions.auth",
                        {
                          api_version
                            | js2n.Nullable String
                            | doc "The api version of Alertmanager."
                            | optional,
                          authorization
                            | refs."definitions.authorization"
                            | js2n.Nullable ({ _ | Dyn })
                            | optional,
                          azure_sd_configs
                            | refs."definitions.azure_sd_configs"
                            | optional,
                          basic_auth
                            | refs."definitions.basic_auth"
                            | js2n.Nullable ({ _ | Dyn })
                            | optional,
                          bearer_token | js2n.Nullable String | optional,
                          bearer_token_file
                            | refs."definitions.bearer_token_file"
                            | js2n.Nullable String
                            | optional,
                          consul_sd_configs
                            | refs."definitions.consul_sd_configs"
                            | optional,
                          digitalocean_sd_configs
                            | refs."definitions.digitalocean_sd_configs"
                            | optional,
                          dns_sd_configs
                            | refs."definitions.dns_sd_configs"
                            | optional,
                          docker_sd_configs
                            | refs."definitions.docker_sd_configs"
                            | optional,
                          dockerswarm_sd_configs
                            | refs."definitions.dockerswarm_sd_configs"
                            | optional,
                          ec2_sd_configs
                            | refs."definitions.ec2_sd_configs"
                            | optional,
                          eureka_sd_configs
                            | refs."definitions.eureka_sd_configs"
                            | optional,
                          file_sd_configs
                            | refs."definitions.file_sd_configs"
                            | optional,
                          follow_redirects
                            | js2n.Nullable Bool
                            | doc "Configure whether HTTP requests follow HTTP 3xx redirects."
                            | optional,
                          gce_sd_configs
                            | refs."definitions.gce_sd_configs"
                            | optional,
                          hetzner_sd_configs
                            | refs."definitions.hetzner_sd_configs"
                            | optional,
                          http_sd_configs
                            | refs."definitions.http_sd_configs"
                            | optional,
                          kubernetes_sd_configs
                            | refs."definitions.kubernetes_sd_configs"
                            | optional,
                          kuma_sd_configs
                            | refs."definitions.kuma_sd_configs"
                            | optional,
                          lightsail_sd_configs
                            | refs."definitions.lightsail_sd_configs"
                            | optional,
                          linode_sd_configs
                            | refs."definitions.linode_sd_configs"
                            | optional,
                          marathon_sd_configs
                            | refs."definitions.marathon_sd_configs"
                            | optional,
                          nerve_sd_configs
                            | refs."definitions.nerve_sd_configs"
                            | optional,
                          oauth2
                            | refs."definitions.oauth2"
                            | js2n.Nullable ({ _ | Dyn })
                            | optional,
                          openstack_sd_configs
                            | refs."definitions.openstack_sd_configs"
                            | optional,
                          path_prefix
                            | js2n.Nullable String
                            | doc "Prefix for the HTTP path alerts are pushed to."
                            | optional,
                          proxy_url
                            | js2n.Nullable String
                            | doc "Optional proxy URL."
                            | optional,
                          puppetdb_sd_configs
                            | refs."definitions.puppetdb_sd_configs"
                            | optional,
                          relabel_configs
                            | refs."definitions.relabel_configs"
                            | doc "List of Alertmanager relabel configurations."
                            | optional,
                          scaleway_sd_configs
                            | refs."definitions.scaleway_sd_configs"
                            | optional,
                          scheme
                            | refs."definitions.scheme"
                            | doc "Configures the protocol scheme used for requests."
                            | optional,
                          serverset_sd_configs
                            | refs."definitions.serverset_sd_configs"
                            | optional,
                          static_configs
                            | refs."definitions.static_configs"
                            | doc "List of labeled statically configured Alertmanagers."
                            | optional,
                          timeout
                            | refs."definitions.duration"
                            | doc "Per-target Alertmanager timeout when pushing alerts."
                            | optional,
                          tls_config
                            | refs."definitions.tls_config"
                            | doc "Configures the scrape request's TLS settings."
                            | optional,
                          triton_sd_configs
                            | refs."definitions.triton_sd_configs"
                            | optional,
                          uyuni_sd_configs
                            | refs."definitions.uyuni_sd_configs"
                            | optional,
                          ..
                        }
                      ]
                  ))
                | optional,
              ..
            }
          | doc "Alerting specifies settings related to the Alertmanager."
          | optional,
        global
          | js2n.Nullable
            {
              body_size_limit
                | js2n.Nullable String
                | doc "An uncompressed response body larger than this many bytes will cause the scrape to fail. 0 means no limit. Example: 100MB."
                | optional,
              evaluation_interval
                | refs."definitions.duration"
                | doc "How frequently to evaluate rules."
                | optional,
              external_labels
                | refs."definitions.labels"
                | doc "The labels to add to any time series or alerts when communicating with external systems (federation, remote storage, Alertmanager)."
                | optional,
              label_limit
                | js2n.Nullable std.number.Integer
                | doc "Per-scrape limit on number of labels that will be accepted for a sample. If more than this number of labels are present post metric-relabeling, the entire scrape will be treated as failed. 0 means no limit."
                | optional,
              label_name_length_limit
                | js2n.Nullable std.number.Integer
                | doc "Per-scrape limit on length of labels name that will be accepted for a sample. If a label name is longer than this number post metric-relabeling, the entire scrape will be treated as failed. 0 means no limit."
                | optional,
              label_value_length_limit
                | js2n.Nullable std.number.Integer
                | doc "Per-scrape limit on length of labels value that will be accepted for a sample. If a label value is longer than this number post metric-relabeling, the entire scrape will be treated as failed. 0 means no limit."
                | optional,
              query_log_file
                | js2n.Nullable String
                | doc "File to which PromQL queries are logged. Reloading the configuration will reopen the file."
                | optional,
              sample_limit
                | js2n.Nullable std.number.Integer
                | doc "Per-scrape limit on number of scraped samples that will be accepted. If more than this number of samples are present after metric relabelling the entire scrape will be treated as failed. 0 means no limit."
                | optional,
              scrape_interval
                | refs."definitions.duration"
                | doc "How frequently to scrape targets by default."
                | optional,
              scrape_timeout
                | refs."definitions.duration"
                | doc "How long until a scrape request times out."
                | optional,
              target_limit
                | js2n.Nullable std.number.Integer
                | doc "Per-scrape config limit on number of unique targets that will be accepted. If more than this number of targets are present after target relabeling, Prometheus will mark the targets as failed without scraping them. 0 means no limit."
                | optional,
            }
          | doc "The global configuration specifies parameters that are valid in all other configuration contexts. They also serve as defaults for other configuration sections."
          | optional,
        remote_read
          | js2n.Nullable
            (Array (
              std.contract.Sequence
                [
                  refs."definitions.auth",
                  {
                    authorization
                      | refs."definitions.authorization"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    basic_auth
                      | refs."definitions.basic_auth"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    bearer_token | js2n.Nullable String | optional,
                    bearer_token_file
                      | refs."definitions.bearer_token_file"
                      | js2n.Nullable String
                      | optional,
                    follow_redirects
                      | js2n.Nullable Bool
                      | doc "Configure whether HTTP requests follow HTTP 3xx redirects."
                      | optional,
                    headers
                      | js2n.Nullable ({ _ | String })
                      | doc "Custom HTTP headers to be sent along with each remote read request. Be aware that headers that are set by Prometheus itself can't be overwritten."
                      | optional,
                    name
                      | js2n.Nullable String
                      | doc "Name of the remote read config, which if specified must be unique among remote read configs. The name will be used in metrics and logging in place of a generated value to help users distinguish between remote read configs."
                      | optional,
                    oauth2
                      | refs."definitions.oauth2"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    proxy_url
                      | js2n.Nullable String
                      | doc "Optional proxy URL."
                      | optional,
                    read_recent
                      | js2n.Nullable Bool
                      | doc "Whether reads should be made for queries for time ranges that the local storage should have complete data for."
                      | optional,
                    remote_timeout
                      | refs."definitions.duration"
                      | doc "Timeout for requests to the remote read endpoint."
                      | optional,
                    required_matchers
                      | refs."definitions.labels"
                      | doc "An optional list of equality matchers which have to be present in a selector to query the remote read endpoint."
                      | optional,
                    tls_config | refs."definitions.tls_config" | optional,
                    url | String | doc "The URL of the endpoint to query from.",
                  }
                ]
            ))
          | doc "Settings related to the remote read feature."
          | optional,
        remote_write
          | js2n.Nullable
            (Array (
              std.contract.Sequence
                [
                  refs."definitions.auth",
                  {
                    authorization
                      | refs."definitions.authorization"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    azuread | refs."definitions.azuread" | optional,
                    basic_auth
                      | refs."definitions.basic_auth"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    bearer_token | js2n.Nullable String | optional,
                    bearer_token_file
                      | refs."definitions.bearer_token_file"
                      | js2n.Nullable String
                      | optional,
                    follow_redirects
                      | js2n.Nullable Bool
                      | doc "Configure whether HTTP requests follow HTTP 3xx redirects."
                      | optional,
                    google_iam | refs."definitions.google_iam" | optional,
                    headers
                      | js2n.Nullable ({ _ | String })
                      | doc "Custom HTTP headers to be sent along with each remote write request. Be aware that headers that are set by Prometheus itself can't be overwritten."
                      | optional,
                    metadata_config
                      | js2n.Nullable
                        {
                          max_samples_per_send
                            | js2n.Nullable std.number.Integer
                            | doc "Maximum number of samples per send."
                            | optional,
                          send
                            | js2n.Nullable Bool
                            | doc "Whether metric metadata is sent to remote storage or not."
                            | optional,
                          send_interval
                            | refs."definitions.duration"
                            | doc "How frequently metric metadata is sent to remote storage."
                            | optional,
                        }
                      | doc "Configures the sending of series metadata to remote storage."
                      | optional,
                    name
                      | js2n.Nullable String
                      | doc "Name of the remote write config, which if specified must be unique among remote write configs. The name will be used in metrics and logging in place of a generated value to help users distinguish between remote write configs."
                      | optional,
                    oauth2
                      | refs."definitions.oauth2"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    proxy_url
                      | js2n.Nullable String
                      | doc "Optional proxy URL."
                      | optional,
                    queue_config
                      | js2n.Nullable
                        {
                          batch_send_deadline
                            | refs."definitions.duration"
                            | doc "Maximum time a sample will wait in buffer."
                            | optional,
                          capacity
                            | js2n.Nullable std.number.Integer
                            | doc "Number of samples to buffer per shard before we block reading of more samples from the WAL. It is recommended to have enough capacity in each shard to buffer several requests to keep throughput up while processing occasional slow remote requests."
                            | optional,
                          max_backoff
                            | refs."definitions.duration"
                            | doc "Maximum retry delay."
                            | optional,
                          max_samples_per_send
                            | js2n.Nullable std.number.Integer
                            | doc "Maximum number of samples per send."
                            | optional,
                          max_shards
                            | js2n.Nullable std.number.Integer
                            | doc "Maximum number of shards, i.e. amount of concurrency."
                            | optional,
                          min_backoff
                            | refs."definitions.duration"
                            | doc "Initial retry delay. Gets doubled for every retry."
                            | optional,
                          min_shards
                            | js2n.Nullable std.number.Integer
                            | doc "Minimum number of shards, i.e. amount of concurrency."
                            | optional,
                          retry_on_http_429
                            | js2n.Nullable Bool
                            | doc "Retry upon receiving a 429 status code from the remote-write storage."
                            | optional,
                          sample_age_limit
                            | refs."definitions.duration"
                            | doc "If set, any sample that is older than sample_age_limit will not be sent to the remote storage."
                            | optional,
                        }
                      | doc "Configures the queue used to write to remote storage."
                      | optional,
                    remote_timeout
                      | refs."definitions.duration"
                      | doc "Timeout for requests to the remote write endpoint."
                      | optional,
                    send_exemplars
                      | js2n.Nullable Bool
                      | doc "Enables sending of exemplars over remote write. Note that exemplar storage itself must be enabled for exemplars to be scraped in the first place."
                      | optional,
                    sigv4 | refs."definitions.sigv4" | optional,
                    tls_config
                      | refs."definitions.tls_config"
                      | doc "Configures the remote write request's TLS settings."
                      | optional,
                    url
                      | String
                      | doc "The URL of the endpoint to send samples to.",
                    write_relabel_configs
                      | refs."definitions.relabel_configs"
                      | doc "List of remote write relabel configurations."
                      | optional,
                  }
                ]
            ))
          | doc "Settings related to the remote write feature."
          | optional,
        rule_files
          | js2n.Nullable (Array refs."definitions.filepath_glob")
          | doc "Rule files specifies a list of globs. Rules and alerts are read from all matching files."
          | optional,
        scrape_config_files
          | js2n.Nullable (Array refs."definitions.filepath_glob")
          | doc "Scrape config files specifies a list of globs. Scrape configs are read from all matching files and appended to the list of scrape configs."
          | optional,
        scrape_configs
          | js2n.Nullable
            (Array (
              std.contract.Sequence
                [
                  refs."definitions.auth",
                  {
                    authorization
                      | refs."definitions.authorization"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    azure_sd_configs
                      | refs."definitions.azure_sd_configs"
                      | optional,
                    basic_auth
                      | refs."definitions.basic_auth"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    bearer_token | js2n.Nullable String | optional,
                    bearer_token_file
                      | refs."definitions.bearer_token_file"
                      | js2n.Nullable String
                      | optional,
                    body_size_limit
                      | js2n.Nullable String
                      | doc "An uncompressed response body larger than this many bytes will cause the scrape to fail. 0 means no limit. Example: 100MB."
                      | optional,
                    consul_sd_configs
                      | refs."definitions.consul_sd_configs"
                      | optional,
                    digitalocean_sd_configs
                      | refs."definitions.digitalocean_sd_configs"
                      | optional,
                    dns_sd_configs
                      | refs."definitions.dns_sd_configs"
                      | optional,
                    docker_sd_configs
                      | refs."definitions.docker_sd_configs"
                      | optional,
                    dockerswarm_sd_configs
                      | refs."definitions.dockerswarm_sd_configs"
                      | optional,
                    ec2_sd_configs
                      | refs."definitions.ec2_sd_configs"
                      | optional,
                    eureka_sd_configs
                      | refs."definitions.eureka_sd_configs"
                      | optional,
                    fallback_scrape_protocol
                      | std.enum.TagOrString
                      | [|
                        '"PrometheusText1.0.0",
                        '"PrometheusText0.0.4",
                        'PrometheusProto,
                        '"OpenMetricsText1.0.0",
                        '"OpenMetricsText0.0.1"
                      |]
                      | doc "Fallback protocol to use if a scrape returns blank, unparsable, or otherwise invalid Content-Type."
                      | optional,
                    file_sd_configs
                      | refs."definitions.file_sd_configs"
                      | optional,
                    follow_redirects
                      | js2n.Nullable Bool
                      | doc "Configure whether scrape requests follow HTTP 3xx redirects."
                      | optional,
                    gce_sd_configs
                      | refs."definitions.gce_sd_configs"
                      | optional,
                    hetzner_sd_configs
                      | refs."definitions.hetzner_sd_configs"
                      | optional,
                    honor_labels
                      | js2n.Nullable Bool
                      | doc "Controls how Prometheus handles conflicts between labels that are already present in scraped data and labels that Prometheus would attach server-side (\"job\" and \"instance\" labels, manually configured target labels, and labels generated by service discovery implementations)."
                      | optional,
                    honor_timestamps
                      | js2n.Nullable Bool
                      | doc "Controls whether Prometheus respects the timestamps present in scraped data."
                      | optional,
                    http_sd_configs
                      | refs."definitions.http_sd_configs"
                      | optional,
                    job_name
                      | String
                      | doc "The job name assigned to scraped metrics by default. Must be unique across all scrape configurations.",
                    kubernetes_sd_configs
                      | refs."definitions.kubernetes_sd_configs"
                      | optional,
                    kuma_sd_configs
                      | refs."definitions.kuma_sd_configs"
                      | optional,
                    label_limit
                      | js2n.Nullable std.number.Integer
                      | doc "Per-scrape limit on number of labels that will be accepted for a sample. If more than this number of labels are present post metric-relabeling, the entire scrape will be treated as failed. 0 means no limit."
                      | optional,
                    label_name_length_limit
                      | js2n.Nullable std.number.Integer
                      | doc "Per-scrape limit on length of labels name that will be accepted for a sample. If a label name is longer than this number post metric-relabeling, the entire scrape will be treated as failed. 0 means no limit."
                      | optional,
                    label_value_length_limit
                      | js2n.Nullable std.number.Integer
                      | doc "Per-scrape limit on length of labels value that will be accepted for a sample. If a label value is longer than this number post metric-relabeling, the entire scrape will be treated as failed. 0 means no limit."
                      | optional,
                    lightsail_sd_configs
                      | refs."definitions.lightsail_sd_configs"
                      | optional,
                    linode_sd_configs
                      | refs."definitions.linode_sd_configs"
                      | optional,
                    marathon_sd_configs
                      | refs."definitions.marathon_sd_configs"
                      | optional,
                    metric_relabel_configs
                      | refs."definitions.relabel_configs"
                      | doc "List of metric relabel configurations."
                      | optional,
                    metrics_path
                      | js2n.Nullable String
                      | doc "The HTTP resource path on which to fetch metrics from targets."
                      | optional,
                    nerve_sd_configs
                      | refs."definitions.nerve_sd_configs"
                      | optional,
                    oauth2
                      | refs."definitions.oauth2"
                      | js2n.Nullable ({ _ | Dyn })
                      | optional,
                    openstack_sd_configs
                      | refs."definitions.openstack_sd_configs"
                      | optional,
                    params
                      | js2n.Nullable ({ _ | Array String })
                      | doc "Optional HTTP URL parameters."
                      | optional,
                    proxy_url
                      | js2n.Nullable String
                      | doc "Optional proxy URL."
                      | optional,
                    puppetdb_sd_configs
                      | refs."definitions.puppetdb_sd_configs"
                      | optional,
                    relabel_configs
                      | refs."definitions.relabel_configs"
                      | doc "List of target relabel configurations."
                      | optional,
                    sample_limit
                      | js2n.Nullable std.number.Integer
                      | doc "Per-scrape limit on number of scraped samples that will be accepted. If more than this number of samples are present after metric relabelling the entire scrape will be treated as failed. 0 means no limit."
                      | optional,
                    scaleway_sd_configs
                      | refs."definitions.scaleway_sd_configs"
                      | optional,
                    scheme
                      | refs."definitions.scheme"
                      | doc "Configures the protocol scheme used for requests."
                      | optional,
                    scrape_interval
                      | refs."definitions.duration"
                      | doc "How frequently to scrape targets from this job. Defaults to `global.scrape_interval`."
                      | optional,
                    scrape_timeout
                      | refs."definitions.duration"
                      | doc "Per-scrape timeout when scraping this job. Defaults to `global.scrape_timeout`."
                      | optional,
                    serverset_sd_configs
                      | refs."definitions.serverset_sd_configs"
                      | optional,
                    static_configs
                      | refs."definitions.static_configs"
                      | optional,
                    target_limit
                      | js2n.Nullable std.number.Integer
                      | doc "Per-scrape config limit on number of unique targets that will be accepted. If more than this number of targets are present after target relabeling, Prometheus will mark the targets as failed without scraping them. 0 means no limit."
                      | optional,
                    tls_config
                      | refs."definitions.tls_config"
                      | doc "Configures the scrape request's TLS settings."
                      | optional,
                    triton_sd_configs
                      | refs."definitions.triton_sd_configs"
                      | optional,
                    uyuni_sd_configs
                      | refs."definitions.uyuni_sd_configs"
                      | optional,
                  }
                ]
            ))
          | doc "A list of scrape configurations."
          | optional,
        storage
          | js2n.Nullable
            {
              exemplars
                | js2n.Nullable
                  {
                    max_exemplars
                      | js2n.Nullable std.number.Integer
                      | doc "Configures the maximum size of the circular buffer used to store exemplars for all series. Resizable during runtime."
                      | optional,
                  }
                | optional,
              tsdb
                | js2n.Nullable
                  {
                    out_of_order_time_window
                      | refs."definitions.duration"
                      | doc "Configures how old an out-of-order/out-of-bounds sample can be w.r.t. the TSDB max time."
                      | optional,
                  }
                | optional,
            }
          | doc "Storage related settings that are runtime reloadable."
          | optional,
      }