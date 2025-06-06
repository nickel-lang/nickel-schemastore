# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      aliases
        | { _ | String }
        | js2n.record.FieldsMatch "^(?!\\.{1,2}$)(?!.*\\/)[a-zA-Z0-9\\-\\._]+$"
        | optional,
      globals | Array (js2n.string.Matches "^[a-zA-Z_]\\w*") | optional,
      languageMode
        | std.enum.TagOrString
        | [| 'nocheck, 'nonstrict, 'strict |]
        | optional,
      lint
        | {
          "*" | Bool | optional,
          BuiltinGlobalWrite | Bool | optional,
          CommentDirective | Bool | optional,
          ComparisonPrecedence | Bool | optional,
          DeprecatedApi | Bool | optional,
          DeprecatedGlobal | Bool | optional,
          DuplicateCondition | Bool | optional,
          DuplicateFunction | Bool | optional,
          DuplicateLocal | Bool | optional,
          ForRange | Bool | optional,
          FormatString | Bool | optional,
          FunctionUnused | Bool | optional,
          GlobalUsedAsLocal | Bool | optional,
          ImplicitReturn | Bool | optional,
          ImportUnused | Bool | optional,
          IntegerParsing | Bool | optional,
          LocalShadow | Bool | optional,
          LocalUnused | Bool | optional,
          MisleadingAndOr | Bool | optional,
          MultiLineStatement | Bool | optional,
          PlaceholderRead | Bool | optional,
          RedundantNativeAttribute | Bool | optional,
          SameLineStatement | Bool | optional,
          TableLiteral | Bool | optional,
          TableOperations | Bool | optional,
          UnbalancedAssignment | Bool | optional,
          UninitializedLocal | Bool | optional,
          UnknownGlobal | Bool | optional,
          UnknownType | Bool | optional,
          UnreachableCode | Bool | optional,
        }
        | optional,
      lintErrors | Bool | optional,
      typeErrors | Bool | optional,
    }