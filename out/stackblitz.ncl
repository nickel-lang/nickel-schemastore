# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      env
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-zA-Z_]+[a-zA-Z0-9_]*$",
              { _ | Dyn },
              Array Dyn
            ])
        | { _ | std.contract.any_of [ Bool, Number, String ] }
        | optional,
      installDependencies
        | Bool
        | doc "Defaults to true. Set to false to disable."
        | optional,
      startCommand
        | std.contract.any_of [ Bool, String ]
        | doc "If not provided, a command may be inferred based on the project files (e.g. running `npm start`)."
        | optional,
    }