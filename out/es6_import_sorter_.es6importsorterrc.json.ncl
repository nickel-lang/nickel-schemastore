# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      endImportBlockSign
        | String
        | doc "The sign to mark the end of import block. Default is '' - the first empty line"
        | optional,
      preCommands
        | Array (
          std.contract.any_of
            [
              String,
              {
                command
                  | js2n.string.MinLength 1
                  | doc "the command you need to execute before sorting. It can be terminal command or vscode command",
                system
                  | js2n.OneOf
                    [
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'vscode |] ],
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'terminal |] ]
                    ]
                  | doc "Define the system will execute the command"
                  | optional,
              }
            ]
        )
        | doc "The command list run before sorting"
        | optional,
      sectionNames
        | Array String
        | doc "The names (which comes right after 'sectionPrefix') of your section title"
        | optional,
      sectionPrefix
        | String
        | doc "The prefix of your section title"
        | optional,
      sourcePrefixes
        | Array String
        | doc "The prefixes of your source imports. Ex: import sth from '@data' => '@' can considered as a sourcePrefix"
        | optional,
      startImportBlockSign
        | String
        | doc "The sign to mark the start of import block. Default is '' - the start of the file"
        | optional,
      statementTerminator
        | String
        | doc "The sign to mark the end of an import statement. Default is ';'"
        | optional,
    }