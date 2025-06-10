# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Logging" =
        {
            FlushLevel
              | std.enum.TagOrString
              | [| 'Off, 'Trace, 'Debug, 'Info, 'Warn, 'Error, 'Critical |]
              | optional,
            Sinks
              | Array
                {
                  Level
                    | std.enum.TagOrString
                    | [|
                      'Off,
                      'Trace,
                      'Debug,
                      'Info,
                      'Warn,
                      'Error,
                      'Critical
                    |]
                    | optional,
                  LogName
                    | String
                    | doc "Log name; Results in the following filename: <LogName>_%y-%m-%dT%h-%m-%s.txt"
                    | optional,
                  Type | std.enum.TagOrString | [| 'Stdout, 'File |],
                },
          },
    }
    in
  {
      "$schema" | String | doc "The schema file" | optional,
      DashboardUri
        | String
        | doc "The configured registry instance will send data to this address to show it on the dashboard. Optional; This field overrides the -d, and --dashboard-uri command line parameters."
        | optional,
      Description
        | String
        | doc "Free text field allowing a user to describe the configuration file in their own words. The contents of this field are not parsed or used internally."
        | optional,
      ListenUri
        | String
        | doc "The configured registry instance will listen on this address for incoming connections. Optional; This field overrides the -u, and --listen-uri command line parameters."
        | optional,
      Logging | refs."definitions.Logging" | optional,
      SchemaVersion
        | std.contract.any_of [ std.number.Integer, String ]
        | doc "Version of the schema used to validate this document"
        | optional,
    }