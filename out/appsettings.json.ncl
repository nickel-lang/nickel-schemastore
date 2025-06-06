# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ElmahIo" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                ApiKey
                  | js2n.string.Matches "^([0-9a-f]{32})|(#\\{.*\\}#?)$"
                  | doc "An elmah.io API key with the Messages | Write permission.",
                Application
                  | String
                  | doc "An application name to put on all error messages."
                  | optional,
                HandledStatusCodesToLog
                  | Array std.number.Integer
                  | doc "A list of HTTP status codes (besides 404) to log even though no exception is thrown."
                  | optional,
                HeartbeatId
                  | js2n.string.Matches "^([0-9a-f]{32})|(#\\{.*\\}#?)$"
                  | doc "The Id of the elmah.io heartbeat to notify."
                  | optional,
                LogId
                  | js2n.string.Matches
                    "^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(#\\{.*\\}#?)$"
                  | doc "The Id of the elmah.io log to store messages in.",
                TreatLoggingAsBreadcrumbs
                  | Bool
                  | doc "Include log messages from Microsoft.Extensions.Logging as breadcrumbs."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.NLog" =
        {
            autoReload
              | Bool
              | doc "Automatically reload the NLog configuration when notified that appsettings.json file has changed."
              | optional,
            autoShutdown
              | Bool
              | doc "Automatically call `LogFactory.Shutdown` on AppDomain.Unload or AppDomain.ProcessExit"
              | optional,
            extensions
              | Array
                {
                  assembly
                    | String
                    | doc "Assembly Name of the NLog extension package."
                    | optional,
                  assemblyFile
                    | String
                    | doc "Absolute filepath to the Assembly-file of the NLog extension package."
                    | optional,
                  prefix
                    | String
                    | doc "Appends prefix to all type-names loaded from the assembly"
                    | optional,
                  ..
                }
              | doc "Load NLog extension packages for additional targets and layouts"
              | optional,
            globalThreshold
              | std.enum.TagOrString
              | [| 'Off, 'Fatal, 'Error, 'Warn, 'Info, 'Debug, 'Trace |]
              | doc "Log events below this threshold are not logged."
              | optional,
            internalLogFile
              | String
              | doc "Write internal log to the specified filepath"
              | optional,
            internalLogLevel
              | std.enum.TagOrString
              | [| 'Off, 'Fatal, 'Error, 'Warn, 'Info, 'Debug, 'Trace |]
              | doc "The minimal log level for the internal logger."
              | optional,
            internalLogToConsole
              | Bool
              | doc "Write internal log to a console"
              | optional,
            internalLogToConsoleError
              | Bool
              | doc "Write internal log to a console with error stream"
              | optional,
            rules
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.NLogRulesItem", { _ | Dyn } ]
                  ),
                  std.contract.Sequence
                    [
                      js2n.record.PropertyNames
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            js2n.string.Matches "^[0-9]+$",
                            { _ | Dyn },
                            Array Dyn
                          ]),
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns =
                            {
                                ".*" =
                                  std.contract.Sequence
                                      [
                                        refs."definitions.NLogRulesItem",
                                        { _ | Dyn }
                                      ],
                              },
                          properties = {},
                          required = {},
                        }
                    ]
                ]
              | optional,
            targetDefaultWrapper
              | { type | String | doc "", .. }
              | doc "Wrap all defined targets with this custom target wrapper."
              | optional,
            targets
              | {
                async
                  | Bool
                  | doc "Wrap all defined targets using AsyncWrapper with OverflowAction=Discard for better performance."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            throwConfigExceptions
              | js2n.Nullable Bool
              | doc "Throws an exception when there is a config error? If not set, then throwExceptions will be used for this setting."
              | optional,
            throwExceptions
              | Bool
              | doc "Throws an exception when there is an error. For unit testing only and advanced troubleshooting."
              | optional,
            variables
              | js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[A-Za-z0-9_.-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ])
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    { ".*" = std.contract.any_of [ Bool, Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "Key-value pair of variables"
              | optional,
            ..
          },
      "definitions.NLogRulesItem" =
        {
            enabled | Bool | doc "" | optional,
            filterDefaultAction
              | std.enum.TagOrString
              | [| 'IgnoreFinal, 'LogFinal, 'Ignore, 'Log, 'Neutral |]
              | doc "Default action if none of the filters match."
              | optional,
            filters
              | std.contract.any_of
                [
                  Array
                    {
                      action
                        | std.enum.TagOrString
                        | [| 'IgnoreFinal, 'LogFinal, 'Ignore, 'Log, 'Neutral |]
                        | doc "Result action when filter matches logevent."
                        | optional,
                      type | String | doc "",
                      ..
                    },
                  { _ | Dyn }
                ]
              | optional,
            final
              | Bool
              | doc "Ignore further rules if this one matches."
              | optional,
            finalMinLevel
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Fatal, 'Error, 'Warn, 'Info, 'Debug, 'Trace |]
                    ],
                  String
                ]
              | optional,
            level
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Fatal, 'Error, 'Warn, 'Info, 'Debug, 'Trace |]
                    ],
                  String
                ]
              | optional,
            levels
              | String
              | doc "Comma separated list of levels that this rule matches."
              | optional,
            logger
              | String
              | doc "Match Logger objects based on their Logger-name. Can use wildcard characters ('*' or '?').",
            maxLevel
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Fatal, 'Error, 'Warn, 'Info, 'Debug, 'Trace |]
                    ],
                  String
                ]
              | optional,
            minLevel
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Fatal, 'Error, 'Warn, 'Info, 'Debug, 'Trace |]
                    ],
                  String
                ]
              | optional,
            ruleName
              | String
              | doc "Rule identifier to allow rule lookup with Configuration.FindRuleByName and Configuration.RemoveRuleByName."
              | optional,
            writeTo
              | String
              | doc "Name or names of a target - separated by comma. Remove this property for sending events to the blackhole."
              | optional,
            ..
          },
      "definitions.Serilog" =
        js2n.record.Record
            {
              additional = 'None,
              patterns =
                {
                    "^AuditTo:((?<EnvironmentVariableName>[a-zA-Z_]\\w*)|(?<ArrayIndex>\\d*))$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                            std.contract.any_of
                              [ js2n.Null, { _ | Dyn }, String ]
                          ],
                    "^Destructure:((?<EnvironmentVariableName>[a-zA-Z_]\\w*)|(?<ArrayIndex>\\d*))$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                            std.contract.any_of
                              [ js2n.Null, { _ | Dyn }, String ]
                          ],
                    "^Enrich:((?<EnvironmentVariableName>[a-zA-Z_]\\w*)|(?<ArrayIndex>\\d*))$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                            std.contract.any_of
                              [ js2n.Null, { _ | Dyn }, String ]
                          ],
                    "^Filter:((?<EnvironmentVariableName>[a-zA-Z_]\\w*)|(?<ArrayIndex>\\d*))$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                            std.contract.any_of
                              [ js2n.Null, { _ | Dyn }, String ]
                          ],
                    "^WriteTo:((?<EnvironmentVariableName>[a-zA-Z_]\\w*)|(?<ArrayIndex>\\d*))$" =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                            std.contract.any_of
                              [ js2n.Null, { _ | Dyn }, String ]
                          ],
                  },
              properties =
                {
                    "$schema" = String,
                    AuditTo =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReference",
                            std.contract.any_of
                              [ { _ | Dyn }, Array Dyn, String ]
                          ],
                    Destructure =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReference",
                            std.contract.any_of
                              [ { _ | Dyn }, Array Dyn, String ]
                          ],
                    Enrich =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReference",
                            std.contract.any_of
                              [ { _ | Dyn }, Array Dyn, String ]
                          ],
                    Filter =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReference",
                            std.contract.any_of
                              [ { _ | Dyn }, Array Dyn, String ]
                          ],
                    FilterSwitches =
                      std.contract.Sequence
                          [
                            { _ | String },
                            js2n.record.FieldsMatch
                              "^(?<SerilogLevelSwitcherName>\\${0,1}[A-Za-z]+[A-Za-z0-9]*)$"
                          ],
                    LevelSwitches =
                      std.contract.Sequence
                          [
                            {
                              _ | std.contract.Sequence
                                [
                                  refs."definitions.Serilog.definitions.SerilogLogEventLevel",
                                  String
                                ]
                            },
                            js2n.record.FieldsMatch
                              "^(?<SerilogLevelSwitcherName>\\${0,1}[A-Za-z]+[A-Za-z0-9]*)$"
                          ],
                    MinimumLevel =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.Serilog.definitions.SerilogLogEventLevel",
                                String
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.Serilog.definitions.DetailedMinimumLevel",
                                { _ | Dyn }
                              ]
                          ],
                    Properties = { _ | String },
                    Using =
                      std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.Sequence
                                [
                                  refs."definitions.Serilog.definitions.AssemblyReference",
                                  String
                                ]
                            )
                          ],
                    WriteTo =
                      std.contract.Sequence
                          [
                            refs."definitions.Serilog.definitions.MethodCallReference",
                            std.contract.any_of
                              [ { _ | Dyn }, Array Dyn, String ]
                          ],
                  },
              required = {},
            },
      "definitions.Serilog.definitions.AssemblyReference" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              js2n.string.Matches "^(?<AssemblyName>\\S+)$"
            ],
      "definitions.Serilog.definitions.CSharpMethodName" =
        std.contract.Sequence
            [
              js2n.string.MinLength 1,
              js2n.string.Matches "^(?<CSharpMethodName>[a-zA-Z_]\\w*)$"
            ],
      "definitions.Serilog.definitions.ComplexMethodCallReference" =
        {
            Args
              | { _ | js2n.Always }
              | js2n.record.FieldsMatch
                "^(?<CSharpMethodArgumentName>[a-zA-Z_]\\w*)$"
              | optional,
            Name
              | refs."definitions.Serilog.definitions.CSharpMethodName"
              | String,
          },
      "definitions.Serilog.definitions.DetailedMinimumLevel" =
        {
            ControlledBy
              | refs."definitions.Serilog.definitions.LoggingLevelSwitch"
              | String
              | optional,
            Default
              | refs."definitions.Serilog.definitions.SerilogLogLevelThreshold"
              | String
              | optional,
            Override
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.Serilog.definitions.SerilogLogLevelThreshold",
                    String
                  ]
              }
              | doc "Set the Log level threshold or LevelSwitcher reference per Logging Source."
              | optional,
          },
      "definitions.Serilog.definitions.LoggingLevelSwitch" =
        js2n.string.Matches
            "^(?<SerilogLevelSwitcherName>\\${0,1}[A-Za-z]+[A-Za-z0-9]*)$",
      "definitions.Serilog.definitions.MethodCallReference" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  js2n.string.MinLength 1,
                  js2n.string.Matches "^(?<CSharpMethodName>[a-zA-Z_]\\w*)$"
                ],
              {
                _ | std.contract.Sequence
                  [
                    refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                    std.contract.any_of [ js2n.Null, { _ | Dyn }, String ]
                  ]
              },
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.Serilog.definitions.MethodCallReferenceItem",
                        std.contract.any_of [ js2n.Null, { _ | Dyn }, String ]
                      ]
                  )
                ]
            ],
      "definitions.Serilog.definitions.MethodCallReferenceItem" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.Serilog.definitions.CSharpMethodName",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.Serilog.definitions.ComplexMethodCallReference",
                  { _ | Dyn }
                ]
            ],
      "definitions.Serilog.definitions.SerilogLogEventLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Fatal, 'Error, 'Warning, 'Information, 'Debug, 'Verbose |]
            ],
      "definitions.Serilog.definitions.SerilogLogLevelThreshold" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.Serilog.definitions.SerilogLogEventLevel",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.Serilog.definitions.LoggingLevelSwitch",
                  String
                ]
            ],
      "definitions.allowedHosts" = String,
      "definitions.cdn" =
        {
            prefetch
              | Bool
              | doc "If true, injects a <link rel='dns-prefetch'> tag that speeds up DNS resolution to the CDN."
              | optional,
            url
              | js2n.string.Matches "^((//|https?://).+|)$"
              | doc "An absolute URL used as a prefix for static resources"
              | optional,
            ..
          },
      "definitions.certificate" =
        {
            AllowInvalid
              | Bool
              | doc "A value indicating whether or not to load certificates that are considered invalid. Defaults to false."
              | optional,
            KeyPath
              | String
              | doc "The certificate key file path. Available in .NET 5 and later."
              | optional,
            Location
              | std.enum.TagOrString
              | [| 'CurrentUser, 'LocalMachine |]
              | doc "The certificate store location. Defaults to 'CurrentUser'."
              | optional,
            Password
              | String
              | doc "The certificate password used to access the private key."
              | optional,
            Path
              | String
              | doc "The certificate file path. If a file path is specified then the certificate will be loaded from the file system."
              | optional,
            Store
              | String
              | doc "The certificate store name. Defaults to 'My'."
              | optional,
            Subject
              | String
              | doc "The certificate subject. If a subject is specified then the certificate will be loaded from the certificate store."
              | optional,
            ..
          },
      "definitions.clientCertificateMode" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'RequireCertificate, 'AllowCertificate, 'NoCertificate |]
            ],
      "definitions.connectionStrings" = { _ | String },
      "definitions.kestrel" =
        {
            Certificates
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.certificate", { _ | Dyn } ]
              }
              | doc "Certificates that Kestrel uses with HTTPS endpoints. Each certificate has a name specified by its JSON property name. The 'Default' certificate is used by HTTPS endpoints that haven't specified a certificate."
              | optional,
            EndpointDefaults
              | {
                ClientCertificateMode
                  | refs."definitions.clientCertificateMode"
                  | String
                  | optional,
                Protocols | refs."definitions.protocols" | String | optional,
                SslProtocols
                  | refs."definitions.sslProtocols"
                  | Array Dyn
                  | optional,
                ..
              }
              | doc "Default configuration applied to all endpoints. Named endpoint specific configuration overrides defaults."
              | optional,
            Endpoints
              | {
                _ | {
                  Certificate
                    | refs."definitions.certificate"
                    | { _ | Dyn }
                    | optional,
                  ClientCertificateMode
                    | refs."definitions.clientCertificateMode"
                    | String
                    | optional,
                  Protocols | refs."definitions.protocols" | String | optional,
                  Sni
                    | {
                      _ | {
                        Certificate
                          | refs."definitions.certificate"
                          | { _ | Dyn }
                          | optional,
                        ClientCertificateMode
                          | refs."definitions.clientCertificateMode"
                          | String
                          | optional,
                        Protocols
                          | refs."definitions.protocols"
                          | String
                          | optional,
                        SslProtocols
                          | refs."definitions.sslProtocols"
                          | Array Dyn
                          | optional,
                        ..
                      }
                    }
                    | doc "Server Name Indication (SNI) configuration. This enables the mapping of client requested host names to certificates and other TLS settings. Wildcard names prefixed with '*.', as well as a top level '*' are supported. Available in .NET 5 and later."
                    | optional,
                  SslProtocols
                    | refs."definitions.sslProtocols"
                    | Array Dyn
                    | optional,
                  Url
                    | String
                    | doc "The scheme, host name, and port the endpoint will listen on. A Url is required.",
                  ..
                }
              }
              | doc "Endpoints that Kestrel listens to for network requests. Each endpoint has a name specified by its JSON property name."
              | optional,
            ..
          },
      "definitions.logLevel" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.logLevelThreshold", String ]
          },
      "definitions.logLevelThreshold" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'None,
                'Critical,
                'Error,
                'Warning,
                'Information,
                'Debug,
                'Trace
              |]
            ],
      "definitions.logging" =
        js2n.record.Record
            {
              additional =
                'Some
                    {
                      LogLevel
                        | refs."definitions.logLevel"
                        | { _ | Dyn }
                        | optional,
                      ..
                    },
              patterns = {},
              properties =
                {
                    Console =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              FormatterName
                                | String
                                | doc "Name of the log message formatter to use. Defaults to 'simple'."
                                | optional,
                              FormatterOptions
                                | {
                                  IncludeScopes
                                    | Bool
                                    | doc "Include scopes when true. Defaults to false."
                                    | optional,
                                  TimestampFormat
                                    | String
                                    | doc "Format string used to format timestamp in logging messages. Defaults to null."
                                    | optional,
                                  UseUtcTimestamp
                                    | Bool
                                    | doc "Indication whether or not UTC timezone should be used to for timestamps in logging messages. Defaults to false."
                                    | optional,
                                  ..
                                }
                                | doc "Log message formatter options. Additional properties are available on the options depending on the configured formatter. The formatter is specified by FormatterName."
                                | optional,
                              LogLevel
                                | refs."definitions.logLevel"
                                | { _ | Dyn }
                                | optional,
                              LogToStandardErrorThreshold
                                | refs."definitions.logLevelThreshold"
                                | String
                                | doc "The minimum level of messages are written to Console.Error."
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
                    Debug =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              LogLevel
                                | refs."definitions.logLevel"
                                | { _ | Dyn }
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
                    ElmahIo =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              LogLevel
                                | refs."definitions.logLevel"
                                | { _ | Dyn }
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
                    ElmahIoBreadcrumbs =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              LogLevel
                                | refs."definitions.logLevel"
                                | { _ | Dyn }
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
                    EventLog =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              LogLevel
                                | refs."definitions.logLevel"
                                | { _ | Dyn }
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
                    EventSource =
                      std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              LogLevel
                                | refs."definitions.logLevel"
                                | { _ | Dyn }
                                | optional,
                              ..
                            },
                            Array Dyn
                          ],
                    LogLevel =
                      std.contract.Sequence
                          [ refs."definitions.logLevel", { _ | Dyn } ],
                  },
              required = {},
            },
      "definitions.protocols" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Http1AndHttp2AndHttp3,
                'Http3,
                'Http1AndHttp2,
                'Http2,
                'Http1,
                'None
              |]
            ],
      "definitions.pwa" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                cacheId
                  | String
                  | doc "The cache identifier of the service worker (can be any string). Change this property to force the service worker to reload in browsers."
                  | optional,
                offlineRoute
                  | String
                  | doc "The route to the page to show when offline."
                  | optional,
                registerServiceWorker
                  | Bool
                  | doc "Determines if a script that registers the service worker should be injected into the bottom of the HTML page."
                  | optional,
                registerWebmanifest
                  | Bool
                  | doc "Determines if a meta tag that points to the web manifest should be inserted at the end of the head element."
                  | optional,
                routesToPreCache
                  | String
                  | doc "A comma separated list of routes to pre-cache when service worker installs in the browser."
                  | optional,
                strategy
                  | std.enum.TagOrString
                  | [| 'networkFirst, 'minimal, 'cacheFirstSafe, 'cacheFirst |]
                  | doc "Selects one of the predefined service worker types."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.sslProtocols" =
        Array (
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [| 'Tls13, 'Tls12, 'Tls11, 'Tls, 'None |]
              ]
          ),
      "definitions.webOptimizer" =
        {
            enableCaching
              | Bool
              | doc "Determines if the \"cache-control\" HTTP headers should be set and if conditional GET (304) requests should be supported. This could be helpful to disable while in development mode."
              | optional,
            enableTagHelperBundling
              | Bool
              | doc "Determines if `<script>` and `<link>` elements should point to the bundled path or a reference per source file should be created. This is helpful to disable when in development mode."
              | optional,
            ..
          },
    }
    in
  {
      AllowedHosts | refs."definitions.allowedHosts" | optional,
      Cdn | refs."definitions.cdn" | optional,
      ConnectionStrings | refs."definitions.connectionStrings" | optional,
      ElmahIo | refs."definitions.ElmahIo" | optional,
      Elmahio | refs."definitions.ElmahIo" | optional,
      Kestrel | refs."definitions.kestrel" | optional,
      Logging | refs."definitions.logging" | optional,
      NLog | refs."definitions.NLog" | optional,
      Nlog | refs."definitions.NLog" | optional,
      PWA | refs."definitions.pwa" | optional,
      Pwa | refs."definitions.pwa" | optional,
      Serilog | refs."definitions.Serilog" | optional,
      WebOptimizer | refs."definitions.webOptimizer" | optional,
      cdn | refs."definitions.cdn" | optional,
      elmahIo | refs."definitions.ElmahIo" | optional,
      elmahio | refs."definitions.ElmahIo" | optional,
      nlog | refs."definitions.NLog" | optional,
      pwa | refs."definitions.pwa" | optional,
      serilog | refs."definitions.Serilog" | optional,
      webOptimizer | refs."definitions.webOptimizer" | optional,
      weboptimizer | refs."definitions.webOptimizer" | optional,
      ..
    }