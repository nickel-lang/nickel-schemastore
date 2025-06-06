# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.defaultDestination" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                defaultDestination
                  | js2n.string.MinLength 1
                  | doc "The default destination to place library files."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.defaultProvider" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                defaultProvider
                  | js2n.string.MinLength 1
                  | doc "The unique identifier of the provider to use as default."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.fileMapping" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                libraries
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | Dyn },
                      js2n.array.Contains
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "fileMappings" ],
                            Array Dyn
                          ])
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.libraryEntry" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                destination
                  | js2n.string.Matches "^[^\\\\]+$"
                  | doc "The relative folder path from this config file to the location where the files should be copied to."
                  | optional,
                fileMappings
                  | Array
                    {
                      destination
                        | js2n.string.MinLength 1
                        | doc "The destination for files included in this mapping. If omitted, defaults to a destination set for the library."
                        | optional,
                      files
                        | Array (js2n.string.MinLength 1)
                        | doc "The file names of the individual files to copy to the project, relative to the specified root. If omitted, defaults to all files."
                        | optional,
                      root
                        | js2n.string.MinLength 1
                        | doc "The mapping root within the library contents. If omitted, defaults to the library root."
                        | optional,
                      ..
                    }
                  | doc "A list of file mappings."
                  | optional,
                files
                  | Array (js2n.string.MinLength 1)
                  | doc "The file names of the individual files to copy to the project."
                  | optional,
                library
                  | js2n.string.MinLength 1
                  | doc "The unique identifier of the library.",
                provider
                  | js2n.string.MinLength 1
                  | doc "The unique identifier of the provider"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.manifestVersion3" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { version | std.contract.Equal "3.0", .. },
              Array Dyn
            ],
      "definitions.specifiedDestination" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    libraries
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array (
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "destination" ],
                                Array Dyn
                              ]
                          )
                        ]
                      | optional,
                    ..
                  },
                  Array Dyn
                ],
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "defaultDestination" ],
                    Array Dyn
                  ])
            ],
      "definitions.specifiedProvider" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    libraries
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array (
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "provider" ],
                                Array Dyn
                              ]
                          )
                        ]
                      | optional,
                    ..
                  },
                  Array Dyn
                ],
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "defaultProvider" ],
                    Array Dyn
                  ])
            ],
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            refs."definitions.specifiedProvider",
            refs."definitions.defaultProvider"
          ],
        std.contract.any_of
          [
            refs."definitions.specifiedDestination",
            refs."definitions.defaultDestination"
          ],
        js2n.IfThenElse refs."definitions.fileMapping"
          refs."definitions.manifestVersion3" js2n.Always,
        {
          libraries
            | Array refs."definitions.libraryEntry"
            | doc "A list of library references.",
          version
            | std.enum.TagOrString
            | [| '"3.0", '"1.0" |]
            | doc "The syntax version of this config file.",
          ..
        }
      ]