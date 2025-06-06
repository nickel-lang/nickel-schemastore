# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "additionalProperties.anyOf.1" =
        {
            cwd
              | String
              | doc "All 'src' matches are relative to (but don't include) this path"
              | optional,
            dest | String | doc "Destination path prefix." | optional,
            expand
              | Bool
              | doc "Must be set to true to use properties other than 'src' and 'dest'"
              | optional,
            ext
              | String
              | doc "Replace any existing extension with this value in generated 'dest' paths."
              | optional,
            extDot
              | std.enum.TagOrString
              | [| 'last, 'first |]
              | doc "Used to indicate where the period indicating the extension is located."
              | optional,
            filter
              | std.enum.TagOrString
              | [|
                'isSocket,
                'isFIFO,
                'isSymbolicLink,
                'isCharacterDevice,
                'isBlockDevice,
                'isDirectory,
                'isFile
              |]
              | doc "The 'filter' property can help you target files with a greater level of detail"
              | optional,
            flatten
              | Bool
              | doc "Remove all path parts from generated 'dest' paths"
              | optional,
            matchBase
              | Bool
              | doc "If set, patterns without slashes will be matched against the basename of the path if it contains slashes. For example, 'a?b' would match the path '/xyz/123/acb', but not '/xyz/acb/123'."
              | optional,
            nonull
              | Bool
              | doc "If set to 'true' then the operation will include non-matching patterns. Combined with grunt's '--verbose' flag, this option can help debug file path issues."
              | optional,
            rename
              | String
              | doc "This function is called for each matched 'src' file, (after extension renaming and flattening). "
              | optional,
            src
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | doc "Pattern(s) to match, relative to the 'cwd'.",
            ..
          },
      "definitions.options" =
        {
            "force"
              | Bool
              | doc "This overrides this task from blocking deletion of folders outside current working dir (CWD). Use with caution."
              | optional,
            no-write
              | Bool
              | doc "Will log messages of what would happen if the task was ran but doesn't actually delete the files."
              | optional,
            ..
          },
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            files =
                              std.contract.any_of
                                  [
                                    js2n.record.Record
                                      {
                                        additional =
                                          'Some
                                              (std.contract.any_of
                                                [
                                                  String,
                                                  std.contract.Sequence
                                                    [
                                                      js2n.array.MinItems 1,
                                                      js2n.array.UniqueItems,
                                                      js2n.array.ArrayOf String
                                                    ]
                                                ]),
                                        patterns = {},
                                        properties = {},
                                        required = {},
                                      },
                                    js2n.array.ArrayOf
                                      refs."additionalProperties.anyOf.1"
                                  ],
                          },
                      required = {},
                    },
                  Array Dyn,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            cwd = String,
                            dest = String,
                            expand = Bool,
                            ext = String,
                            extDot =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'last, 'first |] ],
                            filter =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'isSocket,
                                      'isFIFO,
                                      'isSymbolicLink,
                                      'isCharacterDevice,
                                      'isBlockDevice,
                                      'isDirectory,
                                      'isFile
                                    |]
                                  ],
                            flatten = Bool,
                            matchBase = Bool,
                            nonull = Bool,
                            rename = String,
                            src =
                              std.contract.Sequence
                                  [
                                    js2n.array.MinItems 1,
                                    js2n.array.UniqueItems,
                                    js2n.array.ArrayOf String
                                  ],
                          },
                      required = { src = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { options = refs."definitions.options", },
                      required = {},
                    },
                  js2n.array.ArrayOf String
                ]),
        patterns = {},
        properties = { options = refs."definitions.options", },
        required = {},
      }