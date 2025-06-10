# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      airbrake
        | {
          apiKey
            | String
            | doc m%"
              The API Key to authenticate requests. More details on how to get this
              here: https://airbrake.io/docs/api/#authentication
            "%
            | optional,
          ..
        }
        | doc "Configuration options for the Airbrake plugin"
        | optional,
      allure | { baseUrl | String | optional, .. } | optional,
      apacheAirflow
        | {
          baseUrl
            | String
            | doc "The base url of the Apache Airflow installation."
            | optional,
          ..
        }
        | doc "Configurations for the Apache Airflow plugin"
        | optional,
      app
        | {
          analytics
            | {
              ga
                | {
                  customDimensionsMetrics
                    | Array
                      {
                        index
                          | Number
                          | doc m%"
                            The index of the Google Analytics custom dimension or metric that
                            the metadata should be written to.
                          "%
                          | optional,
                        key
                          | String
                          | doc m%"
                            The property of the context or attributes that should be captured.
                            e.g. to capture the Plugin ID associated with an event, the source
                            should be set to "context" and the key should be set to pluginId.
                          "%
                          | optional,
                        source
                          | std.enum.TagOrString
                          | [| 'context, 'attributes |]
                          | doc m%"
                            Specifies whether the desired value lives as an attribute on the
                            Analytics Context or the Event's Attributes.
                          "%
                          | optional,
                        type
                          | std.enum.TagOrString
                          | [| 'metric, 'dimension |]
                          | doc m%"
                            Specifies whether the corresponding metadata should be collected
                            as a Google Analytics custom dimension or custom metric.
                          "%
                          | optional,
                        ..
                      }
                    | doc m%"
                      Configuration informing how Analytics Context and Event Attributes
                      metadata will be captured in Google Analytics.
                    "%
                    | optional,
                  debug
                    | Bool
                    | doc m%"
                      Whether or not to log analytics debug statements to the console.
                      Defaults to false.
                    "%
                    | optional,
                  identity
                    | std.enum.TagOrString
                    | [| 'required, '"optional", 'disabled |]
                    | doc m%"
                      Controls how the identityApi is used when sending data to GA:
                      
                      - `disabled`: (Default) Explicitly prevents a user's identity from
                        being used when capturing events in GA.
                      - `optional`: Pageviews and hits are forwarded to GA as they happen
                        and only include user identity metadata once known. Guarantees
                        that hits are captured for all sessions, even if no sign in
                        occurs, but may result in dropped hits in User ID views.
                      - `required`: All pageviews and hits are deferred until an identity
                        is known. Guarantees that all data sent to GA correlates to a user
                        identity, but prevents GA from receiving events for sessions in
                        which a user does not sign in. An `identityApi` instance must be
                        passed during instantiation when set to this value.
                    "%
                    | optional,
                  scriptSrc
                    | String
                    | doc m%"
                      URL to Google Analytics analytics.js script
                      Defaults to fetching from GA source (eg. https://www.google-analytics.com/analytics.js)
                    "%
                    | optional,
                  testMode
                    | Bool
                    | doc m%"
                      Prevents events from actually being sent when set to true. Defaults
                      to false.
                    "%
                    | optional,
                  trackingId
                    | String
                    | doc "Google Analytics tracking ID, e.g. UA-000000-0"
                    | optional,
                  virtualSearchPageView
                    | {
                      categoryQuery
                        | String
                        | doc m%"
                          Specifies which query param is used for the category query in the virtual pageview URL.
                          Skipped by default.
                        "%
                        | optional,
                      mode
                        | std.enum.TagOrString
                        | [| 'only, 'disabled, 'both |]
                        | doc m%"
                          - `disabled`: (Default) no virtual pageviews are sent
                          - `only`: Sends virtual pageview _instead_ of the `search` event
                          - `both`: Sends both the `search` event _and_ the virtual pageview
                        "%
                        | optional,
                      mountPath
                        | String
                        | doc m%"
                          Specifies on which path the main Search page is mounted.
                          Defaults to `/search`.
                        "%
                        | optional,
                      searchQuery
                        | String
                        | doc m%"
                          Specifies which query param is used for the term query in the virtual pageview URL.
                          Defaults to `query`.
                        "%
                        | optional,
                      ..
                    }
                    | doc m%"
                      Controls whether to send virtual pageviews on `search` events.
                      Can be used to enable Site Search in GA.
                    "%
                    | optional,
                  ..
                }
                | optional,
              ga4
                | {
                  allowedAttributes
                    | std.contract.any_of
                      [
                        js2n.array.ArrayOf String,
                        std.contract.Sequence
                          [
                            js2n.array.MaxItems 1,
                            js2n.array.MinItems 1,
                            js2n.array.Items
                              [
                                std.contract.Sequence
                                  [ std.enum.TagOrString, [| '"*" |] ]
                              ] js2n.Always
                          ]
                      ]
                    | doc m%"
                      Attributes that will be sent as parameters in the event
                      attribute-name will be prefixed by a_, for example , testAttribute will be c_testAttribute in the event.
                    "%
                    | optional,
                  allowedContexts
                    | std.contract.any_of
                      [
                        js2n.array.ArrayOf String,
                        std.contract.Sequence
                          [
                            js2n.array.MaxItems 1,
                            js2n.array.MinItems 1,
                            js2n.array.Items
                              [
                                std.contract.Sequence
                                  [ std.enum.TagOrString, [| '"*" |] ]
                              ] js2n.Always
                          ]
                      ]
                    | doc m%"
                      Configuration informing how Analytics Context and Event Attributes
                      metadata will be captured in Google Analytics.
                      Contexts that will be sent as parameters in the event.
                      context-name will be prefixed by c_, for example, pluginId will be c_pluginId in the event.
                    "%
                    | optional,
                  contentGrouping
                    | std.enum.TagOrString
                    | [| 'routeRef, 'pluginId, 'extension |]
                    | doc m%"
                      Content grouping definition
                      Feature available in Google Analytics 4
                      More information https://support.google.com/analytics/answer/11523339?hl=en
                      Data can be grouped by pluginId, routeRef
                      Takes 24 hours before metrics shows up in GA dashboard
                      Specifies the dimension to be used for content grouping
                      Can be one of pluginId, extension or routeRef
                    "%
                    | optional,
                  debug
                    | Bool
                    | doc m%"
                      Whether to log analytics debug statements to the console.
                      Defaults to false.
                    "%
                    | optional,
                  identity
                    | std.enum.TagOrString
                    | [| 'required, '"optional", 'disabled |]
                    | doc m%"
                      Controls how the identityApi is used when sending data to GA:
                      
                      - `disabled`: (Default) Explicitly prevents a user's identity from
                        being used when capturing events in GA.
                      - `optional`: Pageviews and hits are forwarded to GA as they happen
                        and only include user identity metadata once known. Guarantees
                        that hits are captured for all sessions, even if no sign in
                        occurs, but may result in dropped hits in User ID views.
                      - `required`: All pageviews and hits are deferred until an identity
                        is known. Guarantees that all data sent to GA correlates to a user
                        identity, but prevents GA from receiving events for sessions in
                        which a user does not sign in. An `identityApi` instance must be
                        passed during instantiation when set to this value.
                    "%
                    | optional,
                  measurementId
                    | String
                    | doc "Google Analytics measurement ID, e.g. G-000000-0"
                    | optional,
                  testMode
                    | Bool
                    | doc m%"
                      Prevents events from actually being sent when set to true. Defaults
                      to false.
                    "%
                    | optional,
                  ..
                }
                | optional,
              newRelic
                | {
                  accountId
                    | String
                    | doc "New Relic Account ID, e.g. 1234567"
                    | optional,
                  applicationId
                    | String
                    | doc "New Relic Application ID, e.g. 987654321"
                    | optional,
                  cookiesEnabled
                    | Bool
                    | doc "Whether to enabled tracing of cookies, defaults to false"
                    | optional,
                  distributedTracingEnabled
                    | Bool
                    | doc "Whether to enabled distributed tracing, defaults to false"
                    | optional,
                  endpoint
                    | std.enum.TagOrString
                    | [| '"bam.nr-data.net", '"bam.eu01.nr-data.net" |]
                    | doc "Data ingestion endpoint to use, either bam.eu01.nr-data.net (EU) or bam.nr-data.net (US)"
                    | optional,
                  licenseKey
                    | String
                    | doc "New Relic License Key, e.g. NRJS-12a3456bc78de9123f4"
                    | optional,
                  ..
                }
                | optional,
              ..
            }
            | optional,
          baseUrl
            | String
            | doc "The public absolute root URL that the frontend."
            | optional,
          datadogRum
            | {
              applicationId
                | String
                | doc "applicationId for Datadog RUM events"
                | optional,
              clientToken
                | String
                | doc "clientToken for Datadog RUM events"
                | optional,
              env
                | String
                | doc "Environment for Datadog RUM events"
                | optional,
              site | String | doc "site for Datadog RUM events" | optional,
              ..
            }
            | doc "Datadog RUM events configuration"
            | optional,
          disableConfigInjection
            | Bool
            | doc m%"
              Disables the configuration injection. This can be useful if you're running in an environment
              with a read-only filesystem, or for some other reason don't want configuration to be injected.
              
              Note that this will cause the configuration used when building the app bundle to be used, unless
              a separate configuration loading strategy is set up.
              
              This also disables configuration injection though `APP_CONFIG_` environment variables.
            "%
            | optional,
          disableStaticFallbackCache
            | Bool
            | doc m%"
              By default the app backend plugin will cache previously deployed static assets in the database.
              If you disable this, it is recommended to set a `staticFallbackHandler` instead.
            "%
            | optional,
          extensions
            | Array (
              std.contract.any_of
                [
                  {
                    _ | std.contract.any_of
                      [
                        {
                          attachTo
                            | {
                              id | String | optional,
                              input | String | optional,
                              ..
                            }
                            | optional,
                          config | js2n.Always | optional,
                          disabled | Bool | optional,
                          ..
                        },
                        Bool
                      ]
                  },
                  String
                ]
            )
            | optional,
          https
            | {
              certificate
                | {
                  cert
                    | String
                    | doc "Https Certificate. Use $file to load in a file"
                    | optional,
                  key
                    | String
                    | doc "Https Certificate private key. Use $file to load in a file"
                    | optional,
                  ..
                }
                | doc "Parent object containing certificate and the private key"
                | optional,
              ..
            }
            | doc "Only used for local development. The https object is passed to webpack in order to enable using https on localhost."
            | optional,
          listen
            | {
              host
                | String
                | doc "The host that the frontend should be bound to. Only used for local development."
                | optional,
              port
                | Number
                | doc "The port that the frontend should be bound to. Only used for local development."
                | optional,
              ..
            }
            | doc "Listening configuration for local development"
            | optional,
          packageName
            | String
            | doc m%"
              The name of the app package (in most Backstage repositories, this is the
              "name" field in `packages/app/package.json`) that content should be served
              from. The same app package should be added as a dependency to the backend
              package in order for it to be accessible at runtime.
              
              In a typical setup with a single app package, this will default to 'app'.
            "%
            | optional,
          support
            | {
              items
                | Array
                  {
                    icon
                      | String
                      | doc "An optional icon for the support item grouping."
                      | optional,
                    links
                      | Array
                        {
                          title | String | optional,
                          url | String | optional,
                          ..
                        }
                      | doc "A list of support links for the Backstage instance inside this grouping."
                      | optional,
                    title
                      | String
                      | doc "The title of the support item grouping."
                      | optional,
                    ..
                  }
                | doc "A list of categorized support item groupings."
                | optional,
              url | String | doc "The primary support url." | optional,
              ..
            }
            | doc "Information about support of this Backstage instance and how to contact the integrator team."
            | optional,
          title
            | String
            | doc "The title of the app, as shown in the Backstage web interface."
            | optional,
          ..
        }
        | doc "Generic frontend configuration."
        | optional,
      auth
        | {
          environment
            | String
            | doc m%"
              The 'environment' attribute added as an optional parameter to have configurable environment value for `auth.providers`.
              default value: 'development'
              optional values: 'development' | 'production'
            "%
            | optional,
          identityTokenAlgorithm
            | String
            | doc m%"
              JWS "alg" (Algorithm) Header Parameter value. Defaults to ES256.
              Must match one of the algorithms defined for IdentityClient.
              When setting a different algorithm, check if the `key` field
              of the `signing_keys` table can fit the length of the generated keys.
              If not, add a knex migration file in the migrations folder.
              More info on supported algorithms: https://github.com/panva/jose
            "%
            | optional,
          keyStore
            | {
              firestore
                | {
                  host | String | doc "The host to connect to" | optional,
                  keyFilename
                    | String
                    | doc m%"
                      Local file containing the Service Account credentials.
                      You can omit this value to automatically read from
                      GOOGLE_APPLICATION_CREDENTIALS env which is useful for local
                      development.
                    "%
                    | optional,
                  path
                    | String
                    | doc "The path to use for the collection. Defaults to 'sessions'"
                    | optional,
                  port | Number | doc "The port to connect to" | optional,
                  projectId
                    | String
                    | doc "The Google Cloud Project ID"
                    | optional,
                  ssl
                    | Bool
                    | doc "Whether to use SSL when connecting."
                    | optional,
                  timeout
                    | Number
                    | doc "Timeout used for database operations. Defaults to 10000ms"
                    | optional,
                  ..
                }
                | optional,
              provider
                | std.enum.TagOrString
                | [| 'memory, 'firestore, 'database |]
                | optional,
              ..
            }
            | doc "To control how to store JWK data in auth-backend"
            | optional,
          providers
            | js2n.record.Record
              {
                additional = 'Some {  .. },
                patterns = {},
                properties =
                  {
                      auth0 =
                        {
                            _ | {
                              audience | String | optional,
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              connection | String | optional,
                              connectionScope | String | optional,
                              domain | String | optional,
                              ..
                            }
                          },
                      awsalb =
                        {
                            iss | String | optional,
                            region | String | optional,
                            ..
                          },
                      cfaccess = { teamName | String | optional, .. },
                      gcpIap =
                        {
                            _ | {
                              audience
                                | String
                                | doc m%"
                                  The audience to use when validating incoming JWT tokens.
                                  See https://backstage.io/docs/auth/google/gcp-iap-auth
                                "%
                                | optional,
                              jwtHeader
                                | String
                                | doc "The name of the header to read the JWT token from, defaults to `'x-goog-iap-jwt-assertion'`."
                                | optional,
                              ..
                            }
                          },
                      github =
                        {
                            _ | {
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              enterpriseInstanceUrl | String | optional,
                              ..
                            }
                          },
                      gitlab =
                        {
                            _ | {
                              audience | String | optional,
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              ..
                            }
                          },
                      google =
                        {
                            _ | {
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              ..
                            }
                          },
                      microsoft =
                        {
                            _ | {
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              tenantId | String | optional,
                              ..
                            }
                          },
                      oauth2 =
                        {
                            _ | {
                              authorizationUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              disableRefresh | Bool | optional,
                              includeBasicAuth | Bool | optional,
                              scope | String | optional,
                              tokenUrl | String | optional,
                              ..
                            }
                          },
                      oidc =
                        {
                            _ | {
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              metadataUrl | String | optional,
                              prompt | String | optional,
                              scope | String | optional,
                              tokenEndpointAuthMethod | String | optional,
                              tokenSignedResponseAlg | String | optional,
                              ..
                            }
                          },
                      okta =
                        {
                            _ | {
                              audience | String | optional,
                              authServerId | String | optional,
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              idp | String | optional,
                              ..
                            }
                          },
                      onelogin =
                        {
                            _ | {
                              callbackUrl | String | optional,
                              clientId | String | optional,
                              clientSecret | String | optional,
                              issuer | String | optional,
                              ..
                            }
                          },
                      saml =
                        {
                            acceptedClockSkewMs | Number | optional,
                            audience | String | optional,
                            authnContext | Array String | optional,
                            cert | String | optional,
                            decryptionPvk | String | optional,
                            digestAlgorithm | String | optional,
                            entryPoint | String | optional,
                            identifierFormat | String | optional,
                            issuer | String | optional,
                            logoutUrl | String | optional,
                            privateKey | String | optional,
                            signatureAlgorithm
                              | std.enum.TagOrString
                              | [| 'sha512, 'sha256 |]
                              | optional,
                            ..
                          },
                    },
                required = {},
              }
            | doc "The available auth-provider options and attributes"
            | optional,
          session
            | {
              secret
                | String
                | doc "The secret attribute of session object."
                | optional,
              ..
            }
            | optional,
          ..
        }
        | doc "Configuration that provides information on available configured authentication providers."
        | optional,
      aws
        | {
          accountDefaults
            | {
              externalId
                | String
                | doc "The unique identifier needed to assume the role to retrieve temporary AWS credentials"
                | optional,
              partition
                | String
                | doc "The AWS partition of the IAM role, e.g. \"aws\", \"aws-cn\""
                | optional,
              region
                | String
                | doc "The STS regional endpoint to use when retrieving temporary AWS credentials, e.g. \"ap-northeast-1\""
                | optional,
              roleName
                | String
                | doc "The IAM role to assume to retrieve temporary AWS credentials"
                | optional,
              ..
            }
            | doc "Defaults for retrieving AWS account credentials"
            | optional,
          accounts
            | Array
              {
                accessKeyId
                  | String
                  | doc "The access key ID for a set of static AWS credentials"
                  | optional,
                accountId
                  | String
                  | doc "The account ID of the target account that this matches on, e.g. \"123456789012\""
                  | optional,
                externalId
                  | String
                  | doc "The unique identifier needed to assume the role to retrieve temporary AWS credentials"
                  | optional,
                partition
                  | String
                  | doc "The AWS partition of the IAM role, e.g. \"aws\", \"aws-cn\""
                  | optional,
                profile
                  | String
                  | doc m%"
                    The configuration profile from a credentials file at ~/.aws/credentials and
                    a configuration file at ~/.aws/config.
                  "%
                  | optional,
                region
                  | String
                  | doc "The STS regional endpoint to use when retrieving temporary AWS credentials, e.g. \"ap-northeast-1\""
                  | optional,
                roleName
                  | String
                  | doc "The IAM role to assume to retrieve temporary AWS credentials"
                  | optional,
                secretAccessKey
                  | String
                  | doc "The secret access key for a set of static AWS credentials"
                  | optional,
                ..
              }
            | doc "Configuration for retrieving AWS accounts credentials"
            | optional,
          mainAccount
            | {
              accessKeyId
                | String
                | doc "The access key ID for a set of static AWS credentials"
                | optional,
              profile
                | String
                | doc m%"
                  The configuration profile from a credentials file at ~/.aws/credentials and
                  a configuration file at ~/.aws/config.
                "%
                | optional,
              region
                | String
                | doc "The STS regional endpoint to use for the main account, e.g. \"ap-northeast-1\""
                | optional,
              secretAccessKey
                | String
                | doc "The secret access key for a set of static AWS credentials"
                | optional,
              ..
            }
            | doc "Main account to use for retrieving AWS account credentials"
            | optional,
          ..
        }
        | doc "Configuration for access to AWS accounts"
        | optional,
      azureDevOps
        | {
          host
            | String
            | doc "The hostname of the given Azure instance"
            | optional,
          organization
            | String
            | doc "The organization of the given Azure instance"
            | optional,
          token
            | String
            | doc "Token used to authenticate requests."
            | optional,
          ..
        }
        | doc "Configuration options for the azure-devops-backend plugin"
        | optional,
      backend
        | {
          auth
            | {
              keys
                | Array
                  {
                    secret
                      | String
                      | doc m%"
                        Secret for generating tokens. Should be a base64 string, recommended
                        length is 24 bytes.
                      "%
                      | optional,
                    ..
                  }
                | doc "Keys shared by all backends for signing and validating backend tokens."
                | optional,
              ..
            }
            | doc "Backend configuration for when request authentication is enabled"
            | optional,
          baseUrl
            | String
            | doc "The public absolute root URL that the backend is reachable at, from the browser's perspective."
            | optional,
          cache
            | std.contract.any_of
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          store =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'memory |] ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          connection = String,
                          store =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'redis |] ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          connection = String,
                          store =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'memcache |] ],
                        },
                    required = {},
                  }
              ]
            | doc "Cache connection configuration, select cache type using the `store` field"
            | optional,
          cors
            | {
              allowedHeaders
                | std.contract.any_of [ Array String, String ]
                | optional,
              credentials | Bool | optional,
              exposedHeaders
                | std.contract.any_of [ Array String, String ]
                | optional,
              maxAge | Number | optional,
              methods | std.contract.any_of [ Array String, String ] | optional,
              optionsSuccessStatus | Number | optional,
              origin | std.contract.any_of [ Array String, String ] | optional,
              preflightContinue | Bool | optional,
              ..
            }
            | optional,
          csp
            | { _ | std.contract.any_of [ Array String, js2n.Enum [ false ] ] }
            | doc m%"
              Content Security Policy options.
              
              The keys are the plain policy ID, e.g. "upgrade-insecure-requests". The
              values are on the format that the helmet library expects them, as an
              array of strings. There is also the special value false, which means to
              remove the default value that Backstage puts in place for that policy.
            "%
            | optional,
          database
            | {
              client
                | std.enum.TagOrString
                | [| 'sqlite3, 'pg, 'better-sqlite3 |]
                | doc "Default database client to use"
                | optional,
              connection
                | std.contract.any_of
                  [
                    {
                      password
                        | String
                        | doc "Password that belongs to the client User"
                        | optional,
                      ..
                    },
                    String
                  ]
                | doc "Base database connection string, or object with individual connection properties"
                | optional,
              ensureExists
                | Bool
                | doc m%"
                  Whether to ensure the given database exists by creating it if it does not.
                  Defaults to true if unspecified.
                "%
                | optional,
              knexConfig
                | {  .. }
                | doc m%"
                  Arbitrary config object to pass to knex when initializing
                  (https://knexjs.org/#Installation-client). Most notable is the debug
                  and asyncStackTraces booleans
                "%
                | optional,
              plugin
                | {
                  _ | {
                    client
                      | std.enum.TagOrString
                      | [| 'sqlite3, 'pg, 'better-sqlite3 |]
                      | doc "Database client override"
                      | optional,
                    connection
                      | std.contract.any_of [ {  .. }, String ]
                      | doc "Database connection string or Knex object override"
                      | optional,
                    ensureExists
                      | Bool
                      | doc m%"
                        Whether to ensure the given database exists by creating it if it does not.
                        Defaults to base config if unspecified.
                      "%
                      | optional,
                    knexConfig
                      | {  .. }
                      | doc m%"
                        Arbitrary config object to pass to knex when initializing
                        (https://knexjs.org/#Installation-client). Most notable is the
                        debug and asyncStackTraces booleans.
                        
                        This is merged recursively into the base knexConfig
                      "%
                      | optional,
                    role
                      | String
                      | doc "Configures the ownership of newly created schemas in pg databases."
                      | optional,
                    ..
                  }
                }
                | doc "Plugin specific database configuration and client override"
                | optional,
              pluginDivisionMode
                | std.enum.TagOrString
                | [| 'schema, 'database |]
                | doc m%"
                  How plugins databases are managed/divided in the provided database instance.
                  
                  `database` -> Plugins are each given their own database to manage their schemas/tables.
                  
                  `schema` -> Plugins will be given their own schema (in the specified/default database)
                              to manage their tables.
                  
                  NOTE: Currently only supported by the `pg` client.
                "%
                | optional,
              prefix | String | doc "Database name prefix override" | optional,
              role
                | String
                | doc "Configures the ownership of newly created schemas in pg databases."
                | optional,
              ..
            }
            | doc "Database connection configuration, select base database type using the `client` field"
            | optional,
          https
            | std.contract.any_of
              [
                {
                  certificate
                    | {
                      cert
                        | String
                        | doc "PEM encoded certificate. Use $file to load in a file"
                        | optional,
                      key
                        | String
                        | doc "PEM encoded certificate key. Use $file to load in a file."
                        | optional,
                      ..
                    }
                    | doc "Certificate configuration"
                    | optional,
                  ..
                },
                js2n.Enum [ true ]
              ]
            | doc m%"
              HTTPS configuration for the backend. If omitted the backend will serve HTTP.
              
              Setting this to `true` will cause self-signed certificates to be generated, which
              can be useful for local development or other non-production scenarios.
            "%
            | optional,
          listen
            | std.contract.any_of
              [
                {
                  host
                    | String
                    | doc "Address of the interface that the backend should bind to."
                    | optional,
                  port
                    | std.contract.any_of [ Number, String ]
                    | doc "Port that the backend should listen to."
                    | optional,
                  ..
                },
                String
              ]
            | doc "Address that the backend should listen to."
            | optional,
          reading
            | {
              allow
                | Array
                  {
                    host
                      | String
                      | doc m%"
                        A host to allow outgoing requests to, being either a full host or
                        a subdomain wildcard pattern with a leading `*`. For example `example.com`
                        and `*.example.com` are valid values, `prod.*.example.com` is not.
                        The host may also contain a port, for example `example.com:8080`.
                      "%
                      | optional,
                    paths
                      | Array String
                      | doc m%"
                        An optional list of paths. In case they are present only targets matching
                        any of them will are allowed. You can use trailing slashes to make sure only
                        subdirectories are allowed, for example `/mydir/` will allow targets with
                        paths like `/mydir/a` but will block paths like `/mydir2`.
                      "%
                      | optional,
                    ..
                  }
                | doc m%"
                  A list of targets to allow outgoing requests to. Users will be able to make
                  requests on behalf of the backend to the targets that are allowed by this list.
                "%
                | optional,
              ..
            }
            | doc m%"
              Configuration related to URL reading, used for example for reading catalog info
              files, scaffolder templates, and techdocs content.
            "%
            | optional,
          ..
        }
        | doc "Generic backend configuration."
        | optional,
      catalog
        | {
          "import"
            | {
              entityFilename
                | String
                | doc "Catalog entity descriptor filename, defaults to \"catalog-info.yaml\""
                | optional,
              pullRequestBranchName
                | String
                | doc m%"
                  A branch name used in pull request when registering existing component via UI
                  Valid git refname required, see: https://git-scm.com/docs/git-check-ref-format
                  Defaults to "backstage-integration"
                "%
                | optional,
              ..
            }
            | doc "List of import flow specific options and attributes"
            | optional,
          locations
            | Array
              {
                rules
                  | Array
                    {
                      allow
                        | Array String
                        | doc m%"
                          Allow entities of these particular kinds.
                          
                          E.g. ["Group", "User"]
                        "%
                        | optional,
                      ..
                    }
                  | doc m%"
                    Optional extra rules that apply to this particular location.
                    
                    These override the global rules above.
                  "%
                  | optional,
                target
                  | String
                  | doc m%"
                    The target URL of the location, e.g.
                    "https://github.com/org/repo/blob/master/users.yaml".
                  "%
                  | optional,
                type
                  | String
                  | doc "The type of location, e.g. \"url\"."
                  | optional,
                ..
              }
            | doc m%"
              A set of static locations that the catalog shall always keep itself
              up-to-date with. This is commonly used for large, permanent integrations
              that are defined by the Backstage operators at an organization, rather
              than individual things that users register dynamically.
              
              These have (optional) rules of their own. These override what the global
              rules above specify. This way, you can prevent everybody from register
              e.g. User and Group entities, except for one or a few static locations
              that have those two kinds explicitly allowed.
              
              For example:
              
              ```yaml
              rules:
                - allow: [Component, API, Template, Location]
              locations:
                - type: url
                  target: https://github.com/org/repo/blob/master/users.yaml
                  rules:
                    - allow: [User, Group]
                - type: url
                  target: https://github.com/org/repo/blob/master/systems.yaml
                  rules:
                    - allow: [System]
              ```
            "%
            | optional,
          orphanStrategy
            | std.enum.TagOrString
            | [| 'keep, 'delete |]
            | doc m%"
              The strategy to use for entities that are orphaned, i.e. no longer have
              any other entities or providers referencing them. The default value is
              "keep".
            "%
            | optional,
          processingInterval
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc "The interval at which the catalog should process its entities."
            | optional,
          processors
            | {
              awsOrganization
                | {
                  provider
                    | {
                      roleArn
                        | String
                        | doc "The role to be assumed by this processor"
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
                | doc "AwsOrganizationCloudAccountProcessor configuration"
                | optional,
              githubMultiOrg
                | {
                  orgs
                    | Array
                      {
                        groupNamespace
                          | String
                          | doc m%"
                            The namespace of the group created for this org.
                            
                            Defaults to org name if omitted.
                          "%
                          | optional,
                        name
                          | String
                          | doc "The name of the GitHub org to process."
                          | optional,
                        userNamespace
                          | String
                          | doc m%"
                            The namespace of the users created from this org.
                            
                            Defaults to empty string if omitted.
                          "%
                          | optional,
                        ..
                      }
                    | doc "The configuration parameters for each GitHub org to process."
                    | optional,
                  ..
                }
                | doc "GithubMultiOrgReaderProcessor configuration"
                | optional,
              ldapOrg
                | {
                  providers
                    | Array
                      {
                        bind
                          | {
                            dn
                              | String
                              | doc m%"
                                The DN of the user to auth as.
                                
                                E.g. "uid=ldap-robot,ou=robots,ou=example,dc=example,dc=net"
                              "%
                              | optional,
                            secret
                              | String
                              | doc "The secret of the user to auth as (its password)."
                              | optional,
                            ..
                          }
                          | doc m%"
                            The settings to use for the bind command. If none are specified,
                            the bind command is not issued.
                          "%
                          | optional,
                        groups
                          | {
                            dn
                              | String
                              | doc m%"
                                The DN under which groups are stored.
                                
                                E.g. "ou=people,ou=example,dc=example,dc=net"
                              "%
                              | optional,
                            map
                              | {
                                description
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the metadata.description field of the entity. Defaults to
                                    "description".
                                  "%
                                  | optional,
                                displayName
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.profile.displayName field of the entity. Defaults to
                                    "cn".
                                  "%
                                  | optional,
                                email
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.profile.email field of the entity.
                                  "%
                                  | optional,
                                memberOf
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the values of
                                    the spec.parent field of the entity. Defaults to "memberOf".
                                  "%
                                  | optional,
                                members
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the values of
                                    the spec.children field of the entity. Defaults to "member".
                                  "%
                                  | optional,
                                name
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the metadata.name field of the entity. Defaults to "cn".
                                  "%
                                  | optional,
                                picture
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.profile.picture field of the entity.
                                  "%
                                  | optional,
                                rdn
                                  | String
                                  | doc m%"
                                    The name of the attribute that holds the relative
                                    distinguished name of each entry. Defaults to "cn".
                                  "%
                                  | optional,
                                type
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.type field of the entity. Defaults to "groupType".
                                  "%
                                  | optional,
                                ..
                              }
                              | doc "Mappings from well known entity fields, to LDAP attribute names"
                              | optional,
                            options
                              | {
                                attributes
                                  | std.contract.any_of [ Array String, String ]
                                  | optional,
                                derefAliases | Number | optional,
                                filter | String | optional,
                                paged
                                  | std.contract.any_of
                                    [
                                      {
                                        pagePause | Bool | optional,
                                        pageSize | Number | optional,
                                        ..
                                      },
                                      Bool
                                    ]
                                  | optional,
                                scope
                                  | std.enum.TagOrString
                                  | [| 'sub, 'one, 'base |]
                                  | optional,
                                sizeLimit | Number | optional,
                                timeLimit | Number | optional,
                                typesOnly | Bool | optional,
                                ..
                              }
                              | doc m%"
                                The search options to use. The default is scope "one" and
                                attributes "*" and "+".
                                
                                It is common to want to specify a filter, to narrow down the set
                                of matching items.
                              "%
                              | optional,
                            set
                              | { _ | Dyn }
                              | doc m%"
                                JSON paths (on a.b.c form) and hard coded values to set on those
                                paths.
                                
                                This can be useful for example if you want to hard code a
                                namespace or similar on the generated entities.
                              "%
                              | optional,
                            ..
                          }
                          | doc "The settings that govern the reading and interpretation of groups."
                          | optional,
                        target
                          | String
                          | doc m%"
                            The prefix of the target that this matches on, e.g.
                            "ldaps://ds.example.net", with no trailing slash.
                          "%
                          | optional,
                        tls
                          | { rejectUnauthorized | Bool | optional, .. }
                          | doc "TLS settings"
                          | optional,
                        users
                          | {
                            dn
                              | String
                              | doc m%"
                                The DN under which users are stored.
                                
                                E.g. "ou=people,ou=example,dc=example,dc=net"
                              "%
                              | optional,
                            map
                              | {
                                description
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the metadata.description field of the entity.
                                  "%
                                  | optional,
                                displayName
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.profile.displayName field of the entity. Defaults to
                                    "cn".
                                  "%
                                  | optional,
                                email
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.profile.email field of the entity. Defaults to
                                    "mail".
                                  "%
                                  | optional,
                                memberOf
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the values of
                                    the spec.memberOf field of the entity. Defaults to "memberOf".
                                  "%
                                  | optional,
                                name
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the metadata.name field of the entity. Defaults to "uid".
                                  "%
                                  | optional,
                                picture
                                  | String
                                  | doc m%"
                                    The name of the attribute that shall be used for the value of
                                    the spec.profile.picture field of the entity.
                                  "%
                                  | optional,
                                rdn
                                  | String
                                  | doc m%"
                                    The name of the attribute that holds the relative
                                    distinguished name of each entry. Defaults to "uid".
                                  "%
                                  | optional,
                                ..
                              }
                              | doc "Mappings from well known entity fields, to LDAP attribute names"
                              | optional,
                            options
                              | {
                                attributes
                                  | std.contract.any_of [ Array String, String ]
                                  | optional,
                                derefAliases | Number | optional,
                                filter | String | optional,
                                paged
                                  | std.contract.any_of
                                    [
                                      {
                                        pagePause | Bool | optional,
                                        pageSize | Number | optional,
                                        ..
                                      },
                                      Bool
                                    ]
                                  | optional,
                                scope
                                  | std.enum.TagOrString
                                  | [| 'sub, 'one, 'base |]
                                  | optional,
                                sizeLimit | Number | optional,
                                timeLimit | Number | optional,
                                typesOnly | Bool | optional,
                                ..
                              }
                              | doc m%"
                                The search options to use. The default is scope "one" and
                                attributes "*" and "+".
                                
                                It is common to want to specify a filter, to narrow down the set
                                of matching items.
                              "%
                              | optional,
                            set
                              | { _ | Dyn }
                              | doc m%"
                                JSON paths (on a.b.c form) and hard coded values to set on those
                                paths.
                                
                                This can be useful for example if you want to hard code a
                                namespace or similar on the generated entities.
                              "%
                              | optional,
                            ..
                          }
                          | doc "The settings that govern the reading and interpretation of users."
                          | optional,
                        ..
                      }
                    | doc "The configuration parameters for each single LDAP provider."
                    | optional,
                  ..
                }
                | doc "LdapOrgReaderProcessor configuration"
                | optional,
              microsoftGraphOrg
                | {
                  providers
                    | Array
                      {
                        authority
                          | String
                          | doc m%"
                            The auth authority used.
                            
                            Default value "https://login.microsoftonline.com"
                          "%
                          | optional,
                        clientId
                          | String
                          | doc "The OAuth client ID to use for authenticating requests."
                          | optional,
                        clientSecret
                          | String
                          | doc "The OAuth client secret to use for authenticating requests."
                          | optional,
                        groupFilter
                          | String
                          | doc m%"
                            The filter to apply to extract groups.
                            
                            E.g. "securityEnabled eq false and mailEnabled eq true"
                          "%
                          | optional,
                        groupSearch
                          | String
                          | doc m%"
                            The search criteria to apply to extract users by groups memberships.
                            
                            E.g. "\"displayName:-team\"" would only match groups which contain '-team'
                          "%
                          | optional,
                        groupSelect
                          | Array String
                          | doc m%"
                            The fields to be fetched on query.
                            
                            E.g. ["id", "displayName", "description"]
                          "%
                          | optional,
                        target
                          | String
                          | doc m%"
                            The prefix of the target that this matches on, e.g.
                            "https://graph.microsoft.com/v1.0", with no trailing slash.
                          "%
                          | optional,
                        tenantId
                          | String
                          | doc "The tenant whose org data we are interested in."
                          | optional,
                        userFilter
                          | String
                          | doc m%"
                            The filter to apply to extract users.
                            
                            E.g. "accountEnabled eq true and userType eq 'member'"
                          "%
                          | optional,
                        userGroupMemberFilter
                          | String
                          | doc m%"
                            The filter to apply to extract users by groups memberships.
                            
                            E.g. "displayName eq 'Backstage Users'"
                          "%
                          | optional,
                        userGroupMemberSearch
                          | String
                          | doc m%"
                            The search criteria to apply to extract groups.
                            
                            E.g. "\"displayName:-team\"" would only match groups which contain '-team'
                          "%
                          | optional,
                        userSelect
                          | Array String
                          | doc m%"
                            The fields to be fetched on query.
                            
                            E.g. ["id", "displayName", "description"]
                          "%
                          | optional,
                        ..
                      }
                    | doc "The configuration parameters for each single Microsoft Graph provider."
                    | optional,
                  ..
                }
                | doc "MicrosoftGraphOrgReaderProcessor configuration"
                | optional,
              ..
            }
            | doc "List of processor-specific options and attributes"
            | optional,
          providers
            | {
              awsS3
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              accountId = String,
                              bucketName = String,
                              prefix = String,
                              region = String,
                              schedule =
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
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional =
                          'Some
                              (js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        accountId = String,
                                        bucketName = String,
                                        prefix = String,
                                        region = String,
                                        schedule =
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
                                  required = {},
                                }),
                        patterns = {},
                        properties = {},
                        required = {},
                      }
                  ]
                | doc m%"
                  AwsS3EntityProvider configuration
                  
                  Uses "default" as default id for the single config variant.
                "%
                | optional,
              azureDevOps
                | {
                  _ | {
                    host
                      | String
                      | doc "(Optional) The DevOps host; leave empty for `dev.azure.com`, otherwise set to your self-hosted instance host."
                      | optional,
                    organization
                      | String
                      | doc "(Required) Your organization slug."
                      | optional,
                    path
                      | String
                      | doc m%"
                        (Optional) Where to find catalog-info.yaml files. Wildcards are supported.
                        If not set, defaults to /catalog-info.yaml.
                      "%
                      | optional,
                    project
                      | String
                      | doc "(Required) Your project slug."
                      | optional,
                    repository
                      | String
                      | doc m%"
                        (Optional) The repository name. Wildcards are supported as show on the examples above.
                        If not set, all repositories will be searched.
                      "%
                      | optional,
                    schedule
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "(Optional) TaskScheduleDefinition for the refresh."
                      | optional,
                    ..
                  }
                }
                | doc "AzureDevopsEntityProvider configuration"
                | optional,
              bitbucketCloud
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              catalogPath = String,
                              filters =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            projectKey = String,
                                            repoSlug = String,
                                          },
                                      required = {},
                                    },
                              schedule =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ],
                              workspace = String,
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional =
                          'Some
                              (js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        catalogPath = String,
                                        filters =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      projectKey = String,
                                                      repoSlug = String,
                                                    },
                                                required = {},
                                              },
                                        schedule =
                                          std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                { _ | Dyn },
                                                Array Dyn
                                              ],
                                        workspace = String,
                                      },
                                  required = {},
                                }),
                        patterns = {},
                        properties = {},
                        required = {},
                      }
                  ]
                | doc m%"
                  BitbucketCloudEntityProvider configuration
                  
                  Uses "default" as default id for the single config variant.
                "%
                | optional,
              bitbucketServer
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              catalogPath = String,
                              filters =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            projectKey = String,
                                            repoSlug = String,
                                          },
                                      required = {},
                                    },
                              schedule =
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
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional =
                          'Some
                              (js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        catalogPath = String,
                                        filters =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      projectKey = String,
                                                      repoSlug = String,
                                                    },
                                                required = {},
                                              },
                                        schedule =
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
                                  required = {},
                                }),
                        patterns = {},
                        properties = {},
                        required = {},
                      }
                  ]
                | doc m%"
                  BitbucketServerEntityProvider configuration
                  
                  Uses "default" as default id for the single config variant.
                "%
                | optional,
              gcp
                | {
                  gke
                    | {
                      parents
                        | Array String
                        | doc "Locations to list clusters from"
                        | optional,
                      schedule
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                        | doc "(Optional) TaskScheduleDefinition for the refresh."
                        | optional,
                      ..
                    }
                    | doc "Config for GKE clusters"
                    | optional,
                  ..
                }
                | doc "GCPCatalogModuleConfig configuration"
                | optional,
              gerrit
                | {
                  _ | {
                    branch
                      | String
                      | doc m%"
                        (Optional) Branch.
                        The branch where the provider will try to find entities. Defaults to "master".
                      "%
                      | optional,
                    host
                      | String
                      | doc "(Required) The host of the Gerrit integration to use."
                      | optional,
                    query
                      | String
                      | doc m%"
                        (Required) The query to use for the "List Projects" API call. Used to limit the
                        scope of the projects that the provider tries to ingest.
                      "%
                      | optional,
                    ..
                  }
                }
                | doc m%"
                  GerritEntityProvider configuration
                  
                  Maps provider id with configuration.
                "%
                | optional,
              github
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              catalogPath = String,
                              filters =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            allowForks = Bool,
                                            branch = String,
                                            repository = String,
                                            topic =
                                              js2n.record.Record
                                                  {
                                                    additional = 'Some Dyn,
                                                    patterns = {},
                                                    properties =
                                                      {
                                                          exclude =
                                                            js2n.array.ArrayOf
                                                                String,
                                                          include =
                                                            js2n.array.ArrayOf
                                                                String,
                                                        },
                                                    required = {},
                                                  },
                                          },
                                      required = {},
                                    },
                              host = String,
                              organization = String,
                              schedule =
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
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional =
                          'Some
                              (js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        catalogPath = String,
                                        filters =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      allowForks = Bool,
                                                      branch = String,
                                                      repository = String,
                                                      topic =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'Some Dyn,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    exclude =
                                                                      js2n.array.ArrayOf
                                                                          String,
                                                                    include =
                                                                      js2n.array.ArrayOf
                                                                          String,
                                                                  },
                                                              required = {},
                                                            },
                                                    },
                                                required = {},
                                              },
                                        host = String,
                                        organization = String,
                                        schedule =
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
                                  required = {},
                                }),
                        patterns = {},
                        properties = {},
                        required = {},
                      }
                  ]
                | doc m%"
                  GithubEntityProvider configuration
                  
                  Uses "default" as default id for the single config variant.
                "%
                | optional,
              githubOrg
                | std.contract.any_of
                  [
                    {
                      githubUrl
                        | String
                        | doc "The target that this provider should consume."
                        | optional,
                      id
                        | String
                        | doc m%"
                          A stable id for this provider. Entities from this provider will
                          be associated with this ID, so you should take care not to change
                          it over time since that may lead to orphaned entities and/or
                          conflicts.
                        "%
                        | optional,
                      orgs
                        | Array String
                        | doc m%"
                          The list of the GitHub orgs to consume. By default will consume all accessible
                          orgs on the given GitHub instance (support for GitHub App integration only).
                        "%
                        | optional,
                      schedule
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                        | doc "The refresh schedule to use."
                        | optional,
                      ..
                    },
                    Array
                      {
                        githubUrl
                          | String
                          | doc "The target that this provider should consume."
                          | optional,
                        id
                          | String
                          | doc m%"
                            A stable id for this provider. Entities from this provider will
                            be associated with this ID, so you should take care not to change
                            it over time since that may lead to orphaned entities and/or
                            conflicts.
                          "%
                          | optional,
                        orgs
                          | Array String
                          | doc m%"
                            The list of the GitHub orgs to consume. By default will consume all accessible
                            orgs on the given GitHub instance (support for GitHub App integration only).
                          "%
                          | optional,
                        schedule
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | doc "The refresh schedule to use."
                          | optional,
                        ..
                      }
                  ]
                | doc "Configuration for catalogModuleGithubOrgEntityProvider"
                | optional,
              gitlab
                | {
                  _ | {
                    branch
                      | String
                      | doc m%"
                        (Optional) Default branch to read the catalog-info.yaml file.
                        If not set, 'master' will be used.
                      "%
                      | optional,
                    entityFilename
                      | String
                      | doc m%"
                        (Optional) The name used for the catalog file.
                        If not set, 'catalog-info.yaml' will be used.
                      "%
                      | optional,
                    group
                      | String
                      | doc m%"
                        (Optional) Gitlab's group[/subgroup] where the discovery is done.
                        If not defined the whole instance will be scanned.
                      "%
                      | optional,
                    groupPattern
                      | String
                      | doc "(Optional) RegExp for the Group Name Pattern"
                      | optional,
                    host
                      | String
                      | doc "(Required) Gitlab's host name."
                      | optional,
                    projectPattern
                      | String
                      | doc "(Optional) RegExp for the Project Name Pattern"
                      | optional,
                    schedule
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "(Optional) TaskScheduleDefinition for the refresh."
                      | optional,
                    skipForkedRepos
                      | Bool
                      | doc "(Optional) Skip forked repository"
                      | optional,
                    userPattern
                      | String
                      | doc "(Optional) RegExp for the User Name Pattern"
                      | optional,
                    ..
                  }
                }
                | doc "GitlabDiscoveryEntityProvider configuration"
                | optional,
              microsoftGraphOrg
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              authority = String,
                              clientId = String,
                              clientSecret = String,
                              group =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            expand = String,
                                            filter = String,
                                            search = String,
                                            select = js2n.array.ArrayOf String,
                                          },
                                      required = {},
                                    },
                              queryMode = String,
                              schedule =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ],
                              target = String,
                              tenantId = String,
                              user =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { expand = String, filter = String, },
                                      required = {},
                                    },
                              userGroupMember =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { filter = String, search = String, },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional =
                          'Some
                              (js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        authority = String,
                                        clientId = String,
                                        clientSecret = String,
                                        group =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      filter = String,
                                                      search = String,
                                                      select =
                                                        js2n.array.ArrayOf
                                                            String,
                                                    },
                                                required = {},
                                              },
                                        queryMode = String,
                                        schedule =
                                          std.contract.any_of
                                              [
                                                js2n.Null,
                                                Bool,
                                                Number,
                                                String,
                                                { _ | Dyn },
                                                Array Dyn
                                              ],
                                        target = String,
                                        tenantId = String,
                                        user =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  { filter = String, },
                                                required = {},
                                              },
                                        userGroupMember =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      filter = String,
                                                      search = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                }),
                        patterns = {},
                        properties = {},
                        required = {},
                      }
                  ]
                | doc "MicrosoftGraphOrgEntityProvider configuration."
                | optional,
              puppetdb
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              baseUrl = String,
                              query = String,
                              schedule =
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
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional =
                          'Some
                              (js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        baseUrl = String,
                                        query = String,
                                        schedule =
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
                                  required = {},
                                }),
                        patterns = {},
                        properties = {},
                        required = {},
                      }
                  ]
                | doc "PuppetDB Entity Provider configuration. Uses \"default\" as default ID for the single config variant."
                | optional,
              ..
            }
            | doc "List of provider-specific options and attributes"
            | optional,
          readonly
            | Bool
            | doc m%"
              Readonly defines whether the catalog allows writes after startup.
              
              Setting 'readonly=false' allows users to register their own components.
              This is the default value.
              
              Setting 'readonly=true' configures catalog to only allow reads. This can
              be used in combination with static locations to only serve operator
              provided locations. Effectively this removes the ability to register new
              components to a running backstage instance.
            "%
            | optional,
          rules
            | Array
              {
                allow
                  | Array String
                  | doc m%"
                    Allow entities of these particular kinds.
                    
                    E.g. ["Component", "API", "Template", "Location"]
                  "%
                  | optional,
                locations
                  | Array
                    {
                      exact
                        | String
                        | doc m%"
                          The exact location, e.g.
                          "https://github.com/org/repo/blob/master/users.yaml".
                          
                          The exact location can also be used to match on locations
                          that contain glob characters themselves, e.g.
                          "https://github.com/org/*\/blob/master/*.yaml".
                        "%
                        | optional,
                      pattern
                        | String
                        | doc m%"
                          The pattern allowed for the location, e.g.
                          "https://github.com/org/*\/blob/master/*.yaml".
                        "%
                        | optional,
                      type
                        | String
                        | doc "The type of location, e.g. \"url\"."
                        | optional,
                      ..
                    }
                  | doc m%"
                    Limit this rule to a specific location
                    
                    Example with a fixed location
                     { "type": "url", "exact": "https://github.com/a/b/blob/file.yaml"}
                    
                    Example using a Regex
                     { "type": "url", "pattern": "https://github.com/org/*\/blob/master/*.yaml"}
                    
                    Using both exact and pattern will result in an error starting the application
                  "%
                  | optional,
                ..
              }
            | doc m%"
              Rules to apply to all catalog entities, from any location.
              
              An undefined list of matchers means match all, an empty list of
              matchers means match none.
              
              This is commonly used to put in what amounts to an allowlist of kinds
              that regular users of Backstage are permitted to register locations
              for. This can be used to stop them from registering yaml files
              describing for example a Group entity called "admin" that they make
              themselves members of, or similar.
            "%
            | optional,
          ..
        }
        | doc "Configuration options for the catalog plugin."
        | optional,
      codescene
        | {
          baseUrl
            | String
            | doc "The base url of the CodeScene installation."
            | optional,
          ..
        }
        | doc "Configuration options for the CodeScene plugin"
        | optional,
      confluence
        | {
          auth
            | {
              email
                | String
                | doc "Email used with the token for the basic auth method"
                | optional,
              password
                | String
                | doc "Password used with the Username/Password auth method"
                | optional,
              token
                | String
                | doc "Token used for the basic and bearer auth methods"
                | optional,
              type
                | std.enum.TagOrString
                | [| 'userpass, 'bearer, 'basic |]
                | doc "Authentication method - basic, bearer, username/password"
                | optional,
              username
                | String
                | doc "Username used with the Username/Password auth method"
                | optional,
              ..
            }
            | optional,
          baseUrl
            | String
            | doc "The base URL for accessing the Confluence API"
            | optional,
          ..
        }
        | doc "Configuration options for the Confluence to Markdown action"
        | optional,
      costInsights
        | {
          baseCurrency
            | {
              locale | String | optional,
              options
                | {
                  currency | String | optional,
                  currencySign | String | optional,
                  localeMatcher | String | optional,
                  maximumFractionDigits | Number | optional,
                  maximumSignificantDigits | Number | optional,
                  minimumFractionDigits | Number | optional,
                  minimumIntegerDigits | Number | optional,
                  minimumSignificantDigits | Number | optional,
                  style | String | optional,
                  useGrouping | Bool | optional,
                  ..
                }
                | optional,
              ..
            }
            | optional,
          currencies
            | {
              _ | {
                "default" | Bool | optional,
                kind | String | optional,
                label | String | optional,
                prefix | String | optional,
                rate | Number | optional,
                unit | String | optional,
                ..
              }
            }
            | optional,
          engineerCost | Number | optional,
          engineerThreshold | Number | optional,
          metrics
            | {
              _ | { "default" | Bool | optional, name | String | optional, .. }
            }
            | optional,
          products
            | {
              _ | {
                icon
                  | std.enum.TagOrString
                  | [| 'storage, 'search, 'ml, 'database, 'data, 'compute |]
                  | optional,
                name | String | optional,
                ..
              }
            }
            | optional,
          ..
        }
        | optional,
      devTools
        | {
          externalDependencies
            | {
              endpoints
                | Array
                  {
                    name | String | doc "The name of the endpoint." | optional,
                    target
                      | String
                      | doc "The target of the endpoint; currently either a URL for fetch or server name for ping."
                      | optional,
                    type
                      | String
                      | doc "Type of check to perform; currently fetch or ping"
                      | optional,
                    ..
                  }
                | doc "The list of endpoints to check."
                | optional,
              ..
            }
            | doc "External dependency configuration."
            | optional,
          info
            | {
              packagePrefixes
                | Array String
                | doc m%"
                  A list of package prefixes that DevTools will use for filtering all available dependencies
                  (default is ["@backstage"])
                "%
                | optional,
              ..
            }
            | doc "Info configuration"
            | optional,
          ..
        }
        | doc "DevTools configuration."
        | optional,
      discovery
        | {
          endpoints
            | Array
              {
                plugins
                  | Array String
                  | doc "Array of plugins which use the target baseUrl."
                  | optional,
                target
                  | std.contract.any_of
                    [
                      {
                        external | String | optional,
                        internal | String | optional,
                        ..
                      },
                      String
                    ]
                  | doc m%"
                    The target baseUrl to use for the plugin
                    
                    Can be either a string or an object with internal and external keys.
                    Targets with `{{pluginId}}` or `{{ pluginId }} in the url will be replaced with the pluginId.
                  "%
                  | optional,
                ..
              }
            | doc m%"
              Endpoints
              
              A list of target baseUrls and the associated plugins.
            "%
            | optional,
          ..
        }
        | doc "Discovery options."
        | optional,
      dynatrace
        | { baseUrl | String | doc "base url for links" | optional, .. }
        | doc "dynatrace config"
        | optional,
      enableExperimentalRedirectFlow
        | Bool
        | doc "Enable redirect authentication flow type, instead of a popup for authentication."
        | optional,
      events
        | {
          http
            | {
              topics
                | Array String
                | doc m%"
                  Topics for which a route has to be registered
                  at which we can receive events via HTTP POST requests
                  (i.e. received from webhooks).
                "%
                | optional,
              ..
            }
            | optional,
          modules
            | {
              awsSqs
                | {
                  awsSqsConsumingEventPublisher
                    | {
                      topics
                        | {
                          _ | {
                            queue
                              | {
                                region
                                  | String
                                  | doc "(Required) The region of the AWS SQS queue."
                                  | optional,
                                url
                                  | String
                                  | doc "(Required) The absolute URL for the AWS SQS queue to be used."
                                  | optional,
                                visibilityTimeout
                                  | std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ]
                                  | doc "(Optional) Visibility timeout for messages in flight."
                                  | optional,
                                waitTime
                                  | std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ]
                                  | doc m%"
                                    (Optional) Wait time when polling for available messages.
                                    Default: 20 seconds.
                                  "%
                                  | optional,
                                ..
                              }
                              | doc "(Required) Queue-related configuration."
                              | optional,
                            timeout
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]
                              | doc m%"
                                (Optional) Timeout for the task execution which includes polling for messages
                                and publishing the events to the event broker
                                and the wait time after empty receives.
                                
                                Must be greater than `queue.waitTime` + `waitTimeAfterEmptyReceive`.
                              "%
                              | optional,
                            waitTimeAfterEmptyReceive
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]
                              | doc m%"
                                (Optional) Wait time before polling again if no message was received.
                                Default: 1 minute.
                              "%
                              | optional,
                            ..
                          }
                        }
                        | doc m%"
                          Contains a record per topic for which an AWS SQS queue
                          should be used as source of events.
                        "%
                        | optional,
                      ..
                    }
                    | doc "Configuration for AwsSqsConsumingEventPublisher."
                    | optional,
                  ..
                }
                | doc "events-backend-module-aws-sqs plugin configuration."
                | optional,
              github
                | {
                  webhookSecret
                    | String
                    | doc m%"
                      Secret token for webhook requests used to verify signatures.
                      
                      See https://docs.github.com/en/developers/webhooks-and-events/webhooks/securing-your-webhooks
                      for more details.
                    "%
                    | optional,
                  ..
                }
                | doc "events-backend-module-github plugin configuration."
                | optional,
              gitlab
                | {
                  webhookSecret
                    | String
                    | doc m%"
                      Secret token for webhook requests used to verify tokens.
                      
                      See https://docs.gitlab.com/ee/user/project/integrations/webhooks.html#validate-payloads-by-using-a-secret-token
                      for more details.
                    "%
                    | optional,
                  ..
                }
                | doc "events-backend-module-gitlab plugin configuration."
                | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      explore
        | {
          tools
            | Array
              {
                description | String | optional,
                image | String | optional,
                lifecycle | String | optional,
                tags | Array String | optional,
                title | String | optional,
                url | String | optional,
                ..
              }
            | doc "Tools to be used for the explore tool provider."
            | optional,
          ..
        }
        | optional,
      firehydrant | { baseUrl | String | optional, .. } | optional,
      fossa
        | {
          externalLinkBaseUrl
            | String
            | doc "The base url to use for external links (from Backstage to Fossa)."
            | optional,
          organizationId
            | String
            | doc "The organization id in fossa."
            | optional,
          ..
        }
        | optional,
      gocd
        | {
          baseUrl
            | String
            | doc "The base url of the GoCD installation."
            | optional,
          ..
        }
        | doc "Configurations for the GoCD plugin"
        | optional,
      homepage
        | {
          clocks
            | Array
              { label | String | optional, timezone | String | optional, .. }
            | optional,
          ..
        }
        | doc "This config was used by the HomepageTimer but has been replaced  by the HeaderWorldClock in the home plugin"
        | optional,
      ilert
        | {
          baseUrl
            | String
            | doc m%"
              Domain used by users to access iLert web UI.
              Example: https://my-app.ilert.com/
            "%
            | optional,
          proxyPath
            | String
            | doc "Path to use for requests via the proxy, defaults to /ilert/api"
            | optional,
          ..
        }
        | optional,
      integrations
        | {
          awsS3
            | Array
              {
                accessKeyId
                  | String
                  | doc "Account access key used to authenticate requests."
                  | optional,
                endpoint
                  | String
                  | doc m%"
                    AWS Endpoint.
                    The endpoint URI to send requests to. The default endpoint is built from the configured region.
                  "%
                  | optional,
                externalId
                  | String
                  | doc "External ID to use when assuming role"
                  | optional,
                roleArn
                  | String
                  | doc "ARN of the role to be assumed"
                  | optional,
                s3ForcePathStyle
                  | Bool
                  | doc m%"
                    Whether to use path style URLs when communicating with S3.
                    Defaults to false.
                    This allows providers like LocalStack, Minio and Wasabi (and possibly others) to be used.
                  "%
                  | optional,
                secretAccessKey
                  | String
                  | doc "Account secret key used to authenticate requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for AWS S3 Service"
            | optional,
          azure
            | Array
              {
                credential
                  | {
                    clientId | String | optional,
                    clientSecret | String | optional,
                    personalAccessToken | String | optional,
                    tenantId | String | optional,
                    ..
                  }
                  | doc m%"
                    The credential to use for requests.
                    
                    If no credential is specified anonymous access is used.
                  "%
                  | optional,
                credentials
                  | Array
                    {
                      clientId | String | optional,
                      clientSecret | String | optional,
                      personalAccessToken | String | optional,
                      tenantId | String | optional,
                      ..
                    }
                  | doc m%"
                    The credentials to use for requests. If multiple credentials are specified the first one that matches the organization is used.
                    If not organization matches the first credential without an organization is used.
                    
                    If no credentials are specified at all, either a default credential (for Azure DevOps) or anonymous access (for Azure DevOps Server) is used.
                  "%
                  | optional,
                host
                  | String
                  | doc "The hostname of the given Azure instance"
                  | optional,
                token
                  | String
                  | doc "Token used to authenticate requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for Azure"
            | optional,
          bitbucket
            | Array
              {
                apiBaseUrl
                  | String
                  | doc "The base url for the Bitbucket API, for example https://api.bitbucket.org/2.0"
                  | optional,
                appPassword
                  | String
                  | doc "Bitbucket app password used to authenticate requests."
                  | optional,
                host
                  | String
                  | doc "The hostname of the given Bitbucket instance"
                  | optional,
                token
                  | String
                  | doc "Token used to authenticate requests."
                  | optional,
                username
                  | String
                  | doc "The username to use for authenticated requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for Bitbucket"
            | optional,
          bitbucketCloud
            | Array
              {
                appPassword
                  | String
                  | doc "Bitbucket Cloud app password used to authenticate requests."
                  | optional,
                username
                  | String
                  | doc "The username to use for authenticated requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for Bitbucket Cloud"
            | optional,
          bitbucketServer
            | Array
              {
                apiBaseUrl
                  | String
                  | doc "The base url for the Bitbucket Server API, for example https://<host>/rest/api/1.0"
                  | optional,
                host
                  | String
                  | doc "The hostname of the given Bitbucket Server instance"
                  | optional,
                password
                  | String
                  | doc "Password (or token as password) used to authenticate requests with Basic Auth."
                  | optional,
                token
                  | String
                  | doc "Token used to authenticate requests."
                  | optional,
                username
                  | String
                  | doc "Username used to authenticate requests with Basic Auth."
                  | optional,
                ..
              }
            | doc "Integration configuration for Bitbucket Server"
            | optional,
          gerrit
            | Array
              {
                baseUrl
                  | String
                  | doc "The base url for the Gerrit instance."
                  | optional,
                cloneUrl
                  | String
                  | doc "The base url for cloning repos."
                  | optional,
                host
                  | String
                  | doc "The hostname of the given Gerrit instance"
                  | optional,
                password
                  | String
                  | doc m%"
                    Gerrit password used to authenticate requests. This can be either a password
                    or a generated access token.
                  "%
                  | optional,
                username
                  | String
                  | doc "The username to use for authenticated requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for Gerrit"
            | optional,
          gitea
            | Array
              {
                baseUrl
                  | String
                  | doc "The base url for the Gitea instance."
                  | optional,
                host
                  | String
                  | doc "The hostname of the given Gitea instance"
                  | optional,
                password
                  | String
                  | doc m%"
                    Gitea password used to authenticate requests. This can be either a password
                    or a generated access token.
                  "%
                  | optional,
                username
                  | String
                  | doc "The username to use for authenticated requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for Gitea"
            | optional,
          github
            | Array
              {
                apiBaseUrl
                  | String
                  | doc "The base url for the GitHub API, for example https://api.github.com"
                  | optional,
                apps
                  | Array
                    {
                      allowedInstallationOwners
                        | Array String
                        | doc m%"
                          List of installation owners allowed to be used by this GitHub app. The GitHub UI does not provide a way to list the installations.
                          However you can list the installations with the GitHub API. You can find the list of installations here:
                          https://api.github.com/app/installations
                          The relevant documentation for this is here.
                          https://docs.github.com/en/rest/reference/apps#list-installations-for-the-authenticated-app--code-samples
                        "%
                        | optional,
                      appId
                        | std.contract.any_of [ Number, String ]
                        | doc "The numeric GitHub App ID, string for environment variables"
                        | optional,
                      clientId | String | doc "The client ID to use" | optional,
                      clientSecret
                        | String
                        | doc "The client secret to use"
                        | optional,
                      privateKey
                        | String
                        | doc "The private key to use for auth against the app"
                        | optional,
                      webhookSecret
                        | String
                        | doc "The secret used for webhooks"
                        | optional,
                      ..
                    }
                  | doc "GitHub Apps configuration"
                  | optional,
                host
                  | String
                  | doc "The hostname of the given GitHub instance"
                  | optional,
                rawBaseUrl
                  | String
                  | doc "The base url for GitHub raw resources, for example https://raw.githubusercontent.com"
                  | optional,
                token
                  | String
                  | doc "Token used to authenticate requests."
                  | optional,
                ..
              }
            | doc "Integration configuration for GitHub"
            | optional,
          gitlab
            | Array
              {
                apiBaseUrl
                  | String
                  | doc m%"
                    The base URL of the API of this provider, e.g.
                    "https://gitlab.com/api/v4", with no trailing slash.
                    
                    May be omitted specifically for public GitLab; then it will be deduced.
                  "%
                  | optional,
                baseUrl
                  | String
                  | doc m%"
                    The baseUrl of this provider, e.g. "https://gitlab.com", which is
                    passed into the GitLab client.
                    
                    If no baseUrl is provided, it will default to https://${host}.
                  "%
                  | optional,
                host
                  | String
                  | doc "The host of the target that this matches on, e.g. \"gitlab.com\"."
                  | optional,
                token
                  | String
                  | doc m%"
                    The authorization token to use for requests to this provider.
                    
                    If no token is specified, anonymous access is used.
                  "%
                  | optional,
                ..
              }
            | doc "Integration configuration for GitLab"
            | optional,
          googleGcs
            | {
              clientEmail
                | String
                | doc "Service account email used to authenticate requests."
                | optional,
              privateKey
                | String
                | doc "Service account private key used to authenticate requests."
                | optional,
              ..
            }
            | doc "Integration configuration for Google Cloud Storage"
            | optional,
          ..
        }
        | doc "Configuration for integrations towards various external repository provider systems"
        | optional,
      jenkins
        | {
          apiKey
            | String
            | doc "Default Instance apiKey, can be specified on a named instance called \"default\""
            | optional,
          baseUrl
            | String
            | doc "Default instance baseUrl, can be specified on a named instance called \"default\""
            | optional,
          instances
            | Array
              {
                apiKey | String | optional,
                baseUrl | String | optional,
                extraRequestHeaders
                  | js2n.record.Record
                    {
                      additional = 'Some String,
                      patterns = {},
                      properties =
                        { Authorization = String, authorization = String, },
                      required = {},
                    }
                  | optional,
                name
                  | String
                  | doc m%"
                    Name of the instance, this will be used in an annotation on catalog entities to refer to jobs on this instance.
                    
                    Use a name of "default" to specify the jenkins instance details if the annotation doesn't explicitly name an
                    instance.
                  "%
                  | optional,
                username | String | optional,
                ..
              }
            | optional,
          username
            | String
            | doc "Default instance username, can be specified on a named instance called \"default\""
            | optional,
          ..
        }
        | optional,
      kafka
        | {
          clientId
            | String
            | doc "Client ID used to Backstage uses to identify when connecting to the Kafka cluster."
            | optional,
          clusters
            | Array
              {
                brokers
                  | Array String
                  | doc "List of brokers in the Kafka cluster to connect to."
                  | optional,
                dashboardUrl | String | doc "Cluster dashboard url" | optional,
                name | String | doc "Cluster name" | optional,
                sasl
                  | {
                    mechanism
                      | std.enum.TagOrString
                      | [| 'scram-sha-512, 'scram-sha-256, 'plain |]
                      | optional,
                    password | String | optional,
                    username | String | optional,
                    ..
                  }
                  | doc "Optional SASL connection parameters."
                  | optional,
                ssl
                  | std.contract.any_of
                    [
                      {
                        ca | Array String | optional,
                        cert | String | optional,
                        key | String | optional,
                        rejectUnauthorized | Bool | optional,
                        ..
                      },
                      Bool
                    ]
                  | doc m%"
                    Optional SSL connection parameters to connect to the cluster. Passed directly to Node tls.connect.
                    See https://nodejs.org/dist/latest-v8.x/docs/api/tls.html#tls_tls_createsecurecontext_options
                  "%
                  | optional,
                ..
              }
            | optional,
          ..
        }
        | optional,
      kubernetes
        | {
          apiVersionOverrides
            | js2n.record.Record
              {
                additional = 'Some String,
                patterns = {},
                properties =
                  {
                      configmaps = String,
                      cronjobs = String,
                      customresources = String,
                      daemonsets = String,
                      deployments = String,
                      horizontalpodautoscalers = String,
                      ingresses = String,
                      jobs = String,
                      limitranges = String,
                      pods = String,
                      replicasets = String,
                      services = String,
                      statefulsets = String,
                    },
                required = {},
              }
            | doc m%"
              (Optional) API Version Overrides
              If set, the specified api version will be used to make requests for the corresponding object.
              If running a legacy Kubernetes version, you may use this to override the default api versions
              that are not supported in your cluster.
            "%
            | optional,
          clusterLocatorMethods
            | Array (
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            clusters =
                              js2n.array.ArrayOf
                                  (js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            authProvider =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'serviceAccount,
                                                      'oidc,
                                                      'googleServiceAccount,
                                                      'google,
                                                      'azure,
                                                      'aws
                                                    |]
                                                  ],
                                            caData = String,
                                            caFile = String,
                                            name = String,
                                            oidcTokenProvider = String,
                                            serviceAccountToken = String,
                                            skipMetricsLookup = Bool,
                                            skipTLSVerify = Bool,
                                            url = String,
                                          },
                                      required = {},
                                    }),
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'config |] ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'catalog |] ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'localKubectlProxy |]
                                  ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            projectId = String,
                            region = String,
                            skipMetricsLookup = Bool,
                            skipTLSVerify = Bool,
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'gke |] ],
                          },
                      required = {},
                    }
                ]
            )
            | optional,
          customResources
            | Array
              {
                apiVersion | String | optional,
                group | String | optional,
                plural | String | optional,
                ..
              }
            | optional,
          objectTypes
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'statefulsets,
                    'services,
                    'replicasets,
                    'pods,
                    'limitranges,
                    'jobs,
                    'ingresses,
                    'horizontalpodautoscalers,
                    'deployments,
                    'daemonsets,
                    'customresources,
                    'cronjobs,
                    'configmaps
                  |]
                ]
            )
            | optional,
          serviceLocatorMethod
            | {
              type
                | std.enum.TagOrString
                | [| 'catalogRelation, 'singleTenant, 'multiTenant |]
                | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      ldap
        | {
          providers
            | Array
              {
                bind
                  | {
                    dn
                      | String
                      | doc m%"
                        The DN of the user to auth as.
                        
                        E.g. "uid=ldap-robot,ou=robots,ou=example,dc=example,dc=net"
                      "%
                      | optional,
                    secret
                      | String
                      | doc "The secret of the user to auth as (its password)."
                      | optional,
                    ..
                  }
                  | doc m%"
                    The settings to use for the bind command. If none are specified,
                    the bind command is not issued.
                  "%
                  | optional,
                groups
                  | {
                    dn
                      | String
                      | doc m%"
                        The DN under which groups are stored.
                        
                        E.g. "ou=people,ou=example,dc=example,dc=net"
                      "%
                      | optional,
                    map
                      | {
                        description
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the metadata.description field of the entity. Defaults to
                            "description".
                          "%
                          | optional,
                        displayName
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.profile.displayName field of the entity. Defaults to
                            "cn".
                          "%
                          | optional,
                        email
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.profile.email field of the entity.
                          "%
                          | optional,
                        memberOf
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the values of
                            the spec.parent field of the entity. Defaults to "memberOf".
                          "%
                          | optional,
                        members
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the values of
                            the spec.children field of the entity. Defaults to "member".
                          "%
                          | optional,
                        name
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the metadata.name field of the entity. Defaults to "cn".
                          "%
                          | optional,
                        picture
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.profile.picture field of the entity.
                          "%
                          | optional,
                        rdn
                          | String
                          | doc m%"
                            The name of the attribute that holds the relative
                            distinguished name of each entry. Defaults to "cn".
                          "%
                          | optional,
                        type
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.type field of the entity. Defaults to "groupType".
                          "%
                          | optional,
                        ..
                      }
                      | doc "Mappings from well known entity fields, to LDAP attribute names"
                      | optional,
                    options
                      | {
                        attributes
                          | std.contract.any_of [ Array String, String ]
                          | optional,
                        derefAliases | Number | optional,
                        filter | String | optional,
                        paged
                          | std.contract.any_of
                            [
                              {
                                pagePause | Bool | optional,
                                pageSize | Number | optional,
                                ..
                              },
                              Bool
                            ]
                          | optional,
                        scope
                          | std.enum.TagOrString
                          | [| 'sub, 'one, 'base |]
                          | optional,
                        sizeLimit | Number | optional,
                        timeLimit | Number | optional,
                        typesOnly | Bool | optional,
                        ..
                      }
                      | doc m%"
                        The search options to use. The default is scope "one" and
                        attributes "*" and "+".
                        
                        It is common to want to specify a filter, to narrow down the set
                        of matching items.
                      "%
                      | optional,
                    set
                      | { _ | Dyn }
                      | doc m%"
                        JSON paths (on a.b.c form) and hard coded values to set on those
                        paths.
                        
                        This can be useful for example if you want to hard code a
                        namespace or similar on the generated entities.
                      "%
                      | optional,
                    ..
                  }
                  | doc "The settings that govern the reading and interpretation of groups."
                  | optional,
                target
                  | String
                  | doc m%"
                    The prefix of the target that this matches on, e.g.
                    "ldaps://ds.example.net", with no trailing slash.
                  "%
                  | optional,
                tls
                  | { rejectUnauthorized | Bool | optional, .. }
                  | doc "TLS settings"
                  | optional,
                users
                  | {
                    dn
                      | String
                      | doc m%"
                        The DN under which users are stored.
                        
                        E.g. "ou=people,ou=example,dc=example,dc=net"
                      "%
                      | optional,
                    map
                      | {
                        description
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the metadata.description field of the entity.
                          "%
                          | optional,
                        displayName
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.profile.displayName field of the entity. Defaults to
                            "cn".
                          "%
                          | optional,
                        email
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.profile.email field of the entity. Defaults to
                            "mail".
                          "%
                          | optional,
                        memberOf
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the values of
                            the spec.memberOf field of the entity. Defaults to "memberOf".
                          "%
                          | optional,
                        name
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the metadata.name field of the entity. Defaults to "uid".
                          "%
                          | optional,
                        picture
                          | String
                          | doc m%"
                            The name of the attribute that shall be used for the value of
                            the spec.profile.picture field of the entity.
                          "%
                          | optional,
                        rdn
                          | String
                          | doc m%"
                            The name of the attribute that holds the relative
                            distinguished name of each entry. Defaults to "uid".
                          "%
                          | optional,
                        ..
                      }
                      | doc "Mappings from well known entity fields, to LDAP attribute names"
                      | optional,
                    options
                      | {
                        attributes
                          | std.contract.any_of [ Array String, String ]
                          | optional,
                        derefAliases | Number | optional,
                        filter | String | optional,
                        paged
                          | std.contract.any_of
                            [
                              {
                                pagePause | Bool | optional,
                                pageSize | Number | optional,
                                ..
                              },
                              Bool
                            ]
                          | optional,
                        scope
                          | std.enum.TagOrString
                          | [| 'sub, 'one, 'base |]
                          | optional,
                        sizeLimit | Number | optional,
                        timeLimit | Number | optional,
                        typesOnly | Bool | optional,
                        ..
                      }
                      | doc m%"
                        The search options to use. The default is scope "one" and
                        attributes "*" and "+".
                        
                        It is common to want to specify a filter, to narrow down the set
                        of matching items.
                      "%
                      | optional,
                    set
                      | { _ | Dyn }
                      | doc m%"
                        JSON paths (on a.b.c form) and hard coded values to set on those
                        paths.
                        
                        This can be useful for example if you want to hard code a
                        namespace or similar on the generated entities.
                      "%
                      | optional,
                    ..
                  }
                  | doc "The settings that govern the reading and interpretation of users."
                  | optional,
                ..
              }
            | doc "The configuration parameters for each single LDAP provider."
            | optional,
          ..
        }
        | doc "LdapOrgEntityProvider / LdapOrgReaderProcessor configuration"
        | optional,
      lighthouse | { baseUrl | String | optional, .. } | optional,
      linguist
        | {
          age
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc "Refresh generated language breakdown"
            | optional,
          batchSize | Number | optional,
          kind | Array String | optional,
          linguistJsOptions
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc "[linguist-js](https://www.npmjs.com/package/linguist-js) options"
            | optional,
          schedule | js2n.Always | optional,
          tagsProcessor
            | {
              bytesThreshold
                | Number
                | doc m%"
                  Determines how many bytes of a language should be in a repo
                  for it to be added as an entity tag. Defaults to 0.
                "%
                | optional,
              cacheTTL
                | std.contract.any_of
                  [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                | doc m%"
                  How long to cache entity languages for in memory. Used to avoid constant db hits during
                  processing. Defaults to 30 minutes.
                "%
                | optional,
              languageMap
                | { _ | String }
                | doc m%"
                  A custom mapping of linguist languages to how they should be rendered as entity tags.
                  If a language is mapped to '' it will not be included as a tag.
                "%
                | optional,
              languageTypes
                | Array String
                | doc m%"
                  The types of linguist languages that should be processed. Can be
                  any of "programming", "data", "markup", "prose". Defaults to ["programming"].
                "%
                | optional,
              ..
            }
            | doc "Options for the tags processor"
            | optional,
          useSourceLocation | Bool | optional,
          ..
        }
        | doc "Configuration options for the linguist plugin"
        | optional,
      nomad
        | {
          addr
            | String
            | doc "The address of the Nomad API. See: https://developer.hashicorp.com/nomad/api-docs#addressing-and-ports"
            | optional,
          token
            | String
            | doc "The token to call the Nomad API with. See: https://developer.hashicorp.com/nomad/api-docs#authentication"
            | optional,
          ..
        }
        | optional,
      opencost
        | {
          baseUrl | String | doc "The base URL for the OpenCost API" | optional,
          ..
        }
        | doc "Configurations for the OpenCost plugin"
        | optional,
      organization
        | {
          name
            | String
            | doc "The name of the organization that the app belongs to."
            | optional,
          ..
        }
        | doc "Configuration that provides information about the organization that the app is for."
        | optional,
      pagerDuty
        | {
          eventsBaseUrl
            | String
            | doc "Optional Events Base URL to override the default."
            | optional,
          ..
        }
        | doc "Configuration for the PagerDuty plugin"
        | optional,
      periskop
        | {
          instances
            | Array
              {
                name
                  | String
                  | doc "The name of the given Periskop instance"
                  | optional,
                url
                  | String
                  | doc "The hostname of the given Periskop instance"
                  | optional,
                ..
              }
            | doc "Integration configuration for the periskop servers"
            | optional,
          ..
        }
        | doc "Configuration options for the periskop plugin"
        | optional,
      permission
        | {
          enabled
            | Bool
            | doc m%"
              Whether authorization is enabled in Backstage. Defaults to false, which means authorization
              requests will be automatically allowed without invoking the authorization policy.
            "%
            | optional,
          ..
        }
        | doc "Configuration options for Backstage permissions and authorization"
        | optional,
      playlist
        | {
          title
            | String
            | doc "(Optional) The title that will shown in the UI; Defaults to`Playlist` if undefined."
            | optional,
          ..
        }
        | optional,
      proxy
        | {
          endpoints
            | {
              _ | std.contract.any_of
                [
                  {
                    allowedHeaders
                      | Array String
                      | doc m%"
                        Limit the forwarded HTTP methods. By default, only the headers that are considered safe for CORS
                        and headers that are set by the proxy will be forwarded.
                      "%
                      | optional,
                    allowedMethods
                      | Array String
                      | doc "Limit the forwarded HTTP methods, for example allowedMethods: ['GET'] to enforce read-only access."
                      | optional,
                    changeOrigin
                      | Bool
                      | doc "Changes the origin of the host header to the target URL. Default: true."
                      | optional,
                    headers
                      | js2n.record.Record
                        {
                          additional = 'Some String,
                          patterns = {},
                          properties =
                            {
                                Authorization = String,
                                X-Api-Key = String,
                                authorization = String,
                                x-api-key = String,
                              },
                          required = {},
                        }
                      | doc "Object with extra headers to be added to target requests."
                      | optional,
                    pathRewrite
                      | { _ | String }
                      | doc m%"
                        Rewrite target's url path. Object-keys will be used as RegExp to match paths.
                        If pathRewrite is not specified, it is set to a single rewrite that removes the entire prefix and route.
                      "%
                      | optional,
                    target
                      | String
                      | doc "Target of the proxy. Url string to be parsed with the url module."
                      | optional,
                    ..
                  },
                  String
                ]
            }
            | doc m%"
              A list of forwarding-proxies. Each key is a route to match,
              below the prefix that the proxy plugin is mounted on. It must
              start with a '/'.
            "%
            | optional,
          reviveConsumedRequestBodies
            | Bool
            | doc "Revive request bodies that have already been consumed by earlier middleware."
            | optional,
          skipInvalidProxies
            | Bool
            | doc "Rather than failing to start up, the proxy backend will instead just warn on invalid endpoints."
            | optional,
          ..
        }
        | optional,
      rollbar
        | {
          accountToken
            | String
            | doc "The authentication token for accessing the Rollbar API"
            | optional,
          organization
            | String
            | doc "The Rollbar organization name. This can be omitted by using the `rollbar.com/project-slug` annotation."
            | optional,
          ..
        }
        | doc "Configuration options for the rollbar plugin"
        | optional,
      scaffolder
        | {
          concurrentTasksLimit
            | Number
            | doc m%"
              Sets the number of concurrent tasks that can be run at any given time on the TaskWorker.
              
              Defaults to 10.
              
              Set to 0 to disable task workers altogether.
            "%
            | optional,
          defaultAuthor
            | { email | String | optional, name | String | optional, .. }
            | doc "The commit author info used when new components are created."
            | optional,
          defaultCommitMessage
            | String
            | doc "The commit message used when new components are created."
            | optional,
          ..
        }
        | doc "Configuration options for the scaffolder plugin"
        | optional,
      scorecards
        | {
          jsonDataUrl
            | String
            | doc "The public absolute root URL with json file defining the score card entries."
            | optional,
          wikiLinkTemplate
            | String
            | doc "The template for the link to the wiki, e.g. \"https://TBD/XXX/_wiki/wikis/XXX.wiki/{id}\""
            | optional,
          ..
        }
        | doc "Extra configuration for score card plugin"
        | optional,
      search
        | {
          collators
            | {
              catalog
                | {
                  batchSize
                    | Number
                    | doc m%"
                      The number of entities to process at a time. Keep this at a
                      reasonable number to avoid overloading either the catalog or the
                      search backend.
                      
                      Defaults to 500
                    "%
                    | optional,
                  filter
                    | {  .. }
                    | doc m%"
                      A filter expression passed to the catalog client, to select what
                      entities to collate.
                      
                      Defaults to no filter, ie indexing all entities.
                    "%
                    | optional,
                  locationTemplate
                    | String
                    | doc m%"
                      A templating string with placeholders, to form the final location of
                      the entity.
                      
                      Defaults to '/catalog/:namespace/:kind/:name'
                    "%
                    | optional,
                  schedule
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                    | doc "The schedule for how often to run the collation job."
                    | optional,
                  ..
                }
                | doc "Configuration options for `@backstage/plugin-search-backend-module-catalog`"
                | optional,
              explore
                | {
                  schedule
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                    | doc "The schedule for how often to run the collation job."
                    | optional,
                  ..
                }
                | doc "Configuration options for `@backstage/plugin-search-backend-module-explore`"
                | optional,
              techdocs
                | {
                  legacyPathCasing
                    | Bool
                    | doc "Defaults to `false`."
                    | optional,
                  locationTemplate
                    | String
                    | doc m%"
                      A templating string with placeholders, to form the final location of
                      the entity.
                      
                      Defaults to `'/docs/:namespace/:kind/:name/:path'`.
                    "%
                    | optional,
                  parallelismLimit
                    | Number
                    | doc m%"
                      An abstract value that controls the concurrency level of the
                      collation process. Increasing this value will both increase the
                      number of entities fetched at a time from the catalog, as well as how
                      many things are being processed concurrently.
                      
                      Defaults to `10`.
                    "%
                    | optional,
                  schedule
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                    | doc "The schedule for how often to run the collation job."
                    | optional,
                  ..
                }
                | doc "Configuration options for `@backstage/plugin-search-backend-module-techdocs`"
                | optional,
              ..
            }
            | optional,
          elasticsearch
            | {
              batchSize
                | Number
                | doc "Batch size for elastic search indexing tasks. Defaults to 1000."
                | optional,
              clientOptions
                | std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              auth =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            password = String,
                                            username = String,
                                          },
                                      required = {},
                                    },
                              cloudId = String,
                              provider =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'elastic |] ],
                              ssl =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { rejectUnauthorized = Bool, },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              node = String,
                              provider =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'aws |] ],
                              ssl =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { rejectUnauthorized = Bool, },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              auth =
                                std.contract.any_of
                                    [
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                password = String,
                                                username = String,
                                              },
                                          required = {},
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties = { apiKey = String, },
                                          required = {},
                                        }
                                    ],
                              node =
                                std.contract.any_of
                                    [ js2n.array.ArrayOf String, String ],
                              ssl =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { rejectUnauthorized = Bool, },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              auth =
                                std.contract.any_of
                                    [
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                password = String,
                                                username = String,
                                              },
                                          required = {},
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties = { apiKey = String, },
                                          required = {},
                                        }
                                    ],
                              node =
                                std.contract.any_of
                                    [ js2n.array.ArrayOf String, String ],
                              provider =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'opensearch |] ],
                              ssl =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        { rejectUnauthorized = Bool, },
                                      required = {},
                                    },
                            },
                        required = {},
                      }
                  ]
                | doc "Miscellaneous options for the client"
                | optional,
              highlightOptions
                | {
                  fragmentDelimiter
                    | String
                    | doc "Delimiter string used to concatenate fragments. Defaults to \" ... \"."
                    | optional,
                  fragmentSize
                    | Number
                    | doc "The size of the highlighted fragment in characters. Defaults to 1000."
                    | optional,
                  numFragments
                    | Number
                    | doc "Number of result fragments to extract. Fragments will be concatenated with `fragmentDelimiter`. Defaults to 1."
                    | optional,
                  ..
                }
                | doc m%"
                  Options for configuring highlight settings
                  See https://www.elastic.co/guide/en/elasticsearch/reference/7.17/highlighting.html
                "%
                | optional,
              indexTemplates
                | Array
                  {
                    body
                      | {
                        composed_of
                          | Array String
                          | doc m%"
                            An ordered list of component template names.
                            Component templates are merged in the order specified,
                            meaning that the last component template specified has the highest precedence.
                          "%
                          | optional,
                        index_patterns
                          | Array String
                          | doc "Array of wildcard (*) expressions used to match the names of data streams and indices during creation."
                          | optional,
                        template
                          | { _ | Dyn }
                          | doc m%"
                            See available properties of template
                            https://www.elastic.co/guide/en/elasticsearch/reference/7.15/indices-put-template.html#put-index-template-api-request-body
                          "%
                          | optional,
                        ..
                      }
                      | optional,
                    name | String | optional,
                    ..
                  }
                | doc "Elasticsearch specific index template bodies"
                | optional,
              ..
            }
            | doc "Options for ElasticSearch"
            | optional,
          maxPageLimit
            | Number
            | doc "Sets the maximum max page limit size. Defaults to 100."
            | optional,
          permissions
            | {
              queryLatencyBudgetMs
                | Number
                | doc m%"
                  Limits the amount of time the search backend will spend retrieving and
                  authorizing results from the search engine when permissions are
                  enabled. When the latency of the query endpoint reaches this threshold,
                  the results obtained up until that point will be returned, even if the
                  page is incomplete.
                  
                  This limit is only expected to be hit for broad queries from users with
                  extremely restrictive visibility, or for very high page offsets.
                "%
                | optional,
              ..
            }
            | doc "Options related to the search integration with the Backstage permissions system"
            | optional,
          pg
            | {
              highlightOptions
                | {
                  fragmentDelimiter
                    | String
                    | doc "Delimiter string used to concatenate fragments. Defaults to \" ... \"."
                    | optional,
                  highlightAll
                    | Bool
                    | doc "If true the whole document will be used as the headline, ignoring the preceding three parameters. The default is false."
                    | optional,
                  maxFragments
                    | Number
                    | doc m%"
                      Maximum number of text fragments to display. The default value of zero selects a non-fragment-based headline generation method.
                      A value greater than zero selects fragment-based headline generation (see the linked documentation above for more details).
                    "%
                    | optional,
                  maxWords
                    | Number
                    | doc "Used to set the longest headlines to output. The default value is 35."
                    | optional,
                  minWords
                    | Number
                    | doc "Used to set the shortest headlines to output. The default value is 15."
                    | optional,
                  shortWord
                    | Number
                    | doc m%"
                      Words of this length or less will be dropped at the start and end of a headline, unless they are query terms.
                      The default value of three (3) eliminates common English articles.
                    "%
                    | optional,
                  useHighlight
                    | Bool
                    | doc "Used to enable to disable the highlight feature. The default value is true"
                    | optional,
                  ..
                }
                | doc m%"
                  Options for configuring highlight settings
                  See https://www.postgresql.org/docs/current/textsearch-controls.html#TEXTSEARCH-HEADLINE
                "%
                | optional,
              indexerBatchSize
                | Number
                | doc "Batch size to use when indexing"
                | optional,
              ..
            }
            | doc "Options for PG"
            | optional,
          query
            | {
              pageLimit
                | js2n.Enum [ 10, 100, 25, 50 ]
                | doc m%"
                  A number indicating the maximum number of results to be returned
                  per page during pagination.
                "%
                | optional,
              ..
            }
            | doc m%"
              An object representing the default search query configuration.
              By configuring and modifying the values of this object,
              you can customize the default values of the search queries
              and define how it behaves by default.
            "%
            | optional,
          ..
        }
        | doc "Configuration options for the search plugin"
        | optional,
      sentry
        | {
          organization | String | doc "The 'organization' attribute" | optional,
          ..
        }
        | doc "Configuration options for the sentry plugin"
        | optional,
      sonarqube
        | {
          apiKey
            | String
            | doc "The api key to access the sonarqube instance under baseUrl."
            | optional,
          baseUrl
            | String
            | doc "The base url of the sonarqube installation. Defaults to https://sonarcloud.io."
            | optional,
          externalBaseUrl
            | String
            | doc m%"
              The external url of the sonarqube installation.
              Use this if you want to use a different url for the frontend than the backend.
            "%
            | optional,
          instances
            | Array
              {
                apiKey
                  | String
                  | doc "The api key to access the sonarqube instance."
                  | optional,
                baseUrl
                  | String
                  | doc "The base url of the sonarqube instance."
                  | optional,
                externalBaseUrl
                  | String
                  | doc m%"
                    The external url of the sonarqube instance.
                    Use this if you want to use a different url for the frontend than the backend.
                  "%
                  | optional,
                name
                  | String
                  | doc "The name of the sonarqube instance."
                  | optional,
                ..
              }
            | doc "The optional sonarqube instances."
            | optional,
          ..
        }
        | doc "Optional configurations for the SonarQube plugin"
        | optional,
      splunkOnCall
        | { eventsRestEndpoint | String | optional, .. }
        | doc "Splunk On Call Plugin specific configs"
        | optional,
      stackoverflow
        | {
          apiAccessToken
            | String
            | doc "The API Access Token to authenticate to Stack Overflow API"
            | optional,
          apiKey
            | String
            | doc "The API key to authenticate to Stack Overflow API"
            | optional,
          baseUrl
            | String
            | doc "The base url of the Stack Overflow API used for the plugin"
            | optional,
          teamName
            | String
            | doc "The name of the team for a Stack Overflow for Teams account"
            | optional,
          ..
        }
        | doc "Configuration options for the stack overflow plugin"
        | optional,
      stackstorm
        | {
          webUrl
            | String
            | doc m%"
              StackStorm Web UI url
              Used in links to StackStorm web UI
            "%
            | optional,
          ..
        }
        | optional,
      techdocs
        | {
          builder
            | std.enum.TagOrString
            | [| 'local, 'external |]
            | doc "Documentation building process depends on the builder attr"
            | optional,
          cache
            | {
              readTimeout
                | Number
                | doc m%"
                  The time (in milliseconds) that the TechDocs backend will wait for
                  a cache service to respond before continuing on as though the cached
                  object was not found (e.g. when the cache sercice is unavailable).
                  
                  Defaults to 1000 milliseconds.
                "%
                | optional,
              ttl
                | Number
                | doc m%"
                  The cache time-to-live for TechDocs sites (in milliseconds). Set this
                  to a non-zero value to cache TechDocs sites and assets as they are
                  read from storage.
                  
                  Note: you must also configure `backend.cache` appropriately as well,
                  and to pass a PluginCacheManager instance to TechDocs Backend's
                  createRouter method in your backend.
                "%
                | optional,
              ..
            }
            | optional,
          generator
            | {
              dockerImage
                | String
                | doc "Override the default techdocs docker image"
                | optional,
              mkdocs
                | {
                  defaultPlugins
                    | Array String
                    | doc "List of mkdocs plugins which should be added as default to all mkdocs.yml files."
                    | optional,
                  legacyCopyReadmeMdToIndexMd
                    | Bool
                    | doc m%"
                      (Optional and not recommended) Configures the techdocs generator to
                      attempt to ensure an index.md exists falling back to using <docs-dir>/README.md
                      or README.md in case a default <docs-dir>/index.md is not provided.
                      Note that https://www.mkdocs.org/user-guide/configuration/#edit_uri behavior
                      will be broken in these scenarios.
                    "%
                    | optional,
                  ..
                }
                | doc "Override behavior specific to mkdocs."
                | optional,
              pullImage | Bool | doc "Pull the latest docker image" | optional,
              runIn
                | std.enum.TagOrString
                | [| 'local, 'docker |]
                | doc "Where to run the techdocs (mkdocs) generator"
                | optional,
              ..
            }
            | doc "Techdocs generator information"
            | optional,
          legacyUseCaseSensitiveTripletPaths
            | Bool
            | doc "Allows fallback to case-sensitive triplets in case of migration issues."
            | optional,
          publisher
            | std.contract.any_of
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          local =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties = { publishDirectory = String, },
                                  required = {},
                                },
                          type =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [|
                                    'openStackSwift,
                                    'local,
                                    'googleGcs,
                                    'azureBlobStorage,
                                    'awsS3
                                  |]
                                ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          awsS3 =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        accountId = String,
                                        bucketName = String,
                                        credentials =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      accessKeyId = String,
                                                      roleArn = String,
                                                      secretAccessKey = String,
                                                    },
                                                required = {},
                                              },
                                        endpoint = String,
                                        region = String,
                                        s3ForcePathStyle = Bool,
                                        sse =
                                          std.contract.Sequence
                                              [
                                                std.enum.TagOrString,
                                                [| '"aws:kms", 'AES256 |]
                                              ],
                                      },
                                  required = {},
                                },
                          type =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'awsS3 |] ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          openStackSwift =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        authUrl = String,
                                        containerName = String,
                                        credentials =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      id = String,
                                                      secret = String,
                                                    },
                                                required = {},
                                              },
                                        swiftUrl = String,
                                      },
                                  required = {},
                                },
                          type =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'openStackSwift |] ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          azureBlobStorage =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        connectionString = String,
                                        containerName = String,
                                        credentials =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      accountKey = String,
                                                      accountName = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          type =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'azureBlobStorage |]
                                ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          googleGcs =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        bucketName = String,
                                        credentials = String,
                                        projectId = String,
                                      },
                                  required = {},
                                },
                          type =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'googleGcs |] ],
                        },
                    required = {},
                  }
              ]
            | doc "Techdocs publisher information"
            | optional,
          sanitizer
            | {
              allowedIframeHosts
                | Array String
                | doc m%"
                  Allows iframe tag only for listed hosts
                  Example:
                   allowedIframeHosts: ["example.com"]
                   this will allow all iframes with the host `example.com` in the src attribute
                "%
                | optional,
              ..
            }
            | optional,
          ..
        }
        | doc "Configuration options for the techdocs plugin"
        | optional,
      travisci
        | {
          baseUrl
            | String
            | doc m%"
              The 'baseUrl' attribute. It should point to the address of the travis portal.
              If not provided, frontend plugin will use 'https://travis-ci.com/'
            "%
            | optional,
          ..
        }
        | doc "Configuration options for the travisci plugin"
        | optional,
      vault
        | {
          baseUrl
            | String
            | doc "The baseUrl for your Vault instance."
            | optional,
          kvVersion
            | js2n.Enum [ 1, 2 ]
            | doc "The version of the K/V API. Defaults to `2`."
            | optional,
          publicUrl
            | String
            | doc "The publicUrl for your Vault instance (Optional)."
            | optional,
          secretEngine
            | String
            | doc "The secret engine name where in vault. Defaults to `secrets`."
            | optional,
          token
            | String
            | doc "The token used by Backstage to access Vault."
            | optional,
          ..
        }
        | optional,
      ..
    }