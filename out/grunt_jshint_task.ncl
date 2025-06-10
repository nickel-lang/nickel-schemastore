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
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { jshintrc = js2n.Enum [ true ], },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        asi = Bool,
                        bitwise = Bool,
                        boss = Bool,
                        browser = Bool,
                        browserify = Bool,
                        couch = Bool,
                        curly = Bool,
                        debug = Bool,
                        devel = Bool,
                        dojo = Bool,
                        elision = Bool,
                        eqeqeq = Bool,
                        eqnull = Bool,
                        esversion =
                          std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.Enum [ 3, 5, 6, 7, 8, 9, 10, 11 ]
                              ],
                        evil = Bool,
                        expr = Bool,
                        extends = String,
                        forin = Bool,
                        freeze = Bool,
                        funcscope = Bool,
                        futurehostile = Bool,
                        globals =
                          js2n.record.Record
                              {
                                additional = 'Some Bool,
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        iterator = Bool,
                        jasmine = Bool,
                        jquery = Bool,
                        lastsemic = Bool,
                        latedef = js2n.Enum [ true, false, "nofunc" ],
                        leanswitch = Bool,
                        loopfunc = Bool,
                        maxcomplexity =
                          std.contract.any_of [ Bool, std.number.Integer ],
                        maxdepth =
                          std.contract.any_of [ Bool, std.number.Integer ],
                        maxerr = std.number.Integer,
                        maxparams =
                          std.contract.any_of [ Bool, std.number.Integer ],
                        maxstatements =
                          std.contract.any_of [ Bool, std.number.Integer ],
                        mocha = Bool,
                        module = Bool,
                        mootools = Bool,
                        moz = Bool,
                        noarg = Bool,
                        nocomma = Bool,
                        node = Bool,
                        nonbsp = Bool,
                        nonew = Bool,
                        nonstandard = Bool,
                        noreturnawait = Bool,
                        notypeof = Bool,
                        noyield = Bool,
                        overrides =
                          js2n.record.Record
                              {
                                additional = 'Some ({ _ | Dyn }),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        phantom = Bool,
                        plusplus = Bool,
                        proto = Bool,
                        prototypejs = Bool,
                        regexpu = Bool,
                        rhino = Bool,
                        scripturl = Bool,
                        shadow = js2n.Enum [ true, false, "inner", "outer" ],
                        shelljs = Bool,
                        singleGroups = Bool,
                        strict =
                          js2n.Enum
                              [ true, false, "implied", "global", "func" ],
                        supernew = Bool,
                        trailingcomma = Bool,
                        typed = Bool,
                        undef = Bool,
                        unused = js2n.Enum [ true, false, "vars", "strict" ],
                        validthis = Bool,
                        varstmt = Bool,
                        withstmt = Bool,
                        worker = Bool,
                        wsh = Bool,
                        yui = Bool,
                      },
                  required = {},
                }
            ],
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
                    }
                ]),
        patterns = {},
        properties = { options = refs."definitions.options", },
        required = {},
      }