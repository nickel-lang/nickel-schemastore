# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.bindingBase" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                dataType
                  | std.enum.TagOrString
                  | [| 'stream, 'binary, 'string |]
                  | doc "The data type hint for the binding parameter (string, binary, or stream)."
                  | optional,
                direction | std.enum.TagOrString | [| 'inout, 'out, '"in" |],
                name | String,
                type | String,
                ..
              },
              Array Dyn
            ],
      "definitions.blobBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connection
                      | String
                      | doc "An app setting (or environment variable) with the storage connection string to be used by this binding."
                      | optional,
                    path
                      | String
                      | doc "The path to the blob container"
                      | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'blobTrigger |]
                                      ],
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
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'blob |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.documentDBBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    collectionName
                      | String
                      | doc "This is the name of the collection within your database to which data will be written."
                      | optional,
                    connection
                      | String
                      | doc "This is the connection string for your DocumentDB account."
                      | optional,
                    databaseName
                      | String
                      | doc "This is the name of the database within your DocumentDB account to which data will be written."
                      | optional,
                    type | std.enum.TagOrString | [| 'documentDB |] | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                id = String,
                                sqlQuery = String,
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
                                createIfNotExists = Bool,
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.dynamicBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                direction
                  | std.enum.TagOrString
                  | [| 'inout, 'out, '"in" |]
                  | optional,
                type
                  | std.contract.not
                    (std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'mysqlTrigger,
                          'mysql,
                          'kusto,
                          'sqlTrigger,
                          'sql,
                          'sendGrid,
                          'twilioSms,
                          'notificationHub,
                          'table,
                          'documentDB,
                          'mobileTable,
                          'http,
                          'httpTrigger,
                          'queue,
                          'queueTrigger,
                          'timerTrigger,
                          'eventHub,
                          'eventHubTrigger,
                          'manualTrigger,
                          'blob,
                          'blobTrigger,
                          'serviceBus,
                          'serviceBusTrigger
                        |]
                      ])
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.eventHubBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connection
                      | String
                      | doc "The event hub connection string setting."
                      | optional,
                    path | String | doc "The event hub path." | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                cardinality =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'many, 'one |]
                                      ],
                                consumerGroup = String,
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'eventHubTrigger |]
                                      ],
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
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'eventHub |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.httpBinding" =
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
                            authLevel =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'admin, 'function, 'anonymous |]
                                  ],
                            direction =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| '"in" |] ],
                            methods =
                              js2n.array.Items
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          'trace,
                                          'options,
                                          'put,
                                          'patch,
                                          'head,
                                          'delete,
                                          'post,
                                          'get
                                        |]
                                      ]
                                  ] js2n.Always,
                            route = String,
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'httpTrigger |] ],
                            webHookType = String,
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
                            direction =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'out |] ],
                            type =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'http |] ],
                          },
                      required = {},
                    },
                  Array Dyn
                ]
            ],
      "definitions.kustoBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connection
                      | String
                      | doc "Name of the app setting that contains the kusto connection string used to connect to kusto."
                      | optional,
                    database
                      | String
                      | doc "Name of the database within your kusto account to which data will be read/written."
                      | optional,
                    managedServiceIdentity
                      | String
                      | doc "A managed service identity that has to be attached to use the bindings."
                      | optional,
                    type | std.enum.TagOrString | [| 'kusto |] | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                kqlCommand = String,
                                kqlParameters = String,
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
                                dataFormat = String,
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                                mappingRef = String,
                                tableName = String,
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.manualTriggerBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                direction | std.enum.TagOrString | [| '"in" |] | optional,
                type | std.enum.TagOrString | [| 'manualTrigger |] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.mobileBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    apiKey
                      | String
                      | doc "This is app setting name that specifies the API Key for your Mobile App."
                      | optional,
                    connection
                      | String
                      | doc "This is the app setting name that specifies the URL of your Mobile App."
                      | optional,
                    tableName
                      | String
                      | doc "This is the name of the table within your Mobile App to which data will be written."
                      | optional,
                    type | std.enum.TagOrString | [| 'mobileTable |] | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                id = String,
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
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.mySqlBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connectionStringSetting
                      | String
                      | doc "The name of the app setting that contains the MySql connection string used to connect to the database."
                      | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                commandText = String,
                                commandType =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'storedProcedure, 'text |]
                                      ],
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                parameters = String,
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'mysql |] ],
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
                                commandText = String,
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                                type = js2n.Const "mysql",
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
                                tableName = String,
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'mysqlTrigger |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.notificationHubBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                connection
                  | String
                  | doc "The name of the app setting which contains the notification hub connection string."
                  | optional,
                direction | std.enum.TagOrString | [| 'out |] | optional,
                hubName
                  | String
                  | doc "The name of the notification hub."
                  | optional,
                platform
                  | std.enum.TagOrString
                  | [| 'mpns, 'wns, 'gcm, 'adm, 'apns |]
                  | doc "The notification platform to target. Sends template notification if platform is omitted."
                  | optional,
                tagExpression
                  | String
                  | doc "The tag to send the notification to."
                  | optional,
                type | std.enum.TagOrString | [| 'notificationHub |] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.queueBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connection
                      | String
                      | doc "An app setting (or environment variable) with the storage connection string to be used by this binding."
                      | optional,
                    queueName | String | doc "The queue name." | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'queueTrigger |]
                                      ],
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
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'queue |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.sendGridBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                apiKey
                  | String
                  | doc "The name of the app setting which contains your SendGrid api key."
                  | optional,
                direction | std.enum.TagOrString | [| 'out |] | optional,
                from
                  | String
                  | doc "The email address to send from."
                  | optional,
                subject | String | doc "The subject of the email." | optional,
                text | String | doc "The text of the email." | optional,
                to | String | doc "The email address to send to." | optional,
                type | std.enum.TagOrString | [| 'sendGrid |] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.serviceBusBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    accessRights
                      | std.enum.TagOrString
                      | [| 'send, 'listen, 'manage |]
                      | doc "The permission level of the service bus connection string used by this binding."
                      | optional,
                    connection
                      | String
                      | doc "An app setting (or environment variable) with the service bus connection string to be used by this binding."
                      | optional,
                    queueName
                      | String
                      | doc "The service bus queue to monitor (if using a queue)"
                      | optional,
                    subscriptionName
                      | String
                      | doc "The topic subscription name"
                      | optional,
                    topicName
                      | String
                      | doc "The service bus topic to monitor (if using a queue)"
                      | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'serviceBusTrigger |]
                                      ],
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
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'serviceBus |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.sqlBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connectionStringSetting
                      | String
                      | doc "The name of the app setting that contains the SQL connection string used to connect to the database."
                      | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                tableName = String,
                                type =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'sqlTrigger |]
                                      ],
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
                                commandText = String,
                                commandType =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'storedProcedure, 'text |]
                                      ],
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                parameters = String,
                                type =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'sql |] ],
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
                                commandText = String,
                                direction = js2n.Const "out",
                                type = js2n.Const "sql",
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.tableBinding" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    connection
                      | String
                      | doc "An app setting (or environment variable) with the storage connection string to be used by this binding."
                      | optional,
                    partitionKey | String | doc "The partition key." | optional,
                    rowKey | String | doc "The table row key." | optional,
                    tableName
                      | String
                      | doc "The name of the storage table."
                      | optional,
                    type | std.enum.TagOrString | [| 'table |] | optional,
                    ..
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| '"in" |] ],
                                filter = String,
                                take = String,
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
                                direction =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'out |] ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.timerTriggerBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                direction | std.enum.TagOrString | [| '"in" |] | optional,
                runOnStartup
                  | Bool
                  | doc "When true, your timer function will be invoked immediately after a runtime restart and on-schedule thereafter."
                  | optional,
                schedule
                  | String
                  | doc "A cron expression of the format '{second} {minute} {hour} {day} {month} {day of week}' to specify the schedule."
                  | optional,
                type | std.enum.TagOrString | [| 'timerTrigger |] | optional,
                useMonitor
                  | Bool
                  | doc "When true, schedule will be persisted to aid in maintaining the correct schedule even through restarts. Defaults to true for schedules with interval >= 1 minute."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.twilioSmsBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                accountSid
                  | String
                  | doc "The name of the app setting which contains your Twilio Account Sid."
                  | optional,
                authToken
                  | String
                  | doc "The name of the app setting which contains your Twilio authentication token."
                  | optional,
                body
                  | String
                  | doc "Optional body of SMS text message."
                  | optional,
                direction | std.enum.TagOrString | [| 'out |] | optional,
                from
                  | String
                  | doc "The phone number the SMS text is sent from."
                  | optional,
                to
                  | String
                  | doc "The phone number the SMS text is sent to."
                  | optional,
                type | std.enum.TagOrString | [| 'twilioSms |] | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      bindings
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  refs."definitions.dynamicBinding",
                  js2n.OneOf
                    [
                      refs."definitions.serviceBusBinding",
                      refs."definitions.blobBinding",
                      refs."definitions.manualTriggerBinding",
                      refs."definitions.eventHubBinding",
                      refs."definitions.timerTriggerBinding",
                      refs."definitions.queueBinding",
                      refs."definitions.httpBinding",
                      refs."definitions.mobileBinding",
                      refs."definitions.documentDBBinding",
                      refs."definitions.tableBinding",
                      refs."definitions.notificationHubBinding",
                      refs."definitions.twilioSmsBinding",
                      refs."definitions.sendGridBinding",
                      refs."definitions.sqlBinding",
                      refs."definitions.kustoBinding",
                      refs."definitions.mySqlBinding"
                    ]
                ],
              refs."definitions.bindingBase"
            ]
        )
        | doc "A list of function bindings."
        | optional,
      configurationSource
        | std.enum.TagOrString
        | [| 'config, 'attributes |]
        | doc "For C# precompiled functions only. If set to 'attributes', use WebJobs attributes to specify bindings. Otherwise, use the 'bindings' property of this function.json."
        | optional,
      disabled
        | Bool
        | doc "If set to true, marks the function as disabled (it cannot be triggered)."
        | optional,
      entryPoint | String | doc "Optional named entry point." | optional,
      excluded
        | Bool
        | doc "If set to true, the function will not be loaded, compiled, or triggered."
        | optional,
      retry
        | {
          delayInterval
            | std.contract.any_of
              [
                js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                js2n.Enum [ null ]
              ]
            | doc "Value indicating the delayInterval for function execution retries when using FixedDelay strategy."
            | optional,
          maxRetryCount
            | std.number.Integer
            | doc "The maximum number of retries allowed per function execution. -1 means to retry indefinitely."
            | optional,
          maximumInterval
            | std.contract.any_of
              [
                js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                js2n.Enum [ null ]
              ]
            | doc "Value indicating the maximumInterval for function execution retries when using ExponentialBackoff strategy."
            | optional,
          minimumInterval
            | std.contract.any_of
              [
                js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                js2n.Enum [ null ]
              ]
            | doc "Value indicating the minimumInterval for function execution retries when using ExponentialBackoff strategy."
            | optional,
          strategy
            | std.enum.TagOrString
            | [| 'fixedDelay, 'exponentialBackoff |]
            | doc "Retry strategy to use for retrying function executions"
            | optional,
          ..
        }
        | doc "Retry policy of function execution failures."
        | optional,
      scriptFile
        | String
        | doc "Optional path to function script file."
        | optional,
      ..
    }