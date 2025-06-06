# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.commands" =
        {
            arguments
              | String
              | doc "The arguments to pass to the executable file."
              | optional,
            fileName
              | String
              | doc "The name of the executable file name. Example: \"cmd.exe\".",
            workingDirectory
              | String
              | doc "Specify a relative or absolute directory path."
              | optional,
            ..
          },
      "definitions.vsbindings" = Array String,
    }
    in
  {
      "-vs-binding"
        | {
          AfterBuild | refs."definitions.vsbindings" | optional,
          BeforeBuild | refs."definitions.vsbindings" | optional,
          Clean | refs."definitions.vsbindings" | optional,
          ProjectOpen | refs."definitions.vsbindings" | optional,
          ..
        }
        | doc "Specify any Visual Studio event bindings."
        | optional,
      commands
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            { _ | refs."definitions.commands" },
            Array Dyn
          ]
        | doc "A list of commands."
        | optional,
      ..
    }