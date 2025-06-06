# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        {
          _ | {
            backout_seconds
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc m%"
                A backout of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%
              | optional,
            command
              | js2n.string.MinLength 1
              | doc m%"
                A command of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%,
            conditional
              | js2n.string.MinLength 1
              | doc m%"
                A conditional of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%
              | optional,
            confirm
              | Bool
              | doc m%"
                Whether to confirm a command execution of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%
              | optional,
            confirmation_message
              | js2n.string.MinLength 1
              | doc m%"
                A confirmation message of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%
              | optional,
            quiet
              | Bool
              | doc m%"
                Whether to display a command before execution of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%
              | optional,
            unit_test
              | js2n.string.MinLength 1
              | doc m%"
                A unit test of the current alias
                https://github.com/sebglazebrook/aliases#usage
              "%
              | optional,
          }
        },
        js2n.record.FieldsMatch "^[^ ]+$"
      ]