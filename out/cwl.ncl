# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CWLDocumentMetadata" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                { "^\\w+:.*$" = { _ | Dyn }, "^\\w+:\\/\\/.*" = { _ | Dyn }, },
              properties =
                {
                    "$namespaces" =
                      js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              { "^[_a-zA-Z][a-zA-Z0-9_-]*$" = String, },
                            properties = {},
                            required = {},
                          },
                    "$schemas" = Array String,
                  },
              required = {},
            },
      "definitions.CWLFile" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.Workflow", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CommandLineTool", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ExpressionTool", { _ | Dyn } ]
                ],
              refs."definitions.CWLDocumentMetadata",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\w+:.*$" = { _ | Dyn },
                        "^\\w+:\\/\\/.*" = { _ | Dyn },
                      },
                  properties =
                    {
                        "$namespaces" = js2n.Always,
                        "$schemas" = js2n.Always,
                        arguments = js2n.Always,
                        baseCommand = js2n.Always,
                        class = js2n.Always,
                        cwlVersion = js2n.Always,
                        "doc" = js2n.Always,
                        expression = js2n.Always,
                        hints = js2n.Always,
                        id = js2n.Always,
                        inputs = js2n.Always,
                        intent = js2n.Always,
                        label = js2n.Always,
                        outputs = js2n.Always,
                        permanentFailCodes = js2n.Always,
                        requirements = js2n.Always,
                        stderr = js2n.Always,
                        stdin = js2n.Always,
                        stdout = js2n.Always,
                        steps = js2n.Always,
                        successCodes = js2n.Always,
                        temporaryFailCodes = js2n.Always,
                      },
                  required = {},
                }
            ],
      "definitions.CWLGraph" =
        {
            "$graph"
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CWLFile", { _ | Dyn } ]
              ),
            cwlVersion
              | std.enum.TagOrString
              | [|
                '"v1.2.0-dev5",
                '"v1.2.0-dev4",
                '"v1.2.0-dev3",
                '"v1.2.0-dev2",
                '"v1.2.0-dev1",
                '"v1.2",
                '"v1.1.0-dev1",
                '"v1.1",
                '"v1.0.dev4",
                '"v1.0",
                '"draft-4.dev3",
                '"draft-4.dev2",
                '"draft-4.dev1",
                '"draft-3.dev5",
                '"draft-3.dev4",
                '"draft-3.dev3",
                '"draft-3.dev2",
                '"draft-3.dev1",
                'draft-3,
                'draft-2
              |]
              | doc m%"
                CWL document version. Always required at the document root. Not
                required for a Process embedded inside another Process.
              "%
              | optional,
            ..
          },
      "definitions.CWLGraphOrFile" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.CWLGraph", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.CWLFile", { _ | Dyn } ]
                ],
              refs."definitions.CWLDocumentMetadata",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^\\w+:.*$" = { _ | Dyn },
                        "^\\w+:\\/\\/.*" = { _ | Dyn },
                      },
                  properties =
                    {
                        "$graph" = js2n.Always,
                        "$namespaces" = js2n.Always,
                        "$schemas" = js2n.Always,
                        arguments = js2n.Always,
                        baseCommand = js2n.Always,
                        class = js2n.Always,
                        cwlVersion = js2n.Always,
                        "doc" = js2n.Always,
                        expression = js2n.Always,
                        hints = js2n.Always,
                        id = js2n.Always,
                        inputs = js2n.Always,
                        intent = js2n.Always,
                        label = js2n.Always,
                        outputs = js2n.Always,
                        permanentFailCodes = js2n.Always,
                        requirements = js2n.Always,
                        stderr = js2n.Always,
                        stdin = js2n.Always,
                        stdout = js2n.Always,
                        steps = js2n.Always,
                        successCodes = js2n.Always,
                        temporaryFailCodes = js2n.Always,
                      },
                  required = {},
                }
            ],
      "definitions.CWLImportManual" = { "$import" | String, },
      "definitions.CWLIncludeManual" = { "$include" | String, },
      "definitions.CommandInputArraySchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            inputBinding
              | refs."definitions.CommandLineBinding"
              | { _ | Dyn }
              | doc "Describes how to turn this object into command line arguments."
              | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."definitions.CommandInputRecordSchema",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.CommandInputEnumSchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandInputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandInputEnumSchema",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  String
                ]
              | doc "Defines the type of the array elements.",
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "array" | doc "Must be `array`",
          },
      "definitions.CommandInputEnumSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            inputBinding
              | refs."definitions.CommandLineBinding"
              | { _ | Dyn }
              | doc "Describes how to turn this object into command line arguments."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            symbols | Array String | doc "Defines the set of valid symbols.",
            type | std.contract.Equal "enum" | doc "Must be `enum`",
          },
      "definitions.CommandInputParameter" =
        {
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc m%"
                The default value to use for this parameter if the parameter is missing
                from the input object, or if the value of the parameter in the input
                object is `null`.  Default values are applied before evaluating expressions
                (e.g. dependent `valueFrom` fields).
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This must be one or more IRIs of concept nodes
                that represents file formats which are allowed as input to this
                parameter, preferably defined within an ontology.  If no ontology is
                available, file formats may be tested by exact match.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            inputBinding
              | refs."definitions.CommandLineBinding"
              | { _ | Dyn }
              | doc m%"
                Describes how to turn the input parameters of a process into
                command line arguments.
              "%
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            loadContents
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                If true, the file (or each file in the array) must be a UTF-8
                text file 64 KiB or smaller, and the implementation must read
                the entire contents of the file (or file array) and place it
                in the `contents` field of the File object for use by
                expressions.  If the size of the file is greater than 64 KiB,
                the implementation must raise a fatal error.
              "%
              | optional,
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | doc m%"
                Only valid when `type: Directory` or is an array of `items: Directory`.
                
                Specify the desired behavior for loading the `listing` field of
                a Directory object for use by expressions.
                
                The order of precedence for loadListing is:
                
                  1. `loadListing` on an individual parameter
                  2. Inherited from `LoadListingRequirement`
                  3. By default: `no_listing`
              "%
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.CommandInputArraySchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."definitions.CommandInputRecordSchema",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.CommandInputEnumSchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.CommandInputArraySchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandInputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandInputEnumSchema",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  String
                ]
              | doc "Specify valid types of data that may be assigned to this parameter.",
          },
      "definitions.CommandInputRecordField" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | std.contract.any_of [ Array String, String ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This must be one or more IRIs of concept nodes
                    that represents file formats which are allowed as input to this
                    parameter, preferably defined within an ontology.  If no ontology is
                    available, file formats may be tested by exact match.
                  "%
                  | optional,
                inputBinding
                  | refs."definitions.CommandLineBinding"
                  | { _ | Dyn }
                  | doc "Describes how to turn this object into command line arguments."
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                loadContents
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    If true, the file (or each file in the array) must be a UTF-8
                    text file 64 KiB or smaller, and the implementation must read
                    the entire contents of the file (or file array) and place it
                    in the `contents` field of the File object for use by
                    expressions.  If the size of the file is greater than 64 KiB,
                    the implementation must raise a fatal error.
                  "%
                  | optional,
                loadListing
                  | std.enum.TagOrString
                  | [| 'shallow_listing, 'no_listing, 'deep_listing |]
                  | doc m%"
                    Only valid when `type: Directory` or is an array of `items: Directory`.
                    
                    Specify the desired behavior for loading the `listing` field of
                    a Directory object for use by expressions.
                    
                    The order of precedence for loadListing is:
                    
                      1. `loadListing` on an individual parameter
                      2. Inherited from `LoadListingRequirement`
                      3. By default: `no_listing`
                  "%
                  | optional,
                name | String | doc "The name of the field",
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.CommandInputArraySchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandInputRecordSchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandInputEnumSchema",
                          { _ | Dyn }
                        ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.CommandInputArraySchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandInputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandInputEnumSchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputArraySchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputRecordSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputEnumSchema",
                        { _ | Dyn }
                      ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.CommandInputArraySchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandInputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandInputEnumSchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              )
            ],
      "definitions.CommandInputRecordFieldMap" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | std.contract.any_of [ Array String, String ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This must be one or more IRIs of concept nodes
                    that represents file formats which are allowed as input to this
                    parameter, preferably defined within an ontology.  If no ontology is
                    available, file formats may be tested by exact match.
                  "%
                  | optional,
                inputBinding
                  | refs."definitions.CommandLineBinding"
                  | { _ | Dyn }
                  | doc "Describes how to turn this object into command line arguments."
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                loadContents
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    If true, the file (or each file in the array) must be a UTF-8
                    text file 64 KiB or smaller, and the implementation must read
                    the entire contents of the file (or file array) and place it
                    in the `contents` field of the File object for use by
                    expressions.  If the size of the file is greater than 64 KiB,
                    the implementation must raise a fatal error.
                  "%
                  | optional,
                loadListing
                  | std.enum.TagOrString
                  | [| 'shallow_listing, 'no_listing, 'deep_listing |]
                  | doc m%"
                    Only valid when `type: Directory` or is an array of `items: Directory`.
                    
                    Specify the desired behavior for loading the `listing` field of
                    a Directory object for use by expressions.
                    
                    The order of precedence for loadListing is:
                    
                      1. `loadListing` on an individual parameter
                      2. Inherited from `LoadListingRequirement`
                      3. By default: `no_listing`
                  "%
                  | optional,
                name | String | doc "The name of the field" | optional,
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.CommandInputArraySchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandInputRecordSchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandInputEnumSchema",
                          { _ | Dyn }
                        ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.CommandInputArraySchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandInputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandInputEnumSchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputArraySchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputRecordSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputEnumSchema",
                        { _ | Dyn }
                      ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.CommandInputArraySchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandInputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandInputEnumSchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              ),
              String
            ],
      "definitions.CommandInputRecordSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            fields
              | std.contract.any_of
                [
                  Array refs."definitions.CommandInputRecordField",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              refs."definitions.CommandInputRecordFieldMap",
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc "Defines the fields of the record."
              | optional,
            inputBinding
              | refs."definitions.CommandLineBinding"
              | { _ | Dyn }
              | doc "Describes how to turn this object into command line arguments."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "record" | doc "Must be `record`",
          },
      "definitions.CommandLineBinding" =
        {
            itemSeparator
              | String
              | doc m%"
                Join the array elements into a single string with the elements
                separated by `itemSeparator`.
              "%
              | optional,
            loadContents
              | Bool
              | doc m%"
                Use of `loadContents` in `InputBinding` is deprecated.
                Preserved for v1.0 backwards compatibility.  Will be removed in
                CWL v2.0.  Use `InputParameter.loadContents` instead.
              "%
              | optional,
            position
              | std.contract.any_of [ Number, String ]
              | doc m%"
                The sorting key.  Default position is 0. If a [CWL Parameter Reference](#Parameter_references)
                or [CWL Expression](#Expressions_(Optional)) is used and if the
                inputBinding is associated with an input parameter, then the value of
                `self` will be the value of the input parameter.  Input parameter
                defaults (as specified by the `InputParameter.default` field) must be
                applied before evaluating the expression. Expressions must return a
                single value of type int or a null.
              "%
              | optional,
            prefix
              | String
              | doc "Command line prefix to add before the value."
              | optional,
            separate
              | Bool
              | doc m%"
                If true (default), then the prefix and value must be added as separate
                command line arguments; if false, prefix and value must be concatenated
                into a single command line argument.
              "%
              | optional,
            shellQuote
              | Bool
              | doc m%"
                If `ShellCommandRequirement` is in the requirements for the current command,
                this controls whether the value is quoted on the command line (default is true).
                Use `shellQuote: false` to inject metacharacters for operations such as pipes.
                
                If `shellQuote` is true or not provided, the implementation must not
                permit interpretation of any shell metacharacters or directives.
              "%
              | optional,
            valueFrom
              | String
              | doc m%"
                If `valueFrom` is a constant string value, use this as the value and
                apply the binding rules above.
                
                If `valueFrom` is an expression, evaluate the expression to yield the
                actual value to use to build the command line and apply the binding
                rules above.  If the inputBinding is associated with an input
                parameter, the value of `self` in the expression will be the value of
                the input parameter.  Input parameter defaults (as specified by the
                `InputParameter.default` field) must be applied before evaluating the
                expression.
                
                If the value of the associated input parameter is `null`, `valueFrom` is
                not evaluated and nothing is added to the command line.
                
                When a binding is part of the `CommandLineTool.arguments` field,
                the `valueFrom` field is required.
              "%
              | optional,
          },
      "definitions.CommandLineTool" =
        {
            arguments
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.CommandLineBinding", { _ | Dyn } ],
                    String
                  ]
              )
              | doc m%"
                Command line bindings which are not directly associated with input
                parameters. If the value is a string, it is used as a string literal
                argument. If it is an Expression, the result of the evaluation is used
                as an argument.
              "%
              | optional,
            baseCommand
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Specifies the program to execute.  If an array, the first element of
                the array is the command to execute, and subsequent elements are
                mandatory command line arguments.  The elements in `baseCommand` must
                appear before any command line bindings from `inputBinding` or
                `arguments`.
                
                If `baseCommand` is not provided or is an empty array, the first
                element of the command line produced after processing `inputBinding` or
                `arguments` must be used as the program to execute.
                
                If the program includes a path separator character it must
                be an absolute path, otherwise it is an error.  If the program does not
                include a path separator, search the `$PATH` variable in the runtime
                environment of the workflow runner find the absolute path of the
                executable.
              "%
              | optional,
            class | std.contract.Equal "CommandLineTool",
            cwlVersion
              | std.enum.TagOrString
              | [|
                '"v1.2.0-dev5",
                '"v1.2.0-dev4",
                '"v1.2.0-dev3",
                '"v1.2.0-dev2",
                '"v1.2.0-dev1",
                '"v1.2",
                '"v1.1.0-dev1",
                '"v1.1",
                '"v1.0.dev4",
                '"v1.0",
                '"draft-4.dev3",
                '"draft-4.dev2",
                '"draft-4.dev1",
                '"draft-3.dev5",
                '"draft-3.dev4",
                '"draft-3.dev3",
                '"draft-3.dev2",
                '"draft-3.dev1",
                'draft-3,
                'draft-2
              |]
              | doc m%"
                CWL document version. Always required at the document root. Not
                required for a Process embedded inside another Process.
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            hints
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            id
              | String
              | doc m%"
                The unique identifier for this object.
                
                Only useful for `$graph` at `Process` level. Should not be exposed
                to users in graphical or terminal user interfaces.
              "%
              | optional,
            inputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.CommandInputParameter", { _ | Dyn } ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.CommandInputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.CommandInputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.CommandInputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.CommandInputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.CommandInputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.CommandInputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.CommandInputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.CommandInputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the input parameters of the process.  The process is ready to
                run when all required input parameters are associated with concrete
                values.  Input parameters include a schema for each parameter which is
                used to validate the input object.  It may also be used to build a user
                interface for constructing the input object.
                
                When accepting an input object, all input parameters must have a value.
                If an input parameter is missing from the input object, it must be
                assigned a value of `null` (or the value of `default` for that
                parameter, if provided) for the purposes of validation and evaluation
                of expressions.
              "%,
            intent
              | Array String
              | doc m%"
                An identifier for the type of computational operation, of this Process.
                Especially useful for [`Operation`](Workflow.html#Operation), but can also be used for
                [`CommandLineTool`](CommandLineTool.html#CommandLineTool),
                [`Workflow`](Workflow.html#Workflow), or [ExpressionTool](Workflow.html#ExpressionTool).
                
                If provided, then this must be an IRI of a concept node that
                represents the type of operation, preferably defined within an ontology.
                
                For example, in the domain of bioinformatics, one can use an IRI from
                the EDAM Ontology's [Operation concept nodes](http://edamontology.org/operation_0004),
                like [Alignment](http://edamontology.org/operation_2928),
                or [Clustering](http://edamontology.org/operation_3432); or a more
                specific Operation concept like
                [Split read mapping](http://edamontology.org/operation_3199).
              "%
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            outputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.CommandOutputParameter", { _ | Dyn } ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.CommandOutputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.CommandOutputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.CommandOutputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.CommandOutputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.CommandOutputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.CommandOutputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.CommandOutputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.CommandOutputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the parameters representing the output of the process.  May be
                used to generate and/or validate the output object.
              "%,
            permanentFailCodes
              | Array Number
              | doc m%"
                Exit codes that indicate the process failed due to a permanent logic error, where executing the process with the same runtime environment and same inputs is expected to always fail.
                If not specified, all exit codes except 0 are considered permanent failure.
              "%
              | optional,
            requirements
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            stderr
              | String
              | doc m%"
                Capture the command's standard error stream to a file written to
                the designated output directory.
                
                If `stderr` is a string, it specifies the file name to use.
                
                If `stderr` is an expression, the expression is evaluated and must
                return a string with the file name to use to capture stderr.  If the
                return value is not a string, or the resulting path contains illegal
                characters (such as the path separator `/`) it is an error.
              "%
              | optional,
            stdin
              | String
              | doc m%"
                A path to a file whose contents must be piped into the command's
                standard input stream.
              "%
              | optional,
            stdout
              | String
              | doc m%"
                Capture the command's standard output stream to a file written to
                the designated output directory.
                
                If the `CommandLineTool` contains logically chained commands
                (e.g. `echo a && echo b`) `stdout` must include the output of
                every command.
                
                If `stdout` is a string, it specifies the file name to use.
                
                If `stdout` is an expression, the expression is evaluated and must
                return a string with the file name to use to capture stdout.  If the
                return value is not a string, or the resulting path contains illegal
                characters (such as the path separator `/`) it is an error.
              "%
              | optional,
            successCodes
              | Array Number
              | doc m%"
                Exit codes that indicate the process completed successfully.
                
                If not specified, only exit code 0 is considered success.
              "%
              | optional,
            temporaryFailCodes
              | Array Number
              | doc m%"
                Exit codes that indicate the process failed due to a possibly
                temporary condition, where executing the process with the same
                runtime environment and inputs may produce different results.
                
                If not specified, no exit codes are considered temporary failure.
              "%
              | optional,
            ..
          },
      "definitions.CommandOutputArraySchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      refs."definitions.CommandOutputRecordSchema",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.CommandOutputEnumSchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandOutputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandOutputEnumSchema",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  String
                ]
              | doc "Defines the type of the array elements.",
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "array" | doc "Must be `array`",
          },
      "definitions.CommandOutputBinding" =
        {
            glob
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Find files or directories relative to the output directory, using POSIX
                glob(3) pathname matching.  If an array is provided, find files or
                directories that match any pattern in the array.  If an expression is
                provided, the expression must return a string or an array of strings,
                which will then be evaluated as one or more glob patterns.  Must only
                match and return files/directories which actually exist.
                
                If the value of glob is a relative path pattern (does not
                begin with a slash '/') then it is resolved relative to the
                output directory.  If the value of the glob is an absolute
                path pattern (it does begin with a slash '/') then it must
                refer to a path within the output directory.  It is an error
                if any glob resolves to a path outside the output directory.
                Specifically this means globs that resolve to paths outside the output
                directory are illegal.
                
                A glob may match a path within the output directory which is
                actually a symlink to another file.  In this case, the
                expected behavior is for the resulting File/Directory object to take the
                `basename` (and corresponding `nameroot` and `nameext`) of the
                symlink.  The `location` of the File/Directory is implementation
                dependent, but logically the File/Directory should have the same content
                as the symlink target.  Platforms may stage output files/directories to
                cloud storage that lack the concept of a symlink.  In
                this case file content and directories may be duplicated, or (to avoid
                duplication) the File/Directory `location` may refer to the symlink
                target.
                
                It is an error if a symlink in the output directory (or any
                symlink in a chain of links) refers to any file or directory
                that is not under an input or output directory.
                
                Implementations may shut down a container before globbing
                output, so globs and expressions must not assume access to the
                container filesystem except for declared input and output.
              "%
              | optional,
            loadContents
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                If true, the file (or each file in the array) must be a UTF-8
                text file 64 KiB or smaller, and the implementation must read
                the entire contents of the file (or file array) and place it
                in the `contents` field of the File object for use by
                expressions.  If the size of the file is greater than 64 KiB,
                the implementation must raise a fatal error.
              "%
              | optional,
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | doc m%"
                Only valid when `type: Directory` or is an array of `items: Directory`.
                
                Specify the desired behavior for loading the `listing` field of
                a Directory object for use by expressions.
                
                The order of precedence for loadListing is:
                
                  1. `loadListing` on an individual parameter
                  2. Inherited from `LoadListingRequirement`
                  3. By default: `no_listing`
              "%
              | optional,
            outputEval
              | String
              | doc m%"
                Evaluate an expression to generate the output value.  If
                `glob` was specified, the value of `self` must be an array
                containing file objects that were matched.  If no files were
                matched, `self` must be a zero length array; if a single file
                was matched, the value of `self` is an array of a single
                element.  The exit code of the process is
                available in the expression as `runtime.exitCode`.
                
                Additionally, if `loadContents` is true, the file must be a
                UTF-8 text file 64 KiB or smaller, and the implementation must
                read the entire contents of the file (or file array) and place
                it in the `contents` field of the File object for use in
                `outputEval`.  If the size of the file is greater than 64 KiB,
                the implementation must raise a fatal error.
                
                If a tool needs to return a large amount of structured data to
                the workflow, loading the output object from `cwl.output.json`
                bypasses `outputEval` and is not subject to the 64 KiB
                `loadContents` limit.
              "%
              | optional,
          },
      "definitions.CommandOutputEnumSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            symbols | Array String | doc "Defines the set of valid symbols.",
            type | std.contract.Equal "enum" | doc "Must be `enum`",
          },
      "definitions.CommandOutputParameter" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | String
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This is the file format that will be assigned to the output
                File object.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            outputBinding
              | refs."definitions.CommandOutputBinding"
              | { _ | Dyn }
              | doc "Describes how to generate this output object based on the files produced by a CommandLineTool"
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.CommandOutputArraySchema",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.CommandOutputRecordSchema",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.CommandOutputEnumSchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.CommandOutputArraySchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandOutputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.CommandOutputEnumSchema",
                            { _ | Dyn }
                          ],
                        String
                      ]),
                  String
                ]
              | doc "Specify valid types of data that may be assigned to this parameter.",
          },
      "definitions.CommandOutputRecordField" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | String
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This is the file format that will be assigned to the output
                    File object.
                  "%
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                name | String | doc "The name of the field",
                outputBinding
                  | refs."definitions.CommandOutputBinding"
                  | { _ | Dyn }
                  | doc m%"
                    Describes how to generate this output object based on the files
                    produced by a CommandLineTool
                  "%
                  | optional,
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.CommandOutputArraySchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandOutputRecordSchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandOutputEnumSchema",
                          { _ | Dyn }
                        ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.CommandOutputArraySchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandOutputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandOutputEnumSchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.CommandOutputArraySchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandOutputRecordSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandOutputEnumSchema",
                        { _ | Dyn }
                      ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.CommandOutputArraySchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandOutputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandOutputEnumSchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              )
            ],
      "definitions.CommandOutputRecordFieldMap" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | String
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This is the file format that will be assigned to the output
                    File object.
                  "%
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                name | String | doc "The name of the field" | optional,
                outputBinding
                  | refs."definitions.CommandOutputBinding"
                  | { _ | Dyn }
                  | doc m%"
                    Describes how to generate this output object based on the files
                    produced by a CommandLineTool
                  "%
                  | optional,
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          refs."definitions.CommandOutputArraySchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandOutputRecordSchema",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [
                          refs."definitions.CommandOutputEnumSchema",
                          { _ | Dyn }
                        ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.CommandOutputArraySchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandOutputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.CommandOutputEnumSchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.CommandOutputArraySchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandOutputRecordSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandOutputEnumSchema",
                        { _ | Dyn }
                      ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.CommandOutputArraySchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandOutputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.CommandOutputEnumSchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              ),
              String
            ],
      "definitions.CommandOutputRecordSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            fields
              | std.contract.any_of
                [
                  Array refs."definitions.CommandOutputRecordField",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              refs."definitions.CommandOutputRecordFieldMap",
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc "Defines the fields of the record."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "record" | doc "Must be `record`",
          },
      "definitions.Directory" =
        {
            basename
              | String
              | doc m%"
                The base name of the directory, that is, the name of the file without any
                leading directory path.  The base name must not contain a slash `/`.
                
                If not provided, the implementation must set this field based on the
                `location` field by taking the final path component after parsing
                `location` as an IRI.  If `basename` is provided, it is not required to
                match the value from `location`.
                
                When this file is made available to a CommandLineTool, it must be named
                with `basename`, i.e. the final component of the `path` field must match
                `basename`.
              "%
              | optional,
            class
              | std.contract.Equal "Directory"
              | doc "Must be `Directory` to indicate this object describes a Directory.",
            listing
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.File", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                List of files or subdirectories contained in this directory.  The name
                of each file or subdirectory is determined by the `basename` field of
                each `File` or `Directory` object.  It is an error if a `File` shares a
                `basename` with any other entry in `listing`.  If two or more
                `Directory` object share the same `basename`, this must be treated as
                equivalent to a single subdirectory with the listings recursively
                merged.
              "%
              | optional,
            location
              | String
              | doc m%"
                An IRI that identifies the directory resource.  This may be a relative
                reference, in which case it must be resolved using the base IRI of the
                document.  The location may refer to a local or remote resource.  If
                the `listing` field is not set, the implementation must use the
                location IRI to retrieve directory listing.  If an implementation is
                unable to retrieve the directory listing stored at a remote resource (due to
                unsupported protocol, access denied, or other issue) it must signal an
                error.
                
                If the `location` field is not provided, the `listing` field must be
                provided.  The implementation must assign a unique identifier for
                the `location` field.
                
                If the `path` field is provided but the `location` field is not, an
                implementation may assign the value of the `path` field to `location`,
                then follow the rules above.
              "%
              | optional,
            path
              | String
              | doc m%"
                The local path where the Directory is made available prior to executing a
                CommandLineTool.  This must be set by the implementation.  This field
                must not be used in any other context.  The command line tool being
                executed must be able to access the directory at `path` using the POSIX
                `opendir(2)` syscall.
                
                If the `path` contains [POSIX shell metacharacters](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_02)
                (`|`,`&`, `;`, `<`, `>`, `(`,`)`, `$`,`` ` ``, `\`, `"`, `'`,
                `<space>`, `<tab>`, and `<newline>`) or characters
                [not allowed](http://www.iana.org/assignments/idna-tables-6.3.0/idna-tables-6.3.0.xhtml)
                for [Internationalized Domain Names for Applications](https://tools.ietf.org/html/rfc6452)
                then implementations may terminate the process with a
                `permanentFailure`.
              "%
              | optional,
          },
      "definitions.Dirent" =
        {
            entry
              | String
              | doc m%"
                If the value is a string literal or an expression which evaluates to a
                string, a new text file must be created with the string as the file contents.
                
                If the value is an expression that evaluates to a `File` or
                `Directory` object, or an array of `File` or `Directory`
                objects, this indicates the referenced file or directory
                should be added to the designated output directory prior to
                executing the tool.
                
                If the value is an expression that evaluates to `null`,
                nothing is added to the designated output directory, the entry
                has no effect.
                
                If the value is an expression that evaluates to some other
                array, number, or object not consisting of `File` or
                `Directory` objects, a new file must be created with the value
                serialized to JSON text as the file contents.  The JSON
                serialization behavior should match the behavior of string
                interpolation of [Parameter
                references](#Parameter_references).
              "%,
            entryname
              | String
              | doc m%"
                The "target" name of the file or subdirectory.  If `entry` is
                a File or Directory, the `entryname` field overrides the value
                of `basename` of the File or Directory object.
                
                * Required when `entry` evaluates to file contents only
                * Optional when `entry` evaluates to a File or Directory object with a `basename`
                * Invalid when `entry` evaluates to an array of File or Directory objects.
                
                If `entryname` is a relative path, it specifies a name within
                the designated output directory.  A relative path starting
                with `../` or that resolves to location above the designated output directory is an error.
                
                If `entryname` is an absolute path (starts with a slash `/`)
                it is an error unless the following conditions are met:
                
                  * `DockerRequirement` is present in `requirements`
                  * The program is will run inside a software container
                  where, from the perspective of the program, the root
                  filesystem is not shared with any other user or
                  running program.
                
                In this case, and the above conditions are met, then
                `entryname` may specify the absolute path within the container
                where the file or directory must be placed.
              "%
              | optional,
            writable
              | Bool
              | doc m%"
                If true, the File or Directory (or array of Files or
                Directories) declared in `entry` must be writable by the tool.
                
                Changes to the file or directory must be isolated and not
                visible by any other CommandLineTool process.  This may be
                implemented by making a copy of the original file or
                directory.
                
                Disruptive changes to the referenced file or directory must not
                be allowed unless `InplaceUpdateRequirement.inplaceUpdate` is true.
                
                Default false (files and directories read-only by default).
                
                A directory marked as `writable: true` implies that all files and
                subdirectories are recursively writable as well.
                
                If `writable` is false, the file may be made available using a
                bind mount or file system link to avoid unnecessary copying of
                the input file.  Command line tools may receive an error on
                attempting to rename or delete files or directories that are
                not explicitly marked as writable.
              "%
              | optional,
          },
      "definitions.DockerRequirement" =
        {
            class
              | std.contract.Equal "DockerRequirement"
              | doc "Always 'DockerRequirement'",
            dockerFile
              | String
              | doc "Supply the contents of a Dockerfile which will be built using `docker build`."
              | optional,
            dockerImageId
              | String
              | doc m%"
                The image id that will be used for `docker run`.  May be a
                human-readable image name or the image identifier hash.  May be skipped
                if `dockerPull` is specified, in which case the `dockerPull` image id
                must be used.
              "%
              | optional,
            dockerImport
              | String
              | doc "Provide HTTP URL to download and gunzip a Docker images using `docker import."
              | optional,
            dockerLoad
              | String
              | doc "Specify an HTTP URL from which to download a Docker image using `docker load`."
              | optional,
            dockerOutputDirectory
              | String
              | doc m%"
                Set the designated output directory to a specific location inside the
                Docker container.
              "%
              | optional,
            dockerPull
              | String
              | doc m%"
                Specify a Docker image to retrieve using `docker pull`. Can contain the
                immutable digest to ensure an exact container is used:
                `dockerPull: ubuntu@sha256:45b23dee08af5e43a7fea6c4cf9c25ccf269ee113168c19722f87876677c5cb2`
              "%
              | optional,
          },
      "definitions.DockerRequirementMap" =
        {
            dockerFile
              | String
              | doc "Supply the contents of a Dockerfile which will be built using `docker build`."
              | optional,
            dockerImageId
              | String
              | doc m%"
                The image id that will be used for `docker run`.  May be a
                human-readable image name or the image identifier hash.  May be skipped
                if `dockerPull` is specified, in which case the `dockerPull` image id
                must be used.
              "%
              | optional,
            dockerImport
              | String
              | doc "Provide HTTP URL to download and gunzip a Docker images using `docker import."
              | optional,
            dockerLoad
              | String
              | doc "Specify an HTTP URL from which to download a Docker image using `docker load`."
              | optional,
            dockerOutputDirectory
              | String
              | doc m%"
                Set the designated output directory to a specific location inside the
                Docker container.
              "%
              | optional,
            dockerPull
              | String
              | doc m%"
                Specify a Docker image to retrieve using `docker pull`. Can contain the
                immutable digest to ensure an exact container is used:
                `dockerPull: ubuntu@sha256:45b23dee08af5e43a7fea6c4cf9c25ccf269ee113168c19722f87876677c5cb2`
              "%
              | optional,
            ..
          },
      "definitions.EnvVarRequirement" =
        {
            class
              | std.contract.Equal "EnvVarRequirement"
              | doc "Always 'EnvVarRequirement'",
            envDef
              | js2n.OneOf
                [
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.EnvironmentDef", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                      ]),
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { "^[_a-zA-Z][a-zA-Z0-9_-]*$" = String, },
                          properties = {},
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | doc "The list of environment variables.",
          },
      "definitions.EnvVarRequirementMap" =
        {
            envDef
              | js2n.OneOf
                [
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.EnvironmentDef", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                      ]),
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { "^[_a-zA-Z][a-zA-Z0-9_-]*$" = String, },
                          properties = {},
                          required = {},
                        },
                      Array Dyn
                    ]
                ]
              | doc "The list of environment variables.",
            ..
          },
      "definitions.EnvironmentDef" =
        {
            envName | String | doc "The environment variable name",
            envValue | String | doc "The environment variable value",
          },
      "definitions.ExpressionTool" =
        {
            class | std.contract.Equal "ExpressionTool",
            cwlVersion
              | std.enum.TagOrString
              | [|
                '"v1.2.0-dev5",
                '"v1.2.0-dev4",
                '"v1.2.0-dev3",
                '"v1.2.0-dev2",
                '"v1.2.0-dev1",
                '"v1.2",
                '"v1.1.0-dev1",
                '"v1.1",
                '"v1.0.dev4",
                '"v1.0",
                '"draft-4.dev3",
                '"draft-4.dev2",
                '"draft-4.dev1",
                '"draft-3.dev5",
                '"draft-3.dev4",
                '"draft-3.dev3",
                '"draft-3.dev2",
                '"draft-3.dev1",
                'draft-3,
                'draft-2
              |]
              | doc m%"
                CWL document version. Always required at the document root. Not
                required for a Process embedded inside another Process.
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            expression
              | String
              | doc m%"
                The expression to execute.  The expression must return a plain
                Javascript object which matches the output parameters of the
                ExpressionTool.
              "%,
            hints
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            id
              | String
              | doc m%"
                The unique identifier for this object.
                
                Only useful for `$graph` at `Process` level. Should not be exposed
                to users in graphical or terminal user interfaces.
              "%
              | optional,
            inputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.WorkflowInputParameter", { _ | Dyn } ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.WorkflowInputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.WorkflowInputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the input parameters of the process.  The process is ready to
                run when all required input parameters are associated with concrete
                values.  Input parameters include a schema for each parameter which is
                used to validate the input object.  It may also be used to build a user
                interface for constructing the input object.
                
                When accepting an input object, all input parameters must have a value.
                If an input parameter is missing from the input object, it must be
                assigned a value of `null` (or the value of `default` for that
                parameter, if provided) for the purposes of validation and evaluation
                of expressions.
              "%,
            intent
              | Array String
              | doc m%"
                An identifier for the type of computational operation, of this Process.
                Especially useful for [`Operation`](Workflow.html#Operation), but can also be used for
                [`CommandLineTool`](CommandLineTool.html#CommandLineTool),
                [`Workflow`](Workflow.html#Workflow), or [ExpressionTool](Workflow.html#ExpressionTool).
                
                If provided, then this must be an IRI of a concept node that
                represents the type of operation, preferably defined within an ontology.
                
                For example, in the domain of bioinformatics, one can use an IRI from
                the EDAM Ontology's [Operation concept nodes](http://edamontology.org/operation_0004),
                like [Alignment](http://edamontology.org/operation_2928),
                or [Clustering](http://edamontology.org/operation_3432); or a more
                specific Operation concept like
                [Split read mapping](http://edamontology.org/operation_3199).
              "%
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            outputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.ExpressionToolOutputParameter",
                        { _ | Dyn }
                      ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.ExpressionToolOutputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.ExpressionToolOutputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the parameters representing the output of the process.  May be
                used to generate and/or validate the output object.
              "%,
            requirements
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            ..
          },
      "definitions.ExpressionToolOutputParameter" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | String
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This is the file format that will be assigned to the output
                File object.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.OutputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc m%"
                Specify valid types of data that may be assigned to this parameter.
                Note that this field just acts as a hint, as the outputs of an
                ExpressionTool process are always considered valid.
              "%,
          },
      "definitions.File" =
        {
            basename
              | String
              | doc m%"
                The base name of the file, that is, the name of the file without any
                leading directory path.  The base name must not contain a slash `/`.
                
                If not provided, the implementation must set this field based on the
                `location` field by taking the final path component after parsing
                `location` as an IRI.  If `basename` is provided, it is not required to
                match the value from `location`.
                
                When this file is made available to a CommandLineTool, it must be named
                with `basename`, i.e. the final component of the `path` field must match
                `basename`.
              "%
              | optional,
            checksum
              | String
              | doc m%"
                Optional hash code for validating file integrity.  Currently, must be in the form
                "sha1$ + hexadecimal string" using the SHA-1 algorithm.
              "%
              | optional,
            class
              | std.contract.Equal "File"
              | doc "Must be `File` to indicate this object describes a file.",
            contents
              | String
              | doc m%"
                File contents literal.
                
                If neither `location` nor `path` is provided, `contents` must be
                non-null.  The implementation must assign a unique identifier for the
                `location` field.  When the file is staged as input to CommandLineTool,
                the value of `contents` must be written to a file.
                
                If `contents` is set as a result of a Javascript expression,
                an `entry` in `InitialWorkDirRequirement`, or read in from
                `cwl.output.json`, there is no specified upper limit on the
                size of `contents`.  Implementations may have practical limits
                on the size of `contents` based on memory and storage
                available to the workflow runner or other factors.
                
                If the `loadContents` field of an `InputParameter` or
                `OutputParameter` is true, and the input or output File object
                `location` is valid, the file must be a UTF-8 text file 64 KiB
                or smaller, and the implementation must read the entire
                contents of the file and place it in the `contents` field.  If
                the size of the file is greater than 64 KiB, the
                implementation must raise a fatal error.
              "%
              | optional,
            dirname
              | String
              | doc m%"
                The name of the directory containing file, that is, the path leading up
                to the final slash in the path such that `dirname + '/' + basename ==
                path`.
                
                The implementation must set this field based on the value of `path`
                prior to evaluating parameter references or expressions in a
                CommandLineTool document.  This field must not be used in any other
                context.
              "%
              | optional,
            format
              | String
              | doc m%"
                The format of the file: this must be an IRI of a concept node that
                represents the file format, preferably defined within an ontology.
                If no ontology is available, file formats may be tested by exact match.
                
                Reasoning about format compatibility must be done by checking that an
                input file format is the same, `owl:equivalentClass` or
                `rdfs:subClassOf` the format required by the input parameter.
                `owl:equivalentClass` is transitive with `rdfs:subClassOf`, e.g. if
                `<B> owl:equivalentClass <C>` and `<B> owl:subclassOf <A>` then infer
                `<C> owl:subclassOf <A>`.
                
                File format ontologies may be provided in the "$schemas" metadata at the
                root of the document.  If no ontologies are specified in `$schemas`, the
                runtime may perform exact file format matches.
              "%
              | optional,
            location
              | String
              | doc m%"
                An IRI that identifies the file resource.  This may be a relative
                reference, in which case it must be resolved using the base IRI of the
                document.  The location may refer to a local or remote resource; the
                implementation must use the IRI to retrieve file content.  If an
                implementation is unable to retrieve the file content stored at a
                remote resource (due to unsupported protocol, access denied, or other
                issue) it must signal an error.
                
                If the `location` field is not provided, the `contents` field must be
                provided.  The implementation must assign a unique identifier for
                the `location` field.
                
                If the `path` field is provided but the `location` field is not, an
                implementation may assign the value of the `path` field to `location`,
                then follow the rules above.
              "%
              | optional,
            nameext
              | String
              | doc m%"
                The basename extension such that `nameroot + nameext == basename`, and
                `nameext` is empty or begins with a period and contains at most one
                period.  Leading periods on the basename are ignored; a basename of
                `.cshrc` will have an empty `nameext`.
                
                The implementation must set this field automatically based on the value
                of `basename` prior to evaluating parameter references or expressions.
              "%
              | optional,
            nameroot
              | String
              | doc m%"
                The basename root such that `nameroot + nameext == basename`, and
                `nameext` is empty or begins with a period and contains at most one
                period.  For the purposes of path splitting leading periods on the
                basename are ignored; a basename of `.cshrc` will have a nameroot of
                `.cshrc`.
                
                The implementation must set this field automatically based on the value
                of `basename` prior to evaluating parameter references or expressions.
              "%
              | optional,
            path
              | String
              | doc m%"
                The local host path where the File is available when a CommandLineTool is
                executed.  This field must be set by the implementation.  The final
                path component must match the value of `basename`.  This field
                must not be used in any other context.  The command line tool being
                executed must be able to access the file at `path` using the POSIX
                `open(2)` syscall.
                
                As a special case, if the `path` field is provided but the `location`
                field is not, an implementation may assign the value of the `path`
                field to `location`, and remove the `path` field.
                
                If the `path` contains [POSIX shell metacharacters](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_02)
                (`|`,`&`, `;`, `<`, `>`, `(`,`)`, `$`,`` ` ``, `\`, `"`, `'`,
                `<space>`, `<tab>`, and `<newline>`) or characters
                [not allowed](http://www.iana.org/assignments/idna-tables-6.3.0/idna-tables-6.3.0.xhtml)
                for [Internationalized Domain Names for Applications](https://tools.ietf.org/html/rfc6452)
                then implementations may terminate the process with a
                `permanentFailure`.
              "%
              | optional,
            secondaryFiles
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Directory", { _ | Dyn } ],
                    std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                  ]
              )
              | doc m%"
                A list of additional files or directories that are associated with the
                primary file and must be transferred alongside the primary file.
                Examples include indexes of the primary file, or external references
                which must be included when loading primary document.  A file object
                listed in `secondaryFiles` may itself include `secondaryFiles` for
                which the same rules apply.
              "%
              | optional,
            size | Number | doc "Optional file size (in bytes)" | optional,
          },
      "definitions.InitialWorkDirRequirement" =
        {
            class
              | std.contract.Equal "InitialWorkDirRequirement"
              | doc "InitialWorkDirRequirement",
            listing
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.Directory", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.File", { _ | Dyn } ],
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              std.contract.Sequence
                                [ refs."definitions.Directory", { _ | Dyn } ],
                              std.contract.Sequence
                                [ refs."definitions.File", { _ | Dyn } ],
                              std.contract.Sequence
                                [
                                  refs."definitions.CWLImportManual",
                                  { _ | Dyn }
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.CWLIncludeManual",
                                  { _ | Dyn }
                                ]
                            ]),
                        std.contract.Sequence
                          [ refs."definitions.Dirent", { _ | Dyn } ],
                        String,
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                      ]
                  ),
                  String
                ]
              | doc m%"
                The list of files or subdirectories that must be staged prior
                to executing the command line tool.
                
                Return type of each expression must validate as `["null",
                File, Directory, Dirent, {type: array, items: [File,
                Directory]}]`.
                
                Each `File` or `Directory` that is returned by an Expression
                must be added to the designated output directory prior to
                executing the tool.
                
                Each `Dirent` record that is listed or returned by an
                expression specifies a file to be created or staged in the
                designated output directory prior to executing the tool.
                
                Expressions may return null, in which case they have no effect.
                
                Files or Directories which are listed in the input parameters
                and appear in the `InitialWorkDirRequirement` listing must
                have their `path` set to their staged location.  If the same
                File or Directory appears more than once in the
                `InitialWorkDirRequirement` listing, the implementation must
                choose exactly one value for `path`; how this value is chosen
                is undefined.
              "%
              | optional,
          },
      "definitions.InitialWorkDirRequirementMap" =
        {
            listing
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.Directory", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.File", { _ | Dyn } ],
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              std.contract.Sequence
                                [ refs."definitions.Directory", { _ | Dyn } ],
                              std.contract.Sequence
                                [ refs."definitions.File", { _ | Dyn } ],
                              std.contract.Sequence
                                [
                                  refs."definitions.CWLImportManual",
                                  { _ | Dyn }
                                ],
                              std.contract.Sequence
                                [
                                  refs."definitions.CWLIncludeManual",
                                  { _ | Dyn }
                                ]
                            ]),
                        std.contract.Sequence
                          [ refs."definitions.Dirent", { _ | Dyn } ],
                        String,
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                      ]
                  ),
                  String
                ]
              | doc m%"
                The list of files or subdirectories that must be staged prior
                to executing the command line tool.
                
                Return type of each expression must validate as `["null",
                File, Directory, Dirent, {type: array, items: [File,
                Directory]}]`.
                
                Each `File` or `Directory` that is returned by an Expression
                must be added to the designated output directory prior to
                executing the tool.
                
                Each `Dirent` record that is listed or returned by an
                expression specifies a file to be created or staged in the
                designated output directory prior to executing the tool.
                
                Expressions may return null, in which case they have no effect.
                
                Files or Directories which are listed in the input parameters
                and appear in the `InitialWorkDirRequirement` listing must
                have their `path` set to their staged location.  If the same
                File or Directory appears more than once in the
                `InitialWorkDirRequirement` listing, the implementation must
                choose exactly one value for `path`; how this value is chosen
                is undefined.
              "%
              | optional,
            ..
          },
      "definitions.InlineJavascriptRequirement" =
        {
            class
              | std.contract.Equal "InlineJavascriptRequirement"
              | doc "Always 'InlineJavascriptRequirement'",
            expressionLib
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                Additional code fragments that will also be inserted
                before executing the expression code.  Allows for function definitions that may
                be called from CWL expressions.
              "%
              | optional,
          },
      "definitions.InlineJavascriptRequirementMap" =
        {
            expressionLib
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                  ]
              )
              | doc m%"
                Additional code fragments that will also be inserted
                before executing the expression code.  Allows for function definitions that may
                be called from CWL expressions.
              "%
              | optional,
            ..
          },
      "definitions.InplaceUpdateRequirement" =
        {
            class
              | std.contract.Equal "InplaceUpdateRequirement"
              | doc "Always 'InplaceUpdateRequirement'",
            inplaceUpdate | Bool,
          },
      "definitions.InplaceUpdateRequirementMap" = { inplaceUpdate | Bool, .. },
      "definitions.InputArraySchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc "Defines the type of the array elements.",
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "array" | doc "Must be `array`",
          },
      "definitions.InputBinding" =
        {
            loadContents
              | Bool
              | doc m%"
                Use of `loadContents` in `InputBinding` is deprecated.
                Preserved for v1.0 backwards compatibility.  Will be removed in
                CWL v2.0.  Use `InputParameter.loadContents` instead.
              "%
              | optional,
          },
      "definitions.InputEnumSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            symbols | Array String | doc "Defines the set of valid symbols.",
            type | std.contract.Equal "enum" | doc "Must be `enum`",
          },
      "definitions.InputRecordField" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | std.contract.any_of [ Array String, String ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This must be one or more IRIs of concept nodes
                    that represents file formats which are allowed as input to this
                    parameter, preferably defined within an ontology.  If no ontology is
                    available, file formats may be tested by exact match.
                  "%
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                loadContents
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    If true, the file (or each file in the array) must be a UTF-8
                    text file 64 KiB or smaller, and the implementation must read
                    the entire contents of the file (or file array) and place it
                    in the `contents` field of the File object for use by
                    expressions.  If the size of the file is greater than 64 KiB,
                    the implementation must raise a fatal error.
                  "%
                  | optional,
                loadListing
                  | std.enum.TagOrString
                  | [| 'shallow_listing, 'no_listing, 'deep_listing |]
                  | doc m%"
                    Only valid when `type: Directory` or is an array of `items: Directory`.
                    
                    Specify the desired behavior for loading the `listing` field of
                    a Directory object for use by expressions.
                    
                    The order of precedence for loadListing is:
                    
                      1. `loadListing` on an individual parameter
                      2. Inherited from `LoadListingRequirement`
                      3. By default: `no_listing`
                  "%
                  | optional,
                name | String | doc "The name of the field",
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.InputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.InputEnumSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.InputArraySchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                          std.contract.Sequence
                            [
                              refs."definitions.InputArraySchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              )
            ],
      "definitions.InputRecordFieldMap" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | std.contract.any_of [ Array String, String ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This must be one or more IRIs of concept nodes
                    that represents file formats which are allowed as input to this
                    parameter, preferably defined within an ontology.  If no ontology is
                    available, file formats may be tested by exact match.
                  "%
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                loadContents
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    If true, the file (or each file in the array) must be a UTF-8
                    text file 64 KiB or smaller, and the implementation must read
                    the entire contents of the file (or file array) and place it
                    in the `contents` field of the File object for use by
                    expressions.  If the size of the file is greater than 64 KiB,
                    the implementation must raise a fatal error.
                  "%
                  | optional,
                loadListing
                  | std.enum.TagOrString
                  | [| 'shallow_listing, 'no_listing, 'deep_listing |]
                  | doc m%"
                    Only valid when `type: Directory` or is an array of `items: Directory`.
                    
                    Specify the desired behavior for loading the `listing` field of
                    a Directory object for use by expressions.
                    
                    The order of precedence for loadListing is:
                    
                      1. `loadListing` on an individual parameter
                      2. Inherited from `LoadListingRequirement`
                      3. By default: `no_listing`
                  "%
                  | optional,
                name | String | doc "The name of the field" | optional,
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.InputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.InputEnumSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.InputArraySchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                          std.contract.Sequence
                            [
                              refs."definitions.InputArraySchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              ),
              String
            ],
      "definitions.InputRecordSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            fields
              | std.contract.any_of
                [
                  Array refs."definitions.InputRecordField",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              refs."definitions.InputRecordFieldMap",
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc "Defines the fields of the record."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "record" | doc "Must be `record`",
          },
      "definitions.LoadListingRequirement" =
        {
            class
              | std.contract.Equal "LoadListingRequirement"
              | doc "Always 'LoadListingRequirement'",
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | optional,
          },
      "definitions.LoadListingRequirementMap" =
        {
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | optional,
            ..
          },
      "definitions.MultipleInputFeatureRequirement" =
        {
            class
              | std.contract.Equal "MultipleInputFeatureRequirement"
              | doc "Always 'MultipleInputFeatureRequirement'",
          },
      "definitions.MultipleInputFeatureRequirementMap" = { _ | Dyn },
      "definitions.NetworkAccess" =
        {
            class
              | std.contract.Equal "NetworkAccess"
              | doc "Always 'NetworkAccess'",
            networkAccess | std.contract.any_of [ Bool, String ],
          },
      "definitions.NetworkAccessMap" =
        { networkAccess | std.contract.any_of [ Bool, String ], .. },
      "definitions.Operation" =
        {
            class | std.contract.Equal "Operation",
            cwlVersion
              | std.enum.TagOrString
              | [|
                '"v1.2.0-dev5",
                '"v1.2.0-dev4",
                '"v1.2.0-dev3",
                '"v1.2.0-dev2",
                '"v1.2.0-dev1",
                '"v1.2",
                '"v1.1.0-dev1",
                '"v1.1",
                '"v1.0.dev4",
                '"v1.0",
                '"draft-4.dev3",
                '"draft-4.dev2",
                '"draft-4.dev1",
                '"draft-3.dev5",
                '"draft-3.dev4",
                '"draft-3.dev3",
                '"draft-3.dev2",
                '"draft-3.dev1",
                'draft-3,
                'draft-2
              |]
              | doc m%"
                CWL document version. Always required at the document root. Not
                required for a Process embedded inside another Process.
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            hints
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            id
              | String
              | doc m%"
                The unique identifier for this object.
                
                Only useful for `$graph` at `Process` level. Should not be exposed
                to users in graphical or terminal user interfaces.
              "%
              | optional,
            inputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.OperationInputParameter",
                        { _ | Dyn }
                      ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.OperationInputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.OperationInputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the input parameters of the process.  The process is ready to
                run when all required input parameters are associated with concrete
                values.  Input parameters include a schema for each parameter which is
                used to validate the input object.  It may also be used to build a user
                interface for constructing the input object.
                
                When accepting an input object, all input parameters must have a value.
                If an input parameter is missing from the input object, it must be
                assigned a value of `null` (or the value of `default` for that
                parameter, if provided) for the purposes of validation and evaluation
                of expressions.
              "%,
            intent
              | Array String
              | doc m%"
                An identifier for the type of computational operation, of this Process.
                Especially useful for [`Operation`](Workflow.html#Operation), but can also be used for
                [`CommandLineTool`](CommandLineTool.html#CommandLineTool),
                [`Workflow`](Workflow.html#Workflow), or [ExpressionTool](Workflow.html#ExpressionTool).
                
                If provided, then this must be an IRI of a concept node that
                represents the type of operation, preferably defined within an ontology.
                
                For example, in the domain of bioinformatics, one can use an IRI from
                the EDAM Ontology's [Operation concept nodes](http://edamontology.org/operation_0004),
                like [Alignment](http://edamontology.org/operation_2928),
                or [Clustering](http://edamontology.org/operation_3432); or a more
                specific Operation concept like
                [Split read mapping](http://edamontology.org/operation_3199).
              "%
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            outputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.OperationOutputParameter",
                        { _ | Dyn }
                      ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.OperationOutputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.OperationOutputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the parameters representing the output of the process.  May be
                used to generate and/or validate the output object.
              "%,
            requirements
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
          },
      "definitions.OperationInputParameter" =
        {
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc m%"
                The default value to use for this parameter if the parameter is missing
                from the input object, or if the value of the parameter in the input
                object is `null`.  Default values are applied before evaluating expressions
                (e.g. dependent `valueFrom` fields).
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This must be one or more IRIs of concept nodes
                that represents file formats which are allowed as input to this
                parameter, preferably defined within an ontology.  If no ontology is
                available, file formats may be tested by exact match.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            loadContents
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                If true, the file (or each file in the array) must be a UTF-8
                text file 64 KiB or smaller, and the implementation must read
                the entire contents of the file (or file array) and place it
                in the `contents` field of the File object for use by
                expressions.  If the size of the file is greater than 64 KiB,
                the implementation must raise a fatal error.
              "%
              | optional,
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | doc m%"
                Only valid when `type: Directory` or is an array of `items: Directory`.
                
                Specify the desired behavior for loading the `listing` field of
                a Directory object for use by expressions.
                
                The order of precedence for loadListing is:
                
                  1. `loadListing` on an individual parameter
                  2. Inherited from `LoadListingRequirement`
                  3. By default: `no_listing`
              "%
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc "Specify valid types of data that may be assigned to this parameter.",
          },
      "definitions.OperationOutputParameter" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | String
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This is the file format that will be assigned to the output
                File object.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.OutputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc "Specify valid types of data that may be assigned to this parameter.",
          },
      "definitions.OutputArraySchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            items
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.OutputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence [ js2n.Always, { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc "Defines the type of the array elements.",
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "array" | doc "Must be `array`",
          },
      "definitions.OutputEnumSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            symbols | Array String | doc "Defines the set of valid symbols.",
            type | std.contract.Equal "enum" | doc "Must be `enum`",
          },
      "definitions.OutputRecordField" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | String
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This is the file format that will be assigned to the output
                    File object.
                  "%
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                name | String | doc "The name of the field",
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.OutputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.OutputEnumSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.OutputArraySchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.OutputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.OutputEnumSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.OutputArraySchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              )
            ],
      "definitions.OutputRecordFieldMap" =
        std.contract.any_of
            [
              {
                "doc"
                  | std.contract.any_of [ Array String, String ]
                  | doc "A documentation string for this object, or an array of strings which should be concatenated."
                  | optional,
                format
                  | String
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    This is the file format that will be assigned to the output
                    File object.
                  "%
                  | optional,
                label
                  | String
                  | doc "A short, human-readable label of this object."
                  | optional,
                name | String | doc "The name of the field" | optional,
                secondaryFiles
                  | std.contract.any_of
                    [
                      refs."definitions.SecondaryFileSchema",
                      js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                    ]
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    Provides a pattern or expression specifying files or
                    directories that should be included alongside the primary
                    file.  Secondary files may be required or optional.  When not
                    explicitly specified, secondary files specified for `inputs`
                    are required and `outputs` are optional.  An implementation
                    must include matching Files and Directories in the
                    `secondaryFiles` property of the primary file.  These Files
                    and Directories must be transferred and staged alongside the
                    primary file.  An implementation may fail workflow execution
                    if a required secondary file does not exist.
                    
                    If the value is an expression, the value of `self` in the expression
                    must be the primary input or output File object to which this binding
                    applies.  The `basename`, `nameroot` and `nameext` fields must be
                    present in `self`.  For `CommandLineTool` outputs the `path` field must
                    also be present.  The expression must return a filename string relative
                    to the path to the primary File, a File or Directory object with either
                    `path` or `location` and `basename` fields set, or an array consisting
                    of strings or File or Directory objects.  It is legal to reference an
                    unchanged File or Directory object taken from input as a secondaryFile.
                    The expression may return "null" in which case there is no secondaryFile
                    from that expression.
                    
                    To work on non-filename-preserving storage systems, portable tool
                    descriptions should avoid constructing new values from `location`, but
                    should construct relative references using `basename` or `nameroot`
                    instead.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%
                  | optional,
                streamable
                  | Bool
                  | doc m%"
                    Only valid when `type: File` or is an array of `items: File`.
                    
                    A value of `true` indicates that the file is read or written
                    sequentially without seeking.  An implementation may use this flag to
                    indicate whether it is valid to stream file contents using a named
                    pipe.  Default: `false`.
                  "%
                  | optional,
                type
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                      std.contract.Sequence
                        [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                      js2n.array.ArrayOf
                        (std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                refs."definitions.OutputRecordSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.OutputEnumSchema",
                                { _ | Dyn }
                              ],
                            std.contract.Sequence
                              [
                                refs."definitions.OutputArraySchema",
                                { _ | Dyn }
                              ],
                            String
                          ]),
                      String
                    ]
                  | doc "The field type",
              },
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                    js2n.array.ArrayOf
                      (std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.OutputRecordSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.OutputEnumSchema",
                              { _ | Dyn }
                            ],
                          std.contract.Sequence
                            [
                              refs."definitions.OutputArraySchema",
                              { _ | Dyn }
                            ],
                          String
                        ]),
                    String
                  ]
              ),
              String
            ],
      "definitions.OutputRecordSchema" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            fields
              | std.contract.any_of
                [
                  Array refs."definitions.OutputRecordField",
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              refs."definitions.OutputRecordFieldMap",
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc "Defines the fields of the record."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            name | String | doc "The identifier for this type" | optional,
            type | std.contract.Equal "record" | doc "Must be `record`",
          },
      "definitions.ResourceRequirement" =
        {
            class
              | std.contract.Equal "ResourceRequirement"
              | doc "Always 'ResourceRequirement'",
            coresMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved number of CPU cores.
                
                See `coresMin` for discussion about fractional CPU requests.
              "%
              | optional,
            coresMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved number of CPU cores (default is 1).
                
                May be a fractional value to indicate to a scheduling
                algorithm that one core can be allocated to multiple
                jobs. For example, a value of 0.25 indicates that up to 4
                jobs may run in parallel on 1 core.  A value of 1.25 means
                that up to 3 jobs can run on a 4 core system (4/1.25 ≈ 3).
                
                Processes can only share a core allocation if the sum of each
                of their `ramMax`, `tmpdirMax`, and `outdirMax` requests also
                do not exceed the capacity of the node.
                
                Processes sharing a core must have the same level of isolation
                (typically a container or VM) that they would normally have.
                
                The reported number of CPU cores reserved for the process,
                which is available to expressions on the CommandLineTool as
                `runtime.cores`, must be a non-zero integer, and may be
                calculated by rounding up the cores request to the next whole
                number.
                
                Scheduling systems may allocate fractional CPU resources by
                setting quotas or scheduling weights.  Scheduling systems that
                do not support fractional CPUs may round up the request to the
                next whole number.
              "%
              | optional,
            outdirMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved filesystem based storage for the designated output directory, in mebibytes (2**20)
                
                See `outdirMin` for discussion about fractional storage requests.
              "%
              | optional,
            outdirMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved filesystem based storage for the designated output directory, in mebibytes (2**20) (default is 1024)
                
                May be a fractional value.  If so, the actual storage request
                must be rounded up to the next whole number.  The reported
                amount of storage reserved for the process, which is available
                to expressions on the CommandLineTool as `runtime.outdirSize`,
                must be a non-zero integer.
              "%
              | optional,
            ramMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved RAM in mebibytes (2**20)
                
                See `ramMin` for discussion about fractional RAM requests.
              "%
              | optional,
            ramMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved RAM in mebibytes (2**20) (default is 256)
                
                May be a fractional value.  If so, the actual RAM request must
                be rounded up to the next whole number.  The reported amount of
                RAM reserved for the process, which is available to
                expressions on the CommandLineTool as `runtime.ram`, must be a
                non-zero integer.
              "%
              | optional,
            tmpdirMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved filesystem based storage for the designated temporary directory, in mebibytes (2**20)
                
                See `tmpdirMin` for discussion about fractional storage requests.
              "%
              | optional,
            tmpdirMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved filesystem based storage for the designated temporary directory, in mebibytes (2**20) (default is 1024)
                
                May be a fractional value.  If so, the actual storage request
                must be rounded up to the next whole number.  The reported
                amount of storage reserved for the process, which is available
                to expressions on the CommandLineTool as `runtime.tmpdirSize`,
                must be a non-zero integer.
              "%
              | optional,
          },
      "definitions.ResourceRequirementMap" =
        {
            coresMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved number of CPU cores.
                
                See `coresMin` for discussion about fractional CPU requests.
              "%
              | optional,
            coresMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved number of CPU cores (default is 1).
                
                May be a fractional value to indicate to a scheduling
                algorithm that one core can be allocated to multiple
                jobs. For example, a value of 0.25 indicates that up to 4
                jobs may run in parallel on 1 core.  A value of 1.25 means
                that up to 3 jobs can run on a 4 core system (4/1.25 ≈ 3).
                
                Processes can only share a core allocation if the sum of each
                of their `ramMax`, `tmpdirMax`, and `outdirMax` requests also
                do not exceed the capacity of the node.
                
                Processes sharing a core must have the same level of isolation
                (typically a container or VM) that they would normally have.
                
                The reported number of CPU cores reserved for the process,
                which is available to expressions on the CommandLineTool as
                `runtime.cores`, must be a non-zero integer, and may be
                calculated by rounding up the cores request to the next whole
                number.
                
                Scheduling systems may allocate fractional CPU resources by
                setting quotas or scheduling weights.  Scheduling systems that
                do not support fractional CPUs may round up the request to the
                next whole number.
              "%
              | optional,
            outdirMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved filesystem based storage for the designated output directory, in mebibytes (2**20)
                
                See `outdirMin` for discussion about fractional storage requests.
              "%
              | optional,
            outdirMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved filesystem based storage for the designated output directory, in mebibytes (2**20) (default is 1024)
                
                May be a fractional value.  If so, the actual storage request
                must be rounded up to the next whole number.  The reported
                amount of storage reserved for the process, which is available
                to expressions on the CommandLineTool as `runtime.outdirSize`,
                must be a non-zero integer.
              "%
              | optional,
            ramMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved RAM in mebibytes (2**20)
                
                See `ramMin` for discussion about fractional RAM requests.
              "%
              | optional,
            ramMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved RAM in mebibytes (2**20) (default is 256)
                
                May be a fractional value.  If so, the actual RAM request must
                be rounded up to the next whole number.  The reported amount of
                RAM reserved for the process, which is available to
                expressions on the CommandLineTool as `runtime.ram`, must be a
                non-zero integer.
              "%
              | optional,
            tmpdirMax
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Maximum reserved filesystem based storage for the designated temporary directory, in mebibytes (2**20)
                
                See `tmpdirMin` for discussion about fractional storage requests.
              "%
              | optional,
            tmpdirMin
              | std.contract.any_of [ Number, String ]
              | doc m%"
                Minimum reserved filesystem based storage for the designated temporary directory, in mebibytes (2**20) (default is 1024)
                
                May be a fractional value.  If so, the actual storage request
                must be rounded up to the next whole number.  The reported
                amount of storage reserved for the process, which is available
                to expressions on the CommandLineTool as `runtime.tmpdirSize`,
                must be a non-zero integer.
              "%
              | optional,
            ..
          },
      "definitions.ScatterFeatureRequirement" =
        {
            class
              | std.contract.Equal "ScatterFeatureRequirement"
              | doc "Always 'ScatterFeatureRequirement'",
          },
      "definitions.ScatterFeatureRequirementMap" = { _ | Dyn },
      "definitions.SchemaDefRequirement" =
        {
            class
              | std.contract.Equal "SchemaDefRequirement"
              | doc "Always 'SchemaDefRequirement'",
            types
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputArraySchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputRecordSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputEnumSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                  ]
              )
              | doc "The list of type definitions.",
          },
      "definitions.SchemaDefRequirementMap" =
        {
            types
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputArraySchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputRecordSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.CommandInputEnumSchema",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                  ]
              )
              | doc "The list of type definitions.",
            ..
          },
      "definitions.SecondaryFileSchema" =
        std.contract.any_of
            [
              {
                pattern
                  | String
                  | doc m%"
                    Provides a pattern or expression specifying files or directories that
                    should be included alongside the primary file.
                    
                    If the value is an expression, the value of `self` in the
                    expression must be the primary input or output File object to
                    which this binding applies.  The `basename`, `nameroot` and
                    `nameext` fields must be present in `self`.  For
                    `CommandLineTool` inputs the `location` field must also be
                    present.  For `CommandLineTool` outputs the `path` field must
                    also be present.  If secondary files were included on an input
                    File object as part of the Process invocation, they must also
                    be present in `secondaryFiles` on `self`.
                    
                    The expression must return either: a filename string relative
                    to the path to the primary File, a File or Directory object
                    (`class: File` or `class: Directory`) with either `location`
                    (for inputs) or `path` (for outputs) and `basename` fields
                    set, or an array consisting of strings or File or Directory
                    objects as previously described.
                    
                    It is legal to use `location` from a File or Directory object
                    passed in as input, including `location` from secondary files
                    on `self`.  If an expression returns a File object with the
                    same `location` but a different `basename` as a secondary file
                    that was passed in, the expression result takes precedence.
                    Setting the basename with an expression this way affects the
                    `path` where the secondary file will be staged to in the
                    CommandLineTool.
                    
                    The expression may return "null" in which case there is no
                    secondary file from that expression.
                    
                    To work on non-filename-preserving storage systems, portable
                    tool descriptions should treat `location` as an
                    [opaque identifier](#opaque-strings) and avoid constructing new
                    values from `location`, but should construct relative references
                    using `basename` or `nameroot` instead, or propagate `location`
                    from defined inputs.
                    
                    If a value in `secondaryFiles` is a string that is not an expression,
                    it specifies that the following pattern should be applied to the path
                    of the primary file to yield a filename relative to the primary File:
                    
                      1. If string ends with `?` character, remove the last `?` and mark
                        the resulting secondary file as optional.
                      2. If string begins with one or more caret `^` characters, for each
                        caret, remove the last file extension from the path (the last
                        period `.` and all following characters).  If there are no file
                        extensions, the path is unchanged.
                      3. Append the remainder of the string to the end of the file path.
                  "%,
                required
                  | std.contract.any_of [ Bool, String ]
                  | doc m%"
                    An implementation must not fail workflow execution if `required` is
                    set to `false` and the expected secondary file does not exist.
                    Default value for `required` field is `true` for secondary files on
                    input and `false` for secondary files on output.
                  "%
                  | optional,
              },
              String
            ],
      "definitions.ShellCommandRequirement" =
        {
            class
              | std.contract.Equal "ShellCommandRequirement"
              | doc "Always 'ShellCommandRequirement'",
          },
      "definitions.ShellCommandRequirementMap" = { _ | Dyn },
      "definitions.SoftwarePackage" =
        {
            package
              | String
              | doc m%"
                The name of the software to be made available. If the name is
                common, inconsistent, or otherwise ambiguous it should be combined with
                one or more identifiers in the `specs` field.
              "%,
            specs
              | Array String
              | doc m%"
                One or more [IRI](https://en.wikipedia.org/wiki/Internationalized_Resource_Identifier)s
                identifying resources for installing or enabling the software named in
                the `package` field. Implementations may provide resolvers which map
                these software identifier IRIs to some configuration action; or they can
                use only the name from the `package` field on a best effort basis.
                
                For example, the IRI https://packages.debian.org/bowtie could
                be resolved with `apt-get install bowtie`. The IRI
                https://anaconda.org/bioconda/bowtie could be resolved with `conda
                install -c bioconda bowtie`.
                
                IRIs can also be system independent and used to map to a specific
                software installation or selection mechanism.
                Using [RRID](https://www.identifiers.org/rrid/) as an example:
                https://identifiers.org/rrid/RRID:SCR_005476
                could be fulfilled using the above-mentioned Debian or bioconda
                package, a local installation managed by [Environment Modules](https://modules.sourceforge.net/),
                or any other mechanism the platform chooses. IRIs can also be from
                identifier sources that are discipline specific yet still system
                independent. As an example, the equivalent [ELIXIR Tools and Data
                Service Registry](https://bio.tools) IRI to the previous RRID example is
                https://bio.tools/tool/bowtie2/version/2.2.8.
                If supported by a given registry, implementations are encouraged to
                query these system independent software identifier IRIs directly for
                links to packaging systems.
                
                A site specific IRI can be listed as well. For example, an academic
                computing cluster using Environment Modules could list the IRI
                `https://hpc.example.edu/modules/bowtie-tbb/1.22` to indicate that
                `module load bowtie-tbb/1.1.2` should be executed to make available
                `bowtie` version 1.1.2 compiled with the TBB library prior to running
                the accompanying Workflow or CommandLineTool. Note that the example IRI
                is specific to a particular institution and computing environment as
                the Environment Modules system does not have a common namespace or
                standardized naming convention.
                
                This last example is the least portable and should only be used if
                mechanisms based off of the `package` field or more generic IRIs are
                unavailable or unsuitable. While harmless to other sites, site specific
                software IRIs should be left out of shared CWL descriptions to avoid
                clutter.
              "%
              | optional,
            version
              | Array String
              | doc m%"
                The (optional) versions of the software that are known to be
                compatible.
              "%
              | optional,
          },
      "definitions.SoftwareRequirement" =
        {
            class
              | std.contract.Equal "SoftwareRequirement"
              | doc "Always 'SoftwareRequirement'",
            packages
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.SoftwarePackage", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                  ]
              )
              | doc "The list of software to be configured.",
          },
      "definitions.SoftwareRequirementMap" =
        {
            packages
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.SoftwarePackage", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.CWLIncludeManual", { _ | Dyn } ]
                  ]
              )
              | doc "The list of software to be configured.",
            ..
          },
      "definitions.StepInputExpressionRequirement" =
        {
            class
              | std.contract.Equal "StepInputExpressionRequirement"
              | doc "Always 'StepInputExpressionRequirement'",
          },
      "definitions.StepInputExpressionRequirementMap" = { _ | Dyn },
      "definitions.SubworkflowFeatureRequirement" =
        {
            class
              | std.contract.Equal "SubworkflowFeatureRequirement"
              | doc "Always 'SubworkflowFeatureRequirement'",
          },
      "definitions.SubworkflowFeatureRequirementMap" = { _ | Dyn },
      "definitions.ToolTimeLimit" =
        {
            class
              | std.contract.Equal "ToolTimeLimit"
              | doc "Always 'ToolTimeLimit'",
            timelimit
              | std.contract.any_of [ Number, String ]
              | doc m%"
                The time limit, in seconds.  A time limit of zero means no
                time limit.  Negative time limits are an error.
              "%,
          },
      "definitions.ToolTimeLimitMap" =
        {
            timelimit
              | std.contract.any_of [ Number, String ]
              | doc m%"
                The time limit, in seconds.  A time limit of zero means no
                time limit.  Negative time limits are an error.
              "%,
            ..
          },
      "definitions.WorkReuse" =
        {
            class | std.contract.Equal "WorkReuse" | doc "Always 'WorkReuse'",
            enableReuse | std.contract.any_of [ Bool, String ],
          },
      "definitions.WorkReuseMap" =
        { enableReuse | std.contract.any_of [ Bool, String ], .. },
      "definitions.Workflow" =
        {
            class | std.contract.Equal "Workflow",
            cwlVersion
              | std.enum.TagOrString
              | [|
                '"v1.2.0-dev5",
                '"v1.2.0-dev4",
                '"v1.2.0-dev3",
                '"v1.2.0-dev2",
                '"v1.2.0-dev1",
                '"v1.2",
                '"v1.1.0-dev1",
                '"v1.1",
                '"v1.0.dev4",
                '"v1.0",
                '"draft-4.dev3",
                '"draft-4.dev2",
                '"draft-4.dev1",
                '"draft-3.dev5",
                '"draft-3.dev4",
                '"draft-3.dev3",
                '"draft-3.dev2",
                '"draft-3.dev1",
                'draft-3,
                'draft-2
              |]
              | doc m%"
                CWL document version. Always required at the document root. Not
                required for a Process embedded inside another Process.
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            hints
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            id
              | String
              | doc m%"
                The unique identifier for this object.
                
                Only useful for `$graph` at `Process` level. Should not be exposed
                to users in graphical or terminal user interfaces.
              "%
              | optional,
            inputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.WorkflowInputParameter", { _ | Dyn } ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.WorkflowInputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.InputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.InputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.WorkflowInputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the input parameters of the process.  The process is ready to
                run when all required input parameters are associated with concrete
                values.  Input parameters include a schema for each parameter which is
                used to validate the input object.  It may also be used to build a user
                interface for constructing the input object.
                
                When accepting an input object, all input parameters must have a value.
                If an input parameter is missing from the input object, it must be
                assigned a value of `null` (or the value of `default` for that
                parameter, if provided) for the purposes of validation and evaluation
                of expressions.
              "%,
            intent
              | Array String
              | doc m%"
                An identifier for the type of computational operation, of this Process.
                Especially useful for [`Operation`](Workflow.html#Operation), but can also be used for
                [`CommandLineTool`](CommandLineTool.html#CommandLineTool),
                [`Workflow`](Workflow.html#Workflow), or [ExpressionTool](Workflow.html#ExpressionTool).
                
                If provided, then this must be an IRI of a concept node that
                represents the type of operation, preferably defined within an ontology.
                
                For example, in the domain of bioinformatics, one can use an IRI from
                the EDAM Ontology's [Operation concept nodes](http://edamontology.org/operation_0004),
                like [Alignment](http://edamontology.org/operation_2928),
                or [Clustering](http://edamontology.org/operation_3432); or a more
                specific Operation concept like
                [Split read mapping](http://edamontology.org/operation_3199).
              "%
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            outputs
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.WorkflowOutputParameter",
                        { _ | Dyn }
                      ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              js2n.OneOf
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.WorkflowOutputParameter",
                                        { _ | Dyn }
                                      ],
                                    std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputRecordSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputEnumSchema",
                                            { _ | Dyn }
                                          ],
                                        std.contract.Sequence
                                          [
                                            refs."definitions.OutputArraySchema",
                                            { _ | Dyn }
                                          ],
                                        js2n.array.ArrayOf
                                          (std.contract.any_of
                                            [
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputRecordSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputEnumSchema",
                                                  { _ | Dyn }
                                                ],
                                              std.contract.Sequence
                                                [
                                                  refs."definitions.OutputArraySchema",
                                                  { _ | Dyn }
                                                ],
                                              String
                                            ]),
                                        String
                                      ],
                                    js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.WorkflowOutputParameter",
                                              { _ | Dyn }
                                            ]
                                        ])
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the parameters representing the output of the process.  May be
                used to generate and/or validate the output object.
              "%,
            requirements
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this process.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            steps
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.WorkflowStep", { _ | Dyn } ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.WorkflowStep",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                The individual steps that make up the workflow.  Each step is executed when all of its
                input data links are fulfilled.  An implementation may choose to execute
                the steps in a different order than listed and/or execute steps
                concurrently, provided that dependencies between steps are met.
              "%,
            ..
          },
      "definitions.WorkflowInputParameter" =
        {
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc m%"
                The default value to use for this parameter if the parameter is missing
                from the input object, or if the value of the parameter in the input
                object is `null`.  Default values are applied before evaluating expressions
                (e.g. dependent `valueFrom` fields).
              "%
              | optional,
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This must be one or more IRIs of concept nodes
                that represents file formats which are allowed as input to this
                parameter, preferably defined within an ontology.  If no ontology is
                available, file formats may be tested by exact match.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            inputBinding
              | refs."definitions.InputBinding"
              | { _ | Dyn }
              | doc m%"
                Deprecated.  Preserved for v1.0 backwards compatibility.  Will be removed in
                CWL v2.0.  Use `WorkflowInputParameter.loadContents` instead.
              "%
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            loadContents
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                If true, the file (or each file in the array) must be a UTF-8
                text file 64 KiB or smaller, and the implementation must read
                the entire contents of the file (or file array) and place it
                in the `contents` field of the File object for use by
                expressions.  If the size of the file is greater than 64 KiB,
                the implementation must raise a fatal error.
              "%
              | optional,
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | doc m%"
                Only valid when `type: Directory` or is an array of `items: Directory`.
                
                Specify the desired behavior for loading the `listing` field of
                a Directory object for use by expressions.
                
                The order of precedence for loadListing is:
                
                  1. `loadListing` on an individual parameter
                  2. Inherited from `LoadListingRequirement`
                  3. By default: `no_listing`
              "%
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.InputRecordSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.InputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.InputArraySchema", { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc "Specify valid types of data that may be assigned to this parameter.",
          },
      "definitions.WorkflowOutputParameter" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            format
              | String
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                This is the file format that will be assigned to the output
                File object.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            linkMerge
              | std.enum.TagOrString
              | [| 'merge_nested, 'merge_flattened |]
              | doc m%"
                The method to use to merge multiple sources into a single array.
                If not specified, the default method is "merge_nested".
              "%
              | optional,
            outputSource
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Specifies one or more names of an output from a workflow step (in the form
                `step_name/output_name` with a `/` separator`), or a workflow input name,
                that supply their value(s) to the output parameter.
                the output parameter.  It is valid to reference workflow level inputs
                here.
              "%
              | optional,
            pickValue
              | std.enum.TagOrString
              | [| 'the_only_non_null, 'first_non_null, 'all_non_null |]
              | doc "The method to use to choose non-null elements among multiple sources."
              | optional,
            secondaryFiles
              | std.contract.any_of
                [
                  refs."definitions.SecondaryFileSchema",
                  js2n.array.ArrayOf refs."definitions.SecondaryFileSchema"
                ]
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                Provides a pattern or expression specifying files or
                directories that should be included alongside the primary
                file.  Secondary files may be required or optional.  When not
                explicitly specified, secondary files specified for `inputs`
                are required and `outputs` are optional.  An implementation
                must include matching Files and Directories in the
                `secondaryFiles` property of the primary file.  These Files
                and Directories must be transferred and staged alongside the
                primary file.  An implementation may fail workflow execution
                if a required secondary file does not exist.
                
                If the value is an expression, the value of `self` in the expression
                must be the primary input or output File object to which this binding
                applies.  The `basename`, `nameroot` and `nameext` fields must be
                present in `self`.  For `CommandLineTool` outputs the `path` field must
                also be present.  The expression must return a filename string relative
                to the path to the primary File, a File or Directory object with either
                `path` or `location` and `basename` fields set, or an array consisting
                of strings or File or Directory objects.  It is legal to reference an
                unchanged File or Directory object taken from input as a secondaryFile.
                The expression may return "null" in which case there is no secondaryFile
                from that expression.
                
                To work on non-filename-preserving storage systems, portable tool
                descriptions should avoid constructing new values from `location`, but
                should construct relative references using `basename` or `nameroot`
                instead.
                
                If a value in `secondaryFiles` is a string that is not an expression,
                it specifies that the following pattern should be applied to the path
                of the primary file to yield a filename relative to the primary File:
                
                  1. If string ends with `?` character, remove the last `?` and mark
                    the resulting secondary file as optional.
                  2. If string begins with one or more caret `^` characters, for each
                    caret, remove the last file extension from the path (the last
                    period `.` and all following characters).  If there are no file
                    extensions, the path is unchanged.
                  3. Append the remainder of the string to the end of the file path.
              "%
              | optional,
            streamable
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                A value of `true` indicates that the file is read or written
                sequentially without seeking.  An implementation may use this flag to
                indicate whether it is valid to stream file contents using a named
                pipe.  Default: `false`.
              "%
              | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.OutputRecordSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            refs."definitions.OutputRecordSchema",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.OutputEnumSchema", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.OutputArraySchema", { _ | Dyn } ],
                        String
                      ]),
                  String
                ]
              | doc "Specify valid types of data that may be assigned to this parameter.",
          },
      "definitions.WorkflowStep" =
        {
            "doc"
              | std.contract.any_of [ Array String, String ]
              | doc "A documentation string for this object, or an array of strings which should be concatenated."
              | optional,
            hints
              | Array js2n.Always
              | doc m%"
                Declares hints applying to either the runtime environment or the
                workflow engine that may be helpful in executing this workflow step.  It is
                not an error if an implementation cannot satisfy all hints, however
                the implementation may report a warning.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            "in"
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.WorkflowStepInput", { _ | Dyn } ]
                  ),
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                              std.contract.any_of
                                  [
                                    std.contract.Sequence
                                      [
                                        refs."definitions.WorkflowStepInput",
                                        { _ | Dyn }
                                      ],
                                    String,
                                    Array (
                                      std.contract.any_of
                                        [
                                          String,
                                          std.contract.Sequence
                                            [
                                              refs."definitions.WorkflowStepInput",
                                              { _ | Dyn }
                                            ]
                                        ]
                                    )
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                ]
              | doc m%"
                Defines the input parameters of the workflow step.  The process is ready to
                run when all required input parameters are associated with concrete
                values.  Input parameters include a schema for each parameter which is
                used to validate the input object.  It may also be used build a user
                interface for constructing the input object.
              "%,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            out
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.WorkflowStepOutput", { _ | Dyn } ],
                    String
                  ]
              )
              | doc m%"
                Defines the parameters representing the output of the process.  May be
                used to generate and/or validate the output object.
              "%,
            requirements
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.CWLImportManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.CWLIncludeManual", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InlineJavascriptRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.SchemaDefRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.LoadListingRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.DockerRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SoftwareRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.InitialWorkDirRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.EnvVarRequirement", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.ShellCommandRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ResourceRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.WorkReuse", { _ | Dyn } ],
                        std.contract.Sequence
                          [ refs."definitions.NetworkAccess", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.InplaceUpdateRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [ refs."definitions.ToolTimeLimit", { _ | Dyn } ],
                        std.contract.Sequence
                          [
                            refs."definitions.SubworkflowFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.ScatterFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.MultipleInputFeatureRequirement",
                            { _ | Dyn }
                          ],
                        std.contract.Sequence
                          [
                            refs."definitions.StepInputExpressionRequirement",
                            { _ | Dyn }
                          ]
                      ]
                  ),
                  {
                    DockerRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.DockerRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    EnvVarRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.EnvVarRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InitialWorkDirRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InitialWorkDirRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InlineJavascriptRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InlineJavascriptRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    InplaceUpdateRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.InplaceUpdateRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    LoadListingRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.LoadListingRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    MultipleInputFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.MultipleInputFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    NetworkAccess
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.NetworkAccessMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ResourceRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ResourceRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ScatterFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ScatterFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SchemaDefRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SchemaDefRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ShellCommandRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ShellCommandRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SoftwareRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SoftwareRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    StepInputExpressionRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.StepInputExpressionRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    SubworkflowFeatureRequirement
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.SubworkflowFeatureRequirementMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    ToolTimeLimit
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              refs."definitions.ToolTimeLimitMap",
                              { _ | Dyn }
                            ],
                          {}
                        ]
                      | optional,
                    WorkReuse
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.WorkReuseMap", { _ | Dyn } ],
                          {}
                        ]
                      | optional,
                  }
                ]
              | doc m%"
                Declares requirements that apply to either the runtime environment or the
                workflow engine that must be met in order to execute this workflow step.  If
                an implementation cannot satisfy all requirements, or a requirement is
                listed which is not recognized by the implementation, it is a fatal
                error and the implementation must not attempt to run the process,
                unless overridden at user option.
              "%
              | optional,
            run
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.CommandLineTool", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ExpressionTool", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Workflow", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Operation", { _ | Dyn } ],
                  String
                ]
              | doc m%"
                Specifies the process to run.  If `run` is a string, it must be an absolute IRI
                or a relative path from the primary document.
              "%,
            scatter | std.contract.any_of [ Array String, String ] | optional,
            scatterMethod
              | std.enum.TagOrString
              | [| 'nested_crossproduct, 'flat_crossproduct, 'dotproduct |]
              | doc "Required if `scatter` is an array of more than one element."
              | optional,
            when
              | String
              | doc m%"
                If defined, only run the step when the expression evaluates to
                `true`.  If `false` the step is skipped.  A skipped step
                produces a `null` on each output.
              "%
              | optional,
          },
      "definitions.WorkflowStepInput" =
        {
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc m%"
                The default value for this parameter to use if either there is no
                `source` field, or the value produced by the `source` is `null`.  The
                default must be applied prior to scattering or evaluating `valueFrom`.
              "%
              | optional,
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
            label
              | String
              | doc "A short, human-readable label of this object."
              | optional,
            linkMerge
              | std.enum.TagOrString
              | [| 'merge_nested, 'merge_flattened |]
              | doc m%"
                The method to use to merge multiple inbound links into a single array.
                If not specified, the default method is "merge_nested".
              "%
              | optional,
            loadContents
              | Bool
              | doc m%"
                Only valid when `type: File` or is an array of `items: File`.
                
                If true, the file (or each file in the array) must be a UTF-8
                text file 64 KiB or smaller, and the implementation must read
                the entire contents of the file (or file array) and place it
                in the `contents` field of the File object for use by
                expressions.  If the size of the file is greater than 64 KiB,
                the implementation must raise a fatal error.
              "%
              | optional,
            loadListing
              | std.enum.TagOrString
              | [| 'shallow_listing, 'no_listing, 'deep_listing |]
              | doc m%"
                Only valid when `type: Directory` or is an array of `items: Directory`.
                
                Specify the desired behavior for loading the `listing` field of
                a Directory object for use by expressions.
                
                The order of precedence for loadListing is:
                
                  1. `loadListing` on an individual parameter
                  2. Inherited from `LoadListingRequirement`
                  3. By default: `no_listing`
              "%
              | optional,
            pickValue
              | std.enum.TagOrString
              | [| 'the_only_non_null, 'first_non_null, 'all_non_null |]
              | doc "The method to use to choose non-null elements among multiple sources."
              | optional,
            source
              | std.contract.any_of [ Array String, String ]
              | doc m%"
                Specifies one or more workflow parameters that will provide input to
                the underlying step parameter.
              "%
              | optional,
            valueFrom
              | String
              | doc m%"
                To use valueFrom, [StepInputExpressionRequirement](#StepInputExpressionRequirement) must
                be specified in the workflow or workflow step requirements.
                
                If `valueFrom` is a constant string value, use this as the value for
                this input parameter.
                
                If `valueFrom` is a parameter reference or expression, it must be
                evaluated to yield the actual value to be assigned to the input field.
                
                The `self` value in the parameter reference or expression must be
                1. `null` if there is no `source` field
                2. the value of the parameter(s) specified in the `source` field when this
                workflow input parameter **is not** specified in this workflow step's `scatter` field.
                3. an element of the parameter specified in the `source` field when this workflow input
                parameter **is** specified in this workflow step's `scatter` field.
                
                The value of `inputs` in the parameter reference or expression must be
                the input object to the workflow step after assigning the `source`
                values, applying `default`, and then scattering.  The order of
                evaluating `valueFrom` among step input parameters is undefined and the
                result of evaluating `valueFrom` on a parameter must not be visible to
                evaluation of `valueFrom` on other parameters.
              "%
              | optional,
          },
      "definitions.WorkflowStepOutput" =
        {
            id
              | String
              | doc "The unique identifier for this object."
              | optional,
          },
    }
    in
  std.contract.Sequence [ refs."definitions.CWLGraphOrFile", { _ | Dyn } ]