# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.A11y" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noAccessKey
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that the accessKey attribute is not used on any HTML element."
              | optional,
            noAriaHiddenOnFocusable
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that aria-hidden=\"true\" is not set on focusable elements."
              | optional,
            noAriaUnsupportedElements
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that elements that do not support ARIA roles, states, and properties do not have those attributes."
              | optional,
            noAutofocus
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that autoFocus prop is not used on elements."
              | optional,
            noBlankTarget
              | js2n.Nullable refs."definitions.AllowDomainConfiguration"
              | doc "Disallow target=\"_blank\" attribute without rel=\"noreferrer\""
              | optional,
            noDistractingElements
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforces that no distracting elements are used."
              | optional,
            noHeaderScope
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "The scope prop should be used only on \\<th> elements."
              | optional,
            noInteractiveElementToNoninteractiveRole
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that non-interactive ARIA roles are not assigned to interactive HTML elements."
              | optional,
            noLabelWithoutControl
              | js2n.Nullable
                refs."definitions.NoLabelWithoutControlConfiguration"
              | doc "Enforce that a label element or component has a text label and an associated input."
              | optional,
            noNoninteractiveElementToInteractiveRole
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that interactive ARIA roles are not assigned to non-interactive HTML elements."
              | optional,
            noNoninteractiveTabindex
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that tabIndex is not assigned to non-interactive HTML elements."
              | optional,
            noPositiveTabindex
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevent the usage of positive integers on tabIndex property"
              | optional,
            noRedundantAlt
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce img alt prop does not contain the word \"image\", \"picture\", or \"photo\"."
              | optional,
            noRedundantRoles
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce explicit role property is not the same as implicit/default role property on an element."
              | optional,
            noSvgWithoutTitle
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforces the usage of the title element for the svg element."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useAltText
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that all elements that require alternative text have meaningful information to relay back to the end user."
              | optional,
            useAnchorContent
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that anchors have content and that the content is accessible to screen readers."
              | optional,
            useAriaActivedescendantWithTabindex
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce that tabIndex is assigned to non-interactive HTML elements with aria-activedescendant."
              | optional,
            useAriaPropsForRole
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that elements with ARIA roles must have all required ARIA attributes for that role."
              | optional,
            useButtonType
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforces the usage of the attribute type for the element button"
              | optional,
            useFocusableInteractive
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Elements with an interactive role and interaction handlers must be focusable."
              | optional,
            useGenericFontNames
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow a missing generic family keyword within font families."
              | optional,
            useHeadingContent
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that heading elements (h1, h2, etc.) have content and that the content is accessible to screen readers. Accessible means that it is not hidden using the aria-hidden prop."
              | optional,
            useHtmlLang
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that html element has lang attribute."
              | optional,
            useIframeTitle
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforces the usage of the attribute title for the element iframe."
              | optional,
            useKeyWithClickEvents
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce onClick is accompanied by at least one of the following: onKeyUp, onKeyDown, onKeyPress."
              | optional,
            useKeyWithMouseEvents
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce onMouseOver / onMouseOut are accompanied by onFocus / onBlur."
              | optional,
            useMediaCaption
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforces that audio and video elements must have a track for captions."
              | optional,
            useSemanticElements
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "It detects the use of role attributes in JSX elements and suggests using semantic elements instead."
              | optional,
            useValidAnchor
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that all anchors are valid, and they are navigable elements."
              | optional,
            useValidAriaProps
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Ensures that ARIA properties aria-* are all valid."
              | optional,
            useValidAriaRole
              | js2n.Nullable refs."definitions.ValidAriaRoleConfiguration"
              | doc "Elements with ARIA roles must use a valid, non-abstract ARIA role."
              | optional,
            useValidAriaValues
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that ARIA state and property values are valid."
              | optional,
            useValidLang
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Ensure that the attribute passed to the lang attribute is a correct ISO language and/or country."
              | optional,
          },
      "definitions.Accessibility" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'none, 'explicit, 'noPublic |] ],
      "definitions.Actions" =
        {
            source
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Source", { _ | Dyn } ])
              | optional,
          },
      "definitions.AllowDomainConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithAllowDomainOptions", { _ | Dyn } ]
            ],
      "definitions.AllowDomainOptions" =
        {
            allowDomains
              | Array String
              | doc "List of domains to allow `target=\"_blank\"` without `rel=\"noreferrer\"`"
              | optional,
          },
      "definitions.ArrowParentheses" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'asNeeded, 'always |] ],
      "definitions.AssistsConfiguration" =
        {
            actions
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Actions", { _ | Dyn } ])
              | doc "Whether Biome should fail in CLI if the assists were not applied to the code."
              | optional,
            enabled
              | js2n.Nullable Bool
              | doc "Whether Biome should enable assists via LSP."
              | optional,
            ignore
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will ignore files/folders that will match these patterns."
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will include files/folders that will match these patterns."
              | optional,
          },
      "definitions.AttributePosition" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'multiline, 'auto |] ],
      "definitions.BracketSpacing" = Bool,
      "definitions.Complexity" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noBannedTypes
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow primitive type aliases and misleading types."
              | optional,
            noEmptyTypeParameters
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow empty type parameters in type aliases and interfaces."
              | optional,
            noExcessiveCognitiveComplexity
              | js2n.Nullable refs."definitions.ComplexityConfiguration"
              | doc "Disallow functions that exceed a given Cognitive Complexity score."
              | optional,
            noExcessiveNestedTestSuites
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "This rule enforces a maximum depth to nested describe() in test files."
              | optional,
            noExtraBooleanCast
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary boolean casts"
              | optional,
            noForEach
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prefer for...of statement instead of Array.forEach."
              | optional,
            noMultipleSpacesInRegularExpressionLiterals
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unclear usage of consecutive space characters in regular expression literals"
              | optional,
            noStaticOnlyClass
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "This rule reports when a class has no non-static members, such as for a class used exclusively as a static namespace."
              | optional,
            noThisInStatic
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow this and super in static contexts."
              | optional,
            noUselessCatch
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary catch clauses."
              | optional,
            noUselessConstructor
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary constructors."
              | optional,
            noUselessEmptyExport
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow empty exports that don't change anything in a module file."
              | optional,
            noUselessFragments
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary fragments"
              | optional,
            noUselessLabel
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary labels."
              | optional,
            noUselessLoneBlockStatements
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary nested block statements."
              | optional,
            noUselessRename
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow renaming import, export, and destructured assignments to the same name."
              | optional,
            noUselessStringConcat
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary concatenation of string or template literals."
              | optional,
            noUselessSwitchCase
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow useless case in switch statements."
              | optional,
            noUselessTernary
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow ternary operators when simpler alternatives exist."
              | optional,
            noUselessThisAlias
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow useless this aliasing."
              | optional,
            noUselessTypeConstraint
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow using any or unknown as type constraint."
              | optional,
            noUselessUndefinedInitialization
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow initializing variables to undefined."
              | optional,
            noVoid
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of void operators, which is not a familiar operator."
              | optional,
            noWith
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow with statements in non-strict contexts."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useArrowFunction
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use arrow functions over function expressions."
              | optional,
            useDateNow
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use Date.now() to get the number of milliseconds since the Unix Epoch."
              | optional,
            useFlatMap
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Promotes the use of .flatMap() when map().flat() are used together."
              | optional,
            useLiteralKeys
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the usage of a literal access to properties over computed property access."
              | optional,
            useOptionalChain
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce using concise optional chain instead of chained logical expressions."
              | optional,
            useRegexLiterals
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of the regular expression literals instead of the RegExp constructor if possible."
              | optional,
            useSimpleNumberKeys
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow number literal object member names which are not base10 or uses underscore as separator"
              | optional,
            useSimplifiedLogicExpression
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Discard redundant terms from logical expressions."
              | optional,
          },
      "definitions.ComplexityConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithComplexityOptions", { _ | Dyn } ]
            ],
      "definitions.ComplexityOptions" =
        {
            maxAllowedComplexity
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The maximum complexity score that we allow. Anything higher is considered excessive."
              | optional,
          },
      "definitions.ConsistentArrayType" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'shorthand |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'generic |] ]
            ],
      "definitions.ConsistentArrayTypeConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithConsistentArrayTypeOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.ConsistentArrayTypeOptions" =
        { syntax | refs."definitions.ConsistentArrayType" | optional, },
      "definitions.ConsistentMemberAccessibilityConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithConsistentMemberAccessibilityOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.ConsistentMemberAccessibilityOptions" =
        {
            accessibility
              | refs."definitions.Accessibility"
              | String
              | optional,
          },
      "definitions.Convention" =
        {
            formats
              | refs."definitions.Formats"
              | Array Dyn
              | doc "String cases to enforce"
              | optional,
            "match"
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.Regex", String ])
              | doc "Regular expression to enforce"
              | optional,
            selector
              | refs."definitions.Selector"
              | { _ | Dyn }
              | doc "Declarations concerned by this convention"
              | optional,
          },
      "definitions.Correctness" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noChildrenProp
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevent passing of children as props."
              | optional,
            noConstAssign
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevents from having const variables being re-assigned."
              | optional,
            noConstantCondition
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow constant expressions in conditions"
              | optional,
            noConstantMathMinMaxClamp
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of Math.min and Math.max to clamp a value where the result itself is constant."
              | optional,
            noConstructorReturn
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow returning a value from a constructor."
              | optional,
            noEmptyCharacterClassInRegex
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow empty character classes in regular expression literals."
              | optional,
            noEmptyPattern
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallows empty destructuring patterns."
              | optional,
            noFlatMapIdentity
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow to use unnecessary callback on flatMap."
              | optional,
            noGlobalObjectCalls
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow calling global object properties as functions"
              | optional,
            noInnerDeclarations
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow function and var declarations that are accessible outside their block."
              | optional,
            noInvalidBuiltinInstantiation
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Ensure that builtins are correctly instantiated."
              | optional,
            noInvalidConstructorSuper
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevents the incorrect use of super() inside classes. It also checks whether a call super() is missing from classes that extends other constructors."
              | optional,
            noInvalidDirectionInLinearGradient
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow non-standard direction values for linear gradient functions."
              | optional,
            noInvalidGridAreas
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallows invalid named grid areas in CSS Grid Layouts."
              | optional,
            noInvalidNewBuiltin
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow new operators with global non-constructor functions."
              | optional,
            noInvalidPositionAtImportRule
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of @import at-rules in invalid positions."
              | optional,
            noInvalidUseBeforeDeclaration
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of variables and function parameters before their declaration"
              | optional,
            noNewSymbol
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow new operators with the Symbol object."
              | optional,
            noNodejsModules
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Forbid the use of Node.js builtin modules."
              | optional,
            noNonoctalDecimalEscape
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow \\8 and \\9 escape sequences in string literals."
              | optional,
            noPrecisionLoss
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow literal numbers that lose precision"
              | optional,
            noRenderReturnValue
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevent the usage of the return value of React.render."
              | optional,
            noSelfAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow assignments where both sides are exactly the same."
              | optional,
            noSetterReturn
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow returning a value from a setter"
              | optional,
            noStringCaseMismatch
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow comparison of expressions modifying the string case with non-compliant value."
              | optional,
            noSwitchDeclarations
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow lexical declarations in switch clauses."
              | optional,
            noUndeclaredDependencies
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of dependencies that aren't specified in the package.json."
              | optional,
            noUndeclaredVariables
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevents the usage of variables that haven't been declared inside the document."
              | optional,
            noUnknownFunction
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown CSS value functions."
              | optional,
            noUnknownMediaFeatureName
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown media feature names."
              | optional,
            noUnknownProperty
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown properties."
              | optional,
            noUnknownUnit
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown CSS units."
              | optional,
            noUnmatchableAnbSelector
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unmatchable An+B selectors."
              | optional,
            noUnnecessaryContinue
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Avoid using unnecessary continue."
              | optional,
            noUnreachable
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unreachable code"
              | optional,
            noUnreachableSuper
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Ensures the super() constructor is called exactly once on every code  path in a class constructor before this is accessed if the class has a superclass"
              | optional,
            noUnsafeFinally
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow control flow statements in finally blocks."
              | optional,
            noUnsafeOptionalChaining
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of optional chaining in contexts where the undefined value is not allowed."
              | optional,
            noUnusedFunctionParameters
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unused function parameters."
              | optional,
            noUnusedImports
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unused imports."
              | optional,
            noUnusedLabels
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unused labels."
              | optional,
            noUnusedPrivateClassMembers
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unused private class members"
              | optional,
            noUnusedVariables
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unused variables."
              | optional,
            noVoidElementsWithChildren
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "This rules prevents void elements (AKA self-closing elements) from having children."
              | optional,
            noVoidTypeReturn
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow returning a value from a function with the return type 'void'"
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useArrayLiterals
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow Array constructors."
              | optional,
            useExhaustiveDependencies
              | js2n.Nullable
                refs."definitions.UseExhaustiveDependenciesConfiguration"
              | doc "Enforce all dependencies are correctly specified in a React hook."
              | optional,
            useHookAtTopLevel
              | js2n.Nullable refs."definitions.DeprecatedHooksConfiguration"
              | doc "Enforce that all React hooks are being called from the Top Level component functions."
              | optional,
            useImportExtensions
              | js2n.Nullable
                refs."definitions.UseImportExtensionsConfiguration"
              | doc "Enforce file extensions for relative imports."
              | optional,
            useIsNan
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Require calls to isNaN() when checking for NaN."
              | optional,
            useJsxKeyInIterable
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow missing key props in iterators/collection literals."
              | optional,
            useValidForDirection
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce \"for\" loop update clause moving the counter in the right direction."
              | optional,
            useYield
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require generator functions to contain yield."
              | optional,
          },
      "definitions.CssAssists" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the assists for CSS files."
              | optional,
          },
      "definitions.CssConfiguration" =
        {
            assists
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CssAssists", { _ | Dyn } ])
              | doc "CSS assists options"
              | optional,
            formatter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CssFormatter", { _ | Dyn } ])
              | doc "CSS formatter options"
              | optional,
            linter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CssLinter", { _ | Dyn } ])
              | doc "CSS linter options"
              | optional,
            parser
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CssParser", { _ | Dyn } ])
              | doc "CSS parsing options"
              | optional,
          },
      "definitions.CssFormatter" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the formatter for CSS (and its super languages) files."
              | optional,
            indentStyle
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc "The indent style applied to CSS (and its super languages) files."
              | optional,
            indentWidth
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation applied to CSS (and its super languages) files. Default to 2."
              | optional,
            lineEnding
              | js2n.Nullable refs."definitions.LineEnding"
              | doc "The type of line ending applied to CSS (and its super languages) files."
              | optional,
            lineWidth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc "What's the max width of a line applied to CSS (and its super languages) files. Defaults to 80."
              | optional,
            quoteStyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.QuoteStyle", String ])
              | doc "The type of quotes used in CSS code. Defaults to double."
              | optional,
          },
      "definitions.CssLinter" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the linter for CSS files."
              | optional,
          },
      "definitions.CssParser" =
        {
            allowWrongLineComments
              | js2n.Nullable Bool
              | doc "Allow comments to appear on incorrect lines in `.css` files"
              | optional,
            cssModules
              | js2n.Nullable Bool
              | doc "Enables parsing of CSS Modules specific features."
              | optional,
          },
      "definitions.CustomRestrictedType" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.CustomRestrictedTypeOptions", { _ | Dyn } ]
            ],
      "definitions.CustomRestrictedTypeOptions" =
        { message | String | optional, use | js2n.Nullable String | optional, },
      "definitions.DeprecatedHooksConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithDeprecatedHooksOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.DeprecatedHooksOptions" = {},
      "definitions.FilenameCase" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'camelCase |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'export |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'kebab-case |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'PascalCase |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'snake_case |] ]
            ],
      "definitions.FilenameCases" =
        std.contract.Sequence
            [ js2n.array.UniqueItems, Array refs."definitions.FilenameCase" ],
      "definitions.FilenamingConventionConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithFilenamingConventionOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.FilenamingConventionOptions" =
        {
            filenameCases
              | refs."definitions.FilenameCases"
              | Array Dyn
              | doc "Allowed cases for file names."
              | optional,
            requireAscii
              | Bool
              | doc "If `false`, then non-ASCII characters are allowed."
              | optional,
            strictCase
              | Bool
              | doc "If `false`, then consecutive uppercase are allowed in _camel_ and _pascal_ cases. This does not affect other [Case]."
              | optional,
          },
      "definitions.FilesConfiguration" =
        {
            ignore
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. Biome will ignore files/folders that will match these patterns."
              | optional,
            ignoreUnknown
              | js2n.Nullable Bool
              | doc "Tells Biome to not emit diagnostics when handling files that doesn't know"
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. Biome will handle only those files/folders that will match these patterns."
              | optional,
            maxSize
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 1 ])
              | doc "The maximum allowed size for source code files in bytes. Files above this limit will be ignored for performance reasons. Defaults to 1 MiB"
              | optional,
          },
      "definitions.FixKind" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'safe |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'unsafe |] ]
            ],
      "definitions.Format" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'snake_case, 'PascalCase, 'CONSTANT_CASE, 'camelCase |]
            ],
      "definitions.Formats" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence [ refs."definitions.Format", String ]
              )
            ],
      "definitions.FormatterConfiguration" =
        {
            attributePosition
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.AttributePosition", String ])
              | doc "The attribute position style in HTMLish languages. By default auto."
              | optional,
            bracketSpacing
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BracketSpacing", Bool ])
              | doc "Whether to insert spaces around brackets in object literals. Defaults to true."
              | optional,
            enabled | js2n.Nullable Bool | optional,
            formatWithErrors
              | js2n.Nullable Bool
              | doc "Stores whether formatting should be allowed to proceed if a given file has syntax errors"
              | optional,
            ignore
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will ignore files/folders that will match these patterns."
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will include files/folders that will match these patterns."
              | optional,
            indentSize
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation, 2 by default (deprecated, use `indent-width`)"
              | optional,
            indentStyle
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc "The indent style."
              | optional,
            indentWidth
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation, 2 by default"
              | optional,
            lineEnding
              | js2n.Nullable refs."definitions.LineEnding"
              | doc "The type of line ending."
              | optional,
            lineWidth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc "What's the max width of a line. Defaults to 80."
              | optional,
            useEditorconfig
              | js2n.Nullable Bool
              | doc "Use any `.editorconfig` files to configure the formatter. Configuration in `biome.json` will override `.editorconfig` configuration. Default: false."
              | optional,
          },
      "definitions.GraphqlConfiguration" =
        {
            formatter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.GraphqlFormatter", { _ | Dyn } ])
              | doc "GraphQL formatter options"
              | optional,
            linter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.GraphqlLinter", { _ | Dyn } ])
              | optional,
          },
      "definitions.GraphqlFormatter" =
        {
            bracketSpacing
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BracketSpacing", Bool ])
              | doc "Whether to insert spaces around brackets in object literals. Defaults to true."
              | optional,
            enabled
              | js2n.Nullable Bool
              | doc "Control the formatter for GraphQL files."
              | optional,
            indentStyle
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc "The indent style applied to GraphQL files."
              | optional,
            indentWidth
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation applied to GraphQL files. Default to 2."
              | optional,
            lineEnding
              | js2n.Nullable refs."definitions.LineEnding"
              | doc "The type of line ending applied to GraphQL files."
              | optional,
            lineWidth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc "What's the max width of a line applied to GraphQL files. Defaults to 80."
              | optional,
            quoteStyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.QuoteStyle", String ])
              | doc "The type of quotes used in GraphQL code. Defaults to double."
              | optional,
          },
      "definitions.GraphqlLinter" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the formatter for GraphQL files."
              | optional,
          },
      "definitions.Hook" =
        {
            closureIndex
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                The "position" of the closure function, starting from zero.
                
                For example, for React's `useEffect()` hook, the closure index is 0.
              "%
              | optional,
            dependenciesIndex
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                The "position" of the array of dependencies, starting from zero.
                
                For example, for React's `useEffect()` hook, the dependencies index is 1.
              "%
              | optional,
            name | String | doc "The name of the hook." | optional,
            stableResult
              | js2n.Nullable refs."definitions.StableHookResult"
              | doc m%"
                Whether the result of the hook is stable.
                
                Set to `true` to mark the identity of the hook's return value as stable, or use a number/an array of numbers to mark the "positions" in the return array as stable.
                
                For example, for React's `useRef()` hook the value would be `true`, while for `useState()` it would be `[1]`.
              "%
              | optional,
          },
      "definitions.IndentStyle" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'tab |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'space |] ]
            ],
      "definitions.IndentWidth" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.JavascriptAssists" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the linter for JavaScript (and its super languages) files."
              | optional,
          },
      "definitions.JavascriptConfiguration" =
        {
            assists
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JavascriptAssists", { _ | Dyn } ])
              | doc "Assists options"
              | optional,
            formatter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JavascriptFormatter", { _ | Dyn } ])
              | doc "Formatting options"
              | optional,
            globals
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc m%"
                A list of global bindings that should be ignored by the analyzers
                
                If defined here, they should not emit diagnostics.
              "%
              | optional,
            jsxRuntime
              | js2n.Nullable refs."definitions.JsxRuntime"
              | doc "Indicates the type of runtime or transformation used for interpreting JSX."
              | optional,
            linter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JavascriptLinter", { _ | Dyn } ])
              | doc "Linter options"
              | optional,
            organizeImports
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JavascriptOrganizeImports", { _ | Dyn } ])
              | optional,
            parser
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JavascriptParser", { _ | Dyn } ])
              | doc "Parsing options"
              | optional,
          },
      "definitions.JavascriptFormatter" =
        {
            arrowParentheses
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.ArrowParentheses", String ])
              | doc "Whether to add non-necessary parentheses to arrow functions. Defaults to \"always\"."
              | optional,
            attributePosition
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.AttributePosition", String ])
              | doc "The attribute position style in jsx elements. Defaults to auto."
              | optional,
            bracketSameLine
              | js2n.Nullable Bool
              | doc "Whether to hug the closing bracket of multiline HTML/JSX tags to the end of the last line, rather than being alone on the following line. Defaults to false."
              | optional,
            bracketSpacing
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BracketSpacing", Bool ])
              | doc "Whether to insert spaces around brackets in object literals. Defaults to true."
              | optional,
            enabled
              | js2n.Nullable Bool
              | doc "Control the formatter for JavaScript (and its super languages) files."
              | optional,
            indentSize
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation applied to JavaScript (and its super languages) files. Default to 2."
              | optional,
            indentStyle
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc "The indent style applied to JavaScript (and its super languages) files."
              | optional,
            indentWidth
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation applied to JavaScript (and its super languages) files. Default to 2."
              | optional,
            jsxQuoteStyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.QuoteStyle", String ])
              | doc "The type of quotes used in JSX. Defaults to double."
              | optional,
            lineEnding
              | js2n.Nullable refs."definitions.LineEnding"
              | doc "The type of line ending applied to JavaScript (and its super languages) files."
              | optional,
            lineWidth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc "What's the max width of a line applied to JavaScript (and its super languages) files. Defaults to 80."
              | optional,
            quoteProperties
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.QuoteProperties", String ])
              | doc "When properties in objects are quoted. Defaults to asNeeded."
              | optional,
            quoteStyle
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.QuoteStyle", String ])
              | doc "The type of quotes used in JavaScript code. Defaults to double."
              | optional,
            semicolons
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Semicolons", String ])
              | doc "Whether the formatter prints semicolons for all statements or only in for statements where it is necessary because of ASI."
              | optional,
            trailingComma
              | js2n.Nullable refs."definitions.TrailingCommas"
              | doc "Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to \"all\"."
              | optional,
            trailingCommas
              | js2n.Nullable refs."definitions.TrailingCommas"
              | doc "Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to \"all\"."
              | optional,
          },
      "definitions.JavascriptLinter" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the linter for JavaScript (and its super languages) files."
              | optional,
          },
      "definitions.JavascriptOrganizeImports" = {},
      "definitions.JavascriptParser" =
        {
            unsafeParameterDecoratorsEnabled
              | js2n.Nullable Bool
              | doc m%"
                It enables the experimental and unsafe parsing of parameter decorators
                
                These decorators belong to an old proposal, and they are subject to change.
              "%
              | optional,
          },
      "definitions.JsonAssists" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the linter for JSON (and its super languages) files."
              | optional,
          },
      "definitions.JsonConfiguration" =
        {
            assists
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JsonAssists", { _ | Dyn } ])
              | doc "Assists options"
              | optional,
            formatter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JsonFormatter", { _ | Dyn } ])
              | doc "Formatting options"
              | optional,
            linter
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JsonLinter", { _ | Dyn } ])
              | doc "Linting options"
              | optional,
            parser
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JsonParser", { _ | Dyn } ])
              | doc "Parsing options"
              | optional,
          },
      "definitions.JsonFormatter" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the formatter for JSON (and its super languages) files."
              | optional,
            indentSize
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation applied to JSON (and its super languages) files. Default to 2."
              | optional,
            indentStyle
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc "The indent style applied to JSON (and its super languages) files."
              | optional,
            indentWidth
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation applied to JSON (and its super languages) files. Default to 2."
              | optional,
            lineEnding
              | js2n.Nullable refs."definitions.LineEnding"
              | doc "The type of line ending applied to JSON (and its super languages) files."
              | optional,
            lineWidth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc "What's the max width of a line applied to JSON (and its super languages) files. Defaults to 80."
              | optional,
            trailingCommas
              | js2n.Nullable refs."definitions.TrailingCommas2"
              | doc "Print trailing commas wherever possible in multi-line comma-separated syntactic structures. Defaults to \"none\"."
              | optional,
          },
      "definitions.JsonLinter" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Control the linter for JSON (and its super languages) files."
              | optional,
          },
      "definitions.JsonParser" =
        {
            allowComments
              | js2n.Nullable Bool
              | doc "Allow parsing comments in `.json` files"
              | optional,
            allowTrailingCommas
              | js2n.Nullable Bool
              | doc "Allow parsing trailing commas in `.json` files"
              | optional,
          },
      "definitions.JsxRuntime" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'transparent |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'reactClassic |] ]
            ],
      "definitions.Kind" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'typeAlias,
                    'objectLiteralMethod,
                    'objectLiteralSetter,
                    'objectLiteralGetter,
                    'objectLiteralProperty,
                    'classMethod,
                    'classSetter,
                    'classGetter,
                    'importAlias,
                    'exportAlias,
                    'indexParameter,
                    'catchParameter,
                    'var,
                    'using,
                    '"let",
                    'const,
                    'variable,
                    'exportNamespace,
                    'importNamespace,
                    'enumMember,
                    'interface,
                    'enum,
                    'class
                  |]
                ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'any |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'typeLike |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'function |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'namespaceLike |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'namespace |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'functionParameter |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'typeParameter |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'classMember |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'classProperty |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'objectLiteralMember |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'typeMember |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'typeGetter |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'typeProperty |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'typeSetter |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'typeMethod |] ]
            ],
      "definitions.LineEnding" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'lf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'crlf |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'cr |] ]
            ],
      "definitions.LineWidth" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 0 ],
      "definitions.LinterConfiguration" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "if `false`, it disables the feature and the linter won't be executed. `true` by default"
              | optional,
            ignore
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will ignore files/folders that will match these patterns."
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will include files/folders that will match these patterns."
              | optional,
            rules
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Rules", { _ | Dyn } ])
              | doc "List of rules"
              | optional,
          },
      "definitions.Modifiers" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.RestrictedModifier", String ]
              )
            ],
      "definitions.NamingConventionConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithNamingConventionOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.NamingConventionOptions" =
        {
            conventions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Convention", { _ | Dyn } ]
              )
              | doc "Custom conventions."
              | optional,
            enumMemberCase
              | refs."definitions.Format"
              | String
              | doc "Allowed cases for _TypeScript_ `enum` member names."
              | optional,
            requireAscii
              | Bool
              | doc "If `false`, then non-ASCII characters are allowed."
              | optional,
            strictCase
              | Bool
              | doc "If `false`, then consecutive uppercase are allowed in _camel_ and _pascal_ cases. This does not affect other [Case]."
              | optional,
          },
      "definitions.NoConsoleConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithNoConsoleOptions", { _ | Dyn } ]
            ],
      "definitions.NoConsoleOptions" =
        { allow | Array String | doc "Allowed calls on the console object.", },
      "definitions.NoDoubleEqualsConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithNoDoubleEqualsOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.NoDoubleEqualsOptions" =
        {
            ignoreNull
              | Bool
              | doc m%"
                If `true`, an exception is made when comparing with `null`, as it's often relied on to check both for `null` or `undefined`.
                
                If `false`, no such exception will be made.
              "%
              | optional,
          },
      "definitions.NoLabelWithoutControlConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithNoLabelWithoutControlOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.NoLabelWithoutControlOptions" =
        {
            inputComponents
              | Array String
              | doc "Array of component names that should be considered the same as an `input` element."
              | optional,
            labelAttributes
              | Array String
              | doc "Array of attributes that should be treated as the `label` accessible text content."
              | optional,
            labelComponents
              | Array String
              | doc "Array of component names that should be considered the same as a `label` element."
              | optional,
          },
      "definitions.NoRestrictedTypesConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithNoRestrictedTypesOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.NoRestrictedTypesOptions" =
        { types | { _ | refs."definitions.CustomRestrictedType" } | optional, },
      "definitions.NoSecretsConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithNoSecretsOptions", { _ | Dyn } ]
            ],
      "definitions.NoSecretsOptions" =
        {
            entropyThreshold
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "Set entropy threshold (default is 41)."
              | optional,
          },
      "definitions.Nursery" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noCommonJs
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow use of CommonJs module system in favor of ESM style imports."
              | optional,
            noDescendingSpecificity
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow a lower specificity selector from coming after a higher specificity selector."
              | optional,
            noDocumentCookie
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow direct assignments to document.cookie."
              | optional,
            noDocumentImportInPage
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevents importing next/document outside of pages/_document.jsx in Next.js projects."
              | optional,
            noDuplicateCustomProperties
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate custom properties within declaration blocks."
              | optional,
            noDuplicateElseIf
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate conditions in if-else-if chains"
              | optional,
            noDuplicateProperties
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate properties within declaration blocks."
              | optional,
            noDuplicatedFields
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "No duplicated fields in GraphQL operations."
              | optional,
            noDynamicNamespaceImportAccess
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow accessing namespace imports dynamically."
              | optional,
            noEnum
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow TypeScript enum."
              | optional,
            noExportedImports
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow exporting an imported variable."
              | optional,
            noHeadElement
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevent usage of \\<head> element in a Next.js project."
              | optional,
            noHeadImportInDocument
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevent using the next/head module in pages/_document.js on Next.js projects."
              | optional,
            noImgElement
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevent usage of \\<img> element in a Next.js project."
              | optional,
            noIrregularWhitespace
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallows the use of irregular whitespace characters."
              | optional,
            noMissingVarFunction
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow missing var function for css variables."
              | optional,
            noNestedTernary
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow nested ternary expressions."
              | optional,
            noOctalEscape
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow octal escape sequences in string literals"
              | optional,
            noProcessEnv
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of process.env."
              | optional,
            noRestrictedImports
              | js2n.Nullable refs."definitions.RestrictedImportsConfiguration"
              | doc "Disallow specified modules when loaded by import or require."
              | optional,
            noRestrictedTypes
              | js2n.Nullable refs."definitions.NoRestrictedTypesConfiguration"
              | doc "Disallow user defined types."
              | optional,
            noSecrets
              | js2n.Nullable refs."definitions.NoSecretsConfiguration"
              | doc "Disallow usage of sensitive data such as API keys and tokens."
              | optional,
            noStaticElementInteractions
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that static, visible elements (such as \\<div>) that have click handlers use the valid role attribute."
              | optional,
            noSubstr
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of String.slice() over String.substr() and String.substring()."
              | optional,
            noTemplateCurlyInString
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow template literal placeholder syntax in regular strings."
              | optional,
            noUnknownPseudoClass
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown pseudo-class selectors."
              | optional,
            noUnknownPseudoElement
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown pseudo-element selectors."
              | optional,
            noUnknownTypeSelector
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unknown type selectors."
              | optional,
            noUselessEscapeInRegex
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow unnecessary escape sequence in regular expression literals."
              | optional,
            noUselessStringRaw
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unnecessary String.raw function in template string literals without any escape sequence."
              | optional,
            noValueAtRule
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow use of @value rule in css modules."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useAdjacentOverloadSignatures
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of overload signatures that are not next to each other."
              | optional,
            useAriaPropsSupportedByRole
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce that ARIA properties are valid for the roles that are supported by the element."
              | optional,
            useAtIndex
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use at() instead of integer index access."
              | optional,
            useCollapsedIf
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce using single if instead of nested if clauses."
              | optional,
            useComponentExportOnlyModules
              | js2n.Nullable
                refs."definitions.UseComponentExportOnlyModulesConfiguration"
              | doc "Enforce declaring components only within modules that export React Components exclusively."
              | optional,
            useConsistentCurlyBraces
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "This rule enforces consistent use of curly braces inside JSX attributes and JSX children."
              | optional,
            useConsistentMemberAccessibility
              | js2n.Nullable
                refs."definitions.ConsistentMemberAccessibilityConfiguration"
              | doc "Require consistent accessibility modifiers on class properties and methods."
              | optional,
            useDeprecatedReason
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require specifying the reason argument when using @deprecated directive"
              | optional,
            useExplicitType
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require explicit return types on functions and class methods."
              | optional,
            useGoogleFontDisplay
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforces the use of a recommended display strategy with Google Fonts."
              | optional,
            useGuardForIn
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require for-in loops to include an if statement."
              | optional,
            useImportRestrictions
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallows package private imports."
              | optional,
            useSortedClasses
              | js2n.Nullable
                refs."definitions.UtilityClassSortingConfiguration"
              | doc "Enforce the sorting of CSS utility classes."
              | optional,
            useStrictMode
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of the directive \"use strict\" in script files."
              | optional,
            useTrimStartEnd
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of String.trimStart() and String.trimEnd() over String.trimLeft() and String.trimRight()."
              | optional,
            useValidAutocomplete
              | js2n.Nullable
                refs."definitions.UseValidAutocompleteConfiguration"
              | doc "Use valid values for the autocomplete attribute on input elements."
              | optional,
          },
      "definitions.OrganizeImports" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "Enables the organization of imports"
              | optional,
            ignore
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will ignore files/folders that will match these patterns."
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will include files/folders that will match these patterns."
              | optional,
          },
      "definitions.OverrideFormatterConfiguration" =
        {
            attributePosition
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.AttributePosition", String ])
              | doc "The attribute position style."
              | optional,
            bracketSpacing
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.BracketSpacing", Bool ])
              | doc "Whether to insert spaces around brackets in object literals. Defaults to true."
              | optional,
            enabled | js2n.Nullable Bool | optional,
            formatWithErrors
              | js2n.Nullable Bool
              | doc "Stores whether formatting should be allowed to proceed if a given file has syntax errors"
              | optional,
            indentSize
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation, 2 by default (deprecated, use `indent-width`)"
              | optional,
            indentStyle
              | js2n.Nullable refs."definitions.IndentStyle"
              | doc "The indent style."
              | optional,
            indentWidth
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.IndentWidth", Number ])
              | doc "The size of the indentation, 2 by default"
              | optional,
            lineEnding
              | js2n.Nullable refs."definitions.LineEnding"
              | doc "The type of line ending."
              | optional,
            lineWidth
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.LineWidth", Number ])
              | doc "What's the max width of a line. Defaults to 80."
              | optional,
          },
      "definitions.OverrideLinterConfiguration" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "if `false`, it disables the feature and the linter won't be executed. `true` by default"
              | optional,
            rules
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Rules", { _ | Dyn } ])
              | doc "List of rules"
              | optional,
          },
      "definitions.OverrideOrganizeImportsConfiguration" =
        {
            enabled
              | js2n.Nullable Bool
              | doc "if `false`, it disables the feature and the linter won't be executed. `true` by default"
              | optional,
          },
      "definitions.OverridePattern" =
        {
            css
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CssConfiguration", { _ | Dyn } ])
              | doc "Specific configuration for the Css language"
              | optional,
            formatter
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.OverrideFormatterConfiguration",
                    { _ | Dyn }
                  ])
              | doc "Specific configuration for the Json language"
              | optional,
            graphql
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.GraphqlConfiguration", { _ | Dyn } ])
              | doc "Specific configuration for the Graphql language"
              | optional,
            ignore
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will ignore files/folders that will match these patterns."
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.StringSet", Array Dyn ])
              | doc "A list of Unix shell style patterns. The formatter will include files/folders that will match these patterns."
              | optional,
            javascript
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JavascriptConfiguration", { _ | Dyn } ])
              | doc "Specific configuration for the JavaScript language"
              | optional,
            json
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.JsonConfiguration", { _ | Dyn } ])
              | doc "Specific configuration for the Json language"
              | optional,
            linter
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.OverrideLinterConfiguration",
                    { _ | Dyn }
                  ])
              | doc "Specific configuration for the Json language"
              | optional,
            organizeImports
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.OverrideOrganizeImportsConfiguration",
                    { _ | Dyn }
                  ])
              | doc "Specific configuration for the Json language"
              | optional,
          },
      "definitions.Overrides" =
        Array (
            std.contract.Sequence
              [ refs."definitions.OverridePattern", { _ | Dyn } ]
          ),
      "definitions.Performance" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noAccumulatingSpread
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of spread (...) syntax on accumulators."
              | optional,
            noBarrelFile
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of barrel file."
              | optional,
            noDelete
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of the delete operator."
              | optional,
            noReExportAll
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Avoid re-export all."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useTopLevelRegex
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require regex literals to be declared at the top level."
              | optional,
          },
      "definitions.QuoteProperties" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'preserve, 'asNeeded |] ],
      "definitions.QuoteStyle" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'single, 'double |] ],
      "definitions.Regex" = String,
      "definitions.RestrictedGlobalsConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithRestrictedGlobalsOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.RestrictedGlobalsOptions" =
        {
            deniedGlobals
              | Array String
              | doc "A list of names that should trigger the rule"
              | optional,
          },
      "definitions.RestrictedImportsConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithRestrictedImportsOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.RestrictedImportsOptions" =
        {
            paths
              | { _ | String }
              | doc "A list of names that should trigger the rule"
              | optional,
          },
      "definitions.RestrictedModifier" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'static, 'readonly, 'protected, 'private, 'abstract |]
            ],
      "definitions.RuleAssistConfiguration" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'off, 'on |] ],
      "definitions.RuleConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithNoOptions", { _ | Dyn } ]
            ],
      "definitions.RuleFixConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithFixNoOptions", { _ | Dyn } ]
            ],
      "definitions.RulePlainConfiguration" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'off, 'info, 'error, 'warn |] ],
      "definitions.RuleWithAllowDomainOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.AllowDomainOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithComplexityOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.ComplexityOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithConsistentArrayTypeOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.ConsistentArrayTypeOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithConsistentMemberAccessibilityOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.ConsistentMemberAccessibilityOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithDeprecatedHooksOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.DeprecatedHooksOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithFilenamingConventionOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.FilenamingConventionOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithFixNoOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
          },
      "definitions.RuleWithNamingConventionOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.NamingConventionOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithNoConsoleOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.NoConsoleOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithNoDoubleEqualsOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.NoDoubleEqualsOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithNoLabelWithoutControlOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.NoLabelWithoutControlOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithNoOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
          },
      "definitions.RuleWithNoRestrictedTypesOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.NoRestrictedTypesOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithNoSecretsOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.NoSecretsOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithRestrictedGlobalsOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.RestrictedGlobalsOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithRestrictedImportsOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.RestrictedImportsOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithUseComponentExportOnlyModulesOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.UseComponentExportOnlyModulesOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithUseExhaustiveDependenciesOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.UseExhaustiveDependenciesOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithUseImportExtensionsOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.UseImportExtensionsOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithUseValidAutocompleteOptions" =
        {
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.UseValidAutocompleteOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithUtilityClassSortingOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.UtilityClassSortingOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.RuleWithValidAriaRoleOptions" =
        {
            fix
              | js2n.Nullable refs."definitions.FixKind"
              | doc "The kind of the code actions emitted by the rule"
              | optional,
            level
              | refs."definitions.RulePlainConfiguration"
              | String
              | doc "The severity of the emitted diagnostics by the rule",
            options
              | refs."definitions.ValidAriaRoleOptions"
              | { _ | Dyn }
              | doc "Rule's options",
          },
      "definitions.Rules" =
        {
            a11y
              | js2n.Nullable
                (std.contract.Sequence [ refs."definitions.A11y", { _ | Dyn } ])
              | optional,
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules. The rules that belong to `nursery` won't be enabled."
              | optional,
            complexity
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Complexity", { _ | Dyn } ])
              | optional,
            correctness
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Correctness", { _ | Dyn } ])
              | optional,
            nursery
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Nursery", { _ | Dyn } ])
              | optional,
            performance
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Performance", { _ | Dyn } ])
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the lint rules recommended by Biome. `true` by default."
              | optional,
            security
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Security", { _ | Dyn } ])
              | optional,
            style
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Style", { _ | Dyn } ])
              | optional,
            suspicious
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.Suspicious", { _ | Dyn } ])
              | optional,
          },
      "definitions.Scope" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'global, 'any |] ],
      "definitions.Security" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noDangerouslySetInnerHtml
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevent the usage of dangerous JSX props"
              | optional,
            noDangerouslySetInnerHtmlWithChildren
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Report when a DOM element or a component uses both children and dangerouslySetInnerHTML prop."
              | optional,
            noGlobalEval
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of global eval()."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
          },
      "definitions.Selector" =
        {
            kind | refs."definitions.Kind" | doc "Declaration kind" | optional,
            modifiers
              | refs."definitions.Modifiers"
              | Array Dyn
              | doc "Modifiers used on the declaration"
              | optional,
            scope
              | refs."definitions.Scope"
              | String
              | doc "Scope of the declaration"
              | optional,
          },
      "definitions.Semicolons" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'asNeeded, 'always |] ],
      "definitions.Source" =
        {
            sortJsxProps
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.RuleAssistConfiguration", String ])
              | doc "Enforce props sorting in JSX elements."
              | optional,
            useSortedKeys
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.RuleAssistConfiguration", String ])
              | doc "Sorts the keys of a JSON object in natural order"
              | optional,
          },
      "definitions.StableHookResult" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  Array (
                    std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 255,
                        js2n.number.Minimum 0
                      ]
                  )
                ]
            ],
      "definitions.StringSet" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.Style" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noArguments
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of arguments."
              | optional,
            noCommaOperator
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow comma operator."
              | optional,
            noDefaultExport
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow default exports."
              | optional,
            noDoneCallback
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow using a callback in asynchronous tests and hooks."
              | optional,
            noImplicitBoolean
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow implicit true values on JSX boolean attributes"
              | optional,
            noInferrableTypes
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow type annotations for variables, parameters, and class properties initialized with a literal expression."
              | optional,
            noNamespace
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of TypeScript's namespaces."
              | optional,
            noNamespaceImport
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of namespace imports."
              | optional,
            noNegationElse
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow negation in the condition of an if statement if it has an else clause."
              | optional,
            noNonNullAssertion
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow non-null assertions using the ! postfix operator."
              | optional,
            noParameterAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow reassigning function parameters."
              | optional,
            noParameterProperties
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the use of parameter properties in class constructors."
              | optional,
            noRestrictedGlobals
              | js2n.Nullable refs."definitions.RestrictedGlobalsConfiguration"
              | doc "This rule allows you to specify global variable names that you don’t want to use in your application."
              | optional,
            noShoutyConstants
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of constants which its value is the upper-case version of its name."
              | optional,
            noUnusedTemplateLiteral
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow template literals if interpolation and special-character handling are not needed"
              | optional,
            noUselessElse
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow else block when the if block breaks early."
              | optional,
            noVar
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of var"
              | optional,
            noYodaExpression
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of yoda expressions."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useAsConstAssertion
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of as const over literal type and type annotation."
              | optional,
            useBlockStatements
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Requires following curly brace conventions."
              | optional,
            useCollapsedElseIf
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce using else if instead of nested if in else clauses."
              | optional,
            useConsistentArrayType
              | js2n.Nullable
                refs."definitions.ConsistentArrayTypeConfiguration"
              | doc "Require consistently using either T\\[] or Array\\<T>"
              | optional,
            useConsistentBuiltinInstantiation
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of new for all builtins, except String, Number and Boolean."
              | optional,
            useConst
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Require const declarations for variables that are only assigned once."
              | optional,
            useDefaultParameterLast
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce default function parameters and optional function parameters to be last."
              | optional,
            useDefaultSwitchClause
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require the default clause in switch statements."
              | optional,
            useEnumInitializers
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Require that each enum member value be explicitly initialized."
              | optional,
            useExplicitLengthCheck
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce explicitly comparing the length, size, byteLength or byteOffset property of a value."
              | optional,
            useExponentiationOperator
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of Math.pow in favor of the ** operator."
              | optional,
            useExportType
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Promotes the use of export type for types."
              | optional,
            useFilenamingConvention
              | js2n.Nullable
                refs."definitions.FilenamingConventionConfiguration"
              | doc "Enforce naming conventions for JavaScript and TypeScript filenames."
              | optional,
            useForOf
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "This rule recommends a for-of loop when in a for loop, the index used to extract an item from the iterated array."
              | optional,
            useFragmentSyntax
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "This rule enforces the use of \\<>...\\</> over \\<Fragment>...\\</Fragment>."
              | optional,
            useImportType
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Promotes the use of import type for types."
              | optional,
            useLiteralEnumMembers
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Require all enum members to be literal values."
              | optional,
            useNamingConvention
              | js2n.Nullable refs."definitions.NamingConventionConfiguration"
              | doc "Enforce naming conventions for everything across a codebase."
              | optional,
            useNodeAssertStrict
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Promotes the usage of node:assert/strict over node:assert."
              | optional,
            useNodejsImportProtocol
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforces using the node: protocol for Node.js builtin modules."
              | optional,
            useNumberNamespace
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use the Number properties instead of global ones."
              | optional,
            useNumericLiterals
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow parseInt() and Number.parseInt() in favor of binary, octal, and hexadecimal literals"
              | optional,
            useSelfClosingElements
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevent extra closing tags for components without children"
              | optional,
            useShorthandArrayType
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "When expressing array types, this rule promotes the usage of T\\[] shorthand instead of Array\\<T>."
              | optional,
            useShorthandAssign
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Require assignment operator shorthand where possible."
              | optional,
            useShorthandFunctionType
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce using function types instead of object type with call signatures."
              | optional,
            useSingleCaseStatement
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforces switch clauses have a single statement, emits a quick fix wrapping the statements in a block."
              | optional,
            useSingleVarDeclarator
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow multiple variable declarations in the same variable statement"
              | optional,
            useTemplate
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prefer template literals over string concatenation."
              | optional,
            useThrowNewError
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Require new when throwing an error."
              | optional,
            useThrowOnlyError
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow throwing non-Error values."
              | optional,
            useWhile
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce the use of while loops instead of for loops when the initializer and update expressions are not needed."
              | optional,
          },
      "definitions.SuggestedExtensionMapping" =
        {
            component
              | String
              | doc "Extension that should be used for component file imports"
              | optional,
            module
              | String
              | doc "Extension that should be used for module imports"
              | optional,
          },
      "definitions.Suspicious" =
        {
            all
              | js2n.Nullable Bool
              | doc "It enables ALL rules for this group."
              | optional,
            noApproximativeNumericConstant
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use standard constants instead of approximated literals."
              | optional,
            noArrayIndexKey
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Discourage the usage of Array index in keys."
              | optional,
            noAssignInExpressions
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow assignments in expressions."
              | optional,
            noAsyncPromiseExecutor
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallows using an async function as a Promise executor."
              | optional,
            noCatchAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow reassigning exceptions in catch clauses."
              | optional,
            noClassAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow reassigning class members."
              | optional,
            noCommentText
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevent comments from being inserted as text nodes"
              | optional,
            noCompareNegZero
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow comparing against -0"
              | optional,
            noConfusingLabels
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow labeled statements that are not loops."
              | optional,
            noConfusingVoidType
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow void type outside of generic or return types."
              | optional,
            noConsole
              | js2n.Nullable refs."definitions.NoConsoleConfiguration"
              | doc "Disallow the use of console."
              | optional,
            noConsoleLog
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of console.log"
              | optional,
            noConstEnum
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow TypeScript const enum"
              | optional,
            noControlCharactersInRegex
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevents from having control characters and some escape sequences that match control characters in regular expressions."
              | optional,
            noDebugger
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the use of debugger"
              | optional,
            noDoubleEquals
              | js2n.Nullable refs."definitions.NoDoubleEqualsConfiguration"
              | doc "Require the use of === and !==."
              | optional,
            noDuplicateAtImportRules
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate @import rules."
              | optional,
            noDuplicateCase
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate case labels."
              | optional,
            noDuplicateClassMembers
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate class members."
              | optional,
            noDuplicateFontNames
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate names within font families."
              | optional,
            noDuplicateJsxProps
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Prevents JSX properties to be assigned multiple times."
              | optional,
            noDuplicateObjectKeys
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow two keys with the same name inside objects."
              | optional,
            noDuplicateParameters
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate function parameter name."
              | optional,
            noDuplicateSelectorsKeyframeBlock
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow duplicate selectors within keyframe blocks."
              | optional,
            noDuplicateTestHooks
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "A describe block should not contain duplicate hooks."
              | optional,
            noEmptyBlock
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow CSS empty blocks."
              | optional,
            noEmptyBlockStatements
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow empty block statements and static blocks."
              | optional,
            noEmptyInterface
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow the declaration of empty interfaces."
              | optional,
            noEvolvingTypes
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow variables from evolving into any type through reassignments."
              | optional,
            noExplicitAny
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow the any type usage."
              | optional,
            noExportsInTest
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow using export or module.exports in files containing tests"
              | optional,
            noExtraNonNullAssertion
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevents the wrong usage of the non-null assertion operator (!) in TypeScript files."
              | optional,
            noFallthroughSwitchClause
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow fallthrough of switch clauses."
              | optional,
            noFocusedTests
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow focused tests."
              | optional,
            noFunctionAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow reassigning function declarations."
              | optional,
            noGlobalAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow assignments to native objects and read-only global variables."
              | optional,
            noGlobalIsFinite
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use Number.isFinite instead of global isFinite."
              | optional,
            noGlobalIsNan
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use Number.isNaN instead of global isNaN."
              | optional,
            noImplicitAnyLet
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow use of implicit any type on variable declarations."
              | optional,
            noImportAssign
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow assigning to imported bindings"
              | optional,
            noImportantInKeyframe
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow invalid !important within keyframe declarations"
              | optional,
            noLabelVar
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow labels that share a name with a variable"
              | optional,
            noMisleadingCharacterClass
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow characters made with multiple code points in character class syntax."
              | optional,
            noMisleadingInstantiator
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce proper usage of new and constructor."
              | optional,
            noMisplacedAssertion
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Checks that the assertion function, for example expect, is placed inside an it() function call."
              | optional,
            noMisrefactoredShorthandAssign
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow shorthand assign when variable appears on both sides."
              | optional,
            noPrototypeBuiltins
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow direct use of Object.prototype builtins."
              | optional,
            noReactSpecificProps
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevents React-specific JSX properties from being used."
              | optional,
            noRedeclare
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow variable, function, class, and type redeclarations in the same scope."
              | optional,
            noRedundantUseStrict
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Prevents from having redundant \"use strict\"."
              | optional,
            noSelfCompare
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow comparisons where both sides are exactly the same."
              | optional,
            noShadowRestrictedNames
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow identifiers from shadowing restricted names."
              | optional,
            noShorthandPropertyOverrides
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow shorthand properties that override related longhand properties."
              | optional,
            noSkippedTests
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow disabled tests."
              | optional,
            noSparseArray
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow sparse arrays"
              | optional,
            noSuspiciousSemicolonInJsx
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "It detects possible \"wrong\" semicolons inside JSX elements."
              | optional,
            noThenProperty
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow then property."
              | optional,
            noUnsafeDeclarationMerging
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Disallow unsafe declaration merging between interfaces and classes."
              | optional,
            noUnsafeNegation
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Disallow using unsafe negation."
              | optional,
            recommended
              | js2n.Nullable Bool
              | doc "It enables the recommended rules for this group"
              | optional,
            useAwait
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Ensure async functions utilize await."
              | optional,
            useDefaultSwitchClauseLast
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce default clauses in switch statements to be last"
              | optional,
            useErrorMessage
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce passing a message value when creating a built-in error."
              | optional,
            useGetterReturn
              | js2n.Nullable refs."definitions.RuleConfiguration"
              | doc "Enforce get methods to always return a value."
              | optional,
            useIsArray
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Use Array.isArray() instead of instanceof Array."
              | optional,
            useNamespaceKeyword
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Require using the namespace keyword over the module keyword to declare TypeScript namespaces."
              | optional,
            useNumberToFixedDigitsArgument
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "Enforce using the digits argument with Number#toFixed()."
              | optional,
            useValidTypeof
              | js2n.Nullable refs."definitions.RuleFixConfiguration"
              | doc "This rule verifies the result of typeof $expr unary expressions is being compared to valid values, either string literals containing valid type names or other typeof expressions"
              | optional,
          },
      "definitions.TrailingCommas" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'es5 |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ]
            ],
      "definitions.TrailingCommas2" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
            ],
      "definitions.UseComponentExportOnlyModulesConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithUseComponentExportOnlyModulesOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.UseComponentExportOnlyModulesOptions" =
        {
            allowConstantExport
              | Bool
              | doc "Allows the export of constants. This option is for environments that support it, such as [Vite](https://vitejs.dev/)"
              | optional,
            allowExportNames
              | Array String
              | doc "A list of names that can be additionally exported from the module This option is for exports that do not hinder [React Fast Refresh](https://github.com/facebook/react/tree/main/packages/react-refresh), such as [`meta` in Remix](https://remix.run/docs/en/main/route/meta)"
              | optional,
          },
      "definitions.UseExhaustiveDependenciesConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithUseExhaustiveDependenciesOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.UseExhaustiveDependenciesOptions" =
        {
            hooks
              | Array (
                std.contract.Sequence [ refs."definitions.Hook", { _ | Dyn } ]
              )
              | doc "List of hooks of which the dependencies should be validated."
              | optional,
            reportMissingDependenciesArray
              | Bool
              | doc "Whether to report an error when a hook has no dependencies array."
              | optional,
            reportUnnecessaryDependencies
              | Bool
              | doc "Whether to report an error when a dependency is listed in the dependencies array but isn't used. Defaults to true."
              | optional,
          },
      "definitions.UseImportExtensionsConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithUseImportExtensionsOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.UseImportExtensionsOptions" =
        {
            suggestedExtensions
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.SuggestedExtensionMapping", { _ | Dyn } ]
              }
              | doc "A map of custom import extension mappings, where the key is the inspected file extension, and the value is a pair of `module` extension and `component` import extension"
              | optional,
          },
      "definitions.UseValidAutocompleteConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithUseValidAutocompleteOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.UseValidAutocompleteOptions" =
        {
            inputComponents
              | Array String
              | doc "`input` like custom components that should be checked."
              | optional,
          },
      "definitions.UtilityClassSortingConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [
                  refs."definitions.RuleWithUtilityClassSortingOptions",
                  { _ | Dyn }
                ]
            ],
      "definitions.UtilityClassSortingOptions" =
        {
            attributes
              | js2n.Nullable (Array String)
              | doc "Additional attributes that will be sorted."
              | optional,
            functions
              | js2n.Nullable (Array String)
              | doc "Names of the functions or tagged templates that will be sorted."
              | optional,
          },
      "definitions.ValidAriaRoleConfiguration" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.RulePlainConfiguration", String ],
              std.contract.Sequence
                [ refs."definitions.RuleWithValidAriaRoleOptions", { _ | Dyn } ]
            ],
      "definitions.ValidAriaRoleOptions" =
        {
            allowInvalidRoles | Array String | optional,
            ignoreNonDom | Bool | optional,
          },
      "definitions.VcsClientKind" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'git |] ],
      "definitions.VcsConfiguration" =
        {
            clientKind
              | js2n.Nullable refs."definitions.VcsClientKind"
              | doc "The kind of client."
              | optional,
            defaultBranch
              | js2n.Nullable String
              | doc "The main branch of the project"
              | optional,
            enabled
              | js2n.Nullable Bool
              | doc "Whether Biome should integrate itself with the VCS client"
              | optional,
            root
              | js2n.Nullable String
              | doc m%"
                The folder where Biome should check for VCS files. By default, Biome will use the same folder where `biome.json` was found.
                
                If Biome can't find the configuration, it will attempt to use the current working directory. If no current working directory can't be found, Biome won't use the VCS integration, and a diagnostic will be emitted
              "%
              | optional,
            useIgnoreFile
              | js2n.Nullable Bool
              | doc "Whether Biome should use the VCS ignore file. When [true], Biome will ignore the files specified in the ignore file."
              | optional,
          },
    }
    in
  {
      "$schema"
        | js2n.Nullable String
        | doc "A field for the [JSON schema](https://json-schema.org/) specification"
        | optional,
      assists
        | js2n.Nullable refs."definitions.AssistsConfiguration"
        | doc "Specific configuration for assists"
        | optional,
      css
        | js2n.Nullable refs."definitions.CssConfiguration"
        | doc "Specific configuration for the Css language"
        | optional,
      extends
        | js2n.Nullable
          (std.contract.Sequence [ refs."definitions.StringSet", Array Dyn ])
        | doc "A list of paths to other JSON files, used to extends the current configuration."
        | optional,
      files
        | js2n.Nullable refs."definitions.FilesConfiguration"
        | doc "The configuration of the filesystem"
        | optional,
      formatter
        | js2n.Nullable refs."definitions.FormatterConfiguration"
        | doc "The configuration of the formatter"
        | optional,
      graphql
        | js2n.Nullable refs."definitions.GraphqlConfiguration"
        | doc "Specific configuration for the GraphQL language"
        | optional,
      javascript
        | js2n.Nullable refs."definitions.JavascriptConfiguration"
        | doc "Specific configuration for the JavaScript language"
        | optional,
      json
        | js2n.Nullable refs."definitions.JsonConfiguration"
        | doc "Specific configuration for the Json language"
        | optional,
      linter
        | js2n.Nullable refs."definitions.LinterConfiguration"
        | doc "The configuration for the linter"
        | optional,
      organizeImports
        | js2n.Nullable refs."definitions.OrganizeImports"
        | doc "The configuration of the import sorting"
        | optional,
      overrides
        | js2n.Nullable refs."definitions.Overrides"
        | doc "A list of granular patterns that should be applied only to a sub set of files"
        | optional,
      vcs
        | js2n.Nullable refs."definitions.VcsConfiguration"
        | doc "The configuration of the VCS integration"
        | optional,
    }