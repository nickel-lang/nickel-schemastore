# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.commandObject" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    arguments
                      | Array String
                      | doc "The compile command executed as list of strings."
                      | optional,
                    command
                      | String
                      | doc "The compile command executed. After JSON unescaping, this must be a valid command to rerun the exact compilation step for the translation unit in the environment the build system uses. Parameters use shell quoting and shell escaping of quotes, with '\"' and '\\' being the only special characters. Shell expansion is not supported."
                      | optional,
                    directory
                      | String
                      | doc "The working directory of the compilation. All paths specified in the command or file fields must be either absolute or relative to this directory."
                      | optional,
                    file
                      | String
                      | doc "The main translation unit source processed by this compilation step. This is used by tools as the key into the compilation database. There can be multiple command objects for the same file, for example if the same source file is compiled with different configurations."
                      | optional,
                    output
                      | String
                      | doc "The name of the output created by this compilation step. This field is optional. It can be used to distinguish different processing modes of the same input file."
                      | optional,
                    ..
                  },
                  Array Dyn
                ],
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Required [ "command", "directory", "file" ],
                  Array Dyn,
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Required [ "arguments", "directory", "file" ],
                  Array Dyn
                ]
            ],
    }
    in
  Array refs."definitions.commandObject"