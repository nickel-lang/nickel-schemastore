# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.configuration" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                closeComment
                  | std.contract.any_of [ Bool, String ]
                  | doc "Comment to post when closing a stale issue or pull request."
                  | optional,
                daysUntilClose
                  | std.contract.any_of [ Bool, std.number.Integer ]
                  | doc "Number of days of inactivity before an Issue or Pull Request with the stale label is closed."
                  | optional,
                daysUntilStale
                  | Number
                  | doc "Number of days of inactivity before an Issue or Pull Request becomes stale."
                  | optional,
                exemptAssignees
                  | Bool
                  | doc "Set to true to ignore issues with an assignee."
                  | optional,
                exemptLabels
                  | Array String
                  | doc "Issues or Pull Requests with these labels will never be considered stale."
                  | optional,
                exemptProjects
                  | Bool
                  | doc "Set to true to ignore issues in a milestone."
                  | optional,
                limitPerRun
                  | js2n.number.Maximum 30
                  | js2n.number.Minimum 1
                  | doc "Limit the number of actions per hour."
                  | optional,
                markComment
                  | std.contract.any_of [ Bool, String ]
                  | doc "Comment to post when marking as stale."
                  | optional,
                only
                  | std.enum.TagOrString
                  | [| 'pulls, 'issues |]
                  | doc "Limit to only issues or pulls requests."
                  | optional,
                onlyLabels
                  | Array String
                  | doc "Only issues or pull requests with all of these labels are check if stale."
                  | optional,
                staleLabel
                  | String
                  | doc "Label to use when marking as stale."
                  | optional,
                unmarkComment
                  | std.contract.any_of [ Bool, String ]
                  | doc "Comment to post when removing the stale label."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  std.contract.Sequence
      [
        refs."definitions.configuration",
        {
          issues
            | refs."definitions.configuration"
            | doc "Specify configuration settings that are specific to issues."
            | optional,
          pulls
            | refs."definitions.configuration"
            | doc "Specify configuration settings that are specific to pull requests."
            | optional,
          ..
        }
      ]