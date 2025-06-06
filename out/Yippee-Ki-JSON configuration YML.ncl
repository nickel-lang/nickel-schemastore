# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.actionTypes.definitions.action" =
        {
            name
              | refs."definitions.actionTypes.definitions.actionName"
              | String,
            rules
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.anyRuleType",
                    { _ | Dyn }
                  ]
              )
              | doc "The array of rules representing the sequentially triggered steps of the transformation action.",
          },
      "definitions.actionTypes.definitions.actionName" =
        std.contract.Sequence
            [ refs."definitions.commonTypes.definitions.name", String ],
      "definitions.actionTypes.definitions.actions" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    refs."definitions.actionTypes.definitions.action",
                    { _ | Dyn }
                  ]
              )
            ],
      "definitions.commonTypes.definitions.charSet" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'UTF-8,
                'UTF-16LE,
                'UTF-16BE,
                'UTF-16,
                'US-ASCII,
                'ISO-8859-1
              |]
            ],
      "definitions.commonTypes.definitions.chronoUnit" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'FOREVER,
                'ERAS,
                'MILLENNIA,
                'CENTURIES,
                'DECADES,
                'YEARS,
                'MONTHS,
                'WEEKS,
                'DAYS,
                'HALF_DAYS,
                'HOURS,
                'MINUTES,
                'SECONDS,
                'MILLIS,
                'MICROS,
                'NANOS
              |]
            ],
      "definitions.commonTypes.definitions.httpHeaders" = { _ | String },
      "definitions.commonTypes.definitions.httpMethod" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'POST, 'GET |] ],
      "definitions.commonTypes.definitions.jsonPath" =
        js2n.string.Matches
            "^[$@](((\\.|\\.\\.)([$_a-zA-Z]+[$a-zA-Z0-9\\-_]*|\\*))|\\[\\*]|\\[[0-9]+((, [0-9]+)*|:[0-9]+)]|\\['[$_a-zA-Z]+[$a-zA-Z0-9\\-_]*'(, '[$_a-zA-Z]+[$a-zA-Z0-9\\-_]*')*]|\\[\\?\\(.+\\)])*$",
      "definitions.commonTypes.definitions.name" =
        js2n.string.Matches "^[$_a-zA-Z]+[$a-zA-Z0-9\\-_]*$",
      "definitions.functionTypes.definitions.bigDecimalToBigDecimalFunctionType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "absoluteValue", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionAbsoluteValue",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "add", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionAdd",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "divide", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionDivide",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "dividend", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionDividend",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "epochMillisDateAdd", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionEpochMillisDateAdd",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "multiply", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionMultiply",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "roundDecimal", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionRoundDecimal",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "subtract", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionSubtract",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "subtractFrom", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionSubtractFrom",
                    { _ | Dyn }
                  ]) js2n.Always,
              {
                name
                  | std.enum.TagOrString
                  | [|
                    'subtractFrom,
                    'subtract,
                    'roundDecimal,
                    'multiply,
                    'epochMillisDateAdd,
                    'dividend,
                    'divide,
                    'add,
                    'absoluteValue
                  |],
                ..
              }
            ],
      "definitions.functionTypes.definitions.functionAbsoluteValue" =
        {
            name
              | std.contract.Equal "absoluteValue"
              | doc "The name of the component.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionAdd" =
        {
            name | std.contract.Equal "add" | doc "The name of the component.",
            operand | Number | doc "Second operand of the calculation.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionChangeCase" =
        {
            name
              | std.contract.Equal "changeCase"
              | doc "The name of the component.",
            to
              | std.enum.TagOrString
              | [| 'UPPER_CASE, 'LOWER_CASE, 'UNCAPITALIZED, 'CAPITALIZED |]
              | doc "Defines what is the desired case change operation we want to do.",
          },
      "definitions.functionTypes.definitions.functionCloneKey" =
        {
            from | refs."definitions.commonTypes.definitions.name" | String,
            name
              | std.contract.Equal "cloneKey"
              | doc "The name of the component.",
            to | refs."definitions.commonTypes.definitions.name" | String,
          },
      "definitions.functionTypes.definitions.functionDivide" =
        {
            name
              | std.contract.Equal "divide"
              | doc "The name of the component.",
            operand | Number | doc "Second operand of the calculation.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionDividend" =
        {
            name
              | std.contract.Equal "dividend"
              | doc "The name of the component.",
            operand | Number | doc "First operand of the calculation.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionEpochMillisDateAdd" =
        {
            amount
              | std.number.Integer
              | doc "The amount of time units we need to add to the date time.",
            name
              | std.contract.Equal "epochMillisDateAdd"
              | doc "The name of the component.",
            unit
              | refs."definitions.commonTypes.definitions.chronoUnit"
              | String,
          },
      "definitions.functionTypes.definitions.functionHttpResourceByUri" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 2,
              {
                charset
                  | refs."definitions.commonTypes.definitions.charSet"
                  | String
                  | optional,
                httpHeaders
                  | refs."definitions.commonTypes.definitions.httpHeaders"
                  | { _ | Dyn }
                  | optional,
                httpMethod
                  | refs."definitions.commonTypes.definitions.httpMethod"
                  | String
                  | optional,
                name
                  | std.contract.Equal "httpResourceByUri"
                  | doc "The name of the component.",
                uri
                  | String
                  | doc "The default request URI as a fallback."
                  | optional,
                uriFunction
                  | refs."definitions.functionTypes.definitions.stringToStringFunctionType"
                  | { _ | Dyn }
                  | optional,
              }
            ],
      "definitions.functionTypes.definitions.functionJsonParse" =
        {
            name
              | std.contract.Equal "jsonParse"
              | doc "The name of the component.",
          },
      "definitions.functionTypes.definitions.functionMultiply" =
        {
            name
              | std.contract.Equal "multiply"
              | doc "The name of the component.",
            operand | Number | doc "Second operand of the calculation.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionRegex" =
        {
            name
              | std.contract.Equal "regex"
              | doc "The name of the component.",
            pattern
              | String
              | doc "A regex pattern that will be matched against the input, capturing certain named groups for later use.",
            replacement
              | String
              | doc "Defines how the captured groups should be used to piece together the output value using EL-like syntax.",
          },
      "definitions.functionTypes.definitions.functionReplace" =
        {
            find
              | String
              | doc "A literal we need to find in the input String.",
            name
              | std.contract.Equal "replace"
              | doc "The name of the component.",
            replace | String | doc "The replacement we need to use.",
          },
      "definitions.functionTypes.definitions.functionRoundDecimal" =
        {
            name
              | std.contract.Equal "roundDecimal"
              | doc "The name of the component.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionStringDateAdd" =
        {
            amount
              | std.number.Integer
              | doc "The amount of time units we need to add to the date time.",
            formatter
              | String
              | doc "The format String we need to use for date time parsing. [See](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/time/format/DateTimeFormatter.html)",
            name
              | std.contract.Equal "stringDateAdd"
              | doc "The name of the component.",
            unit
              | refs."definitions.commonTypes.definitions.chronoUnit"
              | String,
          },
      "definitions.functionTypes.definitions.functionSubtract" =
        {
            name
              | std.contract.Equal "subtract"
              | doc "The name of the component.",
            operand | Number | doc "Second operand of the calculation.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.functionSubtractFrom" =
        {
            name
              | std.contract.Equal "subtractFrom"
              | doc "The name of the component.",
            operand | Number | doc "First operand of the calculation.",
            scale
              | std.number.Integer
              | doc "The number of digits we want to keep right of the decimal point.",
          },
      "definitions.functionTypes.definitions.stringObjectMapToStringObjectMapFunctionType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "cloneKey", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionCloneKey",
                    { _ | Dyn }
                  ]) js2n.Always,
              { name | std.enum.TagOrString | [| 'cloneKey |], .. }
            ],
      "definitions.functionTypes.definitions.stringToObjectFunctionType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "changeCase", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionChangeCase",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "httpResourceByUri", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionHttpResourceByUri",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "jsonParse", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionJsonParse",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "regex", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionRegex",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "replace", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionReplace",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "stringDateAdd", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionStringDateAdd",
                    { _ | Dyn }
                  ]) js2n.Always,
              {
                name
                  | std.enum.TagOrString
                  | [|
                    'stringDateAdd,
                    'replace,
                    'regex,
                    'jsonParse,
                    'httpResourceByUri,
                    'changeCase
                  |],
                ..
              }
            ],
      "definitions.functionTypes.definitions.stringToStringFunctionType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "changeCase", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionChangeCase",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "httpResourceByUri", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionHttpResourceByUri",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "regex", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionRegex",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "replace", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionReplace",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "stringDateAdd", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.functionTypes.definitions.functionStringDateAdd",
                    { _ | Dyn }
                  ]) js2n.Always,
              {
                name
                  | std.enum.TagOrString
                  | [|
                    'stringDateAdd,
                    'replace,
                    'regex,
                    'httpResourceByUri,
                    'changeCase
                  |],
                ..
              }
            ],
      "definitions.predicateTypes.definitions.anyPredicateType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "allMatch", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateAllMatch",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "anyMatch", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateAnyMatch",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "anyString", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateAnyString",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "containsKey", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateContainsKey",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "evalOn", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateEvalOn",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "isNull", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateIsNull",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "noneMatch", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateNoneMatch",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "notNull", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateNotNull",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "regex", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateRegex",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "SpEL", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.predicateSpEL",
                    { _ | Dyn }
                  ]) js2n.Always,
              {
                name
                  | std.enum.TagOrString
                  | [|
                    'regex,
                    'notNull,
                    'noneMatch,
                    'isNull,
                    'evalOn,
                    'containsKey,
                    'anyString,
                    'anyMatch,
                    'allMatch,
                    'SpEL
                  |],
                ..
              }
            ],
      "definitions.predicateTypes.definitions.predicateAllMatch" =
        {
            from
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.anyPredicateType",
                    { _ | Dyn }
                  ]
              ),
            name
              | std.contract.Equal "allMatch"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateAnyMatch" =
        {
            from
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.anyPredicateType",
                    { _ | Dyn }
                  ]
              ),
            name
              | std.contract.Equal "anyMatch"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateAnyString" =
        {
            name
              | std.contract.Equal "anyString"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateContainsKey" =
        {
            key | refs."definitions.commonTypes.definitions.name" | String,
            name
              | std.contract.Equal "containsKey"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateEvalOn" =
        {
            childPath
              | js2n.string.Matches
                "^([$_a-zA-Z]+[$a-zA-Z0-9\\-_]+)(.[$_a-zA-Z]+[$a-zA-Z0-9\\-_]+)*$"
              | doc "The desired navigation we want to perform relative to the Map/Object we operate on.",
            name
              | std.contract.Equal "evalOn"
              | doc "The name of the component.",
            predicate
              | refs."definitions.predicateTypes.definitions.anyPredicateType"
              | { _ | Dyn },
          },
      "definitions.predicateTypes.definitions.predicateIsNull" =
        {
            name
              | std.contract.Equal "isNull"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateNoneMatch" =
        {
            from
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.predicateTypes.definitions.anyPredicateType",
                    { _ | Dyn }
                  ]
              ),
            name
              | std.contract.Equal "noneMatch"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateNotNull" =
        {
            name
              | std.contract.Equal "notNull"
              | doc "The name of the component.",
          },
      "definitions.predicateTypes.definitions.predicateRegex" =
        {
            name
              | std.contract.Equal "regex"
              | doc "The name of the component.",
            pattern | String | doc "The regular expression we want to match.",
          },
      "definitions.predicateTypes.definitions.predicateSpEL" =
        {
            expression | String | doc "The SpEL expression we want to match.",
            name | std.contract.Equal "SpEL" | doc "The name of the component.",
          },
      "definitions.ruleTypes.definitions.anyRuleType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "add", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleAdd",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "calculate", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleCalculate",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "copy", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleCopy",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "delete", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleDelete",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "deleteFrom", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleDeleteFrom",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "rename", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleRename",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "replace", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleReplace",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "replaceMap", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleReplaceMap",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "validate", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.ruleTypes.definitions.ruleValidate",
                    { _ | Dyn }
                  ]) js2n.Always,
              {
                name
                  | std.enum.TagOrString
                  | [|
                    'validate,
                    'replaceMap,
                    'replace,
                    'rename,
                    'deleteFrom,
                    'delete,
                    'copy,
                    'calculate,
                    'add
                  |]
                  | doc "The name of the rule.",
                params
                  | { _ | Dyn }
                  | doc "The optional parameter map to allow configuration of the selected rule."
                  | optional,
                path
                  | refs."definitions.commonTypes.definitions.jsonPath"
                  | String,
              }
            ],
      "definitions.ruleTypes.definitions.ruleAdd" =
        {
            name | std.contract.Equal "add" | doc "The name of the component.",
            params
              | {
                key
                  | refs."definitions.supplierTypes.definitions.anySupplierType"
                  | { _ | Dyn },
                value
                  | refs."definitions.supplierTypes.definitions.anySupplierType"
                  | { _ | Dyn },
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleCalculate" =
        {
            name
              | std.contract.Equal "calculate"
              | doc "The name of the component.",
            params
              | {
                numberFunction
                  | refs."definitions.functionTypes.definitions.bigDecimalToBigDecimalFunctionType"
                  | { _ | Dyn },
                predicate
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleCopy" =
        {
            name | std.contract.Equal "copy" | doc "The name of the component.",
            params
              | {
                key
                  | refs."definitions.supplierTypes.definitions.anySupplierType"
                  | { _ | Dyn },
                to
                  | {
                    value
                      | refs."definitions.commonTypes.definitions.jsonPath"
                      | String,
                  },
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleDelete" =
        {
            name
              | std.contract.Equal "delete"
              | doc "The name of the component.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleDeleteFrom" =
        {
            name
              | std.contract.Equal "deleteFrom"
              | doc "The name of the component.",
            params
              | js2n.record.MaxProperties 5
              | js2n.record.MinProperties 1
              | {
                deleteKey
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
                deleteValue
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
                keepKey
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
                keepValue
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
                predicate
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleRename" =
        {
            name
              | std.contract.Equal "rename"
              | doc "The name of the component.",
            params
              | {
                newKey
                  | refs."definitions.supplierTypes.definitions.anySupplierType"
                  | { _ | Dyn },
                oldKey
                  | refs."definitions.supplierTypes.definitions.anySupplierType"
                  | { _ | Dyn },
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleReplace" =
        {
            name
              | std.contract.Equal "replace"
              | doc "The name of the component.",
            params
              | {
                predicate
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
                stringFunction
                  | refs."definitions.functionTypes.definitions.stringToStringFunctionType"
                  | { _ | Dyn },
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleReplaceMap" =
        {
            name
              | std.contract.Equal "replaceMap"
              | doc "The name of the component.",
            params
              | {
                mapFunction
                  | refs."definitions.functionTypes.definitions.stringObjectMapToStringObjectMapFunctionType"
                  | { _ | Dyn },
                predicate
                  | refs."definitions.predicateTypes.definitions.anyPredicateType"
                  | { _ | Dyn }
                  | optional,
              }
              | doc "Additional parameters of the rule.",
            path | refs."definitions.commonTypes.definitions.jsonPath" | String,
          },
      "definitions.ruleTypes.definitions.ruleValidate" =
        {
            name
              | std.contract.Equal "validate"
              | doc "The name of the component.",
            params
              | {
                onFailure
                  | {
                    transformation
                      | std.enum.TagOrString
                      | [| 'CONTINUE, 'SKIP_REST, 'ABORT |]
                      | doc "Defines how the transformation should handle a validation failure.",
                    violation
                      | std.enum.TagOrString
                      | [| 'IGNORE, 'COMMENT_JSON, 'LOG_ONLY |]
                      | doc "Defines how the rule should document/report the violations.",
                  },
                schema
                  | refs."definitions.supplierTypes.definitions.anySupplierType"
                  | { _ | Dyn },
              }
              | doc "Additional parameters of the rule.",
            path
              | std.contract.Equal "$"
              | doc "Must be the root JSON Path as the validator cannot work on sub-schema.",
          },
      "definitions.supplierTypes.definitions.anySupplierType" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "converting", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierConverting",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      { name = js2n.Const "epochMillisRelativeDate", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierEpochMillisRelativeDate",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "file", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierFile",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "httpResource", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierHttpResource",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "jsonSchema", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierJsonSchema",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "relativeStringDate", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierRelativeStringDate",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "schemaStore", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierSchemaStore",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "staticBoolean", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierStaticBoolean",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "staticDecimal", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierStaticDecimal",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "staticInteger", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierStaticInteger",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "staticJson", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierStaticJson",
                    { _ | Dyn }
                  ]) js2n.Always,
              js2n.IfThenElse
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties = { name = js2n.Const "staticString", },
                    required = {},
                  })
                (std.contract.Sequence
                  [
                    refs."definitions.supplierTypes.definitions.supplierStaticString",
                    { _ | Dyn }
                  ]) js2n.Always,
              {
                name
                  | std.enum.TagOrString
                  | [|
                    'staticString,
                    'staticJson,
                    'staticInteger,
                    'staticDecimal,
                    'staticBoolean,
                    'schemaStore,
                    'relativeStringDate,
                    'jsonSchema,
                    'httpResource,
                    'file,
                    'epochMillisRelativeDate,
                    'converting
                  |],
                ..
              }
            ],
      "definitions.supplierTypes.definitions.supplierConverting" =
        {
            converter
              | refs."definitions.functionTypes.definitions.stringToObjectFunctionType"
              | { _ | Dyn },
            name
              | std.contract.Equal "converting"
              | doc "The name of the component.",
            stringSource
              | refs."definitions.supplierTypes.definitions.anySupplierType"
              | { _ | Dyn },
          },
      "definitions.supplierTypes.definitions.supplierEpochMillisRelativeDate" =
        {
            amount
              | std.number.Integer
              | doc "The amount of time units we need to add to the current date time.",
            name
              | std.contract.Equal "epochMillisRelativeDate"
              | doc "The name of the component.",
            relativeTo
              | std.number.Integer
              | doc "The value we want to be relative to (in case it is not the current time)."
              | optional,
            unit
              | refs."definitions.commonTypes.definitions.chronoUnit"
              | String,
          },
      "definitions.supplierTypes.definitions.supplierFile" =
        {
            charset
              | refs."definitions.commonTypes.definitions.charSet"
              | String
              | optional,
            name | std.contract.Equal "file" | doc "The name of the component.",
            path | String | doc "The path of the file we want to use as input.",
          },
      "definitions.supplierTypes.definitions.supplierHttpResource" =
        {
            charset
              | refs."definitions.commonTypes.definitions.charSet"
              | String
              | optional,
            httpHeaders
              | refs."definitions.commonTypes.definitions.httpHeaders"
              | { _ | Dyn }
              | optional,
            httpMethod
              | refs."definitions.commonTypes.definitions.httpMethod"
              | String
              | optional,
            name
              | std.contract.Equal "httpResource"
              | doc "The name of the component.",
            uri | String | doc "The URI we want to send the request to.",
          },
      "definitions.supplierTypes.definitions.supplierJsonSchema" =
        {
            name
              | std.contract.Equal "jsonSchema"
              | doc "The name of the component.",
            source
              | refs."definitions.supplierTypes.definitions.anySupplierType"
              | { _ | Dyn },
          },
      "definitions.supplierTypes.definitions.supplierRelativeStringDate" =
        {
            amount
              | std.number.Integer
              | doc "The amount of time units we need to add to the current date time.",
            formatter
              | String
              | doc "The format String we need to use for date time parsing. [See](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/time/format/DateTimeFormatter.html)",
            name
              | std.contract.Equal "relativeStringDate"
              | doc "The name of the component.",
            relativeTo
              | String
              | doc "The value we want to be relative to (in case it is not the current time)."
              | optional,
            unit
              | refs."definitions.commonTypes.definitions.chronoUnit"
              | String,
          },
      "definitions.supplierTypes.definitions.supplierSchemaStore" =
        {
            name
              | std.contract.Equal "schemaStore"
              | doc "The name of the component.",
            schemaName
              | String
              | doc "The name of the JSON schema as found in the SchemaStore.org catalog.",
          },
      "definitions.supplierTypes.definitions.supplierStaticBoolean" =
        {
            name
              | std.contract.Equal "staticBoolean"
              | doc "The name of the component.",
            value
              | Bool
              | doc "The static value that must be returned each time the supplier is called.",
          },
      "definitions.supplierTypes.definitions.supplierStaticDecimal" =
        {
            name
              | std.contract.Equal "staticDecimal"
              | doc "The name of the component.",
            value
              | Number
              | doc "The static value that must be returned each time the supplier is called.",
          },
      "definitions.supplierTypes.definitions.supplierStaticInteger" =
        {
            name
              | std.contract.Equal "staticInteger"
              | doc "The name of the component.",
            value
              | std.number.Integer
              | doc "The static value that must be returned each time the supplier is called.",
          },
      "definitions.supplierTypes.definitions.supplierStaticJson" =
        {
            name
              | std.contract.Equal "staticJson"
              | doc "The name of the component.",
            value
              | String
              | doc "The static JSON value we want to supply every time our supplier is called.",
          },
      "definitions.supplierTypes.definitions.supplierStaticString" =
        {
            name
              | std.contract.Equal "staticString"
              | doc "The name of the component.",
            value
              | String
              | doc "The static value that must be returned each time the supplier is called.",
          },
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          actions
            | refs."definitions.actionTypes.definitions.actions"
            | Array Dyn,
        },
        Array Dyn
      ]