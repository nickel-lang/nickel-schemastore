# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.breaking_change_entry" =
        {
            breaking
              | Array String
              | doc "The change entry messages."
              | optional,
            ..
          },
      "definitions.change_entry" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.simple_change_entry", Array Dyn ],
              std.contract.Sequence
                [ refs."definitions.complex_change_entry", Array Dyn ],
              std.contract.Sequence
                [ refs."definitions.breaking_change_entry", { _ | Dyn } ]
            ],
      "definitions.complex_change_entry" =
        Array
            {
              flag
                | String
                | doc "The flag to add a prefix to the changes."
                | optional,
              message | String | doc "The change entry message." | optional,
              references
                | Array
                  {
                    number
                      | Number
                      | doc "The pull request or issue number"
                      | optional,
                    type
                      | std.enum.TagOrString
                      | [| 'issue, 'pull_request |]
                      | doc "The type of reference, can be `pull_request`,`pr`, or `issue`"
                      | optional,
                    ..
                  }
                | doc "List of references to this current change."
                | optional,
              ..
            },
      "definitions.simple_change_entry" = Array String,
    }
    in
  {
      added
        | refs."definitions.change_entry"
        | doc "Changes where you add to the project."
        | optional,
      change
        | std.enum.TagOrString
        | [| 'patch, 'minor, 'major |]
        | doc "The type of change you are creating. Valid values are `major` | `minor` | `patch`"
        | optional,
      changed
        | refs."definitions.change_entry"
        | doc "Changes where you changed functionality."
        | optional,
      deprecated
        | refs."definitions.change_entry"
        | doc "Changes where you plan on removing something, but are waiting to do so."
        | optional,
      fixed
        | refs."definitions.change_entry"
        | doc "Changes where you fixed a bug."
        | optional,
      notice | String | doc "A notice for the current release." | optional,
      release_date
        | String
        | doc "The release date of the current version. If this is property is not defined this will fall back to `TBD`."
        | optional,
      removed
        | refs."definitions.change_entry"
        | doc "Changes where you removed a feature or something else."
        | optional,
      security
        | refs."definitions.change_entry"
        | doc "Changes where you made an update for security reasons."
        | optional,
      version
        | String
        | doc "The current version of the project. If left off this will fallback to being `Unreleased`."
        | optional,
      ..
    }