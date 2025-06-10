# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.collectPeriod" = refs."definitions.duration",
      "definitions.computes" =
        Array (
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
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  column = std.number.Integer,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'subtract,
                                            'multiply,
                                            'divide,
                                            'add
                                          |]
                                        ],
                                  value =
                                    std.contract.any_of [ Number, String ],
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'append, 'prepend, 'and |]
                                        ],
                                  value = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  arraySeparator = String,
                                  column = std.number.Integer,
                                  resultSeparator = String,
                                  translationTable = String,
                                  type = js2n.Const "arrayTranslate",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  exclude = String,
                                  keep = String,
                                  script = String,
                                  selectColumns = String,
                                  separators = String,
                                  type = js2n.Const "awk",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  conversion =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'array2SimpleStatus, 'hex2Dec |]
                                        ],
                                  type = js2n.Const "convert",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  type = js2n.Const "duplicateColumn",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  regExp = String,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'keepOnlyMatchingLines,
                                            'excludeOnlyMatchingLines
                                          |]
                                        ],
                                  valueList = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  subColumn = std.number.Integer,
                                  subSeparators = String,
                                  type = js2n.Const "extract",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  property = String,
                                  type =
                                    js2n.Const "extractPropertyFromWbemPath",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  entryKey = String,
                                  properties = String,
                                  separator = String,
                                  type = js2n.Const "json2Csv",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  bitList = String,
                                  column = std.number.Integer,
                                  translationTable = String,
                                  type = js2n.Const "perBitTranslation",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  existingValue = String,
                                  newValue = String,
                                  type = js2n.Const "replace",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  length = String,
                                  start = String,
                                  type = js2n.Const "substring",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  translationTable =
                                    std.contract.any_of
                                        [
                                          String,
                                          js2n.record.Record
                                            {
                                              additional =
                                                'Some
                                                    (std.contract.any_of
                                                      [ Number, String ]),
                                              patterns = {},
                                              properties = {},
                                              required = {},
                                            }
                                        ],
                                  type = js2n.Const "translate",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  properties = String,
                                  recordTag = String,
                                  type = js2n.Const "xml2Csv",
                                },
                            required = {},
                          },
                        Array Dyn
                      ]
                  ],
                { _ | Dyn }
              ]
          ),
      "definitions.discoveryCycle" = std.number.Integer,
      "definitions.duration" =
        std.contract.any_of
            [
              std.number.Integer,
              js2n.string.Matches
                "^[0-9]+\\s*[years|yrs|y|weeks|wks|w|days|d|hours|hrs|h|minutes|mins|m!seconds|secs|s|milliseconds|ms]*$"
            ],
      "definitions.enableSelfMonitoring" = Bool,
      "definitions.executeForEachEntryOf" =
        {
            concatMethod
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'json_array_extended, 'json_array, 'list |]
                    ],
                  {
                    concatEnd | String | optional,
                    concatStart | String | optional,
                    ..
                  }
                ]
              | optional,
            source | String | optional,
            ..
          },
      "definitions.hostname" = std.contract.any_of [ Array Dyn, String ],
      "definitions.httpMethod" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'put, 'delete, 'post, 'get |] ],
      "definitions.jobTimeout" = refs."definitions.duration",
      "definitions.loggerLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'off, 'fatal, 'error, 'warn, 'info, 'debug, 'trace, 'all |]
            ],
      "definitions.monitorFilters" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (js2n.string.Matches "^[+!]?[a-zA-Z0-9_.-]+$")
            ],
      "definitions.namespace" = String,
      "definitions.resolveHostnameToFqdn" = Bool,
      "definitions.resources" =
        {
            _ | {
              additionalConnectors
                | {
                  _ | {
                    "force"
                      | Bool
                      | doc "Set to false for auto-detection only, defaults to true if not specified."
                      | optional,
                    uses
                      | String
                      | doc "Specifies the connector ID to use. Defaults to the key name if not specified."
                      | optional,
                    variables
                      | { _ | String }
                      | doc "Key-value pairs for connector-specific variables."
                      | optional,
                  }
                }
                | js2n.record.FieldsMatch "^[a-zA-Z0-9_.-]+$"
                | doc "Custom connector configurations keyed by their ID including variables (Advanced)."
                | optional,
              alertingSystemConfig
                | {
                  disable
                    | Bool
                    | doc "If true, disables the alerting system"
                    | optional,
                  problemTemplate
                    | String
                    | doc "Problem alerts template"
                    | optional,
                  ..
                }
                | doc "Alerting System Configuration"
                | optional,
              attributes
                | { _ | std.contract.any_of [ Number, String, Array Dyn ] }
                | doc "Resource attributes"
                | optional,
              collectPeriod | refs."definitions.collectPeriod" | optional,
              connectors
                | Array String
                | doc "Sets the Connector(s) to use or exclude, as well as connector tags to be matched."
                | optional,
              discoveryCycle
                | refs."definitions.discoveryCycle"
                | Number
                | optional,
              enableSelfMonitoring
                | refs."definitions.enableSelfMonitoring"
                | Bool
                | optional,
              jobTimeout | refs."definitions.jobTimeout" | optional,
              loggerLevel | refs."definitions.loggerLevel" | String | optional,
              metrics
                | { _ | std.contract.any_of [ Number, String ] }
                | doc "Resource metrics"
                | optional,
              monitorFilters
                | refs."definitions.monitorFilters"
                | Array Dyn
                | optional,
              monitors
                | {
                  _ | {
                    collect
                      | {
                        keys | Array String | optional,
                        mapping
                          | {
                            attributes
                              | js2n.record.Record
                                {
                                  additional = 'Some String,
                                  patterns = {},
                                  properties = { id = String, },
                                  required = {},
                                }
                              | doc "Collect Attributes"
                              | optional,
                            legacyTextParameters
                              | { StatusInformation | String | optional, .. }
                              | optional,
                            metrics
                              | { _ | String }
                              | doc "Collect Metrics"
                              | optional,
                            source | String | optional,
                            ..
                          }
                          | doc "Collect Mapping"
                          | optional,
                        sources
                          | refs."definitions.sources"
                          | { _ | Dyn }
                          | optional,
                        type
                          | std.enum.TagOrString
                          | [| 'multiInstance, 'monoInstance |]
                          | doc "Collect Instance Type"
                          | optional,
                        ..
                      }
                      | doc "Collect Monitor"
                      | optional,
                    discovery
                      | {
                        mapping
                          | {
                            attributes
                              | js2n.record.Record
                                {
                                  additional = 'Some String,
                                  patterns = {},
                                  properties = { id = String, name = String, },
                                  required = {},
                                }
                              | doc "Discovery Attributes"
                              | optional,
                            conditionalCollection | { _ | Dyn } | optional,
                            metrics
                              | String
                              | doc "Discovery Metrics"
                              | optional,
                            source | String | optional,
                            ..
                          }
                          | doc "Discovery Mapping"
                          | optional,
                        sources
                          | refs."definitions.sources"
                          | { _ | Dyn }
                          | optional,
                        ..
                      }
                      | doc "Discovery Monitor"
                      | optional,
                    simple
                      | {
                        mapping
                          | {
                            attributes
                              | js2n.record.Record
                                {
                                  additional = 'Some String,
                                  patterns = {},
                                  properties = { id = String, name = String, },
                                  required = {},
                                }
                              | doc "Discovery Attributes"
                              | optional,
                            conditionalCollection | { _ | Dyn } | optional,
                            metrics
                              | { _ | String }
                              | doc "Discovery Metrics"
                              | optional,
                            source | String | optional,
                            ..
                          }
                          | doc "Discovery Mapping"
                          | optional,
                        sources
                          | refs."definitions.sources"
                          | { _ | Dyn }
                          | optional,
                        ..
                      }
                      | doc "Discovery Monitor"
                      | optional,
                    ..
                  }
                }
                | doc "Monitor Identity Properties"
                | optional,
              outputDirectory | String | doc "Output directory" | optional,
              protocols
                | {
                  http
                    | {
                      hostname | refs."definitions.hostname" | optional,
                      https
                        | Bool
                        | doc "Enables HTTPS to access the host (Default: true)."
                        | optional,
                      password
                        | String
                        | doc "Sets the password used to establish the connection with the host through the HTTP protocol."
                        | optional,
                      port
                        | Number
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
                      bmcKey
                        | String
                        | doc "BMC Key used to establish the connection with the host through the IPMI protocol."
                        | optional,
                      hostname | refs."definitions.hostname" | optional,
                      password
                        | String
                        | doc "Sets the username used to establish the connection with the host through the IPMI protocol."
                        | optional,
                      skipAuth | Bool | doc "Skip Authentication" | optional,
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
                  jdbc
                    | {
                      database
                        | String
                        | doc "The name of the database instance to connect to on the server."
                        | optional,
                      hostname | refs."definitions.hostname" | optional,
                      password
                        | String
                        | doc "Password used to authenticate against the database."
                        | optional,
                      port
                        | std.number.Integer
                        | js2n.number.Maximum 65535
                        | js2n.number.Minimum 1
                        | doc "The port number used to connect to the database."
                        | optional,
                      timeout
                        | refs."definitions.duration"
                        | doc "How long until the SQL query times out (Default: 120s)."
                        | optional,
                      type
                        | String
                        | doc "The type of database (e.g., postgresql, oracle, mssql, informix, h2, mysql)."
                        | optional,
                      url
                        | String
                        | doc "The JDBC connection URL to access the database."
                        | optional,
                      username
                        | String
                        | doc "Name used to authenticate against the database."
                        | optional,
                      ..
                    }
                    | doc "Configuration for JDBC connection."
                    | optional,
                  osCommand
                    | {
                      hostname | refs."definitions.hostname" | optional,
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
                  ping
                    | {
                      hostname | refs."definitions.hostname" | optional,
                      timeout
                        | refs."definitions.duration"
                        | doc "Sets how long until the ping times out (Default: 5s)."
                        | optional,
                      ..
                    }
                    | doc "Configures the Ping protocol to access the host."
                    | optional,
                  snmp
                    | {
                      community
                        | String
                        | doc "Sets the SNMP Community string to use to perform queries (Default: public)."
                        | optional,
                      hostname | refs."definitions.hostname" | optional,
                      port
                        | Number
                        | doc "Sets the SNMP port number used to perform SNMP queries (Default: 161)."
                        | optional,
                      retryIntervals
                        | refs."definitions.retryIntervals"
                        | Array Dyn
                        | optional,
                      timeout
                        | refs."definitions.duration"
                        | doc "Sets how long until the SNMP request times out (Default: 120s)."
                        | optional,
                      version
                        | std.enum.TagOrString
                        | [| 'v2c, 'v1 |]
                        | doc "Sets the version of the SNMP protocol (Default: v1)."
                        | optional,
                      ..
                    }
                    | doc "Configures the SNMP protocol to access the host."
                    | optional,
                  snmpv3
                    | {
                      authType
                        | std.enum.TagOrString
                        | [|
                          'SHA384,
                          'SHA224,
                          'SHA512,
                          'SHA256,
                          'SHA,
                          'MD5,
                          'NO_AUTH
                        |]
                        | doc "Sets the SNMPv3 authentication type. (MD5, SHA, SHA256, SHA512, SHA384, SHA224 or NO_AUTH)."
                        | optional,
                      contextName
                        | String
                        | doc "Sets the context name."
                        | optional,
                      hostname | refs."definitions.hostname" | optional,
                      password
                        | String
                        | doc "Sets the password to use for performing the SNMPv3 query."
                        | optional,
                      port
                        | Number
                        | doc "Sets the SNMP port number used to perform SNMP queries (Default: 161)."
                        | optional,
                      privacy
                        | std.enum.TagOrString
                        | [| 'none, 'AES, 'DES |]
                        | doc "Sets the SNMPv3 encryption type. (AES, DES or none)."
                        | optional,
                      privacyPassword
                        | String
                        | doc "Sets the privacy password to use for performing the SNMPv3 query."
                        | optional,
                      retryIntervals
                        | refs."definitions.retryIntervals"
                        | Array Dyn
                        | optional,
                      timeout
                        | refs."definitions.duration"
                        | doc "Sets how long until the SNMPv3 request times out (Default: 120s)."
                        | optional,
                      username
                        | String
                        | doc "Sets the username to use for performing the SNMPv3 query."
                        | optional,
                      ..
                    }
                    | doc "Configures the SNMPv3 protocol to access the host."
                    | optional,
                  ssh
                    | {
                      hostname | refs."definitions.hostname" | optional,
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
                      hostname | refs."definitions.hostname" | optional,
                      namespace
                        | refs."definitions.namespace"
                        | String
                        | optional,
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
                        | String
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
                        | doc "Authentication Type"
                        | optional,
                      hostname | refs."definitions.hostname" | optional,
                      namespace
                        | refs."definitions.namespace"
                        | String
                        | optional,
                      password
                        | String
                        | doc "Sets the password used to establish the connection with the host through the WinRM protocol."
                        | optional,
                      port
                        | std.number.Integer
                        | doc "Sets the HTTPS port number used to perform WinRM queries (Default: 5989 for HTTPS or 5988 for HTTP)."
                        | optional,
                      protocol
                        | refs."definitions.transportProtocols"
                        | String
                        | doc "Sets the protocol used to access the host (Default: https)."
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
                      hostname | refs."definitions.hostname" | optional,
                      namespace
                        | refs."definitions.namespace"
                        | String
                        | optional,
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
                | doc "Protocols Used"
                | optional,
              resolveHostnameToFqdn
                | refs."definitions.resolveHostnameToFqdn"
                | Bool
                | optional,
              sequential | refs."definitions.sequential" | Bool | optional,
              stateSetCompression
                | refs."definitions.stateSetCompression"
                | String
                | optional,
              ..
            }
          },
      "definitions.resultContent" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'all, 'body, 'header, 'http_status |] ],
      "definitions.retryIntervals" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ]
              )
            ],
      "definitions.sequential" = Bool,
      "definitions.sources" =
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
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  authenticationToken = String,
                                  body = String,
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  header = String,
                                  method =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.httpMethod",
                                          String
                                        ],
                                  path = String,
                                  resultContent =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.resultContent",
                                          String
                                        ],
                                  type = js2n.Const "http",
                                  url = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  forceSerialization = Bool,
                                  type = js2n.Const "ipmi",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  beginAtLineNumber = std.number.Integer,
                                  commandLine = String,
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  endAtLineNumber = std.number.Integer,
                                  exclude = String,
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  executeLocally = Bool,
                                  forceSerialization = Bool,
                                  keep = String,
                                  selectColumns = String,
                                  separator = String,
                                  timeout =
                                    std.contract.any_of [ Number, String ],
                                  type = js2n.Const "osCommand",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  from = String,
                                  type = js2n.Const "copy",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  type = js2n.Const "static",
                                  value = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  oid = String,
                                  type = js2n.Const "snmpGet",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  oid = String,
                                  selectColumns = String,
                                  type = js2n.Const "snmpTable",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  defaultRightLine = String,
                                  forceSerialization = Bool,
                                  isWbemKey = Bool,
                                  leftKeyColumn = std.number.Integer,
                                  leftTable = String,
                                  rightKeyColumn = std.number.Integer,
                                  rightTable = String,
                                  type = js2n.Const "tableJoin",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  forceSerialization = Bool,
                                  tables = js2n.array.ArrayOf String,
                                  type = js2n.Const "tableUnion",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  namespace = String,
                                  query = String,
                                  type = js2n.Const "wbem",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  namespace = String,
                                  query = String,
                                  type = js2n.Const "wmi",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  query = String,
                                  tables =
                                    js2n.array.ArrayOf
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  alias = String,
                                                  columns =
                                                    js2n.array.ArrayOf
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  name = String,
                                                                  number =
                                                                    std.number.Integer,
                                                                  type = String,
                                                                },
                                                            required = {},
                                                          }),
                                                  source = String,
                                                },
                                            required = {},
                                          }),
                                  type = js2n.Const "internalDbQuery",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  forceSerialization = Bool,
                                  query = String,
                                  type = js2n.Const "sql",
                                },
                            required = {},
                          },
                        Array Dyn
                      ]
                  ],
                { _ | Dyn }
              ]
          },
      "definitions.stateSetCompression" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'suppressZeros, 'none |] ],
      "definitions.transportProtocols" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'https, 'http |] ],
    }
    in
  {
      alertingSystemConfig
        | {
          disable
            | Bool
            | doc "If true, disables the alerting system"
            | optional,
          problemTemplate | String | doc "Problem alerts template" | optional,
          ..
        }
        | doc "Alerting System Configuration"
        | optional,
      attributes
        | { _ | std.contract.any_of [ Number, String ] }
        | doc "Top level attributes"
        | optional,
      collectPeriod | refs."definitions.collectPeriod" | optional,
      discoveryCycle | refs."definitions.discoveryCycle" | optional,
      enableSelfMonitoring | refs."definitions.enableSelfMonitoring" | optional,
      jobPoolSize | std.number.Integer | doc "Job Pool Size" | optional,
      jobTimeout | refs."definitions.jobTimeout" | optional,
      license
        | {
          expiresOn
            | String
            | doc "The expiration date of the license in the format yyyy-MM-dd."
            | optional,
          key | String | doc "The license key" | optional,
          organization
            | String
            | doc "The name of the organization the license is for."
            | optional,
          product
            | String
            | doc "The name of the product the license is for."
            | optional,
          resources
            | std.number.Integer
            | doc "The maximum number of resources the license covers."
            | optional,
          ..
        }
        | doc "MetricsHub License"
        | optional,
      loggerLevel | refs."definitions.loggerLevel" | optional,
      metrics
        | { _ | std.contract.any_of [ Number, String ] }
        | doc "Top level metrics"
        | optional,
      monitorFilters | refs."definitions.monitorFilters" | Array Dyn | optional,
      otel
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties =
              {
                  "otel.exporter.otlp.certificate" = String,
                  "otel.exporter.otlp.endpoint" = String,
                  "otel.exporter.otlp.logs.certificate" = String,
                  "otel.exporter.otlp.logs.endpoint" = String,
                  "otel.exporter.otlp.logs.protocol" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"http/protobuf", 'grpc |] ],
                  "otel.exporter.otlp.metrics.certificate" = String,
                  "otel.exporter.otlp.metrics.endpoint" = String,
                  "otel.exporter.otlp.metrics.protocol" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"http/protobuf", 'grpc |] ],
                  "otel.exporter.otlp.protocol" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"http/protobuf", 'grpc |] ],
                  "otel.logs.exporter" = String,
                  "otel.metrics.exporter" = std.contract.Equal "otlp",
                },
            required = {},
          }
        | doc "Internal OpenTelemetry SDK configuration"
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
      outputDirectory | String | doc "Output directory" | optional,
      patchDirectory
        | String
        | doc "The path of the custom connectors directory, connectors will also be loaded from the default directory."
        | optional,
      resolveHostnameToFqdn
        | refs."definitions.resolveHostnameToFqdn"
        | optional,
      resourceGroups
        | {
          _ | {
            alertingSystemConfig
              | {
                disable
                  | Bool
                  | doc "If true, disables the alerting system"
                  | optional,
                problemTemplate
                  | String
                  | doc "Problem alerts template"
                  | optional,
                ..
              }
              | doc "Alerting System Configuration"
              | optional,
            attributes
              | { _ | std.contract.any_of [ Number, String, Array Dyn ] }
              | doc "Resource group attributes"
              | optional,
            collectPeriod | refs."definitions.collectPeriod" | optional,
            discoveryCycle | refs."definitions.discoveryCycle" | optional,
            enableSelfMonitoring
              | refs."definitions.enableSelfMonitoring"
              | optional,
            jobTimeout | refs."definitions.jobTimeout" | optional,
            loggerLevel | refs."definitions.loggerLevel" | optional,
            metrics
              | { _ | std.contract.any_of [ Number, String ] }
              | doc "Resource group metrics"
              | optional,
            monitorFilters
              | refs."definitions.monitorFilters"
              | Array Dyn
              | optional,
            outputDirectory | String | doc "Output directory" | optional,
            resolveHostnameToFqdn
              | refs."definitions.resolveHostnameToFqdn"
              | optional,
            resources | refs."definitions.resources" | optional,
            sequential | refs."definitions.sequential" | optional,
            stateSetCompression
              | refs."definitions.stateSetCompression"
              | optional,
            ..
          }
        }
        | doc "Contains Resource Groups"
        | optional,
      resources | refs."definitions.resources" | optional,
      sequential | refs."definitions.sequential" | optional,
      stateSetCompression | refs."definitions.stateSetCompression" | optional,
      ..
    }