# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      env-file
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      interpreter
        | String
        | doc m%"
          The interpreter to use for commands.
          The interpreter is specified as an executable, which can either be an absolute path or available on the user's PATH, followed by a series of optional arguments.
          The commands specified in individual tasks will be passed as the final argument.
          
        "%
        | optional,
      name
        | String
        | doc m%"
          The alias name to display in help text when using shell aliases to create a custom named CLI application.
          
        "%
        | optional,
      options
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc m%"
          Shared options available to all tasks.
          Any shared variables referenced by a task will be exposed by command-line when invoking that task. Shared variables referenced by a sub-task will be evaluated as needed, but not exposed by command-line.
          Tasks that define an argument or option with the same name as a shared task will overwrite the value of the shared option for the length of that task, not including sub-tasks.
          
        "%
        | optional,
      tasks
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      usage
        | String
        | doc m%"
          The usage text to display in help text when using shell aliases to create a custom named CLI application.
          
        "%
        | optional,
    }