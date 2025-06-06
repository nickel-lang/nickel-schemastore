# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.BasedOnStyle" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'inheritparentconfig,
                'gnu,
                'microsoft,
                'webkit,
                'mozilla,
                'llvm,
                'google,
                'chromium,
                'InheritParentConfig,
                'GNU,
                'Microsoft,
                'WebKit,
                'Mozilla,
                'LLVM,
                'Google,
                'Chromium
              |]
            ],
      "properties.Language" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'Verilog,
                'TextProto,
                'TableGen,
                'Proto,
                'Json,
                'JavaScript,
                'Java,
                'CSharp,
                'ObjC,
                'Cpp,
                'None
              |]
            ],
    }
    in
  js2n.record.Record
      {
        additional = 'Some js2n.Always,
        patterns =
          {
              "^x-" =
                std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
            },
        properties =
          {
              AccessModifierOffset = std.number.Integer,
              AlignAfterOpenBracket =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'BlockIndent, 'AlwaysBreak, 'DontAlign, 'Align |]
                    ],
              AlignArrayOfStructures =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Right, 'Left, 'None |] ],
              AlignConsecutiveAssignments =
                std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'AcrossEmptyLinesAndComments,
                            'AcrossComments,
                            'AcrossEmptyLines,
                            'Consecutive,
                            'None
                          |]
                        ],
                      {
                        AcrossComments
                          | Bool
                          | doc "Whether to align across comments."
                          | optional,
                        AcrossEmptyLines
                          | Bool
                          | doc "Whether to align across empty lines."
                          | optional,
                        AlignCompound
                          | Bool
                          | doc "Whether compound assignments like += are aligned along with =."
                          | optional,
                        Enabled
                          | Bool
                          | doc "Whether aligning is enabled."
                          | optional,
                        PadOperators
                          | Bool
                          | doc "Whether short assignment operators are left-padded to the same length as long ones in order to put all assignment operators to the right of the left hand side."
                          | optional,
                        ..
                      }
                    ],
              AlignConsecutiveBitFields =
                std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'AcrossEmptyLinesAndComments,
                            'AcrossComments,
                            'AcrossEmptyLines,
                            'Consecutive,
                            'None
                          |]
                        ],
                      {
                        AcrossComments
                          | Bool
                          | doc "Whether to align across comments."
                          | optional,
                        AcrossEmptyLines
                          | Bool
                          | doc "Whether to align across empty lines."
                          | optional,
                        Enabled
                          | Bool
                          | doc "Whether aligning is enabled."
                          | optional,
                        ..
                      }
                    ],
              AlignConsecutiveDeclarations =
                std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'AcrossEmptyLinesAndComments,
                            'AcrossComments,
                            'AcrossEmptyLines,
                            'Consecutive,
                            'None
                          |]
                        ],
                      {
                        AcrossComments
                          | Bool
                          | doc "Whether to align across comments."
                          | optional,
                        AcrossEmptyLines
                          | Bool
                          | doc "Whether to align across empty lines."
                          | optional,
                        AlignFunctionPointers
                          | Bool
                          | doc "Whether function pointers are aligned."
                          | optional,
                        Enabled
                          | Bool
                          | doc "Whether aligning is enabled."
                          | optional,
                        ..
                      }
                    ],
              AlignConsecutiveMacros =
                std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'AcrossEmptyLinesAndComments,
                            'AcrossComments,
                            'AcrossEmptyLines,
                            'Consecutive,
                            'None
                          |]
                        ],
                      {
                        AcrossComments
                          | Bool
                          | doc "Whether to align across comments."
                          | optional,
                        AcrossEmptyLines
                          | Bool
                          | doc "Whether to align across empty lines."
                          | optional,
                        Enabled
                          | Bool
                          | doc "Whether aligning is enabled."
                          | optional,
                        ..
                      }
                    ],
              AlignConsecutiveShortCaseStatements =
                {
                    AcrossComments
                      | Bool
                      | doc "Whether to align across comments."
                      | optional,
                    AcrossEmptyLines
                      | Bool
                      | doc "Whether to align across empty lines."
                      | optional,
                    AlignCaseColons
                      | Bool
                      | doc "Whether aligned case labels are aligned on the colon or on the tokens after the colon."
                      | optional,
                    Enabled
                      | Bool
                      | doc "Whether aligning is enabled."
                      | optional,
                    ..
                  },
              AlignEscapedNewlines =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'DontAlign, 'Right, 'Left |] ],
              AlignOperands =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'AlignAfterOperator, 'DontAlign, 'Align |]
                    ],
              AlignTrailingComments =
                std.contract.any_of
                    [
                      Bool,
                      {
                        Kind
                          | std.enum.TagOrString
                          | [| 'Never, 'Always, 'Leave |]
                          | doc "Specifies the way to align trailing comments."
                          | optional,
                        OverEmptyLines
                          | std.number.Integer
                          | js2n.number.Minimum 0
                          | doc "How many empty lines to apply alignment."
                          | optional,
                        ..
                      }
                    ],
              AllowAllArgumentsOnNextLine = Bool,
              AllowAllConstructorInitializersOnNextLine = Bool,
              AllowAllParametersOfDeclarationOnNextLine = Bool,
              AllowBreakBeforeNoexceptSpecifier =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Always, 'OnlyWithParen, 'Never |]
                    ],
              AllowShortBlocksOnASingleLine =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Always, 'Empty, 'Never |] ],
              AllowShortCaseLabelsOnASingleLine = Bool,
              AllowShortCompoundRequirementOnASingleLine = Bool,
              AllowShortEnumsOnASingleLine = Bool,
              AllowShortFunctionsOnASingleLine =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'InlineOnly, 'Empty, 'Inline, 'None, 'All |]
                    ],
              AllowShortIfStatementsOnASingleLine =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'OnlyFirstIf, 'WithoutElse, 'Never, 'AllIfsAndElse |]
                    ],
              AllowShortLambdasOnASingleLine =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'All, 'Inline, 'Empty, 'None |]
                    ],
              AllowShortLoopsOnASingleLine = Bool,
              AlwaysBreakAfterDefinitionReturnType =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'TopLevel, 'All, 'None |] ],
              AlwaysBreakAfterReturnType =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'TopLevelDefinitions,
                        'AllDefinitions,
                        'TopLevel,
                        'All,
                        'None
                      |]
                    ],
              AlwaysBreakBeforeMultilineStrings = Bool,
              AlwaysBreakTemplateDeclarations =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'MultiLine, 'No, 'Yes |] ],
              AttributeMacros = Array String,
              BasedOnStyle =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'inheritparentconfig,
                        'gnu,
                        'microsoft,
                        'webkit,
                        'mozilla,
                        'llvm,
                        'google,
                        'chromium,
                        'InheritParentConfig,
                        'GNU,
                        'Microsoft,
                        'WebKit,
                        'Mozilla,
                        'LLVM,
                        'Google,
                        'Chromium
                      |]
                    ],
              BinPackArguments = Bool,
              BinPackParameters = Bool,
              BitFieldColonSpacing =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'After, 'Before, 'None, 'Both |]
                    ],
              BraceWrapping =
                {
                    AfterCaseLabel | Bool | doc "Wrap case labels." | optional,
                    AfterClass
                      | Bool
                      | doc "Wrap class definitions."
                      | optional,
                    AfterControlStatement
                      | std.enum.TagOrString
                      | [| 'Always, 'MultiLine, 'Never |]
                      | doc "Wrap control statements (if/for/while/switch/...)."
                      | optional,
                    AfterEnum | Bool | doc "Wrap enum definitions." | optional,
                    AfterExternBlock
                      | Bool
                      | doc "Wrap extern blocks."
                      | optional,
                    AfterFunction
                      | Bool
                      | doc "Wrap function definitions."
                      | optional,
                    AfterNamespace
                      | Bool
                      | doc "Wrap namespace definitions."
                      | optional,
                    AfterObjCDeclaration
                      | Bool
                      | doc "Wrap ObjC definitions (interfaces, implementations…). @autoreleasepool and @synchronized blocks are wrapped according to AfterControlStatement flag."
                      | optional,
                    AfterStruct
                      | Bool
                      | doc "Wrap struct definitions."
                      | optional,
                    AfterUnion
                      | Bool
                      | doc "Wrap union definitions."
                      | optional,
                    BeforeCatch | Bool | doc "Wrap before catch." | optional,
                    BeforeElse | Bool | doc "Wrap before else." | optional,
                    BeforeLambdaBody
                      | Bool
                      | doc "Wrap lambda block."
                      | optional,
                    BeforeWhile | Bool | doc "Wrap before while." | optional,
                    IndentBraces
                      | Bool
                      | doc "Indent the wrapped braces themselves."
                      | optional,
                    SplitEmptyFunction
                      | Bool
                      | doc "If false, empty function body can be put on a single line. This option is used only if the opening brace of the function has already been wrapped, i.e. the AfterFunction brace wrapping mode is set, and the function could/should not be put on a single line (as per AllowShortFunctionsOnASingleLine and constructor formatting options)."
                      | optional,
                    SplitEmptyNamespace
                      | Bool
                      | doc "If false, empty namespace body can be put on a single line. This option is used only if the opening brace of the namespace has already been wrapped, i.e. the AfterNamespace brace wrapping mode is set."
                      | optional,
                    SplitEmptyRecord
                      | Bool
                      | doc "If false, empty record (e.g. class, struct or union) body can be put on a single line. This option is used only if the opening brace of the record has already been wrapped, i.e. the AfterClass (for classes) brace wrapping mode is set."
                      | optional,
                    ..
                  },
              BracedInitializerIndentWidth =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              BreakAdjacentStringLiterals = Bool,
              BreakAfterAttributes =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Never, 'Leave, 'Always |] ],
              BreakAfterJavaFieldAnnotations = Bool,
              BreakArrays = Bool,
              BreakBeforeBinaryOperators =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'All, 'NonAssignment, 'None |] ],
              BreakBeforeBraces =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'Custom,
                        'WebKit,
                        'GNU,
                        'Whitesmiths,
                        'Allman,
                        'Stroustrup,
                        'Mozilla,
                        'Linux,
                        'Attach
                      |]
                    ],
              BreakBeforeConceptDeclarations =
                std.contract.any_of
                    [
                      Bool,
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'Always, 'Allowed, 'Never |]
                        ]
                    ],
              BreakBeforeInheritanceComma = Bool,
              BreakBeforeInlineASMColon =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Always, 'OnlyMultiline, 'Never |]
                    ],
              BreakBeforeTernaryOperators = Bool,
              BreakConstructorInitializers =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'AfterColon, 'BeforeComma, 'BeforeColon |]
                    ],
              BreakConstructorInitializersBeforeComma = Bool,
              BreakInheritanceList =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'AfterComma, 'AfterColon, 'BeforeComma, 'BeforeColon |]
                    ],
              BreakStringLiterals = Bool,
              ColumnLimit =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              CommentPragmas = String,
              CompactNamespaces = Bool,
              ConstructorInitializerAllOnOneLineOrOnePerLine = Bool,
              ConstructorInitializerIndentWidth =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              ContinuationIndentWidth =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              Cpp11BracedListStyle = Bool,
              DeriveLineEnding = Bool,
              DerivePointerAlignment = Bool,
              DisableFormat = Bool,
              EmptyLineAfterAccessModifier =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Always, 'Leave, 'Never |] ],
              EmptyLineBeforeAccessModifier =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Always, 'Leave, 'Never, 'LogicalBlock |]
                    ],
              ExperimentalAutoDetectBinPacking = Bool,
              FixNamespaceComments = Bool,
              ForEachMacros = Array String,
              IfMacros = Array String,
              IncludeBlocks =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Merge, 'Preserve, 'Regroup |] ],
              IncludeCategories =
                Array
                    {
                      CaseSensitive | Bool | optional,
                      Priority | std.number.Integer,
                      Regex | String,
                      SortPriority | std.number.Integer | optional,
                      ..
                    },
              IncludeIsMainRegex = String,
              IncludeIsMainSourceRegex = String,
              IndentAccessModifiers = Bool,
              IndentCaseBlocks = Bool,
              IndentCaseLabels = Bool,
              IndentExternBlock =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Indent, 'NoIndent, 'AfterExternBlock |]
                    ],
              IndentGotoLabels = Bool,
              IndentPPDirectives =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'BeforeHash, 'AfterHash, 'None |]
                    ],
              IndentRequires = Bool,
              IndentRequiresClause = Bool,
              IndentWidth =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              IndentWrappedFunctionNames = Bool,
              InsertBraces = Bool,
              InsertNewlineAtEOF = Bool,
              InsertTrailingCommas =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Wrapped, 'None |] ],
              IntegerLiteralSeparator =
                {
                    Binary
                      | std.number.Integer
                      | doc "Format separators in binary literals."
                      | optional,
                    BinaryMinDigits
                      | std.number.Integer
                      | doc "Format separators in binary literals with a minimum number of digits."
                      | optional,
                    Decimal
                      | std.number.Integer
                      | doc "Format separators in decimal literals."
                      | optional,
                    DecimalMinDigits
                      | std.number.Integer
                      | doc "Format separators in decimal literals with a minimum number of digits."
                      | optional,
                    Hex
                      | std.number.Integer
                      | doc "Format separators in hexadecimal literals"
                      | optional,
                    HexMinDigits
                      | std.number.Integer
                      | doc "Format separators in hexadecimal literals with a minimum number of digits."
                      | optional,
                    ..
                  },
              JavaImportGroup = Array Dyn,
              JavaScriptQuotes =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Double, 'Single, 'Leave |] ],
              JavaScriptWrapImports = Bool,
              KeepEmptyLinesAtEOF = Bool,
              KeepEmptyLinesAtTheStartOfBlocks = Bool,
              LambdaBodyIndentation =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'OuterScope, 'Signature |] ],
              Language =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'Verilog,
                        'TextProto,
                        'TableGen,
                        'Proto,
                        'Json,
                        'JavaScript,
                        'Java,
                        'CSharp,
                        'ObjC,
                        'Cpp,
                        'None
                      |]
                    ],
              LineEnding =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'DeriveCRLF, 'DeriveLF, 'CRLF, 'LF |]
                    ],
              MacroBlockBegin = String,
              MacroBlockEnd = String,
              Macros = Array String,
              MaxEmptyLinesToKeep =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              NamespaceIndentation =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'All, 'Inner, 'None |] ],
              NamespaceMacros = Array String,
              ObjCBinPackProtocolList =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Always, 'Auto, 'Never |] ],
              ObjCBlockIndentWidth =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              ObjCBreakBeforeNestedBlockParam = Bool,
              ObjCPropertyAttributeOrder = Array String,
              ObjCSpaceAfterProperty = Bool,
              ObjCSpaceBeforeProtocolList = Bool,
              PPIndentWidth = std.number.Integer,
              PackConstructorInitializers =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'NextLineOnly,
                        'NextLine,
                        'CurrentLine,
                        'BinPack,
                        'Never
                      |]
                    ],
              PenaltyBreakAssignment =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakBeforeFirstCallParameter =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakComment =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakFirstLessLess =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakOpenParenthesis =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakScopeResolution =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakString =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyBreakTemplateDeclaration =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyExcessCharacter =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyIndentedWhitespace =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PenaltyReturnTypeOnItsOwnLine =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              PointerAlignment =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Middle, 'Right, 'Left |] ],
              QualifierAlignment =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Custom, 'Right, 'Left, 'Leave |]
                    ],
              QualifierOrder =
                std.contract.Sequence
                    [
                      js2n.array.Contains
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'type |] ]),
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'type,
                              'restrict,
                              'volatile,
                              'constexpr,
                              'friend,
                              'static,
                              'inline,
                              'const
                            |]
                          ]
                      )
                    ],
              RawStringFormats =
                Array
                    {
                      BasedOnStyle | refs."properties.BasedOnStyle" | optional,
                      CanonicalDelimiter | String | optional,
                      Delimiters | Array String | optional,
                      EnclosingFunctions | Array String | optional,
                      Language | refs."properties.Language" | optional,
                      ..
                    },
              ReferenceAlignment =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Middle, 'Right, 'Left, 'Pointer |]
                    ],
              ReflowComments = Bool,
              RemoveBracesLLVM = Bool,
              RemoveParentheses =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'ReturnStatement, 'MultipleParentheses, 'Leave |]
                    ],
              RemoveSemicolon = Bool,
              RequiresClausePosition =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'SingleLine,
                        'WithFollowing,
                        'WithPreceding,
                        'OwnLine
                      |]
                    ],
              RequiresExpressionIndentation =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Keyword, 'OuterScope |] ],
              SeparateDefinitionBlocks =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Never, 'Always, 'Leave |] ],
              ShortNamespaceLines =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              SkipMacroDefinitionBody = Bool,
              SortIncludes =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Never, 'CaseInsensitive, 'CaseSensitive |]
                    ],
              SortJavaStaticImport =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'After, 'Before |] ],
              SortUsingDeclarations =
                std.contract.any_of
                    [
                      Bool,
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'LexicographicNumeric, 'Lexicographic, 'Never |]
                        ]
                    ],
              SpaceAfterCStyleCast = Bool,
              SpaceAfterLogicalNot = Bool,
              SpaceAfterTemplateKeyword = Bool,
              SpaceAroundPointerQualifiers =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'Both, 'After, 'Before, 'Default |]
                    ],
              SpaceBeforeAssignmentOperators = Bool,
              SpaceBeforeCaseColon = Bool,
              SpaceBeforeCpp11BracedList = Bool,
              SpaceBeforeCtorInitializerColon = Bool,
              SpaceBeforeInheritanceColon = Bool,
              SpaceBeforeJsonColon = Bool,
              SpaceBeforeParens =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'Custom,
                        'Always,
                        'NonEmptyParentheses,
                        'ControlStatementsExceptControlMacros,
                        'Never,
                        'ControlStatements
                      |]
                    ],
              SpaceBeforeParensOptions =
                {
                    AfterControlStatements
                      | Bool
                      | doc "If true, put space between control statement keywords (for/if/while…) and opening parentheses."
                      | optional,
                    AfterForeachMacros
                      | Bool
                      | doc "If true, put space between foreach macros and opening parentheses."
                      | optional,
                    AfterFunctionDeclarationName
                      | Bool
                      | doc "If true, put a space between function declaration name and opening parentheses."
                      | optional,
                    AfterFunctionDefinitionName
                      | Bool
                      | doc "If true, put a space between function definition name and opening parentheses."
                      | optional,
                    AfterIfMacros
                      | Bool
                      | doc "If true, put space between if macros and opening parentheses."
                      | optional,
                    AfterOverloadedOperator
                      | Bool
                      | doc "If true, put a space between operator overloading and opening parentheses."
                      | optional,
                    AfterPlacementOperator
                      | Bool
                      | doc "If true, put a space between operator new/delete and opening parenthesis."
                      | optional,
                    AfterRequiresInClause
                      | Bool
                      | doc "If true, put space between requires keyword in a requires clause and opening parentheses, if there is one."
                      | optional,
                    AfterRequiresInExpression
                      | Bool
                      | doc "If true, put space between requires keyword in a requires expression and opening parentheses."
                      | optional,
                    BeforeNonEmptyParentheses
                      | Bool
                      | doc "If true, put a space before opening parentheses only if the parentheses are not empty."
                      | optional,
                    ..
                  },
              SpaceBeforeRangeBasedForLoopColon = Bool,
              SpaceBeforeSquareBrackets = Bool,
              SpaceInEmptyBlock = Bool,
              SpaceInEmptyParentheses = Bool,
              SpacesBeforeTrailingComments =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              SpacesInAngles =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Leave, 'Always, 'Never |] ],
              SpacesInCStyleCastParentheses = Bool,
              SpacesInConditionalStatement = Bool,
              SpacesInContainerLiterals = Bool,
              SpacesInLineCommentPrefix =
                {
                    Maximum | std.number.Integer | optional,
                    Minimum | std.number.Integer | optional,
                    ..
                  },
              SpacesInParens =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'Custom, 'Never |] ],
              SpacesInParensOptions =
                {
                    InCStyleCasts | Bool | optional,
                    InConditionalStatements | Bool | optional,
                    InEmptyParentheses | Bool | optional,
                    Other | Bool | optional,
                    ..
                  },
              SpacesInParentheses = Bool,
              SpacesInSquareBrackets = Bool,
              Standard =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"c++20",
                        '"c++17",
                        '"c++14",
                        '"c++11",
                        '"c++03",
                        'Latest,
                        'Auto
                      |]
                    ],
              StatementAttributeLikeMacros = Array String,
              StatementMacros = Array String,
              TabWidth =
                std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ],
              TypeNames = Array String,
              TypenameMacros = Array String,
              UseCRLF = Bool,
              UseTab =
                std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'Always,
                        'AlignWithSpaces,
                        'ForContinuationAndIndentation,
                        'ForIndentation,
                        'Never
                      |]
                    ],
              VerilogBreakBetweenInstancePorts = Bool,
              WhitespaceSensitiveMacros = Array String,
            },
        required = {},
      }