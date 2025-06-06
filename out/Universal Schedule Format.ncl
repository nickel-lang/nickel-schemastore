# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      periods
        | Array (
          std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 2,
              js2n.array.Items
                [
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$",
                  js2n.string.Matches "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d$"
                ] js2n.Always
            ]
        )
        | doc "List of time periods, each containing a start and end time.",
      subjects
        | {
          _ | {
            room | String | optional,
            simplified_name | String | optional,
            teacher | String | optional,
          }
        }
        | doc "Mapping of subject names to their details.",
      timetable
        | Array (
          std.contract.Sequence
            [
              js2n.array.MaxItems 4,
              js2n.array.MinItems 4,
              js2n.array.Items
                [
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 7,
                      js2n.number.Minimum 1
                    ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'odd, 'even, 'all |] ],
                  String,
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ]
                ] js2n.Always
            ]
        )
        | doc "Schedule entries, each defining a class occurrence.",
      version | std.number.Integer | doc "USF version",
    }