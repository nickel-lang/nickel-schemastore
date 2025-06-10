# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.alerts" =
        Array (
            std.contract.any_of
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      { assertion = String, id = String, message = String, },
                    required = { assertion = true, message = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      { id = String, message = String, query = String, },
                    required = { message = true, query = true, },
                  }
              ]
          ),
      "definitions.body" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.headers" =
        {
            Accept
              | String
              | doc "Media type(s) that is/are acceptable for the response"
              | optional,
            Accept-Charset
              | String
              | doc "Character sets that are acceptable"
              | optional,
            Accept-Encoding
              | String
              | doc "List of acceptable encodings"
              | optional,
            Authorization
              | String
              | doc "Authentication credentials for HTTP authentication"
              | optional,
            Cache-Control
              | String
              | doc "Used to specify directives that must be obeyed by all caching mechanisms along the request-response chain"
              | optional,
            Connection
              | String
              | doc "General header that allows the sender or client to specify options that are desired for that particular connection"
              | optional,
            Content-Type
              | String
              | doc "The Media type of the body of the request (used with POST and PUT requests"
              | optional,
            Cookie
              | String
              | doc "An HTTP cookie previously sent by the server with Set-Cookie"
              | optional,
            Keep-Alive
              | String
              | doc "General header used to inform how long a persistent connection should stay open"
              | optional,
            Origin
              | String
              | doc "Initiates a request for cross-origin resource sharing (asks server for Access-Control-* response fields)"
              | optional,
            Referer
              | String
              | doc "This is the address of the previous web page (referrer) from which a link to the currently requested page was followed"
              | optional,
            User-Agent
              | String
              | doc "The user agent string of the user agent"
              | optional,
            ..
          },
      "definitions.incidentThreshold" = std.number.Integer,
      "definitions.interval" = std.number.Integer,
      "definitions.mariadb" =
        Array
            {
              database
                | std.contract.any_of
                  [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
              host
                | String
                | doc "The hostname or IP address of the database server",
              password | String | doc "User password for authentication",
              port
                | std.number.Integer
                | doc "Port number used by your database server",
              username | String | doc "User with access to the database",
            },
      "definitions.mongo" =
        Array
            {
              host
                | String
                | doc "The hostname or IP address of the MongoDB server"
                | optional,
              password
                | String
                | doc "Password used for the MongoDB AUTH, if set."
                | optional,
              port
                | std.number.Integer
                | doc "Port number used for the MongoDB"
                | optional,
              uri
                | String
                | doc "The hostname or IP address of the MongoDB server"
                | optional,
              username
                | String
                | doc "Username used for the MongoDB AUTH, if set."
                | optional,
              ..
            },
      "definitions.ping" =
        Array { uri | String | doc "The uri address to probe", },
      "definitions.postgres" =
        Array (
            std.contract.any_of
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { uri = String, },
                    required = { uri = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some js2n.Always,
                    patterns = {},
                    properties =
                      {
                          database = String,
                          host = String,
                          password = String,
                          port = std.number.Integer,
                          username = String,
                        },
                    required = { database = true, host = true, port = true, },
                  }
              ]
          ),
      "definitions.recoveryThreshold" = std.number.Integer,
      "definitions.redis" =
        Array (
            std.contract.any_of
              [
                js2n.record.Record
                  {
                    additional = 'Some js2n.Always,
                    patterns = {},
                    properties = { uri = String, },
                    required = { uri = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some js2n.Always,
                    patterns = {},
                    properties =
                      {
                          host = String,
                          password = String,
                          port = std.number.Integer,
                          username = String,
                        },
                    required = { host = true, port = true, },
                  }
              ]
          ),
      "definitions.requests" =
        Array (
            js2n.record.Record
              {
                additional = 'None,
                patterns = { ping = Bool, },
                properties =
                  {
                      alerts =
                        std.contract.Sequence
                            [ refs."definitions.alerts", Array Dyn ],
                      allowUnauthorized = Bool,
                      body = refs."definitions.body",
                      followRedirects = std.number.Integer,
                      headers =
                        std.contract.Sequence
                            [ refs."definitions.headers", { _ | Dyn } ],
                      id = String,
                      method =
                        std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                'UNLINK,
                                'TRACE,
                                'PUT,
                                'PURGE,
                                'POST,
                                'PATCH,
                                'OPTIONS,
                                'LINK,
                                'HEAD,
                                'GET,
                                'DELETE,
                                'CONNECT
                              |]
                            ],
                      saveBody = Bool,
                      timeout = std.number.Integer,
                      url = String,
                    },
                required = { url = true, },
              }
          ),
      "definitions.socket" =
        {
            data | String | doc "Data payload for the request",
            host | String | doc "Address to your host",
            port | std.number.Integer | doc "Host port to connect to",
          },
      "definitions.urlFormat" = js2n.string.Matches "^https?://",
    }
    in
  {
      certificate
        | {
          domains
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    domain | String | doc "Hostname to check",
                    options
                      | { path | String | optional, .. }
                      | doc "Custom HTTPs Options"
                      | optional,
                  }
                ]
            )
            | doc "The list of domains to check",
          reminder
            | std.number.Integer
            | doc "The number of days to send notification to user before the domain expires"
            | optional,
        }
        | doc "Check validity of your TLS certificate(s)."
        | optional,
      db_limit
        | {
          cron_schedule | String | doc "Schedule to trim the db in crontab",
          deleted_data
            | std.number.Integer
            | doc "Delete strategy when limit reached",
          max_db_size | Number | doc "Maximum Monika database size",
        }
        | doc "Database internal configuration"
        | optional,
      notifications
        | Array (
          std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { id = String, type = js2n.Const "desktop", },
                  required = { id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "discord",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      access_token = String,
                                      thread_id = String,
                                    },
                                required =
                                  { access_token = true, thread_id = true, },
                              },
                        id = String,
                        type = js2n.Const "workplace",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "google-chat",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "lark",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      apiKey = String,
                                      domain = String,
                                      recipients = js2n.array.ArrayOf String,
                                    },
                                required =
                                  {
                                      apiKey = true,
                                      domain = true,
                                      recipients = true,
                                    },
                              },
                        id = String,
                        type = js2n.Const "mailgun",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "teams",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "monika-notif",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.array.ArrayOf
                              (js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties =
                                    { key = String, probeID = String, },
                                  required = { key = true, probeID = true, },
                                }),
                        id = String,
                        type = js2n.Const "pagerduty",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      apiKey = String,
                                      recipients = js2n.array.ArrayOf String,
                                      sender = String,
                                    },
                                required =
                                  {
                                      apiKey = true,
                                      recipients = true,
                                      sender = true,
                                    },
                              },
                        id = String,
                        type = js2n.Const "sendgrid",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "slack",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'Some js2n.Always,
                                patterns = {},
                                properties =
                                  {
                                      hostname = String,
                                      password = String,
                                      port = std.number.Integer,
                                      recipients = js2n.array.ArrayOf String,
                                      username = String,
                                    },
                                required =
                                  {
                                      hostname = true,
                                      port = true,
                                      recipients = true,
                                    },
                              },
                        id = String,
                        type = js2n.Const "smtp",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { apiKey = String, pageID = String, },
                                required = { apiKey = true, pageID = true, },
                              },
                        id = String,
                        type = js2n.Const "statuspage",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { bot_token = String, group_id = String, },
                                required =
                                  { bot_token = true, group_id = true, },
                              },
                        id = String,
                        type = js2n.Const "telegram",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { url = refs."definitions.urlFormat", },
                                required = { url = true, },
                              },
                        id = String,
                        type = js2n.Const "webhook",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      password = String,
                                      recipients = js2n.array.ArrayOf String,
                                      url = refs."definitions.urlFormat",
                                      username = String,
                                    },
                                required =
                                  {
                                      password = true,
                                      recipients = true,
                                      url = true,
                                      username = true,
                                    },
                              },
                        id = String,
                        type = js2n.Const "whatsapp",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { access_token = String, },
                                required = { access_token = true, },
                              },
                        id = String,
                        type = js2n.Const "dingtalk",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { token = String, user = String, },
                                required = { token = true, user = true, },
                              },
                        id = String,
                        type = js2n.Const "pushover",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { token = String, url = String, },
                                required = { token = true, url = true, },
                              },
                        id = String,
                        type = js2n.Const "gotify",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { geniekey = String, },
                                required = { geniekey = true, },
                              },
                        id = String,
                        type = js2n.Const "opsgenie",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { deviceID = String, token = String, },
                                required = { token = true, },
                              },
                        id = String,
                        type = js2n.Const "pushbullet",
                      },
                  required = { data = true, id = true, type = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        data =
                          js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  { apiKey = String, pageID = String, },
                                required = { apiKey = true, pageID = true, },
                              },
                        id = String,
                        type = js2n.Const "instatus",
                      },
                  required = { data = true, id = true, type = true, },
                }
            ]
        )
        | doc "Alerts of incidents and recoveries will be sent via these notification channels"
        | optional,
      probes
        | Array
          {
            alerts | refs."definitions.alerts" | optional,
            description | String | doc "Description of the probe" | optional,
            id | String | doc "Unique string identification of the probe",
            incidentThreshold | refs."definitions.incidentThreshold" | optional,
            interval | refs."definitions.interval" | optional,
            mariadb | refs."definitions.mariadb" | optional,
            mongo | refs."definitions.mongo" | optional,
            mysql | refs."definitions.mariadb" | optional,
            name | String | doc "A human-readible probe name" | optional,
            ping | refs."definitions.ping" | optional,
            postgres | refs."definitions.postgres" | optional,
            recoveryThreshold | refs."definitions.recoveryThreshold" | optional,
            redis | refs."definitions.redis" | optional,
            requests | refs."definitions.requests" | optional,
            socket | refs."definitions.socket" | optional,
          }
        | doc "Probe is a description of the target, methods, timing and payloads to begin monitoring/probing a target."
        | optional,
      status-notification
        | String
        | doc "Sends status notification periodically according to a cron schedule. Set to false to disable."
        | optional,
      version | String | doc "Monika configuration version" | optional,
    }