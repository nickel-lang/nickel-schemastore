# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.notScheduled" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    runMode
                      | std.enum.TagOrString
                      | [| 'OnDemand, 'Continuous |]
                      | doc m%"
                        Determines the run mode of the Azure Webjob. 
                        
                         Triggered: manually triggered 
                         Scheduled: runs on a specific schedule 
                         Continuous: runs all the time
                      "%,
                    ..
                  },
                  Array Dyn
                ],
              refs."definitions.shared"
            ],
      "definitions.scheduled" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  std.contract.Sequence
                    [
                      {
                        runMode
                          | std.enum.TagOrString
                          | [| 'Scheduled |]
                          | doc m%"
                            Determines the run mode of the Azure Webjob. 
                            
                             Triggered: manually triggered 
                             Scheduled: runs on a specific schedule 
                             Continuous: runs all the time
                          "%
                          | optional,
                        ..
                      },
                      js2n.record.Required
                        [
                          "endTime",
                          "interval",
                          "jobRecurrenceFrequency",
                          "startTime",
                          "webJobName"
                        ]
                    ],
                  Array Dyn
                ],
              refs."definitions.shared"
            ],
      "definitions.shared" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                endTime
                  | String
                  | doc "The end time of a scheduled job. Example. 2014-06-12T00:00:00-08:00"
                  | optional,
                interval
                  | std.number.Integer
                  | doc "The interval of how often the Azure Webjob should run. Use it with the 'jobRecurrenceFrequency' property."
                  | optional,
                jobRecurrenceFrequency
                  | std.enum.TagOrString
                  | [| 'Month, 'Week, 'Day, 'Hour, 'Minute, 'Second |]
                  | doc "The frequency metric used with the 'interval' property."
                  | optional,
                startTime
                  | String
                  | doc "The start time of a scheduled job. Example. 2014-06-11T00:00:00-08:00"
                  | optional,
                webJobName
                  | String
                  | doc "The name of the Azure Webjob."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [ refs."definitions.scheduled", refs."definitions.notScheduled" ],
        js2n.record.Required [ "runMode" ]
      ]