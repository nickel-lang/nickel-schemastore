# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DNS" =
        Array (
            std.contract.Sequence
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      domain | String | optional,
                      domains | Array String | optional,
                      plugin | String | optional,
                      ssl
                        | refs."definitions.SSL"
                        | { _ | Dyn }
                        | doc "SSL configuration."
                        | optional,
                    },
                    Array Dyn
                  ],
                js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "domain" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "domains" ],
                        Array Dyn
                      ]
                  ]
              ]
          ),
      "definitions.DefaultDNS" =
        {
            plugin
              | String
              | doc "DNS plugin override. Defaults to first supported plugin available."
              | optional,
            ..
          },
      "definitions.DefaultDeploy" =
        {
            plugin
              | String
              | doc "Deploy plugin override. Defaults to first supported plugin available."
              | optional,
            ..
          },
      "definitions.DefaultRun" =
        {
            env
              | { _ | String }
              | doc "Additional environment variables added to every app that supports environment variables."
              | optional,
            plugin
              | String
              | doc "Run plugin override. Defaults to first supported plugin available."
              | optional,
            ..
          },
      "definitions.Defaults" =
        {
            deploy
              | refs."definitions.DefaultDeploy"
              | { _ | Dyn }
              | doc "Deploy config."
              | optional,
            dns
              | refs."definitions.DefaultDNS"
              | { _ | Dyn }
              | doc "DNS config."
              | optional,
            run
              | refs."definitions.DefaultRun"
              | { _ | Dyn }
              | doc "Run config."
              | optional,
          },
      "definitions.Dependencies" =
        std.contract.Sequence
            [
              {
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
                              properties = { type = js2n.Const "storage", },
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
                            cors
                              | Array (
                                std.contract.Sequence
                                  [
                                    refs."definitions.DependencyStorageCORS",
                                    { _ | Dyn }
                                  ]
                              )
                              | doc "CORS settings."
                              | optional,
                            delete_in_days
                              | std.number.Integer
                              | doc "Delete new objects after X days."
                              | optional,
                            expire_versions_in_days
                              | std.number.Integer
                              | doc "Expire archived versions after X days."
                              | optional,
                            location
                              | String
                              | doc "Specify location for storage, refer to cloud provider docs for possible options."
                              | optional,
                            max_versions
                              | std.number.Integer
                              | doc "Maximum amount of versions to keep."
                              | optional,
                            public
                              | Bool
                              | doc "Makes whole storage public so that all objects can be accessed."
                              | optional,
                            versioning
                              | Bool
                              | doc "Enables versioning for objects."
                              | optional,
                            ..
                          },
                          Array Dyn
                        ]) js2n.Always,
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
                              properties = { type = js2n.Const "mysql", },
                              required = {},
                            },
                          Array Dyn,
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties = { type = js2n.Const "postgresql", },
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
                            flags
                              | { _ | String }
                              | doc "Database flags, refer to cloud provider docs for possible options."
                              | optional,
                            high_availability
                              | Bool
                              | doc "Makes database highly available meaning it will have a read replica available in case of master failure."
                              | optional,
                            tier
                              | String
                              | doc "Specify tier of database, refer to cloud provider docs for possible options."
                              | optional,
                            users
                              | {
                                _ | std.contract.Sequence
                                  [
                                    refs."definitions.DependencyDatabaseUser",
                                    { _ | Dyn }
                                  ]
                              }
                              | doc "Database users."
                              | optional,
                            version
                              | String
                              | doc "Specify version of database, refer to cloud provider docs for possible options."
                              | optional,
                            ..
                          },
                          Array Dyn
                        ]) js2n.Always,
                    {
                      deploy
                        | refs."definitions.DependencyDeploy"
                        | { _ | Dyn }
                        | doc "Deploy config."
                        | optional,
                      run
                        | refs."definitions.DependencyRun"
                        | { _ | Dyn }
                        | doc "Run config."
                        | optional,
                      type | String | doc "The type of the dependency.",
                      ..
                    }
                  ]
              },
              js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
            ],
      "definitions.DependencyDatabaseUser" =
        {
            hostname
              | String
              | doc "Hostname that user is allowed to connect from. Not all databases may support it."
              | optional,
            password
              | String
              | doc "Explicitly set password, defaults to a randomly generated string."
              | optional,
            ..
          },
      "definitions.DependencyDeploy" = { plugin | String | optional, .. },
      "definitions.DependencyRun" = { plugin | String | optional, .. },
      "definitions.DependencyStorageCORS" =
        {
            max_age_in_seconds
              | std.number.Integer
              | doc "The value in seconds to return in the Access-Control-Max-Age header used in preflight responses."
              | optional,
            methods
              | Array String
              | doc "The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: \"*\" is permitted in the list of methods, and means \"any method\"."
              | optional,
            origins
              | Array String
              | doc "The list of Origins eligible to receive CORS response headers. Note: \"*\" is permitted in the list of origins, and means \"any Origin\"."
              | optional,
            response_headers
              | Array String
              | doc "The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains."
              | optional,
            ..
          },
      "definitions.Monitoring" =
        {
            channels
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MonitoringChannel", { _ | Dyn } ]
              )
              | doc "Monitoring notification channels."
              | optional,
            plugin
              | String
              | doc "Monitoring plugin override. Defaults to first supported plugin available."
              | optional,
            targets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MonitoringTarget", { _ | Dyn } ]
              )
              | doc "Monitoring targets."
              | optional,
          },
      "definitions.MonitoringChannel" =
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
                        properties = { type = js2n.Const "slack", },
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
                          channel
                            | String
                            | doc "Channel used for slack notification.",
                          token
                            | String
                            | doc "Bot user oauth token used for slack notification.",
                          ..
                        },
                        js2n.record.Required [ "type" ]
                      ],
                    Array Dyn
                  ]) js2n.Always,
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
                        properties = { type = js2n.Const "email", },
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
                          email
                            | String
                            | doc "Email used for email channel type.",
                          ..
                        },
                        js2n.record.Required [ "type" ]
                      ],
                    Array Dyn
                  ]) js2n.Always,
              {
                type
                  | std.enum.TagOrString
                  | [| 'email, 'slack |]
                  | doc "Notification channel type. Possible values: slack, email.",
                ..
              }
            ],
      "definitions.MonitoringTarget" =
        {
            frequency
              | std.number.Integer
              | js2n.Enum [ 1, 5, 10, 15 ]
              | doc "Check frequency in minutes. Defaults to 5 minutes."
              | optional,
            locations
              | Array String
              | doc "Check locations to use. Defaults to 'all'."
              | optional,
            url | String | doc "Target full url.",
          },
      "definitions.OutblocksProject" =
        {
            defaults
              | refs."definitions.Defaults"
              | { _ | Dyn }
              | doc "Project-wide default app settings."
              | optional,
            dependencies
              | refs."definitions.Dependencies"
              | { _ | Dyn }
              | doc "Project-wide dependencies to provision."
              | optional,
            dns
              | refs."definitions.DNS"
              | Array Dyn
              | doc "Project-wide DNS setup."
              | optional,
            monitoring
              | refs."definitions.Monitoring"
              | { _ | Dyn }
              | doc "Project monitoring setup."
              | optional,
            name | String | optional,
            plugins
              | Array (
                std.contract.Sequence [ refs."definitions.Plugin", { _ | Dyn } ]
              )
              | doc "Project-wide plugins."
              | optional,
            secrets
              | refs."definitions.Secrets"
              | { _ | Dyn }
              | doc "Project-wide secrets provider."
              | optional,
            state
              | refs."definitions.State"
              | { _ | Dyn }
              | doc "Project-wide state source."
              | optional,
          },
      "definitions.Plugin" = { name | String, .. },
      "definitions.SSL" =
        {
            cert | String | doc "Public key value in PEM format." | optional,
            cert_file
              | String
              | doc "Public key file path. Required to be in PEM format."
              | optional,
            key | String | doc "Private key value in PEM format." | optional,
            key_file
              | String
              | doc "Private key file path. Required to be in PEM format."
              | optional,
          },
      "definitions.Secrets" =
        {
            type
              | String
              | doc "Secrets provider type, plugin specific value e.g. 'gcp' for gcp plugin."
              | optional,
            ..
          },
      "definitions.State" =
        {
            path
              | String
              | doc "Path of local state, used only when state type is 'local'."
              | optional,
            type
              | String
              | doc "State type, plugin specific value e.g. 'gcp' for gcp plugin or use 'local' for local state.",
            ..
          },
    }
    in
  refs."definitions.OutblocksProject"