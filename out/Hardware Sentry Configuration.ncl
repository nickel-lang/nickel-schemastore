# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.duration" =
        std.contract.any_of
            [
              std.number.Integer,
              js2n.string.Matches
                "^[0-9]+\\s*[years|yrs|y|weeks|wks|w|days|d|hours|hrs|h|minutes|mins|m!seconds|secs|s|milliseconds|ms]*$"
            ],
      "definitions.hardwareProblemTemplate" = String,
      "definitions.hostType" =
        std.contract.any_of
            [
              js2n.string.Matches
                "^lin|^lnx$|^win|^ms.*win|^microsoft.*w|^oob$|^out|^vmware|^mgmt|^management|^esx|^blade|^net|^switch|^sto|^san|vms|tru64|osf|hp.*ux|aix|rs6000|^sun|^ora|sol",
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'vmx,
                    'tru64,
                    'solaris,
                    'hpux,
                    'aix,
                    'storage,
                    'oob,
                    'network,
                    'linux,
                    'win
                  |]
                ]
            ],
      "definitions.keyValuePairVariables" =
        std.contract.Sequence
            [
              js2n.record.PropertyNames
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches "^[A-Za-z0-9_.-]+$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    { ".*" = std.contract.any_of [ Bool, Number, String ], },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.loggerLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'off, 'fatal, 'error, 'warn, 'info, 'debug, 'trace, 'all |]
            ],
      "definitions.namespace" = String,
      "definitions.outputDirectory" = String,
      "definitions.sequential" = Bool,
      "definitions.transportProtocols" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'https, 'http |] ],
    }
    in
  {
      collectPeriod
        | refs."definitions.duration"
        | doc "Sets the collect period that Hardware Sentry uses to collects metrics from the monitored hosts (Default: 2m)."
        | optional,
      disableAlerts
        | Bool
        | doc "Disables Hardware Sentry's alerts for all the monitored hosts (Default: false)."
        | optional,
      discoveryCycle
        | std.number.Integer
        | doc "Sets the cycle that Hardware Sentry uses to perform discoveries and detect new components in your monitored environment. By default, Hardware Sentry runs a discovery after 30 collects."
        | optional,
      exporter
        | {
          otlp
            | js2n.Nullable
              {
                endpoint
                  | String
                  | doc "Configures the OTLP Receiver endpoint (Default: https://localhost:4317)."
                  | optional,
                headers
                  | { _ | Dyn }
                  | doc "Sets Hardware Sentry's OTLP Exporter headers, such as the `Authorization` header used to authenticate the Exporter with the OTLP gRPC Receiver."
                  | optional,
                trustedCertificatesFile
                  | String
                  | doc "Sets Hardware Sentry's OTLP Exporter trusted certificates file (Default: security/otel.crt)."
                  | optional,
                ..
              }
            | doc "Overrides Hardware Sentry's internal OTLP Exporter configuration."
            | optional,
          ..
        }
        | doc "Sets Hardware Sentry's internal Exporter configuration."
        | optional,
      extraLabels
        | refs."definitions.keyValuePairVariables"
        | { _ | Dyn }
        | doc "Adds or overrides the attributes for all the monitored hosts. It is recommended to specify a different `site` label value for each OpenTelemetry Collector running the Hardware Sentry Agent."
        | optional,
      extraMetrics
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
            patterns = { ".*" = Number, },
            properties = {},
            required = {},
          }
        | doc "Adds additional static metrics to be exposed by Hardware Sentry."
        | optional,
      hardwareProblemTemplate
        | refs."definitions.hardwareProblemTemplate"
        | doc "Overrides the default hardware problem template used to build the alert body for all the monitored hosts."
        | optional,
      hosts
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "host" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "hostGroup" ],
                      Array Dyn
                    ]
                ],
              {
                collectPeriod
                  | refs."definitions.duration"
                  | doc "Sets the default collect period that Hardware Sentry uses to collects metrics from the monitored host (Default: 2m)."
                  | optional,
                disableAlerts
                  | Bool
                  | doc "Disables Hardware Sentry's alerts for the monitored host (Default: false)."
                  | optional,
                discoveryCycle
                  | std.number.Integer
                  | doc "Sets the cycle that Hardware Sentry uses to perform discoveries and detect new components for the specific host. By default, Hardware Sentry runs a discovery after 30 collects."
                  | optional,
                excludedConnectors
                  | Array String
                  | doc "Sets the Connector(s) that must be excluded from the automatic detection."
                  | optional,
                extraLabels
                  | refs."definitions.keyValuePairVariables"
                  | { _ | Dyn }
                  | doc "Adds or overrides the attributes of the monitored host."
                  | optional,
                hardwareProblemTemplate
                  | refs."definitions.hardwareProblemTemplate"
                  | doc "Overrides the default hardware problem template used to build the alert body for the monitored host."
                  | optional,
                host
                  | {
                    hostname
                      | String
                      | doc "Configures the hostname of the host to be monitored.",
                    id
                      | String
                      | doc "Configures the identifier of the host to be monitored (Optional). By default, the host identifier is the hostname property value."
                      | optional,
                    type
                      | refs."definitions.hostType"
                      | doc "Configures the type of the host to be monitored.",
                    ..
                  }
                  | doc "Configures a new host to be monitored."
                  | optional,
                hostGroup
                  | {
                    hostnames
                      | std.contract.any_of
                        [
                          Array String,
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    "^[A-Za-z0-9.\\-_:]+$" =
                                      {
                                          extraLabels
                                            | refs."definitions.keyValuePairVariables"
                                            | { _ | Dyn }
                                            | doc "Adds or overrides the attributes of the monitored host."
                                            | optional,
                                          ..
                                        },
                                  },
                              properties = {},
                              required = {},
                            }
                        ]
                      | doc "Configures the hostnames of the hosts to be monitored.",
                    type
                      | refs."definitions.hostType"
                      | doc "Configures the type of the hosts to be monitored.",
                    ..
                  }
                  | doc "Configures several hosts which share the same characteristics."
                  | optional,
                http
                  | {
                    https
                      | Bool
                      | doc "Enables HTTPS to access the host (Default: true)."
                      | optional,
                    password
                      | String
                      | doc "Sets the password used to establish the connection with the host through the HTTP protocol."
                      | optional,
                    port
                      | std.number.Integer
                      | doc "Sets the HTTPS port number used to perform HTTP requests (Default: 443)."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the HTTP request times out (Default: 120s)."
                      | optional,
                    username
                      | String
                      | doc "Sets the username used to establish the connection with the host through the HTTP protocol."
                      | optional,
                    ..
                  }
                  | doc "Configures the HTTP protocol to access the host."
                  | optional,
                ipmi
                  | {
                    password
                      | String
                      | doc "Sets the password used to establish the connection with the host through the IPMI protocol."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the IPMI request times out (Default: 120s)."
                      | optional,
                    username
                      | String
                      | doc "Sets the username used to establish the connection with the host through the IPMI protocol."
                      | optional,
                    ..
                  }
                  | doc "Configures the IPMI protocol to access the host."
                  | optional,
                loggerLevel
                  | refs."definitions.loggerLevel"
                  | doc "Enables the debug mode of the core engine on the specific host (Default: off)."
                  | optional,
                operationTimeout
                  | std.number.Integer
                  | doc "Sets how long until the engine's discovery and collect operations time out."
                  | optional,
                osCommand
                  | {
                    sudoCommand
                      | String
                      | doc "Sets the sudo command to be used for the host to be monitored (Default: sudo)."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the local OS Command times out (Default: 120s)."
                      | optional,
                    useSudo
                      | Bool
                      | doc "Sets if sudo needs to be used for the local OS Command (Default: false)."
                      | optional,
                    useSudoCommands
                      | Array String
                      | doc "Sets the list of commands for which sudo is required."
                      | optional,
                    ..
                  }
                  | doc "Configures the OS Command protocol to access the host."
                  | optional,
                outputDirectory
                  | refs."definitions.outputDirectory"
                  | doc "Sets the debug output directory for the monitored host. By default, the debug output file is saved in the `logs` directory under the Hardware Sentry's home directory."
                  | optional,
                selectedConnectors
                  | Array String
                  | doc "Sets the Connector(s) to use to monitor the host. No automatic detection will be performed."
                  | optional,
                sequential
                  | refs."definitions.sequential"
                  | doc "Forces all the network calls to be executed in sequential order for the monitored host - NOT RECOMMENDED (Default: false)."
                  | optional,
                snmp
                  | {
                    community
                      | String
                      | doc "Sets the SNMP Community string to use to perform SNMP v1 queries (Default: public)."
                      | optional,
                    password
                      | String
                      | doc "SNMP v3 only - Sets the password to use for performing the SNMP query."
                      | optional,
                    port
                      | std.number.Integer
                      | doc "Sets the SNMP port number used to perform SNMP queries (Default: 161)."
                      | optional,
                    privacy
                      | std.enum.TagOrString
                      | [| 'des, 'aes, 'none |]
                      | doc "SNMP v3 only - Sets the type of encryption protocol."
                      | optional,
                    privacyPassword
                      | String
                      | doc "SNMP v3 only - Sets the password associated to the privacy protocol."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the SNMP request times out (Default: 120s)."
                      | optional,
                    username
                      | String
                      | doc "SNMP v3 only - Sets the username to use for performing the SNMP query."
                      | optional,
                    version
                      | std.enum.TagOrString
                      | [| 'v3-sha, 'v3-md5, 'v3-no-auth, 'v2c, 'v1 |]
                      | doc "Sets the version of the SNMP protocol (Default: v1)."
                      | optional,
                    ..
                  }
                  | doc "Configures the SNMP protocol to access the host."
                  | optional,
                ssh
                  | {
                    password
                      | String
                      | doc "Sets the password to use for performing the SSH query."
                      | optional,
                    privateKey
                      | String
                      | doc "Sets the private Key File to use to establish the connection to the host through the SSH protocol."
                      | optional,
                    sudoCommand
                      | String
                      | doc "Sets the sudo command to be used."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the command times out (Default: 120s)."
                      | optional,
                    useSudo
                      | Bool
                      | doc "Sets if sudo needs to be used for the SSH Command (Default: false)."
                      | optional,
                    useSudoCommands
                      | Array String
                      | doc "Sets the list of commands for which sudo is required."
                      | optional,
                    username
                      | String
                      | doc "Sets the username to use for performing the SSH query."
                      | optional,
                    ..
                  }
                  | doc "Configures the SSH protocol to access the host."
                  | optional,
                wbem
                  | {
                    namespace | refs."definitions.namespace" | optional,
                    password
                      | String
                      | doc "Sets the password used to establish the connection with the host through the WBEM protocol."
                      | optional,
                    port
                      | std.number.Integer
                      | doc "Sets the HTTPS port number used to perform WBEM queries (Default: 5989 for HTTPS or 5988 for HTTP)."
                      | optional,
                    protocol
                      | refs."definitions.transportProtocols"
                      | doc "Sets the protocol used to access the host (Default: https)."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the WBEM request times out (Default: 120s)."
                      | optional,
                    username
                      | String
                      | doc "Sets the username used to establish the connection with the host through the WBEM protocol."
                      | optional,
                    ..
                  }
                  | doc "Configures the WBEM protocol to access the host."
                  | optional,
                winrm
                  | {
                    authentications
                      | Array (
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| 'kerberos, 'ntlm |] ]
                      )
                      | doc "Sets an ordered list of authentication schemes (Default: [\"ntlm\"])."
                      | optional,
                    namespace | refs."definitions.namespace" | optional,
                    password
                      | String
                      | doc "Sets the password used to establish the connection with the host through the WinRM protocol."
                      | optional,
                    port
                      | std.number.Integer
                      | doc "Sets the port number used to perform WQL queries and commands (Default: 5985 for HTTP or 5986 for HTTPS)."
                      | optional,
                    protocol
                      | refs."definitions.transportProtocols"
                      | doc "Sets the protocol used to access the host (Default: http)."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the WinRM request times out (Default: 120s)."
                      | optional,
                    username
                      | String
                      | doc "Sets the username used to establish the connection with the host through the WinRM protocol."
                      | optional,
                    ..
                  }
                  | doc "Configures the WinRM protocol to access the host."
                  | optional,
                wmi
                  | {
                    namespace | refs."definitions.namespace" | optional,
                    password
                      | String
                      | doc "Sets the password used to establish the connection with the host through the WMI protocol."
                      | optional,
                    timeout
                      | refs."definitions.duration"
                      | doc "Sets how long until the WMI request times out (Default: 120s)."
                      | optional,
                    username
                      | String
                      | doc "Sets the username used to establish the connection with the host through the WMI protocol."
                      | optional,
                    ..
                  }
                  | doc "Configures the WMI protocol to access the host."
                  | optional,
                ..
              }
            ]
        )
        | doc "Configures the hosts to monitor."
        | optional,
      jobPoolSize
        | std.number.Integer
        | doc "Sets the number of jobs that Hardware Sentry can run simultaneously (Default: 20)."
        | optional,
      loggerLevel
        | refs."definitions.loggerLevel"
        | doc "Enables the debug mode of the core engine (Default: off)."
        | optional,
      otelCollector
        | {
          commandLine
            | Array String
            | doc "Overrides the OpenTelemetry Collector command line."
            | optional,
          disabled
            | Bool
            | doc "Disables the OpenTelemetry Collector (Default: false)."
            | optional,
          environment
            | refs."definitions.keyValuePairVariables"
            | { _ | Dyn }
            | doc "Configures the OpenTelemetry Collector environment variables."
            | optional,
          output
            | std.enum.TagOrString
            | [| 'silent, 'console, 'log |]
            | doc "Configures where to print the OpenTelemetry Collector's output (Default: log)."
            | optional,
          workingDir
            | String
            | doc "Configures the working directory of the OpenTelemetry Collector."
            | optional,
          ..
        }
        | doc "Customizes the OpenTelemetry Collector sub-process."
        | optional,
      outputDirectory
        | refs."definitions.outputDirectory"
        | doc "Sets the debug output directory for all the monitored hosts. By default, the debug output files are saved in the `logs` directory under the Hardware Sentry's home directory."
        | optional,
      resolveHostnameToFqdn
        | Bool
        | doc "Displays the configured hostname in the Host Resource `host.name` attribute instead of the resolved FQDN (Default: false)."
        | optional,
      sequential
        | refs."definitions.sequential"
        | doc "Forces all the network calls to be executed in sequential order for all the monitored hosts - NOT RECOMMENDED (Default: false)."
        | optional,
    }