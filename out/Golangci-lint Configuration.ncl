# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.formats-path" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'stderr, 'stdout |] ],
              String
            ],
      "definitions.formatter-names" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'golines, 'goimports, 'gofumpt, 'gofmt, 'gci |]
            ],
      "definitions.gocritic-checks" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'yodaStyleExpr,
                'wrapperFunc,
                'whyNoLint,
                'weakCond,
                'valSwap,
                'unslice,
                'unnecessaryDefer,
                'unnecessaryBlock,
                'unnamedResult,
                'unlambda,
                'unlabelStmt,
                'underef,
                'uncheckedInlineErr,
                'typeUnparen,
                'typeSwitchVar,
                'typeDefFirst,
                'typeAssertChain,
                'truncateCmp,
                'tooManyResultsChecker,
                'todoCommentWithoutDetail,
                'timeExprSimplify,
                'syncMapLoadAndDelete,
                'switchTrue,
                'stringsCompare,
                'stringXbytes,
                'stringConcatSimplify,
                'sqlQuery,
                'sprintfQuotedString,
                'sortSlice,
                'sloppyTypeAssert,
                'sloppyReassign,
                'sloppyLen,
                'sliceClear,
                'singleCaseSwitch,
                'ruleguard,
                'returnAfterHttpError,
                'regexpSimplify,
                'regexpPattern,
                'regexpMust,
                'redundantSprint,
                'rangeValCopy,
                'rangeExprCopy,
                'rangeAppendAll,
                'ptrToRefParam,
                'preferWriteByte,
                'preferStringWriter,
                'preferFprint,
                'preferFilepathJoin,
                'preferDecodeRune,
                'paramTypeCombine,
                'offBy1,
                'octalLiteral,
                'nilValReturn,
                'newDeref,
                'nestingReduce,
                'methodExprCall,
                'mapKey,
                'ioutilDeprecated,
                'initClause,
                'indexAlloc,
                'importShadow,
                'ifElseChain,
                'hugeParam,
                'httpNoBody,
                'hexLiteral,
                'flagName,
                'flagDeref,
                'filepathJoin,
                'externalErrorReassign,
                'exposedSyncMutex,
                'exitAfterDefer,
                'evalOrder,
                'equalFold,
                'emptyStringTest,
                'emptyFallthrough,
                'emptyDecl,
                'elseif,
                'dynamicFmtString,
                'dupSubExpr,
                'dupImport,
                'dupCase,
                'dupBranchBody,
                'dupArg,
                'docStub,
                'deprecatedComment,
                'deferUnlambda,
                'deferInLoop,
                'defaultCaseOrder,
                'commentedOutImport,
                'commentedOutCode,
                'commentFormatting,
                'codegenComment,
                'caseOrder,
                'captLocal,
                'builtinShadowDecl,
                'builtinShadow,
                'boolExprSimplify,
                'badSyncOnceFunc,
                'badSorting,
                'badRegexp,
                'badLock,
                'badCond,
                'badCall,
                'assignOp,
                'argOrder,
                'appendCombine,
                'appendAssign
              |]
            ],
      "definitions.gocritic-tags" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'security,
                'opinionated,
                'experimental,
                'performance,
                'style,
                'diagnostic
              |]
            ],
      "definitions.gosec-rules" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'G602,
                'G601,
                'G507,
                'G506,
                'G505,
                'G504,
                'G503,
                'G502,
                'G501,
                'G406,
                'G405,
                'G404,
                'G403,
                'G402,
                'G401,
                'G307,
                'G306,
                'G305,
                'G304,
                'G303,
                'G302,
                'G301,
                'G204,
                'G203,
                'G202,
                'G201,
                'G115,
                'G114,
                'G112,
                'G111,
                'G110,
                'G109,
                'G108,
                'G107,
                'G106,
                'G104,
                'G103,
                'G102,
                'G101
              |]
            ],
      "definitions.govet-analyzers" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'waitgroup,
                'unusedwrite,
                'unusedresult,
                'unsafeptr,
                'unreachable,
                'unmarshal,
                'timeformat,
                'tests,
                'testinggoroutine,
                'structtag,
                'stringintconv,
                'stdversion,
                'stdmethods,
                'sortslice,
                'slog,
                'sigchanyzer,
                'shift,
                'shadow,
                'reflectvaluecompare,
                'printf,
                'nilness,
                'nilfunc,
                'lostcancel,
                'loopclosure,
                'ifaceassert,
                'httpresponse,
                'httpmux,
                'framepointer,
                'findcall,
                'fieldalignment,
                'errorsas,
                'directive,
                'defers,
                'deepequalerrors,
                'copylocks,
                'composites,
                'cgocall,
                'buildtag,
                'bools,
                'atomicalign,
                'atomic,
                'assign,
                'asmdecl,
                'appends
              |]
            ],
      "definitions.iface-analyzers" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'opaque, 'unused, 'identical |] ],
      "definitions.linter-names" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'zerologlint,
                    'wsl,
                    'wrapcheck,
                    'whitespace,
                    'wastedassign,
                    'varnamelen,
                    'usetesting,
                    'usestdlibvars,
                    'unused,
                    'unparam,
                    'unconvert,
                    'tparallel,
                    'thelper,
                    'testpackage,
                    'testifylint,
                    'testableexamples,
                    'tagliatelle,
                    'tagalign,
                    'stylecheck,
                    'staticcheck,
                    'sqlclosecheck,
                    'sloglint,
                    'rowserrcheck,
                    'revive,
                    'recvcheck,
                    'reassign,
                    'protogetter,
                    'promlinter,
                    'predeclared,
                    'prealloc,
                    'perfsprint,
                    'paralleltest,
                    'nosprintfhostport,
                    'nonamedreturns,
                    'nolintlint,
                    'noctx,
                    'nlreturn,
                    'nilnil,
                    'nilnesserr,
                    'nilerr,
                    'nestif,
                    'nakedret,
                    'musttag,
                    'mnd,
                    'misspell,
                    'mirror,
                    'makezero,
                    'maintidx,
                    'loggercheck,
                    'lll,
                    'ireturn,
                    'intrange,
                    'interfacebloat,
                    'ineffassign,
                    'inamedparam,
                    'importas,
                    'iface,
                    'grouper,
                    'govet,
                    'gosmopolitan,
                    'gosimple,
                    'gosec,
                    'goprintffuncname,
                    'gomodguard,
                    'gomoddirectives,
                    'goheader,
                    'err113,
                    'godox,
                    'godot,
                    'gocyclo,
                    'gocritic,
                    'goconst,
                    'gocognit,
                    'gochecksumtype,
                    'gochecknoinits,
                    'gochecknoglobals,
                    'gocheckcompilerdirectives,
                    'ginkgolinter,
                    'funlen,
                    'funcorder,
                    'forcetypeassert,
                    'forbidigo,
                    'fatcontext,
                    'exptostd,
                    'exhaustruct,
                    'exhaustive,
                    'errorlint,
                    'errname,
                    'errchkjson,
                    'errcheck,
                    'durationcheck,
                    'dupword,
                    'dupl,
                    'dogsled,
                    'depguard,
                    'decorder,
                    'cyclop,
                    'copyloopvar,
                    'contextcheck,
                    'containedctx,
                    'canonicalheader,
                    'bodyclose,
                    'bidichk,
                    'asciicheck,
                    'asasalint
                  |]
                ],
              String
            ],
      "definitions.relative-path-modes" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'wd, 'cfg, 'gitroot, 'gomod |] ],
      "definitions.revive-rules" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'waitgroup-by-value,
                'var-naming,
                'var-declaration,
                'useless-break,
                'use-errors-new,
                'use-any,
                'unused-receiver,
                'unused-parameter,
                'unreachable-code,
                'unnecessary-stmt,
                'unhandled-error,
                'unexported-return,
                'unexported-naming,
                'unconditional-recursion,
                'unchecked-type-assertion,
                'time-naming,
                'time-equal,
                'superfluous-else,
                'struct-tag,
                'string-of-int,
                'string-format,
                'redundant-test-main-exit,
                'redundant-import-alias,
                'redundant-build-tag,
                'redefines-builtin-id,
                'receiver-naming,
                'range,
                'range-val-in-closure,
                'range-val-address,
                'package-comments,
                'optimize-operands-order,
                'nested-structs,
                'modifies-value-receiver,
                'modifies-parameter,
                'max-public-structs,
                'max-control-nesting,
                'line-length-limit,
                'indent-error-flow,
                'increment-decrement,
                'imports-blocklist,
                'import-shadowing,
                'import-alias-naming,
                'if-return,
                'identical-branches,
                'get-return,
                'function-result-limit,
                'function-length,
                'flag-parameter,
                'filename-format,
                'file-length-limit,
                'file-header,
                'exported,
                'errorf,
                'error-strings,
                'error-return,
                'error-naming,
                'enforce-slice-style,
                'enforce-repeated-arg-type-style,
                'enforce-map-style,
                'empty-lines,
                'empty-block,
                'early-return,
                'duplicated-imports,
                'dot-imports,
                'defer,
                'deep-exit,
                'datarace,
                'cyclomatic,
                'context-keys-type,
                'context-as-argument,
                'constant-logical-expr,
                'confusing-results,
                'confusing-naming,
                'comments-density,
                'comment-spacings,
                'cognitive-complexity,
                'call-to-gc,
                'bool-literal-in-expr,
                'blank-imports,
                'bare-return,
                'banned-characters,
                'atomic,
                'argument-limit,
                'add-constant
              |]
            ],
      "definitions.settings.definitions.asasalintSettings" =
        {
            exclude
              | js2n.array.UniqueItems
              | Array String
              | doc "To specify a set of function names to exclude."
              | optional,
            use-builtin-exclusions
              | Bool
              | doc "To enable/disable the asasalint builtin exclusions of function names."
              | optional,
          },
      "definitions.settings.definitions.bidichkSettings" =
        {
            first-strong-isolate
              | Bool
              | doc "Disallow: FIRST-STRONG-ISOLATE"
              | optional,
            left-to-right-embedding
              | Bool
              | doc "Disallow: LEFT-TO-RIGHT-EMBEDDING"
              | optional,
            left-to-right-isolate
              | Bool
              | doc "Disallow: LEFT-TO-RIGHT-ISOLATE"
              | optional,
            left-to-right-override
              | Bool
              | doc "Disallow: LEFT-TO-RIGHT-OVERRIDE"
              | optional,
            pop-directional-formatting
              | Bool
              | doc "Disallow: POP-DIRECTIONAL-FORMATTING"
              | optional,
            pop-directional-isolate
              | Bool
              | doc "Disallow: POP-DIRECTIONAL-ISOLATE"
              | optional,
            right-to-left-embedding
              | Bool
              | doc "Disallow: RIGHT-TO-LEFT-EMBEDDING"
              | optional,
            right-to-left-isolate
              | Bool
              | doc "Disallow: RIGHT-TO-LEFT-ISOLATE"
              | optional,
            right-to-left-override
              | Bool
              | doc "Disallow: RIGHT-TO-LEFT-OVERRIDE"
              | optional,
          },
      "definitions.settings.definitions.copyloopvarSettings" =
        { check-alias | Bool | optional, },
      "definitions.settings.definitions.customSettings" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^.*$" =
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
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'module |]
                                                    ],
                                            },
                                        required = { type = true, },
                                      },
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "path" ],
                                    Array Dyn
                                  ]
                              ],
                            {
                              description
                                | String
                                | doc "The description of the linter, for documentation purposes only."
                                | optional,
                              original-url
                                | String
                                | doc "Intended to point to the repo location of the linter, for documentation purposes only."
                                | optional,
                              path
                                | String
                                | doc "The path to the plugin *.so. Can be absolute or local."
                                | optional,
                              settings
                                | { _ | Dyn }
                                | doc "Plugins settings/configuration. Only work with plugin based on `linterdb.PluginConstructor`."
                                | optional,
                              type
                                | std.enum.TagOrString
                                | [| 'goplugin, 'module |]
                                | doc "The plugin type."
                                | optional,
                            }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.settings.definitions.cyclopSettings" =
        {
            max-complexity
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Max complexity the function can have"
              | optional,
            package-average
              | js2n.number.Minimum 0
              | doc "Max average complexity in package"
              | optional,
          },
      "definitions.settings.definitions.decorderSettings" =
        {
            dec-order
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'func, 'var, 'const, 'type |] ]
              )
              | optional,
            disable-const-dec-num-check
              | Bool
              | doc "Const declarations will be ignored for dec num check"
              | optional,
            disable-dec-num-check
              | Bool
              | doc "Multiple global type, const and var declarations are allowed"
              | optional,
            disable-dec-order-check
              | Bool
              | doc "Order of declarations is not checked"
              | optional,
            disable-init-func-first-check
              | Bool
              | doc "Allow init func to be anywhere in file"
              | optional,
            disable-type-dec-num-check
              | Bool
              | doc "Type declarations will be ignored for dec num check"
              | optional,
            disable-var-dec-num-check
              | Bool
              | doc "Var declarations will be ignored for dec num check"
              | optional,
            ignore-underscore-vars
              | Bool
              | doc "Underscore vars (vars with \"_\" as the name) will be ignored at all checks"
              | optional,
          },
      "definitions.settings.definitions.depguardSettings" =
        {
            rules
              | {
                _ | {
                  allow
                    | Array String
                    | doc "List of allowed packages."
                    | optional,
                  deny
                    | Array
                      {
                        desc | String | doc "Description" | optional,
                        pkg | String | doc "Package" | optional,
                      }
                    | doc "Packages that are not allowed where the value is a suggestion."
                    | optional,
                  files
                    | Array String
                    | doc "List of file globs that will match this list of settings to compare against."
                    | optional,
                  list-mode
                    | std.enum.TagOrString
                    | [| 'lax, 'strict, 'original |]
                    | doc "Used to determine the package matching priority."
                    | optional,
                }
              }
              | js2n.record.FieldsMatch "^[^.]+$"
              | doc "Rules to apply."
              | optional,
          },
      "definitions.settings.definitions.dogsledSettings" =
        {
            max-blank-identifiers
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Check assignments with too many blank identifiers."
              | optional,
          },
      "definitions.settings.definitions.duplSettings" =
        {
            threshold
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Tokens count to trigger issue."
              | optional,
          },
      "definitions.settings.definitions.dupwordSettings" =
        {
            ignore
              | js2n.array.UniqueItems
              | Array String
              | doc "Keywords used to ignore detection."
              | optional,
            keywords
              | js2n.array.UniqueItems
              | Array String
              | doc "Keywords for detecting duplicate words. If this list is not empty, only the words defined in this list will be detected."
              | optional,
          },
      "definitions.settings.definitions.errcheckSettings" =
        {
            check-blank
              | Bool
              | doc "Report about assignment of errors to blank identifier"
              | optional,
            check-type-assertions
              | Bool
              | doc "Report about not checking errors in type assertions, i.e.: `a := b.(MyStruct)`"
              | optional,
            disable-default-exclusions
              | Bool
              | doc "To disable the errcheck built-in exclude list"
              | optional,
            exclude-functions
              | Array String
              | doc "List of functions to exclude from checking, where each entry is a single function to exclude"
              | optional,
          },
      "definitions.settings.definitions.errchkjsonSettings" =
        {
            check-error-free-encoding | Bool | optional,
            report-no-exported
              | Bool
              | doc "Issue on struct that doesn't have exported fields."
              | optional,
          },
      "definitions.settings.definitions.errorlintSettings" =
        {
            allowed-errors
              | Array { err | String | optional, "fun" | String | optional, }
              | optional,
            allowed-errors-wildcard
              | Array { err | String | optional, "fun" | String | optional, }
              | optional,
            asserts
              | Bool
              | doc "Check for plain type assertions and type switches."
              | optional,
            comparison
              | Bool
              | doc "Check for plain error comparisons"
              | optional,
            errorf
              | Bool
              | doc "Check whether fmt.Errorf uses the %w verb for formatting errors"
              | optional,
            errorf-multi
              | Bool
              | doc "Permit more than 1 %w verb, valid per Go 1.20"
              | optional,
          },
      "definitions.settings.definitions.exhaustiveSettings" =
        {
            check
              | js2n.array.UniqueItems
              | Array String
              | doc "Program elements to check for exhaustiveness."
              | optional,
            default-case-required
              | Bool
              | doc "Switch statement requires default case even if exhaustive."
              | optional,
            default-signifies-exhaustive
              | Bool
              | doc "Presence of `default` case in switch statements satisfies exhaustiveness, even if all enum members are not listed."
              | optional,
            explicit-exhaustive-map
              | Bool
              | doc "Only run exhaustive check on map literals with \"//exhaustive:enforce\" comment."
              | optional,
            explicit-exhaustive-switch
              | Bool
              | doc "Only run exhaustive check on switches with \"//exhaustive:enforce\" comment."
              | optional,
            ignore-enum-members
              | String
              | doc "Enum members matching `regex` do not have to be listed in switch statements to satisfy exhaustiveness"
              | optional,
            ignore-enum-types
              | String
              | doc "Enum types matching the supplied regex do not have to be listed in switch statements to satisfy exhaustiveness."
              | optional,
            package-scope-only
              | Bool
              | doc "Consider enums only in package scopes, not in inner scopes."
              | optional,
          },
      "definitions.settings.definitions.exhaustructSettings" =
        {
            exclude
              | Array String
              | doc "List of regular expressions to exclude struct packages and names from check."
              | optional,
            include
              | Array String
              | doc "List of regular expressions to match struct packages and names."
              | optional,
          },
      "definitions.settings.definitions.fatcontextSettings" =
        {
            check-struct-pointers
              | Bool
              | doc "Check for potential fat contexts in struct pointers."
              | optional,
          },
      "definitions.settings.definitions.forbidigoSettings" =
        {
            analyze-types
              | Bool
              | doc "Instead of matching the literal source code, use type information to replace expressions with strings that contain the package name and (for methods and fields) the type name."
              | optional,
            exclude-godoc-examples
              | Bool
              | doc "Exclude code in godoc examples."
              | optional,
            forbid
              | Array
                {
                  msg | String | doc "Message" | optional,
                  pattern | String | doc "Pattern" | optional,
                  pkg | String | doc "Package" | optional,
                }
              | doc "List of identifiers to forbid (written using `regexp`)"
              | optional,
          },
      "definitions.settings.definitions.funcorderSettings" =
        {
            constructor
              | Bool
              | doc "Checks that constructors are placed after the structure declaration."
              | optional,
            struct-method
              | Bool
              | doc "Checks if the exported methods of a structure are placed before the non-exported ones."
              | optional,
          },
      "definitions.settings.definitions.funlenSettings" =
        {
            ignore-comments
              | Bool
              | doc "Ignore comments when counting lines."
              | optional,
            lines
              | std.number.Integer
              | doc "Limit lines number per function."
              | optional,
            statements
              | std.number.Integer
              | doc "Limit statements number per function."
              | optional,
          },
      "definitions.settings.definitions.gciSettings" =
        {
            custom-order
              | Bool
              | doc "Enable custom order of sections."
              | optional,
            no-inline-comments
              | Bool
              | doc "Checks that no inline Comments are present."
              | optional,
            no-lex-order
              | Bool
              | doc "Drops lexical ordering for custom sections."
              | optional,
            no-prefix-comments
              | Bool
              | doc "Checks that no prefix Comments(comment lines above an import) are present."
              | optional,
            sections
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'localmodule,
                          'alias,
                          'dot,
                          'blank,
                          '"default",
                          'standard
                        |]
                      ],
                    String
                  ]
              )
              | doc "Section configuration to compare against."
              | optional,
          },
      "definitions.settings.definitions.ginkgolinterSettings" =
        {
            allow-havelen-zero
              | Bool
              | doc "Don't trigger warnings for HaveLen(0)."
              | optional,
            forbid-focus-container
              | Bool
              | doc "Trigger warning for ginkgo focus containers like FDescribe, FContext, FWhen or FIt."
              | optional,
            forbid-spec-pollution
              | Bool
              | doc "Trigger a warning for variable assignments in ginkgo containers like `Describe`, `Context` and `When`, instead of in `BeforeEach()`."
              | optional,
            force-expect-to
              | Bool
              | doc "Force using `Expect` with `To`, `ToNot` or `NotTo`"
              | optional,
            force-succeed
              | Bool
              | doc "Force using the Succeed matcher for error functions, and the HaveOccurred matcher for non-function error values."
              | optional,
            suppress-async-assertion
              | Bool
              | doc "Suppress the function all in async assertion warning."
              | optional,
            suppress-compare-assertion
              | Bool
              | doc "Suppress the wrong comparison assertion warning."
              | optional,
            suppress-err-assertion
              | Bool
              | doc "Suppress the wrong error assertion warning."
              | optional,
            suppress-len-assertion
              | Bool
              | doc "Suppress the wrong length assertion warning."
              | optional,
            suppress-nil-assertion
              | Bool
              | doc "Suppress the wrong nil assertion warning."
              | optional,
            suppress-type-compare-assertion
              | Bool
              | doc "Suppress warning for comparing values from different types, like int32 and uint32."
              | optional,
            validate-async-intervals
              | Bool
              | doc "Best effort validation of async intervals (timeout and polling)."
              | optional,
          },
      "definitions.settings.definitions.gochecksumtypeSettings" =
        {
            default-signifies-exhaustive
              | Bool
              | doc "Presence of `default` case in switch statements satisfies exhaustiveness, if all members are not listed."
              | optional,
            include-shared-interfaces
              | Bool
              | doc "Include shared interfaces in the exhaustiviness check."
              | optional,
          },
      "definitions.settings.definitions.gocognitSettings" =
        {
            min-complexity
              | std.number.Integer
              | doc "Minimal code complexity to report (we recommend 10-20)."
              | optional,
          },
      "definitions.settings.definitions.goconstSettings" =
        {
            eval-const-expressions
              | Bool
              | doc "Evaluates of constant expressions like Prefix + \"suffix\""
              | optional,
            find-duplicates
              | Bool
              | doc "Detects constants with identical values"
              | optional,
            ignore-calls
              | Bool
              | doc "Ignore when constant is not used as function argument"
              | optional,
            ignore-string-values
              | Array String
              | doc "Exclude strings matching the given regular expression"
              | optional,
            match-constant
              | Bool
              | doc "Look for existing constants matching the values"
              | optional,
            max
              | std.number.Integer
              | doc "Maximum value, only works with `numbers`"
              | optional,
            min
              | std.number.Integer
              | doc "Minimum value, only works with `numbers`"
              | optional,
            min-len
              | std.number.Integer
              | doc "Minimum length of string constant."
              | optional,
            min-occurrences
              | std.number.Integer
              | doc "Minimum occurrences count to trigger."
              | optional,
            numbers
              | Bool
              | doc "Search also for duplicated numbers."
              | optional,
          },
      "definitions.settings.definitions.gocriticSettings" =
        {
            disable-all | Bool | optional,
            disabled-checks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.gocritic-checks", String ]
              )
              | doc "Which checks should be disabled."
              | optional,
            disabled-tags
              | Array (
                std.contract.Sequence
                  [ refs."definitions.gocritic-tags", String ]
              )
              | doc "Disable multiple checks by tags, run `GL_DEBUG=gocritic golangci-lint run` to see all tags and checks."
              | optional,
            enable-all | Bool | optional,
            enabled-checks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.gocritic-checks", String ]
              )
              | doc "Which checks should be enabled. By default, a list of stable checks is used. To see it, run `GL_DEBUG=gocritic golangci-lint run`."
              | optional,
            enabled-tags
              | Array (
                std.contract.Sequence
                  [ refs."definitions.gocritic-tags", String ]
              )
              | doc "Enable multiple checks by tags, run `GL_DEBUG=gocritic golangci-lint run` to see all tags and checks."
              | optional,
            settings
              | {
                captLocal | { paramsOnly | Bool | optional, } | optional,
                commentedOutCode
                  | { minLength | Number | optional, }
                  | optional,
                elseif | { skipBalanced | Bool | optional, } | optional,
                hugeParam | { sizeThreshold | Number | optional, } | optional,
                ifElseChain | { minThreshold | Number | optional, } | optional,
                nestingReduce | { bodyWidth | Number | optional, } | optional,
                rangeExprCopy
                  | {
                    sizeThreshold | Number | optional,
                    skipTestFuncs | Bool | optional,
                  }
                  | optional,
                rangeValCopy
                  | {
                    sizeThreshold | Number | optional,
                    skipTestFuncs | Bool | optional,
                  }
                  | optional,
                ruleguard
                  | {
                    debug | String | optional,
                    disable | String | optional,
                    enable | String | optional,
                    failOn | String | optional,
                    rules | String | optional,
                  }
                  | optional,
                tooManyResultsChecker
                  | { maxResults | Number | optional, }
                  | optional,
                truncateCmp
                  | { skipArchDependent | Bool | optional, }
                  | optional,
                underef | { skipRecvDeref | Bool | optional, } | optional,
                unnamedResult | { checkExported | Bool | optional, } | optional,
              }
              | doc "Settings passed to gocritic. Properties must be valid and enabled check names."
              | optional,
          },
      "definitions.settings.definitions.gocycloSettings" =
        {
            min-complexity
              | std.number.Integer
              | doc "Minimum code complexity to report (we recommend 10-20)."
              | optional,
          },
      "definitions.settings.definitions.godotSettings" =
        {
            capital
              | Bool
              | doc "Check that each sentence starts with a capital letter."
              | optional,
            check-all
              | Bool
              | doc "DEPRECATED: Check all top-level comments, not only declarations."
              | optional,
            exclude
              | Array String
              | doc "List of regexps for excluding particular comment lines from check."
              | optional,
            period
              | Bool
              | doc "Check that each sentence ends with a period."
              | optional,
            scope
              | std.enum.TagOrString
              | [| 'all, 'toplevel, 'declarations |]
              | doc "Comments to be checked."
              | optional,
          },
      "definitions.settings.definitions.godoxSettings" =
        {
            keywords
              | Array String
              | doc "Report any comments starting with one of these keywords. This is useful for TODO or FIXME comments that might be left in the code accidentally and should be resolved before merging."
              | optional,
          },
      "definitions.settings.definitions.gofmtSettings" =
        {
            rewrite-rules
              | Array
                {
                  pattern | String | optional,
                  replacement | String | optional,
                }
              | doc "Apply the rewrite rules to the source before reformatting."
              | optional,
            simplify | Bool | doc "Simplify code." | optional,
          },
      "definitions.settings.definitions.gofumptSettings" =
        {
            extra-rules
              | Bool
              | doc "Choose whether or not to use the extra rules that are disabled by default."
              | optional,
            module-path
              | String
              | doc " Module path which contains the source code being formatted."
              | optional,
          },
      "definitions.settings.definitions.goheaderSettings" =
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
                      js2n.record.Required [ "template" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "template-path" ],
                      Array Dyn
                    ]
                ],
              {
                template
                  | String
                  | doc "Template to put on top of every file."
                  | optional,
                template-path
                  | String
                  | doc "Path to the file containing the template source."
                  | optional,
                values
                  | {
                    const
                      | { _ | String }
                      | js2n.record.FieldsMatch "^.+$"
                      | doc "Constants to use in the template."
                      | optional,
                    regexp
                      | { _ | String }
                      | js2n.record.FieldsMatch "^.+$"
                      | doc "Regular expressions to use in your template."
                      | optional,
                  }
                  | optional,
              }
            ],
      "definitions.settings.definitions.goimportsSettings" =
        {
            local-prefixes
              | Array String
              | doc "Put imports beginning with prefix after 3rd-party packages. It is a list of prefixes."
              | optional,
          },
      "definitions.settings.definitions.golinesSettings" =
        {
            chain-split-dots | Bool | optional,
            max-len | std.number.Integer | optional,
            reformat-tags | Bool | optional,
            shorten-comments | Bool | optional,
            tab-len | std.number.Integer | optional,
          },
      "definitions.settings.definitions.gomoddirectivesSettings" =
        {
            exclude-forbidden
              | Bool
              | doc "Forbid the use of the `exclude` directives."
              | optional,
            go-debug-forbidden
              | Bool
              | doc "Forbid the use of the `godebug` directive."
              | optional,
            go-version-pattern
              | String
              | doc "Defines a pattern to validate `go` minimum version directive."
              | optional,
            replace-allow-list
              | Array String
              | doc "List of allowed `replace` directives."
              | optional,
            replace-local
              | Bool
              | doc "Allow local `replace` directives."
              | optional,
            retract-allow-no-explanation
              | Bool
              | doc "Allow to not explain why the version has been retracted in the `retract` directives."
              | optional,
            tool-forbidden
              | Bool
              | doc "Forbid the use of the `tool` directives."
              | optional,
            toolchain-forbidden
              | Bool
              | doc "Forbid the use of the `toolchain` directive."
              | optional,
            toolchain-pattern
              | String
              | doc "Defines a pattern to validate `toolchain` directive."
              | optional,
          },
      "definitions.settings.definitions.gomodguardSettings" =
        {
            allowed
              | {
                domains
                  | Array String
                  | doc "List of allowed module domains."
                  | optional,
                modules
                  | Array String
                  | doc "List of allowed modules."
                  | optional,
              }
              | optional,
            blocked
              | {
                local-replace-directives
                  | Bool
                  | doc "Raise lint issues if loading local path with replace directive"
                  | optional,
                modules
                  | Array (
                    std.contract.Sequence
                      [
                        {
                          _ | {
                            reason
                              | String
                              | doc "Reason why the recommended module should be used."
                              | optional,
                            recommendations
                              | Array String
                              | doc "Recommended modules that should be used instead."
                              | optional,
                          }
                        },
                        js2n.record.FieldsMatch "^.+$"
                      ]
                  )
                  | doc "List of blocked modules."
                  | optional,
                versions
                  | Array (
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns =
                          {
                              "^.*$" =
                                {
                                    reason
                                      | String
                                      | doc "Reason why the version constraint exists.",
                                    version
                                      | String
                                      | doc "Version constraint."
                                      | optional,
                                  },
                            },
                        properties = {},
                        required = {},
                      }
                  )
                  | doc "List of blocked module version constraints."
                  | optional,
              }
              | optional,
          },
      "definitions.settings.definitions.gosecSettings" =
        {
            concurrency
              | std.number.Integer
              | doc "Concurrency value"
              | optional,
            confidence
              | std.enum.TagOrString
              | [| 'high, 'medium, 'low |]
              | doc "Filter out the issues with a lower confidence than the given value"
              | optional,
            config
              | { _ | Dyn }
              | doc "To specify the configuration of rules"
              | optional,
            excludes
              | Array (
                std.contract.Sequence [ refs."definitions.gosec-rules", String ]
              )
              | doc "To specify a set of rules to explicitly exclude"
              | optional,
            includes
              | Array (
                std.contract.Sequence [ refs."definitions.gosec-rules", String ]
              )
              | doc "To select a subset of rules to run"
              | optional,
            severity
              | std.enum.TagOrString
              | [| 'high, 'medium, 'low |]
              | doc "Filter out the issues with a lower severity than the given value"
              | optional,
          },
      "definitions.settings.definitions.gosmopolitanSettings" =
        {
            allow-time-local
              | Bool
              | doc "Allow and ignore `time.Local` usages."
              | optional,
            escape-hatches
              | Array String
              | doc "List of fully qualified names in the `full/pkg/path.name` form, to act as \"i18n escape hatches\"."
              | optional,
            watch-for-scripts
              | Array String
              | doc "List of Unicode scripts to watch for any usage in string literals."
              | optional,
          },
      "definitions.settings.definitions.govetSettings" =
        {
            disable
              | Array (
                std.contract.Sequence
                  [ refs."definitions.govet-analyzers", String ]
              )
              | doc "Disable analyzers by name."
              | optional,
            disable-all | Bool | doc "Disable all analyzers." | optional,
            enable
              | Array (
                std.contract.Sequence
                  [ refs."definitions.govet-analyzers", String ]
              )
              | doc "Enable analyzers by name."
              | optional,
            enable-all | Bool | doc "Enable all analyzers." | optional,
            settings
              | js2n.record.PropertyNames
                (std.contract.Sequence
                  [ refs."definitions.govet-analyzers", String ])
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { "^.*$" = { _ | Dyn }, },
                  properties = {},
                  required = {},
                }
              | doc m%"
                Settings per analyzer. Map of analyzer name to specific settings.
                Run `go tool vet help` to find out more.
              "%
              | optional,
          },
      "definitions.settings.definitions.grouperSettings" =
        {
            const-require-grouping | Bool | optional,
            const-require-single-const | Bool | optional,
            import-require-grouping | Bool | optional,
            import-require-single-import | Bool | optional,
            type-require-grouping | Bool | optional,
            type-require-single-type | Bool | optional,
            var-require-grouping | Bool | optional,
            var-require-single-var | Bool | optional,
          },
      "definitions.settings.definitions.ifaceSettings" =
        {
            enable
              | Array (
                std.contract.Sequence
                  [ refs."definitions.iface-analyzers", String ]
              )
              | doc "Enable analyzers by name."
              | optional,
            settings
              | { unused | { exclude | Array String | optional, } | optional, }
              | optional,
          },
      "definitions.settings.definitions.importasSettings" =
        {
            alias
              | Array
                {
                  alias | String | doc "Package alias e.g. autoscalingv1alpha1",
                  pkg
                    | String
                    | doc "Package path e.g. knative.dev/serving/pkg/apis/autoscaling/v1alpha1",
                }
              | doc "List of aliases"
              | optional,
            no-extra-aliases
              | Bool
              | doc "Do not allow non-required aliases."
              | optional,
            no-unaliased
              | Bool
              | doc "Do not allow unaliased imports of aliased packages."
              | optional,
          },
      "definitions.settings.definitions.inamedparamSettings" =
        {
            skip-single-param
              | Bool
              | doc "Skips check for interface methods with only a single parameter."
              | optional,
          },
      "definitions.settings.definitions.interfacebloatSettings" =
        {
            max
              | std.number.Integer
              | doc "The maximum number of methods allowed for an interface."
              | optional,
          },
      "definitions.settings.definitions.ireturnSettings" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "allow" ],
                          Array Dyn
                        ],
                      std.contract.not
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
                                properties = { allow = js2n.Const "reject", },
                                required = {},
                              },
                            Array Dyn
                          ])
                    ],
                  js2n.record.Required [ "reject" ]
                ],
              {
                allow
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'stdlib, 'empty, 'error, 'anon |]
                          ]
                      ]
                  )
                  | optional,
                reject
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'stdlib, 'empty, 'error, 'anon |]
                          ]
                      ]
                  )
                  | optional,
              }
            ],
      "definitions.settings.definitions.lllSettings" =
        {
            line-length
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "Maximum allowed line length, lines longer will be reported."
              | optional,
            tab-width
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Width of \"\\t\" in spaces."
              | optional,
          },
      "definitions.settings.definitions.loggercheckSettings" =
        {
            kitlog
              | Bool
              | doc "Allow check for the github.com/go-kit/log library."
              | optional,
            klog
              | Bool
              | doc "Allow check for the k8s.io/klog/v2 library."
              | optional,
            logr
              | Bool
              | doc "Allow check for the github.com/go-logr/logr library."
              | optional,
            no-printf-like
              | Bool
              | doc "Require printf-like format specifier (%s, %d for example) not present."
              | optional,
            require-string-key
              | Bool
              | doc "Require all logging keys to be inlined constant strings."
              | optional,
            rules
              | Array String
              | doc "List of custom rules to check against, where each rule is a single logger pattern, useful for wrapped loggers."
              | optional,
            slog
              | Bool
              | doc "Allow check for the log/slog library."
              | optional,
            zap
              | Bool
              | doc "Allow check for the \"sugar logger\" from go.uber.org/zap library."
              | optional,
          },
      "definitions.settings.definitions.maintidxSettings" =
        {
            under
              | Number
              | doc "Minimum accatpable maintainability index level (see https://docs.microsoft.com/en-us/visualstudio/code-quality/code-metrics-maintainability-index-range-and-meaning?view=vs-2022)"
              | optional,
          },
      "definitions.settings.definitions.makezeroSettings" =
        {
            always
              | Bool
              | doc "Allow only slices initialized with a length of zero."
              | optional,
          },
      "definitions.settings.definitions.misspellSettings" =
        {
            extra-words
              | Array
                { correction | String | optional, typo | String | optional, }
              | doc "Extra word corrections."
              | optional,
            ignore-rules
              | Array String
              | doc "List of rules to ignore."
              | optional,
            locale | std.enum.TagOrString | [| 'UK, 'US |] | optional,
            mode
              | std.enum.TagOrString
              | [| '"default", '"", 'restricted |]
              | doc "Mode of the analysis."
              | optional,
          },
      "definitions.settings.definitions.mndSettings" =
        {
            checks
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'assign,
                      'return,
                      'operation,
                      'condition,
                      'case,
                      'argument
                    |]
                  ]
              )
              | doc "The list of enabled checks, see https://github.com/tommy-muehle/go-mnd/#checks for description."
              | optional,
            ignored-files
              | Array String
              | doc "List of file patterns to exclude from analysis."
              | optional,
            ignored-functions
              | Array String
              | doc "Comma-separated list of function patterns to exclude from the analysis."
              | optional,
            ignored-numbers
              | Array String
              | doc "List of numbers to exclude from analysis."
              | optional,
          },
      "definitions.settings.definitions.musttagSettings" =
        {
            functions
              | Array
                {
                  arg-pos | std.number.Integer | optional,
                  name | String | optional,
                  tag | String | optional,
                }
              | optional,
          },
      "definitions.settings.definitions.nakedretSettings" =
        {
            max-func-lines
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Report if a function has more lines of code than this value and it has naked returns."
              | optional,
          },
      "definitions.settings.definitions.nestifSettings" =
        {
            min-complexity
              | std.number.Integer
              | doc "Minimum complexity of \"if\" statements to report."
              | optional,
          },
      "definitions.settings.definitions.nilnilSettings" =
        {
            checked-types
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'unsafeptr, 'uintptr, 'ptr, 'map, 'iface, 'func, 'chan |]
                  ]
              )
              | doc "List of return types to check."
              | optional,
            detect-opposite
              | Bool
              | doc "In addition, detect opposite situation (simultaneous return of non-nil error and valid value)."
              | optional,
            only-two
              | Bool
              | doc "To check functions with only two return values."
              | optional,
          },
      "definitions.settings.definitions.nlreturnSettings" =
        {
            block-size
              | js2n.number.Minimum 0
              | doc "set block size that is still ok"
              | optional,
          },
      "definitions.settings.definitions.nolintlintSettings" =
        {
            allow-no-explanation
              | Array (
                std.contract.Sequence
                  [ refs."definitions.linter-names", String ]
              )
              | doc "Exclude these linters from requiring an explanation."
              | optional,
            allow-unused
              | Bool
              | doc "Enable to ensure that nolint directives are all used."
              | optional,
            require-explanation
              | Bool
              | doc "Enable to require an explanation of nonzero length after each nolint directive."
              | optional,
            require-specific
              | Bool
              | doc "Enable to require nolint directives to mention the specific linter being suppressed."
              | optional,
          },
      "definitions.settings.definitions.nonamedreturnsSettings" =
        {
            report-error-in-defer
              | Bool
              | doc "Report named error if it is assigned inside defer."
              | optional,
          },
      "definitions.settings.definitions.paralleltestSettings" =
        {
            ignore-missing
              | Bool
              | doc "Ignore missing calls to `t.Parallel()` and only report incorrect uses of it."
              | optional,
            ignore-missing-subtests
              | Bool
              | doc "Ignore missing calls to `t.Parallel()` in subtests. Top-level tests are still required to have `t.Parallel`, but subtests are allowed to skip it."
              | optional,
          },
      "definitions.settings.definitions.perfsprintSettings" =
        {
            bool-format
              | Bool
              | doc "Enable/disable optimization of bool formatting."
              | optional,
            err-error
              | Bool
              | doc "Optimizes into `err.Error()` even if it is only equivalent for non-nil errors."
              | optional,
            error-format
              | Bool
              | doc "Enable/disable optimization of error formatting."
              | optional,
            errorf | Bool | doc "Optimizes `fmt.Errorf`." | optional,
            hex-format
              | Bool
              | doc "Enable/disable optimization of hex formatting."
              | optional,
            int-conversion
              | Bool
              | doc "Optimizes even if it requires an int or uint type cast."
              | optional,
            integer-format
              | Bool
              | doc "Enable/disable optimization of integer formatting."
              | optional,
            sprintf1
              | Bool
              | doc "Optimizes `fmt.Sprintf` with only one argument."
              | optional,
            strconcat
              | Bool
              | doc "Optimizes into strings concatenation."
              | optional,
            string-format
              | Bool
              | doc "Enable/disable optimization of string formatting."
              | optional,
          },
      "definitions.settings.definitions.preallocSettings" =
        {
            for-loops
              | Bool
              | doc "Report preallocation suggestions on for loops."
              | optional,
            range-loops
              | Bool
              | doc "Report preallocation suggestions on range loops."
              | optional,
            simple
              | Bool
              | doc "Report preallocation suggestions only on simple loops that have no returns/breaks/continues/gotos in them."
              | optional,
          },
      "definitions.settings.definitions.predeclaredSettings" =
        {
            ignore
              | Array String
              | doc "List of predeclared identifiers to not report on."
              | optional,
            qualified-name
              | Bool
              | doc "Include method names and field names in checks."
              | optional,
          },
      "definitions.settings.definitions.promlinterSettings" =
        {
            disabled-linters
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'UnitAbbreviations,
                      'CamelCase,
                      'ReservedChars,
                      'MetricTypeInName,
                      'HistogramSummaryReserved,
                      'Counter,
                      'MetricUnits,
                      'Help
                    |]
                  ]
              )
              | optional,
            strict | js2n.Always | optional,
          },
      "definitions.settings.definitions.protogetterSettings" =
        {
            replace-first-arg-in-append
              | Bool
              | doc "Skip first argument of append function."
              | optional,
            skip-any-generated
              | Bool
              | doc "Skip any generated files from the checking."
              | optional,
            skip-files | Array String | optional,
            skip-generated-by | Array String | optional,
          },
      "definitions.settings.definitions.reassignSettings" =
        { patterns | Array String | optional, },
      "definitions.settings.definitions.recvcheckSettings" =
        {
            disable-builtin
              | Bool
              | doc "Disables the built-in method exclusions."
              | optional,
            exclusions
              | Array String
              | doc "User-defined method exclusions."
              | optional,
          },
      "definitions.settings.definitions.reviveSettings" =
        {
            confidence | Number | optional,
            directives
              | Array
                {
                  arguments | Array Dyn | optional,
                  exclude | Array String | optional,
                  name
                    | std.enum.TagOrString
                    | [| 'specify-disable-reason |]
                    | optional,
                  severity
                    | std.enum.TagOrString
                    | [| 'error, 'warning |]
                    | optional,
                }
              | optional,
            enable-all-rules | Bool | optional,
            max-open-files | std.number.Integer | optional,
            rules
              | Array
                {
                  arguments | Array Dyn | optional,
                  disabled | Bool | optional,
                  exclude | Array String | optional,
                  name | refs."definitions.revive-rules" | String,
                  severity
                    | std.enum.TagOrString
                    | [| 'error, 'warning |]
                    | optional,
                }
              | optional,
            severity | std.enum.TagOrString | [| 'error, 'warning |] | optional,
          },
      "definitions.settings.definitions.rowserrcheckSettings" =
        { packages | Array String | optional, },
      "definitions.settings.definitions.sloglintSettings" =
        {
            args-on-sep-lines
              | Bool
              | doc "Enforce putting arguments on separate lines."
              | optional,
            attr-only
              | Bool
              | doc "Enforce using attributes only (incompatible with kv-only)."
              | optional,
            context
              | std.enum.TagOrString
              | [| 'scope, 'all, '"" |]
              | doc "Enforce using methods that accept a context."
              | optional,
            forbidden-keys
              | Array String
              | doc "Enforce not using specific keys."
              | optional,
            key-naming-case
              | std.enum.TagOrString
              | [| 'pascal, 'camel, 'kebab, 'snake |]
              | doc "Enforce a single key naming convention."
              | optional,
            kv-only
              | Bool
              | doc "Enforce using key-value pairs only (incompatible with attr-only)."
              | optional,
            msg-style
              | std.enum.TagOrString
              | [| 'capitalized, 'lowercased, '"" |]
              | doc "Enforce message style."
              | optional,
            no-global
              | std.enum.TagOrString
              | [| '"default", 'all, '"" |]
              | doc "Enforce not using global loggers."
              | optional,
            no-mixed-args
              | Bool
              | doc "Enforce not mixing key-value pairs and attributes."
              | optional,
            no-raw-keys
              | Bool
              | doc "Enforce using constants instead of raw keys."
              | optional,
            static-msg
              | Bool
              | doc "Enforce using static values for log messages."
              | optional,
          },
      "definitions.settings.definitions.spancheckSettings" =
        {
            checks
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'set-status, 'record-error, 'end |]
                  ]
              )
              | doc "Checks to enable."
              | optional,
            extra-start-span-signatures
              | Array String
              | doc "A list of regexes for additional function signatures that create spans."
              | optional,
            ignore-check-signatures
              | Array String
              | doc "A list of regexes for function signatures that silence `record-error` and `set-status` reports if found in the call path to a returned error."
              | optional,
          },
      "definitions.settings.definitions.staticcheckSettings" =
        {
            checks
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.staticcheck-checks", String ],
                    String
                  ]
              )
              | optional,
            dot-import-whitelist
              | Array String
              | doc "By default, ST1001 forbids all uses of dot imports in non-test packages. This setting allows setting a whitelist of import paths that can be dot-imported anywhere."
              | optional,
            http-status-code-whitelist
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      '"511",
                      '"510",
                      '"508",
                      '"507",
                      '"506",
                      '"505",
                      '"504",
                      '"503",
                      '"502",
                      '"501",
                      '"500",
                      '"451",
                      '"431",
                      '"429",
                      '"428",
                      '"426",
                      '"425",
                      '"424",
                      '"423",
                      '"422",
                      '"421",
                      '"418",
                      '"417",
                      '"416",
                      '"415",
                      '"414",
                      '"413",
                      '"412",
                      '"411",
                      '"410",
                      '"409",
                      '"408",
                      '"407",
                      '"406",
                      '"405",
                      '"404",
                      '"403",
                      '"402",
                      '"401",
                      '"400",
                      '"308",
                      '"307",
                      '"306",
                      '"305",
                      '"304",
                      '"303",
                      '"302",
                      '"301",
                      '"300",
                      '"226",
                      '"208",
                      '"207",
                      '"206",
                      '"205",
                      '"204",
                      '"203",
                      '"202",
                      '"201",
                      '"200",
                      '"103",
                      '"102",
                      '"101",
                      '"100"
                    |]
                  ]
              )
              | doc "ST1013 recommends using constants from the net/http package instead of hard-coding numeric HTTP status codes. This setting specifies a list of numeric status codes that this check does not complain about."
              | optional,
            initialisms
              | Array String
              | doc "ST1003 check, among other things, for the correct capitalization of initialisms. The set of known initialisms can be configured with this option."
              | optional,
          },
      "definitions.settings.definitions.tagalignSettings" =
        {
            align
              | Bool
              | doc "Align and sort can be used together or separately."
              | optional,
            order
              | Array String
              | doc "Specify the order of tags, the other tags will be sorted by name."
              | optional,
            sort | Bool | doc "Whether enable tags sort." | optional,
            strict | Bool | doc "Whether enable strict style." | optional,
          },
      "definitions.settings.definitions.tagliatelleSettings" =
        {
            case
              | {
                extended-rules
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^.+$" =
                              {
                                  case
                                    | refs."definitions.tagliatelle-cases"
                                    | String,
                                  extra-initialisms | Bool | optional,
                                  initialism-overrides
                                    | js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = { "^.+$" = Bool, },
                                        properties = {},
                                        required = {},
                                      }
                                    | optional,
                                },
                          },
                      properties = {},
                      required = {},
                    }
                  | doc "Defines the association between tag name and case."
                  | optional,
                ignored-fields
                  | Array String
                  | doc "The field names to ignore."
                  | optional,
                overrides
                  | Array
                    {
                      extended-rules
                        | js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              {
                                  "^.+$" =
                                    {
                                        case
                                          | refs."definitions.tagliatelle-cases"
                                          | String,
                                        extra-initialisms | Bool | optional,
                                        initialism-overrides
                                          | js2n.record.Record
                                            {
                                              additional = 'Some Dyn,
                                              patterns = { "^.+$" = Bool, },
                                              properties = {},
                                              required = {},
                                            }
                                          | optional,
                                      },
                                },
                            properties = {},
                            required = {},
                          }
                        | doc "Defines the association between tag name and case."
                        | optional,
                      ignore
                        | Bool
                        | doc "Ignore the package (takes precedence over all other configurations)."
                        | optional,
                      ignored-fields
                        | Array String
                        | doc "The field names to ignore."
                        | optional,
                      pkg | String | doc "A package path.",
                      rules
                        | js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              {
                                  "^.+$" =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.tagliatelle-cases",
                                          String
                                        ],
                                },
                            properties = {},
                            required = {},
                          }
                        | optional,
                      use-field-name
                        | Bool
                        | doc "Use the struct field name to check the name of the struct tag."
                        | optional,
                    }
                  | doc "Overrides the default/root configuration."
                  | optional,
                rules
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^.+$" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.tagliatelle-cases",
                                    String
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                use-field-name
                  | Bool
                  | doc "Use the struct field name to check the name of the struct tag."
                  | optional,
              }
              | optional,
          },
      "definitions.settings.definitions.testifylintSettings" =
        {
            bool-compare
              | {
                ignore-custom-types
                  | Bool
                  | doc "To ignore user defined types (over builtin bool)."
                  | optional,
              }
              | optional,
            disable
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'useless-assert,
                      'suite-thelper,
                      'suite-subtest-run,
                      'suite-method-signature,
                      'suite-extra-assert-call,
                      'suite-dont-use-pkg,
                      'suite-broken-parallel,
                      'require-error,
                      'regexp,
                      'nil-compare,
                      'negative-positive,
                      'len,
                      'go-require,
                      'formatter,
                      'float-compare,
                      'expected-actual,
                      'error-nil,
                      'error-is-as,
                      'equal-values,
                      'encoded-compare,
                      'empty,
                      'contains,
                      'compares,
                      'bool-compare,
                      'blank-import
                    |]
                  ]
              )
              | doc "Disable specific checkers."
              | optional,
            disable-all | Bool | doc "Disable all checkers." | optional,
            enable
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'useless-assert,
                      'suite-thelper,
                      'suite-subtest-run,
                      'suite-method-signature,
                      'suite-extra-assert-call,
                      'suite-dont-use-pkg,
                      'suite-broken-parallel,
                      'require-error,
                      'regexp,
                      'nil-compare,
                      'negative-positive,
                      'len,
                      'go-require,
                      'formatter,
                      'float-compare,
                      'expected-actual,
                      'error-nil,
                      'error-is-as,
                      'equal-values,
                      'encoded-compare,
                      'empty,
                      'contains,
                      'compares,
                      'bool-compare,
                      'blank-import
                    |]
                  ]
              )
              | doc "Enable specific checkers."
              | optional,
            enable-all | Bool | doc "Enable all checkers." | optional,
            expected-actual
              | {
                pattern
                  | String
                  | doc "Regexp for expected variable name."
                  | optional,
              }
              | optional,
            formatter
              | {
                check-format-string
                  | Bool
                  | doc "To enable go vet's printf checks."
                  | optional,
                require-f-funcs
                  | Bool
                  | doc "To require f-assertions (e.g. assert.Equalf) if format string is used, even if there are no variable-length variables."
                  | optional,
                require-string-msg
                  | Bool
                  | doc "To require that the first element of msgAndArgs (msg) has a string type."
                  | optional,
              }
              | optional,
            go-require
              | {
                ignore-http-handlers
                  | Bool
                  | doc "To ignore HTTP handlers (like http.HandlerFunc)."
                  | optional,
              }
              | optional,
            require-error
              | {
                fn-pattern
                  | String
                  | doc "Regexp for assertions to analyze. If defined, then only matched error assertions will be reported."
                  | optional,
              }
              | optional,
            suite-extra-assert-call
              | {
                mode
                  | std.enum.TagOrString
                  | [| 'require, 'remove |]
                  | doc "To require or remove extra Assert() call?"
                  | optional,
              }
              | optional,
          },
      "definitions.settings.definitions.testpackageSettings" =
        {
            allow-packages
              | js2n.array.UniqueItems
              | Array String
              | doc "List of packages that don't end with _test that tests are allowed to be in."
              | optional,
            skip-regexp
              | String
              | doc "Files with names matching this regular expression are skipped."
              | optional,
          },
      "definitions.settings.definitions.thelperSettings" =
        {
            benchmark
              | {
                begin
                  | Bool
                  | doc "Check if `b.Helper()` begins helper function."
                  | optional,
                first
                  | Bool
                  | doc "Check if *testing.B is first param of helper function."
                  | optional,
                name
                  | Bool
                  | doc "Check if *testing.B param has b name."
                  | optional,
              }
              | optional,
            fuzz
              | {
                begin
                  | Bool
                  | doc "Check if `f.Helper()` begins helper function."
                  | optional,
                first
                  | Bool
                  | doc "Check if *testing.F is first param of helper function."
                  | optional,
                name
                  | Bool
                  | doc "Check if *testing.F param has f name."
                  | optional,
              }
              | optional,
            tb
              | {
                begin
                  | Bool
                  | doc "Check if `tb.Helper()` begins helper function."
                  | optional,
                first
                  | Bool
                  | doc "Check if *testing.TB is first param of helper function."
                  | optional,
                name
                  | Bool
                  | doc "Check if *testing.TB param has tb name."
                  | optional,
              }
              | optional,
            test
              | {
                begin
                  | Bool
                  | doc "Check if `t.Helper()` begins helper function."
                  | optional,
                first
                  | Bool
                  | doc "Check if *testing.T is first param of helper function."
                  | optional,
                name
                  | Bool
                  | doc "Check if *testing.T param has t name."
                  | optional,
              }
              | optional,
          },
      "definitions.settings.definitions.unconvertSettings" =
        { fast-math | Bool | optional, safe | Bool | optional, },
      "definitions.settings.definitions.unparamSettings" =
        {
            check-exported
              | Bool
              | doc m%"
                Inspect exported functions. Set to true if no external program/library imports your code.
                
                WARNING: if you enable this setting, unparam will report a lot of false-positives in text editors:
                if it's called for subdir of a project it can't find external interfaces. All text editor integrations
                with golangci-lint call it on a directory with the changed file.
              "%
              | optional,
          },
      "definitions.settings.definitions.unusedSettings" =
        {
            exported-fields-are-used | Bool | doc "" | optional,
            field-writes-are-uses | Bool | doc "" | optional,
            generated-is-used | Bool | doc "" | optional,
            local-variables-are-used | Bool | doc "" | optional,
            parameters-are-used | Bool | doc "" | optional,
            post-statements-are-reads | Bool | doc "" | optional,
          },
      "definitions.settings.definitions.usestdlibvarsSettings" =
        {
            constant-kind
              | Bool
              | doc "Suggest the use of constant.Kind.String()."
              | optional,
            crypto-hash
              | Bool
              | doc "Suggest the use of crypto.Hash.String()."
              | optional,
            default-rpc-path
              | Bool
              | doc "Suggest the use of rpc.DefaultXXPath."
              | optional,
            http-method
              | Bool
              | doc "Suggest the use of http.MethodXX."
              | optional,
            http-status-code
              | Bool
              | doc "Suggest the use of http.StatusXX."
              | optional,
            sql-isolation-level
              | Bool
              | doc "Suggest the use of sql.LevelXX.String()."
              | optional,
            time-layout
              | Bool
              | doc "Suggest the use of time.Layout."
              | optional,
            time-month
              | Bool
              | doc "Suggest the use of time.Month.String()."
              | optional,
            time-weekday
              | Bool
              | doc "Suggest the use of time.Weekday.String()."
              | optional,
            tls-signature-scheme
              | Bool
              | doc "Suggest the use of tls.SignatureScheme.String()."
              | optional,
          },
      "definitions.settings.definitions.usetestingSettings" =
        {
            context-background | Bool | optional,
            context-todo | Bool | optional,
            os-chdir | Bool | optional,
            os-create-temp | Bool | optional,
            os-mkdir-temp | Bool | optional,
            os-setenv | Bool | optional,
            os-temp-dir | Bool | optional,
          },
      "definitions.settings.definitions.varnamelenSettings" =
        {
            check-receiver
              | Bool
              | doc "Check method receiver names."
              | optional,
            check-return | Bool | doc "Check named return values." | optional,
            check-type-param | Bool | doc "Check type parameters." | optional,
            ignore-chan-recv-ok
              | Bool
              | doc "Ignore `ok` variables that hold the bool return value of a channel receive."
              | optional,
            ignore-decls
              | Array String
              | doc "Optional list of variable declarations that should be ignored completely."
              | optional,
            ignore-map-index-ok
              | Bool
              | doc "Ignore `ok` variables that hold the bool return value of a map index."
              | optional,
            ignore-names
              | Array String
              | doc "Optional list of variable names that should be ignored completely."
              | optional,
            ignore-type-assert-ok
              | Bool
              | doc "Ignore `ok` variables that hold the bool return value of a type assertion"
              | optional,
            max-distance
              | std.number.Integer
              | doc "Variables used in at most this N-many lines will be ignored."
              | optional,
            min-name-length
              | std.number.Integer
              | doc "The minimum length of a variable's name that is considered `long`."
              | optional,
          },
      "definitions.settings.definitions.whitespaceSettings" =
        {
            multi-func
              | Bool
              | doc "Enforces newlines (or comments) after every multi-line function signature"
              | optional,
            multi-if
              | Bool
              | doc "Enforces newlines (or comments) after every multi-line if statement"
              | optional,
          },
      "definitions.settings.definitions.wrapcheckSettings" =
        {
            extra-ignore-sigs
              | Array String
              | doc "An array of strings specifying additional substrings of signatures to ignore."
              | optional,
            ignore-interface-regexps
              | Array String
              | doc "An array of glob patterns which, if matched to an underlying interface name, will ignore unwrapped errors returned from a function whose call is defined on the given interface."
              | optional,
            ignore-package-globs
              | Array String
              | doc "An array of glob patterns which, if any match the package of the function returning the error, will skip wrapcheck analysis for this error."
              | optional,
            ignore-sig-regexps
              | Array String
              | doc "An array of strings which specify regular expressions of signatures to ignore."
              | optional,
            ignore-sigs
              | Array String
              | doc "An array of strings which specify substrings of signatures to ignore."
              | optional,
            report-internal-errors
              | Bool
              | doc "Determines whether wrapcheck should report errors returned from inside the package."
              | optional,
          },
      "definitions.settings.definitions.wslSettings" =
        {
            allow-assign-and-anything
              | Bool
              | doc "Controls if you may cuddle assignments and anything without needing an empty line between them."
              | optional,
            allow-assign-and-call
              | Bool
              | doc "Allow calls and assignments to be cuddled as long as the lines have any matching variables, fields or types."
              | optional,
            allow-cuddle-declarations
              | Bool
              | doc "Allow declarations (var) to be cuddled."
              | optional,
            allow-cuddle-used-in-block
              | Bool
              | doc "Allow cuddling with any block as long as the variable is used somewhere in the block"
              | optional,
            allow-cuddle-with-calls
              | Array String
              | doc "A list of call idents that everything can be cuddled with."
              | optional,
            allow-cuddle-with-rhs
              | Array String
              | doc "AllowCuddleWithRHS is a list of right hand side variables that is allowed to be cuddled with anything."
              | optional,
            allow-multiline-assign
              | Bool
              | doc "Allow multiline assignments to be cuddled."
              | optional,
            allow-separated-leading-comment
              | Bool
              | doc "Allow leading comments to be separated with empty lines."
              | optional,
            allow-trailing-comment
              | Bool
              | doc "Allow trailing comments in ending of blocks."
              | optional,
            error-variable-names
              | Array String
              | doc "When force-err-cuddling is enabled this is a list of names used for error variables to check for in the conditional."
              | optional,
            force-case-trailing-whitespace
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Force newlines in end of case at this limit (0 = never)."
              | optional,
            force-err-cuddling
              | Bool
              | doc "Causes an error when an If statement that checks an error variable doesn't cuddle with the assignment of that variable."
              | optional,
            force-short-decl-cuddling
              | Bool
              | doc "Causes an error if a short declaration (:=) cuddles with anything other than another short declaration."
              | optional,
            strict-append
              | Bool
              | doc "If true, append is only allowed to be cuddled if appending value is matching variables, fields or types on line above."
              | optional,
          },
      "definitions.simple-format" =
        { path | refs."definitions.formats-path" | String | optional, },
      "definitions.staticcheck-checks" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"-QF1012",
                'QF1012,
                '"-QF1011",
                'QF1011,
                '"-QF1010",
                'QF1010,
                '"-QF1009",
                'QF1009,
                '"-QF1008",
                'QF1008,
                '"-QF1007",
                'QF1007,
                '"-QF1006",
                'QF1006,
                '"-QF1005",
                'QF1005,
                '"-QF1004",
                'QF1004,
                '"-QF1003",
                'QF1003,
                '"-QF1002",
                'QF1002,
                '"-QF1001",
                'QF1001,
                '"-QF1*",
                '"QF1*",
                '"-QF*",
                '"QF*",
                '"-S1040",
                'S1040,
                '"-S1039",
                'S1039,
                '"-S1038",
                'S1038,
                '"-S1037",
                'S1037,
                '"-S1036",
                'S1036,
                '"-S1035",
                'S1035,
                '"-S1034",
                'S1034,
                '"-S1033",
                'S1033,
                '"-S1032",
                'S1032,
                '"-S1031",
                'S1031,
                '"-S1030",
                'S1030,
                '"-S1029",
                'S1029,
                '"-S1028",
                'S1028,
                '"-S1025",
                'S1025,
                '"-S1024",
                'S1024,
                '"-S1023",
                'S1023,
                '"-S1021",
                'S1021,
                '"-S1020",
                'S1020,
                '"-S1019",
                'S1019,
                '"-S1018",
                'S1018,
                '"-S1017",
                'S1017,
                '"-S1016",
                'S1016,
                '"-S1012",
                'S1012,
                '"-S1011",
                'S1011,
                '"-S1010",
                'S1010,
                '"-S1009",
                'S1009,
                '"-S1008",
                'S1008,
                '"-S1007",
                'S1007,
                '"-S1006",
                'S1006,
                '"-S1005",
                'S1005,
                '"-S1004",
                'S1004,
                '"-S1003",
                'S1003,
                '"-S1002",
                'S1002,
                '"-S1001",
                'S1001,
                '"-S1000",
                'S1000,
                '"-S1*",
                '"S1*",
                '"-S*",
                '"S*",
                '"-ST1023",
                'ST1023,
                '"-ST1022",
                'ST1022,
                '"-ST1021",
                'ST1021,
                '"-ST1020",
                'ST1020,
                '"-ST1019",
                'ST1019,
                '"-ST1018",
                'ST1018,
                '"-ST1017",
                'ST1017,
                '"-ST1016",
                'ST1016,
                '"-ST1015",
                'ST1015,
                '"-ST1013",
                'ST1013,
                '"-ST1012",
                'ST1012,
                '"-ST1011",
                'ST1011,
                '"-ST1008",
                'ST1008,
                '"-ST1006",
                'ST1006,
                '"-ST1005",
                'ST1005,
                '"-ST1003",
                'ST1003,
                '"-ST1001",
                'ST1001,
                '"-ST1000",
                'ST1000,
                '"-ST1*",
                '"ST1*",
                '"-ST*",
                '"ST*",
                '"-SA9009",
                'SA9009,
                '"-SA9008",
                'SA9008,
                '"-SA9007",
                'SA9007,
                '"-SA9006",
                'SA9006,
                '"-SA9005",
                'SA9005,
                '"-SA9004",
                'SA9004,
                '"-SA9003",
                'SA9003,
                '"-SA9002",
                'SA9002,
                '"-SA9001",
                'SA9001,
                '"-SA9*",
                '"SA9*",
                '"-SA6006",
                'SA6006,
                '"-SA6005",
                'SA6005,
                '"-SA6003",
                'SA6003,
                '"-SA6002",
                'SA6002,
                '"-SA6001",
                'SA6001,
                '"-SA6000",
                'SA6000,
                '"-SA6*",
                '"SA6*",
                '"-SA5012",
                'SA5012,
                '"-SA5011",
                'SA5011,
                '"-SA5010",
                'SA5010,
                '"-SA5009",
                'SA5009,
                '"-SA5008",
                'SA5008,
                '"-SA5007",
                'SA5007,
                '"-SA5005",
                'SA5005,
                '"-SA5004",
                'SA5004,
                '"-SA5003",
                'SA5003,
                '"-SA5002",
                'SA5002,
                '"-SA5001",
                'SA5001,
                '"-SA5000",
                'SA5000,
                '"-SA5*",
                '"SA5*",
                '"-SA4032",
                'SA4032,
                '"-SA4031",
                'SA4031,
                '"-SA4030",
                'SA4030,
                '"-SA4029",
                'SA4029,
                '"-SA4028",
                'SA4028,
                '"-SA4027",
                'SA4027,
                '"-SA4026",
                'SA4026,
                '"-SA4025",
                'SA4025,
                '"-SA4024",
                'SA4024,
                '"-SA4023",
                'SA4023,
                '"-SA4022",
                'SA4022,
                '"-SA4021",
                'SA4021,
                '"-SA4020",
                'SA4020,
                '"-SA4019",
                'SA4019,
                '"-SA4018",
                'SA4018,
                '"-SA4017",
                'SA4017,
                '"-SA4016",
                'SA4016,
                '"-SA4015",
                'SA4015,
                '"-SA4014",
                'SA4014,
                '"-SA4013",
                'SA4013,
                '"-SA4012",
                'SA4012,
                '"-SA4011",
                'SA4011,
                '"-SA4010",
                'SA4010,
                '"-SA4009",
                'SA4009,
                '"-SA4008",
                'SA4008,
                '"-SA4006",
                'SA4006,
                '"-SA4005",
                'SA4005,
                '"-SA4004",
                'SA4004,
                '"-SA4003",
                'SA4003,
                '"-SA4001",
                'SA4001,
                '"-SA4000",
                'SA4000,
                '"-SA4*",
                '"SA4*",
                '"-SA3001",
                'SA3001,
                '"-SA3000",
                'SA3000,
                '"-SA3*",
                '"SA3*",
                '"-SA2003",
                'SA2003,
                '"-SA2002",
                'SA2002,
                '"-SA2001",
                'SA2001,
                '"-SA2000",
                'SA2000,
                '"-SA2*",
                '"SA2*",
                '"-SA1032",
                'SA1032,
                '"-SA1031",
                'SA1031,
                '"-SA1030",
                'SA1030,
                '"-SA1029",
                'SA1029,
                '"-SA1028",
                'SA1028,
                '"-SA1027",
                'SA1027,
                '"-SA1026",
                'SA1026,
                '"-SA1025",
                'SA1025,
                '"-SA1024",
                'SA1024,
                '"-SA1023",
                'SA1023,
                '"-SA1021",
                'SA1021,
                '"-SA1020",
                'SA1020,
                '"-SA1019",
                'SA1019,
                '"-SA1018",
                'SA1018,
                '"-SA1017",
                'SA1017,
                '"-SA1016",
                'SA1016,
                '"-SA1015",
                'SA1015,
                '"-SA1014",
                'SA1014,
                '"-SA1013",
                'SA1013,
                '"-SA1012",
                'SA1012,
                '"-SA1011",
                'SA1011,
                '"-SA1010",
                'SA1010,
                '"-SA1008",
                'SA1008,
                '"-SA1007",
                'SA1007,
                '"-SA1006",
                'SA1006,
                '"-SA1005",
                'SA1005,
                '"-SA1004",
                'SA1004,
                '"-SA1003",
                'SA1003,
                '"-SA1002",
                'SA1002,
                '"-SA1001",
                'SA1001,
                '"-SA1000",
                'SA1000,
                '"-SA1*",
                '"SA1*",
                '"-SA*",
                '"SA*",
                'all,
                '"*"
              |]
            ],
      "definitions.tagliatelle-cases" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'header,
                'lower,
                'upperSnake,
                'upper,
                'goSnake,
                'goKebab,
                'goPascal,
                'goCamel,
                'snake,
                'kebab,
                'pascal,
                'camel,
                '""
              |]
            ],
    }
    in
  {
      formatters
        | {
          enable
            | Array refs."definitions.formatter-names"
            | doc "List of enabled formatters."
            | optional,
          exclusions
            | {
              generated
                | std.enum.TagOrString
                | [| 'disable, 'lax, 'strict |]
                | optional,
              paths | Array String | optional,
              warn-unused | Bool | optional,
            }
            | optional,
          settings
            | {
              gci
                | refs."definitions.settings.definitions.gciSettings"
                | optional,
              gofmt
                | refs."definitions.settings.definitions.gofmtSettings"
                | optional,
              gofumpt
                | refs."definitions.settings.definitions.gofumptSettings"
                | optional,
              goimports
                | refs."definitions.settings.definitions.goimportsSettings"
                | optional,
              golines
                | refs."definitions.settings.definitions.golinesSettings"
                | optional,
            }
            | optional,
        }
        | optional,
      issues
        | {
          fix
            | Bool
            | doc "Fix found issues (if it's supported by the linter)."
            | optional,
          max-issues-per-linter
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Maximum issues count per one linter. Set to 0 to disable."
            | optional,
          max-same-issues
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Maximum count of issues with the same text. Set to 0 to disable."
            | optional,
          new
            | Bool
            | doc "Show only new issues: if there are unstaged changes or untracked files, only those changes are analyzed, else only changes in HEAD~ are analyzed."
            | optional,
          new-from-merge-base
            | String
            | doc "Show only new issues created after the best common ancestor (merge-base against HEAD)."
            | optional,
          new-from-patch
            | String
            | doc "Show only new issues created in git patch with this file path."
            | optional,
          new-from-rev
            | String
            | doc "Show only new issues created after this git revision."
            | optional,
          uniq-by-line
            | Bool
            | doc "Make issues output unique by line."
            | optional,
          whole-files
            | Bool
            | doc "Show issues in any part of update files (requires new-from-rev or new-from-patch)."
            | optional,
        }
        | optional,
      linters
        | {
          "default"
            | std.enum.TagOrString
            | [| 'fast, 'none, 'all, 'standard |]
            | optional,
          disable
            | Array refs."definitions.linter-names"
            | doc "List of disabled linters."
            | optional,
          enable
            | Array refs."definitions.linter-names"
            | doc "List of enabled linters."
            | optional,
          exclusions
            | {
              generated
                | std.enum.TagOrString
                | [| 'disable, 'lax, 'strict |]
                | optional,
              paths | Array String | optional,
              paths-except | Array String | optional,
              presets
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'legacy,
                        'common-false-positives,
                        'std-error-handling,
                        'comments
                      |]
                    ]
                )
                | optional,
              rules
                | Array (
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.record.Required [ "path" ],
                          js2n.record.Required [ "path-except" ],
                          js2n.record.Required [ "linters" ],
                          js2n.record.Required [ "text" ],
                          js2n.record.Required [ "source" ]
                        ],
                      {
                        linters
                          | Array refs."definitions.linter-names"
                          | optional,
                        path | String | optional,
                        path-except | String | optional,
                        source | String | optional,
                        text | String | optional,
                        ..
                      }
                    ]
                )
                | optional,
              warn-unused | Bool | optional,
            }
            | optional,
          settings
            | {
              asasalint
                | refs."definitions.settings.definitions.asasalintSettings"
                | optional,
              bidichk
                | refs."definitions.settings.definitions.bidichkSettings"
                | optional,
              copyloopvar
                | refs."definitions.settings.definitions.copyloopvarSettings"
                | optional,
              custom
                | refs."definitions.settings.definitions.customSettings"
                | optional,
              cyclop
                | refs."definitions.settings.definitions.cyclopSettings"
                | optional,
              decorder
                | refs."definitions.settings.definitions.decorderSettings"
                | optional,
              depguard
                | refs."definitions.settings.definitions.depguardSettings"
                | optional,
              dogsled
                | refs."definitions.settings.definitions.dogsledSettings"
                | optional,
              dupl
                | refs."definitions.settings.definitions.duplSettings"
                | optional,
              dupword
                | refs."definitions.settings.definitions.dupwordSettings"
                | optional,
              errcheck
                | refs."definitions.settings.definitions.errcheckSettings"
                | optional,
              errchkjson
                | refs."definitions.settings.definitions.errchkjsonSettings"
                | optional,
              errorlint
                | refs."definitions.settings.definitions.errorlintSettings"
                | optional,
              exhaustive
                | refs."definitions.settings.definitions.exhaustiveSettings"
                | optional,
              exhaustruct
                | refs."definitions.settings.definitions.exhaustructSettings"
                | optional,
              fatcontext
                | refs."definitions.settings.definitions.fatcontextSettings"
                | optional,
              forbidigo
                | refs."definitions.settings.definitions.forbidigoSettings"
                | optional,
              funcorder
                | refs."definitions.settings.definitions.funcorderSettings"
                | optional,
              funlen
                | refs."definitions.settings.definitions.funlenSettings"
                | optional,
              ginkgolinter
                | refs."definitions.settings.definitions.ginkgolinterSettings"
                | optional,
              gochecksumtype
                | refs."definitions.settings.definitions.gochecksumtypeSettings"
                | optional,
              gocognit
                | refs."definitions.settings.definitions.gocognitSettings"
                | optional,
              goconst
                | refs."definitions.settings.definitions.goconstSettings"
                | optional,
              gocritic
                | refs."definitions.settings.definitions.gocriticSettings"
                | optional,
              gocyclo
                | refs."definitions.settings.definitions.gocycloSettings"
                | optional,
              godot
                | refs."definitions.settings.definitions.godotSettings"
                | optional,
              godox
                | refs."definitions.settings.definitions.godoxSettings"
                | optional,
              goheader
                | refs."definitions.settings.definitions.goheaderSettings"
                | { _ | Dyn }
                | optional,
              gomoddirectives
                | refs."definitions.settings.definitions.gomoddirectivesSettings"
                | optional,
              gomodguard
                | refs."definitions.settings.definitions.gomodguardSettings"
                | optional,
              gosec
                | refs."definitions.settings.definitions.gosecSettings"
                | optional,
              gosmopolitan
                | refs."definitions.settings.definitions.gosmopolitanSettings"
                | optional,
              govet
                | refs."definitions.settings.definitions.govetSettings"
                | optional,
              grouper
                | refs."definitions.settings.definitions.grouperSettings"
                | optional,
              iface
                | refs."definitions.settings.definitions.ifaceSettings"
                | optional,
              importas
                | refs."definitions.settings.definitions.importasSettings"
                | optional,
              inamedparam
                | refs."definitions.settings.definitions.inamedparamSettings"
                | optional,
              interfacebloat
                | refs."definitions.settings.definitions.interfacebloatSettings"
                | optional,
              ireturn
                | refs."definitions.settings.definitions.ireturnSettings"
                | { _ | Dyn }
                | optional,
              lll
                | refs."definitions.settings.definitions.lllSettings"
                | optional,
              loggercheck
                | refs."definitions.settings.definitions.loggercheckSettings"
                | optional,
              maintidx
                | refs."definitions.settings.definitions.maintidxSettings"
                | optional,
              makezero
                | refs."definitions.settings.definitions.makezeroSettings"
                | optional,
              misspell
                | refs."definitions.settings.definitions.misspellSettings"
                | optional,
              mnd
                | refs."definitions.settings.definitions.mndSettings"
                | optional,
              musttag
                | refs."definitions.settings.definitions.musttagSettings"
                | optional,
              nakedret
                | refs."definitions.settings.definitions.nakedretSettings"
                | optional,
              nestif
                | refs."definitions.settings.definitions.nestifSettings"
                | optional,
              nilnil
                | refs."definitions.settings.definitions.nilnilSettings"
                | optional,
              nlreturn
                | refs."definitions.settings.definitions.nlreturnSettings"
                | optional,
              nolintlint
                | refs."definitions.settings.definitions.nolintlintSettings"
                | optional,
              nonamedreturns
                | refs."definitions.settings.definitions.nonamedreturnsSettings"
                | optional,
              paralleltest
                | refs."definitions.settings.definitions.paralleltestSettings"
                | optional,
              perfsprint
                | refs."definitions.settings.definitions.perfsprintSettings"
                | optional,
              prealloc
                | refs."definitions.settings.definitions.preallocSettings"
                | optional,
              predeclared
                | refs."definitions.settings.definitions.predeclaredSettings"
                | optional,
              promlinter
                | refs."definitions.settings.definitions.promlinterSettings"
                | optional,
              protogetter
                | refs."definitions.settings.definitions.protogetterSettings"
                | optional,
              reassign
                | refs."definitions.settings.definitions.reassignSettings"
                | optional,
              recvcheck
                | refs."definitions.settings.definitions.recvcheckSettings"
                | optional,
              revive
                | refs."definitions.settings.definitions.reviveSettings"
                | optional,
              rowserrcheck
                | refs."definitions.settings.definitions.rowserrcheckSettings"
                | optional,
              sloglint
                | refs."definitions.settings.definitions.sloglintSettings"
                | optional,
              spancheck
                | refs."definitions.settings.definitions.spancheckSettings"
                | optional,
              staticcheck
                | refs."definitions.settings.definitions.staticcheckSettings"
                | optional,
              tagalign
                | refs."definitions.settings.definitions.tagalignSettings"
                | optional,
              tagliatelle
                | refs."definitions.settings.definitions.tagliatelleSettings"
                | optional,
              testifylint
                | refs."definitions.settings.definitions.testifylintSettings"
                | optional,
              testpackage
                | refs."definitions.settings.definitions.testpackageSettings"
                | optional,
              thelper
                | refs."definitions.settings.definitions.thelperSettings"
                | optional,
              unconvert
                | refs."definitions.settings.definitions.unconvertSettings"
                | optional,
              unparam
                | refs."definitions.settings.definitions.unparamSettings"
                | optional,
              unused
                | refs."definitions.settings.definitions.unusedSettings"
                | optional,
              usestdlibvars
                | refs."definitions.settings.definitions.usestdlibvarsSettings"
                | optional,
              usetesting
                | refs."definitions.settings.definitions.usetestingSettings"
                | optional,
              varnamelen
                | refs."definitions.settings.definitions.varnamelenSettings"
                | optional,
              whitespace
                | refs."definitions.settings.definitions.whitespaceSettings"
                | optional,
              wrapcheck
                | refs."definitions.settings.definitions.wrapcheckSettings"
                | optional,
              wsl
                | refs."definitions.settings.definitions.wslSettings"
                | optional,
            }
            | doc "All available settings of specific linters."
            | optional,
        }
        | optional,
      output
        | {
          formats
            | {
              checkstyle | refs."definitions.simple-format" | optional,
              code-climate | refs."definitions.simple-format" | optional,
              html | refs."definitions.simple-format" | optional,
              json | refs."definitions.simple-format" | optional,
              junit-xml
                | {
                  extended | Bool | optional,
                  path | refs."definitions.formats-path" | optional,
                }
                | optional,
              sarif | refs."definitions.simple-format" | optional,
              tab
                | {
                  colors | Bool | optional,
                  path | refs."definitions.formats-path" | optional,
                  print-linter-name | Bool | optional,
                }
                | optional,
              teamcity | refs."definitions.simple-format" | optional,
              text
                | {
                  colors | Bool | optional,
                  path | refs."definitions.formats-path" | optional,
                  print-issued-lines | Bool | optional,
                  print-linter-name | Bool | optional,
                }
                | optional,
            }
            | doc "Output formats to use."
            | optional,
          path-mode | String | optional,
          path-prefix
            | String
            | doc "Add a prefix to the output file references."
            | optional,
          show-stats | Bool | doc "Show statistics per linter." | optional,
          sort-order
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'file, 'severity, 'linter |] ]
            )
            | optional,
        }
        | doc "Output configuration options."
        | optional,
      run
        | {
          allow-parallel-runners
            | Bool
            | doc "Allow multiple parallel golangci-lint instances running. If disabled, golangci-lint acquires file lock on start."
            | optional,
          allow-serial-runners
            | Bool
            | doc "Allow multiple golangci-lint instances running, but serialize them around a lock."
            | optional,
          build-tags
            | Array String
            | doc "List of build tags to pass to all linters."
            | optional,
          concurrency
            | std.number.Integer
            | js2n.number.Minimum 0
            | doc "Number of concurrent runners. Defaults to the number of available CPU cores."
            | optional,
          go | String | doc "Targeted Go version." | optional,
          issues-exit-code
            | std.number.Integer
            | doc "Exit code when at least one issue was found."
            | optional,
          modules-download-mode
            | std.enum.TagOrString
            | [| 'vendor, 'readonly, 'mod |]
            | doc m%"
              Option to pass to "go list -mod={option}".
              See "go help modules" for more information.
            "%
            | optional,
          relative-path-mode
            | refs."definitions.relative-path-modes"
            | doc "The mode used to evaluate relative paths."
            | optional,
          tests | Bool | doc "Enable inclusion of test files." | optional,
          timeout
            | js2n.string.Matches "^((\\d+h)?(\\d+m)?(\\d+(?:\\.\\d)?s)?|0)$"
            | doc "Timeout for the analysis."
            | optional,
        }
        | doc "Options for analysis running,"
        | optional,
      severity
        | {
          "default"
            | String
            | doc "Set the default severity for issues. If severity rules are defined and the issues do not match or no severity is provided to the rule this will be the default severity applied. Severities should match the supported severity names of the selected out format.",
          rules
            | Array (
              std.contract.Sequence
                [
                  std.contract.any_of
                    [
                      js2n.record.Required [ "path" ],
                      js2n.record.Required [ "path-except" ],
                      js2n.record.Required [ "linters" ],
                      js2n.record.Required [ "text" ],
                      js2n.record.Required [ "source" ]
                    ],
                  {
                    linters | Array refs."definitions.linter-names" | optional,
                    path | String | optional,
                    path-except | String | optional,
                    severity | String,
                    source | String | optional,
                    text | String | optional,
                  }
                ]
            )
            | doc m%"
              When a list of severity rules are provided, severity information will be added to lint issues. Severity rules have the same filtering capability as exclude rules except you are allowed to specify one matcher per severity rule.
              Only affects out formats that support setting severity information.
            "%
            | optional,
        }
        | optional,
      version | String,
    }