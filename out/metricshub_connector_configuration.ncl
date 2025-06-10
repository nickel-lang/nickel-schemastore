# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.computes" =
        Array (
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'subtract,
                                            'multiply,
                                            'divide,
                                            'add
                                          |]
                                        ],
                                  value =
                                    std.contract.any_of [ Number, String ],
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'append, 'prepend, 'and |]
                                        ],
                                  value = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  arraySeparator = String,
                                  column = std.number.Integer,
                                  resultSeparator = String,
                                  translationTable =
                                    std.contract.any_of
                                        [
                                          String,
                                          js2n.record.Record
                                            {
                                              additional =
                                                'Some
                                                    (std.contract.any_of
                                                      [ Number, String ]),
                                              patterns = {},
                                              properties = {},
                                              required = {},
                                            }
                                        ],
                                  type = js2n.Const "arrayTranslate",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  exclude = String,
                                  keep = String,
                                  script = String,
                                  selectColumns = String,
                                  separators = String,
                                  type = js2n.Const "awk",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  conversion =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'array2SimpleStatus, 'hex2Dec |]
                                        ],
                                  type = js2n.Const "convert",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  type = js2n.Const "duplicateColumn",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  regExp = String,
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            'keepOnlyMatchingLines,
                                            'excludeMatchingLines
                                          |]
                                        ],
                                  valueList = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  subColumn = std.number.Integer,
                                  subSeparators = String,
                                  type = js2n.Const "extract",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  property = String,
                                  type =
                                    js2n.Const "extractPropertyFromWbemPath",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  entryKey = String,
                                  properties = String,
                                  separator = String,
                                  type = js2n.Const "json2Csv",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  columnNumbers = String,
                                  type = js2n.Const "keepColumns",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  bitList = String,
                                  column = std.number.Integer,
                                  translationTable = String,
                                  type = js2n.Const "perBitTranslation",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  existingValue = String,
                                  newValue = String,
                                  type = js2n.Const "replace",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  length = String,
                                  start = String,
                                  type = js2n.Const "substring",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  column = std.number.Integer,
                                  translationTable = String,
                                  type = js2n.Const "translate",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  properties = String,
                                  recordTag = String,
                                  type = js2n.Const "xml2Csv",
                                },
                            required = {},
                          },
                        Array Dyn
                      ]
                  ],
                { _ | Dyn }
              ]
          ),
      "definitions.deviceKind" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'other,
                'oob,
                'vms,
                'storage,
                'rs6000,
                'sunos,
                'solaris,
                'osf1,
                'linux,
                'nt,
                'hp
              |]
            ],
      "definitions.executeForEachEntryOf" =
        {
            concatMethod
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'json_array_extended, 'json_array, 'list |]
                    ],
                  {
                    concatEnd | String | optional,
                    concatStart | String | optional,
                    ..
                  }
                ]
              | optional,
            source | String | optional,
            ..
          },
      "definitions.httpMethod" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'put, 'delete, 'post, 'get |] ],
      "definitions.resultContent" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'all, 'body, 'header, 'http_status |] ],
      "definitions.sources" =
        {
            _ | std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.any_of
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
                                  authenticationToken = String,
                                  body = String,
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  header = String,
                                  method =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.httpMethod",
                                          String
                                        ],
                                  path = String,
                                  resultContent =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.resultContent",
                                          String
                                        ],
                                  type = js2n.Const "http",
                                  url = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  forceSerialization = Bool,
                                  type = js2n.Const "ipmi",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  beginAtLineNumber = std.number.Integer,
                                  commandLine = String,
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  endAtLineNumber = std.number.Integer,
                                  exclude = String,
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  executeLocally = Bool,
                                  forceSerialization = Bool,
                                  keep = String,
                                  selectColumns = String,
                                  separator = String,
                                  timeout = std.number.Integer,
                                  type = js2n.Const "commandLine",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  from = String,
                                  type = js2n.Const "copy",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  type = js2n.Const "static",
                                  value = String,
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  oid = String,
                                  type = js2n.Const "snmpGet",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  oid = String,
                                  selectColumns = String,
                                  type = js2n.Const "snmpTable",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  defaultRightLine = String,
                                  forceSerialization = Bool,
                                  isWbemKey = Bool,
                                  leftKeyColumn = std.number.Integer,
                                  leftTable = String,
                                  rightKeyColumn = std.number.Integer,
                                  rightTable = String,
                                  type = js2n.Const "tableJoin",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  forceSerialization = Bool,
                                  tables = js2n.array.ArrayOf String,
                                  type = js2n.Const "tableUnion",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  namespace = String,
                                  query = String,
                                  type = js2n.Const "wbem",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  namespace = String,
                                  query = String,
                                  type = js2n.Const "wmi",
                                },
                            required = {},
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  computes =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.computes",
                                          Array Dyn
                                        ],
                                  executeForEachEntryOf =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.executeForEachEntryOf",
                                          { _ | Dyn }
                                        ],
                                  forceSerialization = Bool,
                                  query = String,
                                  tables =
                                    js2n.array.ArrayOf
                                        (js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns = {},
                                            properties =
                                              {
                                                  alias = String,
                                                  columns =
                                                    js2n.array.ArrayOf
                                                        (js2n.record.Record
                                                          {
                                                            additional =
                                                              'Some Dyn,
                                                            patterns = {},
                                                            properties =
                                                              {
                                                                  name = String,
                                                                  number =
                                                                    std.number.Integer,
                                                                  type = String,
                                                                },
                                                            required = {},
                                                          }),
                                                  source = String,
                                                },
                                            required = {},
                                          }),
                                  type = js2n.Const "sql",
                                },
                            required = {},
                          },
                        Array Dyn
                      ]
                  ],
                { _ | Dyn }
              ]
          },
    }
    in
  {
      connector
        | {
          detection
            | {
              appliesTo
                | Array refs."definitions.deviceKind"
                | doc "Connector OS Compatibility List (Comma-separated)"
                | optional,
              connectionTypes
                | Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'local, 'remote |] ]
                )
                | optional,
              criteria
                | Array (
                  std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          std.contract.any_of
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
                                        exclude =
                                          js2n.array.ArrayOf
                                              refs."definitions.deviceKind",
                                        forceSerialization = Bool,
                                        keep =
                                          js2n.array.ArrayOf
                                              refs."definitions.deviceKind",
                                        type = js2n.Const "deviceType",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        authenticationToken = String,
                                        body = String,
                                        errorMessage = String,
                                        expectedResult = String,
                                        forceSerialization = Bool,
                                        header = String,
                                        method = refs."definitions.httpMethod",
                                        path = String,
                                        resultContent =
                                          refs."definitions.resultContent",
                                        type = js2n.Const "http",
                                        url = String,
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        forceSerialization = Bool,
                                        type = js2n.Const "ipmi",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        commandLine = String,
                                        errorMessage = String,
                                        executeLocally = Bool,
                                        expectedResult = String,
                                        forceSerialization = Bool,
                                        timeout = std.number.Integer,
                                        type = js2n.Const "commandLine",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        commandLine = String,
                                        forceSerialization = Bool,
                                        type = js2n.Const "process",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        engineVersion = String,
                                        forceSerialization = Bool,
                                        kmVersion = String,
                                        type = js2n.Const "productRequirements",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        forceSerialization = Bool,
                                        name = String,
                                        type = js2n.Const "service",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        expectedResult = String,
                                        forceSerialization = Bool,
                                        oid = String,
                                        type = js2n.Const "snmpGet",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        expectedResult = String,
                                        forceSerialization = Bool,
                                        oid = String,
                                        type = js2n.Const "snmpGetNext",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        errorMessage = String,
                                        expectedResult = String,
                                        forceSerialization = Bool,
                                        namespace = String,
                                        query = String,
                                        type = js2n.Const "wbem",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ],
                          std.contract.any_of
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
                                        errorMessage = String,
                                        expectedResult = String,
                                        forceSerialization = Bool,
                                        namespace = String,
                                        query = String,
                                        type = js2n.Const "wmi",
                                      },
                                  required = {},
                                },
                              Array Dyn
                            ]
                        ],
                      { _ | Dyn }
                    ]
                )
                | optional,
              disableAutoDetection
                | Bool
                | doc "Disable Auto Detection"
                | optional,
              onLastResort
                | String
                | doc "Last Resort Only (Activates if no connector contains specified monitor type)"
                | optional,
              supersedes
                | Array String
                | doc "Superseded Connector List"
                | optional,
              ..
            }
            | optional,
          displayName | String | doc "Connector Display Name" | optional,
          information | String | doc "Connector Short Description" | optional,
          platforms
            | std.contract.any_of [ Array String, String ]
            | doc "Connector Typical Platform Description"
            | optional,
          projectVersion
            | String
            | doc "Connector Library Project Version"
            | optional,
          reliesOn | String | doc "Connector Prerequisites" | optional,
          version | String | doc "Connector Current Version" | optional,
          ..
        }
        | doc "Connector Identity Properties"
        | optional,
      constants
        | { _ | String }
        | doc "Declared Connector Constants"
        | optional,
      extends | Array String | doc "Connectors Extended" | optional,
      metrics
        | {
          _ | {
            description | String | optional,
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'UpDownCounter, 'Counter, 'Gauge |]
                    ],
                  {
                    output
                      | std.enum.TagOrString
                      | [| 'UpDownCounter, 'Counter, 'Gauge |]
                      | optional,
                    stateSet | Array Dyn | optional,
                    ..
                  }
                ]
              | optional,
            unit | String | optional,
            ..
          }
        }
        | doc "OpenTelemetry Metrics Collected"
        | optional,
      monitors
        | js2n.record.Record
          {
            additional =
              'Some
                  {
                    collect
                      | {
                        executionOrder
                          | Array String
                          | doc "The order the sources will be executed in."
                          | optional,
                        keys | Array String | optional,
                        mapping
                          | {
                            attributes
                              | js2n.record.Record
                                {
                                  additional = 'Some String,
                                  patterns = {},
                                  properties = { id = String, },
                                  required = {},
                                }
                              | doc "Collect Attributes"
                              | optional,
                            legacyTextParameters
                              | { StatusInformation | String | optional, .. }
                              | optional,
                            metrics
                              | { _ | String }
                              | doc "Collect Metrics"
                              | optional,
                            source | String | optional,
                            ..
                          }
                          | doc "Collect Mapping"
                          | optional,
                        sources | refs."definitions.sources" | optional,
                        type
                          | std.enum.TagOrString
                          | [| 'multiInstance, 'monoInstance |]
                          | doc "Collect Instance Type"
                          | optional,
                        ..
                      }
                      | doc "Collect Monitor"
                      | optional,
                    discovery
                      | {
                        executionOrder
                          | Array String
                          | doc "The order the sources will be executed in."
                          | optional,
                        mapping
                          | {
                            attributes
                              | js2n.record.Record
                                {
                                  additional = 'Some String,
                                  patterns = {},
                                  properties = { id = String, name = String, },
                                  required = {},
                                }
                              | doc "Discovery Attributes"
                              | optional,
                            conditionalCollection | { _ | Dyn } | optional,
                            metrics
                              | { _ | String }
                              | doc "Discovery Metrics"
                              | optional,
                            source | String | optional,
                            ..
                          }
                          | doc "Discovery Mapping"
                          | optional,
                        sources | refs."definitions.sources" | optional,
                        ..
                      }
                      | doc "Discovery Monitor"
                      | optional,
                    simple
                      | {
                        executionOrder
                          | Array String
                          | doc "The order the sources will be executed in."
                          | optional,
                        mapping
                          | {
                            attributes
                              | js2n.record.Record
                                {
                                  additional = 'Some String,
                                  patterns = {},
                                  properties = { id = String, name = String, },
                                  required = {},
                                }
                              | doc "Discovery Attributes"
                              | optional,
                            conditionalCollection | { _ | Dyn } | optional,
                            metrics
                              | { _ | String }
                              | doc "Discovery Metrics"
                              | optional,
                            source | String | optional,
                            ..
                          }
                          | doc "Discovery Mapping"
                          | optional,
                        sources | refs."definitions.sources" | optional,
                        ..
                      }
                      | doc "Simple Monitor"
                      | optional,
                    ..
                  },
            patterns = {},
            properties =
              {
                  battery =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.battery.charge" = String,
                                            "hw.battery.time_left" = String,
                                            "hw.status{hw.type=\"battery\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            chemistry = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            type = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                executionOrder
                                  | Array String
                                  | doc "The order the sources will be executed in."
                                  | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            chemistry = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            type = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.battery.charge" = String,
                                            "hw.battery.time_left" = String,
                                            "hw.status{hw.type=\"battery\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  blade =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.power_state{hw.type=\"blade\"}" =
                                              String,
                                            "hw.status{hw.type=\"blade\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            blade_name = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.power_state{hw.type=\"blade\"}" =
                                              String,
                                            "hw.status{hw.type=\"blade\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            blade_name = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  cpu =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.cpu.speed" = String,
                                            "hw.energy{hw.type=\"cpu\"}" =
                                              String,
                                            "hw.errors{hw.type=\"cpu\"}" =
                                              String,
                                            "hw.power{hw.type=\"cpu\"}" =
                                              String,
                                            "hw.status{hw.type=\"cpu\", state=\"predicted_failure\"}" =
                                              String,
                                            "hw.status{hw.type=\"cpu\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.cpu.speed.limit{limit_type=\"max\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"cpu\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"cpu\", limit_type=\"degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        { id = String, name = String, },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  disk_controller =
                    {
                        collect
                          | {
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                executionOrder
                                  | Array String
                                  | doc "The order the sources will be executed in."
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.status{hw.type=\"disk_controller\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            bios_version = String,
                                            controller_number = String,
                                            driver_version = String,
                                            firmware_version = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.status{hw.type=\"disk_controller\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            bios_version = String,
                                            controller_number = String,
                                            driver_version = String,
                                            firmware_version = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  enclosure =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.enclosure.energy" = String,
                                            "hw.enclosure.power" = String,
                                            "hw.power_state{hw.type=\"enclosure\"}" =
                                              String,
                                            "hw.status{hw.type=\"enclosure\", state=\"open\"}" =
                                              String,
                                            "hw.status{hw.type=\"enclosure\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            bios_version = String,
                                            device_hostname = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            type = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            bios_version = String,
                                            device_hostname = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            type = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.enclosure.energy" = String,
                                            "hw.enclosure.power" = String,
                                            "hw.power_state{hw.type=\"enclosure\"}" =
                                              String,
                                            "hw.status{hw.type=\"enclosure\", state=\"open\"}" =
                                              String,
                                            "hw.status{hw.type=\"enclosure\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  fan =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.fan.speed" = String,
                                            "hw.fan.speed_ratio" = String,
                                            "hw.status{hw.type=\"fan\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            sensor_location = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.fan.speed" = String,
                                            "hw.fan.speed.limit{limit_type=\"low.critical\"}" =
                                              String,
                                            "hw.fan.speed.limit{limit_type=\"low.degraded\"}" =
                                              String,
                                            "hw.fan.speed_ratio" = String,
                                            "hw.fan.speed_ratio.limit{limit_type=\"low.critical\"}" =
                                              String,
                                            "hw.fan.speed_ratio.limit{limit_type=\"low.degraded\"}" =
                                              String,
                                            "hw.status{hw.type=\"fan\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            sensor_location = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.fan.speed.limit{limit_type=\"low.critical\"}" =
                                              String,
                                            "hw.fan.speed.limit{limit_type=\"low.degraded\"}" =
                                              String,
                                            "hw.fan.speed_ratio.limit{limit_type=\"low.critical\"}" =
                                              String,
                                            "hw.fan.speed_ratio.limit{limit_type=\"low.degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  gpu =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.energy{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.errors{hw.type=\"gpu\", hw.error.type=\"corrected\"}" =
                                              String,
                                            "hw.errors{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.gpu.io{direction=\"receive\"}" =
                                              String,
                                            "hw.gpu.io{direction=\"transmit\"}" =
                                              String,
                                            "hw.gpu.memory.utilization" =
                                              String,
                                            "hw.gpu.utilization{task=\"decoder\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"encoder\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"general\"}" =
                                              String,
                                            "hw.power{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.status{hw.type=\"gpu\", state=\"predicted_failure\"}" =
                                              String,
                                            "hw.status{hw.type=\"gpu\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            driver_version = String,
                                            firmware_version = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.gpu.memory.limit" = String,
                                            "hw.gpu.memory.utilization.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.gpu.memory.utilization.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.gpu.utilization.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.gpu.utilization.limit{limit_type=\"degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            driver_version = String,
                                            firmware_version = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.energy{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.errors{hw.type=\"gpu\", hw.error.type=\"corrected\"}" =
                                              String,
                                            "hw.errors{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.gpu.io{direction=\"receive\"}" =
                                              String,
                                            "hw.gpu.io{direction=\"transmit\"}" =
                                              String,
                                            "hw.gpu.memory.limit" = String,
                                            "hw.gpu.memory.utilization" =
                                              String,
                                            "hw.gpu.memory.utilization.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.gpu.memory.utilization.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.gpu.utilization.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.gpu.utilization.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"decoder\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"encoder\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"general\"}" =
                                              String,
                                            "hw.power{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.status{hw.type=\"gpu\", state=\"predicted_failure\"}" =
                                              String,
                                            "hw.status{hw.type=\"gpu\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  led =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.led.indicator" = String,
                                            "hw.status{hw.type=\"led\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __blinking_status = String,
                                            __display_id = String,
                                            __off_status = String,
                                            __on_status = String,
                                            color = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __blinking_status = String,
                                            __display_id = String,
                                            __off_status = String,
                                            __on_status = String,
                                            color = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.energy{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.errors{hw.type=\"gpu\", hw.error.type=\"corrected\"}" =
                                              String,
                                            "hw.errors{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.gpu.io{direction=\"receive\"}" =
                                              String,
                                            "hw.gpu.io{direction=\"transmit\"}" =
                                              String,
                                            "hw.gpu.memory.limit" = String,
                                            "hw.gpu.memory.utilization" =
                                              String,
                                            "hw.gpu.memory.utilization.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.gpu.memory.utilization.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.gpu.utilization.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.gpu.utilization.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"decoder\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"encoder\"}" =
                                              String,
                                            "hw.gpu.utilization{task=\"general\"}" =
                                              String,
                                            "hw.led.indicator" = String,
                                            "hw.power{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.status{hw.type=\"gpu\", state=\"predicted_failure\"}" =
                                              String,
                                            "hw.status{hw.type=\"gpu\"}" =
                                              String,
                                            "hw.status{hw.type=\"led\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  logical_disk =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"logical_disk\"}" =
                                              String,
                                            "hw.logical_disk.usage{state=\"free\"}" =
                                              String,
                                            "hw.status{hw.type=\"logical_disk\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            __use_for_capacity_report = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            name = String,
                                            raid_level = String,
                                            type = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                executionOrder
                                  | Array String
                                  | doc "The order the sources will be executed in."
                                  | optional,
                                metrics
                                  | {
                                    "hw.logical_disk.limit"
                                      | String
                                      | doc "Logical Disk Size"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            __use_for_capacity_report = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            name = String,
                                            raid_level = String,
                                            type = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | {
                                    "hw.errors{hw.type=\"logical_disk\"}"
                                      | String
                                      | doc "Logical Disk Error Count"
                                      | optional,
                                    "hw.logical_disk.limit"
                                      | String
                                      | doc "Logical Disk Size"
                                      | optional,
                                    "hw.logical_disk.usage{state=\"free\"}"
                                      | String
                                      | doc "Logical Disk Free Space (In Bytes)"
                                      | optional,
                                    "hw.status{hw.type=\"logical_disk\"}"
                                      | String
                                      | doc "Logical Disk Status (ok, failed, critical)"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  lun =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    AvailablePathInformation
                                      | String
                                      | doc "LUN Available Path Textual Information"
                                      | optional,
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.lun." = Number,
                                            "hw.lun.paths" = String,
                                            "hw.status{hw.type=\"lun\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            array_name = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            local_device_name = String,
                                            name = String,
                                            remote_device_name = String,
                                            wwn = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.lun.paths.limit{limit_type=\"low.degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            array_name = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            local_device_name = String,
                                            name = String,
                                            remote_device_name = String,
                                            wwn = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.lun." = Number,
                                            "hw.lun.paths" = String,
                                            "hw.lun.paths.limit{limit_type=\"low.degraded\"}" =
                                              String,
                                            "hw.status{hw.type=\"lun\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  memory =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"memory\"}" =
                                              Number,
                                            "hw.status{hw.type=\"memory\", state=\"predicted_failure\"}" =
                                              Number,
                                            "hw.status{hw.type=\"memory\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            type = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                executionOrder
                                  | Array String
                                  | doc "The order the sources will be executed in."
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors.limit{hw.type=\"memory\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"memory\", limit_type=\"degraded\"}" =
                                              String,
                                            "hw.memory.limit" = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            type = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors.limit{hw.type=\"memory\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"memory\", limit_type=\"degraded\"}" =
                                              String,
                                            "hw.errors{hw.type=\"memory\"}" =
                                              Number,
                                            "hw.memory.limit" = String,
                                            "hw.status{hw.type=\"memory\", state=\"predicted_failure\"}" =
                                              Number,
                                            "hw.status{hw.type=\"memory\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  network =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"network\", hw.error.type=\"zero_buffer_credit\"}" =
                                              String,
                                            "hw.errors{hw.type=\"network\"}" =
                                              String,
                                            "hw.network.bandwidth.limit" =
                                              String,
                                            "hw.network.full_duplex" = String,
                                            "hw.network.io{direction=\"receive\"}" =
                                              String,
                                            "hw.network.io{direction=\"transmit\"}" =
                                              String,
                                            "hw.network.packets{direction=\"receive\"}" =
                                              String,
                                            "hw.network.packets{direction=\"transmit\"}" =
                                              String,
                                            "hw.network.up" = String,
                                            "hw.status{hw.type=\"network\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            bandwidth = String,
                                            device_type = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            logical_address = String,
                                            logical_address_type = String,
                                            model = String,
                                            name = String,
                                            physical_address = String,
                                            physical_address_type = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            bandwidth = String,
                                            device_type = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            logical_address = String,
                                            logical_address_type = String,
                                            model = String,
                                            name = String,
                                            physical_address = String,
                                            physical_address_type = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"network\", hw.error.type=\"zero_buffer_credit\"}" =
                                              String,
                                            "hw.errors{hw.type=\"network\"}" =
                                              String,
                                            "hw.network.bandwidth.limit" =
                                              String,
                                            "hw.network.full_duplex" = String,
                                            "hw.network.io{direction=\"receive\"}" =
                                              String,
                                            "hw.network.io{direction=\"transmit\"}" =
                                              String,
                                            "hw.network.packets{direction=\"receive\"}" =
                                              String,
                                            "hw.network.packets{direction=\"transmit\"}" =
                                              String,
                                            "hw.network.up" = String,
                                            "hw.status{hw.type=\"network\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  other_device =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.energy{hw.type=\"other_device\"}" =
                                              String,
                                            "hw.other_device.uses" = String,
                                            "hw.other_device.value" = String,
                                            "hw.power{hw.type=\"other_device\"}" =
                                              String,
                                            "hw.status{hw.type=\"other_device\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            additional_label = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.other_device.uses.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.other_device.uses.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.other_device.value.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.other_device.value.limit{limit_type=\"degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            additional_label = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.energy{hw.type=\"other_device\"}" =
                                              String,
                                            "hw.other_device.uses" = String,
                                            "hw.other_device.uses.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.other_device.uses.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.other_device.value" = String,
                                            "hw.other_device.value.limit{limit_type=\"critical\"}" =
                                              String,
                                            "hw.other_device.value.limit{limit_type=\"degraded\"}" =
                                              String,
                                            "hw.power{hw.type=\"other_device\"}" =
                                              String,
                                            "hw.status{hw.type=\"other_device\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  physical_disk =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"device_not_ready\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"hard\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"illegal_request\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"media\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"no_device\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"recoverable\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"transport\"}" =
                                              String,
                                            "hw.physical_disk.endurance_utilization{state=\"remaining\"}" =
                                              String,
                                            "hw.status{hw.type=\"physical_disk\", state=\"predicted_failure\"}" =
                                              String,
                                            "hw.status{hw.type=\"physical_disk\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            firmware_version = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | {
                                    serial_number
                                      | String
                                      | doc "Physical Disk Size (In Bytes)"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            firmware_version = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"device_not_ready\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"hard\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"illegal_request\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"media\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"no_device\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"recoverable\"}" =
                                              String,
                                            "hw.errors{hw.type=\"physical_disk\", hw.error.type=\"transport\"}" =
                                              String,
                                            "hw.physical_disk.endurance_utilization{state=\"remaining\"}" =
                                              String,
                                            "hw.status{hw.type=\"physical_disk\", state=\"predicted_failure\"}" =
                                              String,
                                            "hw.status{hw.type=\"physical_disk\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  power_supply =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.power_supply.power" = String,
                                            "hw.power_supply.utilization" =
                                              String,
                                            "hw.status{hw.type=\"power_supply\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            power_supply_type = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | {
                                    "hw.power_supply.limit"
                                      | String
                                      | doc "Power Supply Maximum Output (In Watts)"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            power_supply_type = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | {
                                    "hw.power_supply.limit"
                                      | String
                                      | doc "Power Supply Maximum Output (In Watts)"
                                      | optional,
                                    "hw.power_supply.power"
                                      | String
                                      | doc "Power Supply Power Consumption (In Watts)"
                                      | optional,
                                    "hw.power_supply.utilization"
                                      | String
                                      | doc "Power Supply Utilization Ratio (Between 0.00 and 1.00)"
                                      | optional,
                                    "hw.status{hw.type=\"power_supply\"}"
                                      | String
                                      | doc "Power Supply Status (ok, failed, critical)"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  robotics =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"robotics\"}" =
                                              Number,
                                            "hw.robotics.moves" = String,
                                            "hw.status{hw.type=\"robotics\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            robotics_type = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors.limit{hw.type=\"robotics\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"robotics\", limit_type=\"degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            robotics_type = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors.limit{hw.type=\"robotics\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"robotics\", limit_type=\"degraded\"}" =
                                              String,
                                            "hw.errors{hw.type=\"robotics\"}" =
                                              Number,
                                            "hw.robotics.moves" = String,
                                            "hw.status{hw.type=\"robotics\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  tape_drive =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors{hw.type=\"tape_drive\"}" =
                                              String,
                                            "hw.status{hw.type=\"tape_drive\", state=\"needs_cleaning\"}" =
                                              String,
                                            "hw.status{hw.type=\"tape_drive\"}" =
                                              String,
                                            "hw.tape_drive.operations{type=\"mount\"}" =
                                              String,
                                            "hw.tape_drive.operations{type=\"unmount\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors.limit{hw.type=\"tape_drive\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"tape_drive\", limit_type=\"degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            model = String,
                                            name = String,
                                            serial_number = String,
                                            vendor = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.errors.limit{hw.type=\"tape_drive\", limit_type=\"critical\"}" =
                                              String,
                                            "hw.errors.limit{hw.type=\"tape_drive\", limit_type=\"degraded\"}" =
                                              String,
                                            "hw.errors{hw.type=\"tape_drive\"}" =
                                              String,
                                            "hw.status{hw.type=\"tape_drive\", state=\"needs_cleaning\"}" =
                                              String,
                                            "hw.status{hw.type=\"tape_drive\"}" =
                                              String,
                                            "hw.tape_drive.operations{type=\"mount\"}" =
                                              String,
                                            "hw.tape_drive.operations{type=\"unmount\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  temperature =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.status{hw.type=\"temperature\"}" =
                                              String,
                                            "hw.temperature" = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            sensor_location = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.temperature.limit{limit_type=\"high.critical\"}" =
                                              String,
                                            "hw.temperature.limit{limit_type=\"high.degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            sensor_location = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.status{hw.type=\"temperature\"}" =
                                              String,
                                            "hw.temperature" = String,
                                            "hw.temperature.limit{limit_type=\"high.critical\"}" =
                                              String,
                                            "hw.temperature.limit{limit_type=\"high.degraded\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  vm =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.power_state{hw.type=\"vm\"}" =
                                              String,
                                            "hw.power{hw.type=\"vm\"}" = String,
                                            "hw.vm.power_ratio" = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | {
                                    __display_id
                                      | String
                                      | doc "Virtual Machine ID"
                                      | optional,
                                    additionalProperties
                                      | String
                                      | doc "Custom attribute"
                                      | optional,
                                    "hw.parent.id"
                                      | String
                                      | doc "Parent Device ID"
                                      | optional,
                                    "hw.parent.type"
                                      | String
                                      | doc "Parent Device Type (Default: Enclosure)"
                                      | optional,
                                    id
                                      | String
                                      | doc "Virtual Machine ID"
                                      | optional,
                                    info
                                      | String
                                      | doc "Additional Virtual Machine Information"
                                      | optional,
                                    name
                                      | String
                                      | doc "Virtual Machine Name"
                                      | optional,
                                    "vm.host.name"
                                      | String
                                      | doc "Virtual Machine Hostname"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | { _ | String }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | {
                                    __display_id
                                      | String
                                      | doc "Virtual Machine ID"
                                      | optional,
                                    additionalProperties
                                      | String
                                      | doc "Custom attribute"
                                      | optional,
                                    "hw.parent.id"
                                      | String
                                      | doc "Parent Device ID"
                                      | optional,
                                    "hw.parent.type"
                                      | String
                                      | doc "Parent Device Type (Default: Enclosure)"
                                      | optional,
                                    id
                                      | String
                                      | doc "Virtual Machine ID"
                                      | optional,
                                    info
                                      | String
                                      | doc "Additional Virtual Machine Information"
                                      | optional,
                                    name
                                      | String
                                      | doc "Virtual Machine Name"
                                      | optional,
                                    "vm.host.name"
                                      | String
                                      | doc "Virtual Machine Hostname"
                                      | optional,
                                    ..
                                  }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.power_state{hw.type=\"vm\"}" =
                                              String,
                                            "hw.power{hw.type=\"vm\"}" = String,
                                            "hw.vm.power_ratio" = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                  voltage =
                    {
                        collect
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            keys | Array String | optional,
                            mapping
                              | {
                                attributes
                                  | { _ | String }
                                  | doc "Collect Attributes"
                                  | optional,
                                legacyTextParameters
                                  | {
                                    StatusInformation | String | optional,
                                    ..
                                  }
                                  | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.status{hw.type=\"voltage\"}" =
                                              String,
                                            "hw.voltage" = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Collect Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Collect Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            type
                              | std.enum.TagOrString
                              | [| 'multiInstance, 'monoInstance |]
                              | doc "Collect Instance Type"
                              | optional,
                            ..
                          }
                          | doc "Collect Monitor"
                          | optional,
                        discovery
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            sensor_location = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.voltage.limit{limit_type=\"high.degraded\"}" =
                                              String,
                                            "hw.voltage.limit{limit_type=\"low.critical\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Discovery Monitor"
                          | optional,
                        simple
                          | {
                            executionOrder
                              | Array String
                              | doc "The order the sources will be executed in."
                              | optional,
                            mapping
                              | {
                                attributes
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            __display_id = String,
                                            "hw.parent.id" = String,
                                            "hw.parent.type" = String,
                                            id = String,
                                            info = String,
                                            name = String,
                                            sensor_location = String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Attributes"
                                  | optional,
                                conditionalCollection | { _ | Dyn } | optional,
                                metrics
                                  | js2n.record.Record
                                    {
                                      additional = 'Some String,
                                      patterns = {},
                                      properties =
                                        {
                                            "hw.status{hw.type=\"voltage\"}" =
                                              String,
                                            "hw.voltage" = String,
                                            "hw.voltage.limit{limit_type=\"high.degraded\"}" =
                                              String,
                                            "hw.voltage.limit{limit_type=\"low.critical\"}" =
                                              String,
                                          },
                                      required = {},
                                    }
                                  | doc "Discovery Metrics"
                                  | optional,
                                source | String | optional,
                                ..
                              }
                              | doc "Discovery Mapping"
                              | optional,
                            sources | refs."definitions.sources" | optional,
                            ..
                          }
                          | doc "Simple Monitor"
                          | optional,
                        ..
                      },
                },
            required = {},
          }
        | doc "Monitor Identity Properties"
        | optional,
      pre | refs."definitions.sources" | optional,
      sudoCommands | Array String | doc "Sudo-able Commands" | optional,
      translations
        | { _ | { _ | String } }
        | doc "Contains Translation Tables"
        | optional,
      ..
    }