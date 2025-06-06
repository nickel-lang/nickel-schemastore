# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ext-ext" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [
                    js2n.array.UniqueItems,
                    Array refs."definitions.fileExtension"
                  ]
              },
              js2n.record.FieldsMatch "^(\\.[^/\\\\]+|\\*)$"
            ],
      "definitions.file-ext" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [
                    js2n.array.UniqueItems,
                    Array refs."definitions.fileExtension"
                  ]
              },
              js2n.record.FieldsMatch "^([^/\\\\|:><\"?\\*]+|\\*)$"
            ],
      "definitions.file-file" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ js2n.array.UniqueItems, Array refs."definitions.fileName" ]
              },
              js2n.record.FieldsMatch "^[^/\\\\|:><\"?\\*]+$"
            ],
      "definitions.fileExtension" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^\\.[^/\\\\]+$",
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.fileName" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[^/\\\\|:><\"?\\*]+$",
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.providers" =
        {
            addedExtension
              | js2n.record.MaxProperties 0
              | doc "If this exist, files with an additional extension should nest under file without additional extension. Example: file.html.css nest under file.html"
              | optional,
            allExtensions
              | {
                add
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        ".*"
                          | js2n.array.UniqueItems
                          | Array refs."definitions.fileExtension"
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | doc "Add nesting rules in the order to be applied by corresponding provider, where each rule entry has a form 'child: collection of potential parents'."
                  | optional,
                remove
                  | std.contract.any_of
                    [
                      {
                        ".*"
                          | Array refs."definitions.fileExtension"
                          | optional,
                        ..
                      },
                      std.contract.Sequence [ std.enum.TagOrString, [| '"*" |] ]
                    ]
                  | doc "Remove specified nesting rules if they are merged from higher level nesting settings."
                  | optional,
              }
              | doc "A greedy version of 'extensionToExtension' and has * as the only child key"
              | optional,
            extensionToExtension
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    add
                      | refs."definitions.ext-ext"
                      | { _ | Dyn }
                      | doc "Add nesting rules in the order to be applied by corresponding provider, where each rule entry has a form 'child: collection of potential parents'."
                      | optional,
                    remove
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.ext-ext", { _ | Dyn } ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| '"*" |] ]
                        ]
                      | doc "Remove specified nesting rules if they are merged from higher level nesting settings."
                      | optional,
                  },
                  Array Dyn
                ]
              | doc "Nest files with specific extensions under other specific extensions"
              | optional,
            fileSuffixToExtension
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    add
                      | refs."definitions.file-ext"
                      | { _ | Dyn }
                      | doc "Add nesting rules in the order to be applied by corresponding provider, where each rule entry has a form 'child: collection of potential parents'."
                      | optional,
                    remove
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.file-ext", { _ | Dyn } ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| '"*" |] ]
                        ]
                      | doc "Remove specified nesting rules if they are merged from higher level nesting settings."
                      | optional,
                  },
                  Array Dyn
                ]
              | doc "Nest files with specified suffixes under files with specified extensions."
              | optional,
            fileToFile
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    add
                      | refs."definitions.file-file"
                      | { _ | Dyn }
                      | doc "Add nesting rules in the order to be applied by corresponding provider, where each rule entry has a form 'child: collection of potential parents'."
                      | optional,
                    remove
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.file-file", { _ | Dyn } ],
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| '"*" |] ]
                        ]
                      | doc "Remove specified nesting rules if they are merged from higher level nesting settings."
                      | optional,
                  },
                  Array Dyn
                ]
              | doc "Nest specific file names under other specific file names"
              | optional,
            pathSegment
              | {
                add
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        ".*"
                          | js2n.array.UniqueItems
                          | Array refs."definitions.fileExtension"
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | doc "Add nesting rules in the order to be applied by corresponding provider, where each rule entry has a form 'child: collection of potential parents'."
                  | optional,
                remove
                  | std.contract.any_of
                    [
                      {
                        _ | std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array refs."definitions.fileExtension"
                          ]
                      },
                      std.contract.Sequence [ std.enum.TagOrString, [| '"*" |] ]
                    ]
                  | doc "Remove specified nesting rules if they are merged from higher level nesting settings."
                  | optional,
              }
              | doc "If this exists, files with \"extra\" extension part in the file name should nest under files without it, but having same name and last extension. Example: file.min.js nest under file.js."
              | optional,
            ..
          },
    }
    in
  {
      dependentFileProviders
        | {
          add
            | refs."definitions.providers"
            | doc "Add nesting rules in the order to be applied by corresponding provider, where each rule entry has a form 'child: collection of potential parents'."
            | optional,
          remove
            | std.contract.any_of
              [
                refs."definitions.providers",
                std.contract.Sequence [ std.enum.TagOrString, [| '"*" |] ]
              ]
            | doc "Remove specified nesting rules if they are merged from higher level nesting settings."
            | optional,
          ..
        }
        | doc "Contains a collection of nesting rule providers specified in the order to be applied."
        | optional,
      root
        | Bool
        | doc "Determines if this is the root nesting config file and no further inheritance is required."
        | optional,
      ..
    }