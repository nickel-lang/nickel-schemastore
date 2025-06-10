# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.analyzeUnannotatedFunctions" = Bool,
      "definitions.deprecateTypingAliases" = Bool,
      "definitions.diagnostic" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'error, 'warning, 'information, 'none |]
                ]
            ],
      "definitions.disableBytesTypePromotions" = Bool,
      "definitions.enableExperimentalFeatures" = Bool,
      "definitions.enableReachabilityAnalysis" = Bool,
      "definitions.enableTypeIgnoreComments" = Bool,
      "definitions.extraPaths" = Array (js2n.string.Matches "^(.*)$"),
      "definitions.pythonPlatform" =
        js2n.string.Matches "^(Linux|Windows|Darwin|All)$",
      "definitions.pythonVersion" = js2n.string.Matches "^3\\.[0-9]+$",
      "definitions.reportAbstractUsage" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportArgumentType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportAssertAlwaysTrue" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportAssertTypeFailure" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportAssignmentType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportAttributeAccessIssue" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportCallInDefaultInitializer" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportCallIssue" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportConstantRedefinition" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportDeprecated" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportDuplicateImport" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportFunctionMemberAccess" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportGeneralTypeIssues" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportImplicitOverride" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportImplicitStringConcatenation" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportImportCycles" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportIncompatibleMethodOverride" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportIncompatibleVariableOverride" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportIncompleteStub" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInconsistentConstructor" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInconsistentOverload" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportIndexIssue" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInvalidStringEscapeSequence" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInvalidStubStatement" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInvalidTypeArguments" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInvalidTypeForm" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportInvalidTypeVarUse" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMatchNotExhaustive" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMissingImports" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMissingModuleSource" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMissingParameterType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMissingSuperCall" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMissingTypeArgument" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportMissingTypeStubs" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportNoOverloadImplementation" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOperatorIssue" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOptionalCall" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOptionalContextManager" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOptionalIterable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOptionalMemberAccess" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOptionalOperand" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOptionalSubscript" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportOverlappingOverload" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportPossiblyUnboundVariable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportPrivateImportUsage" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportPrivateUsage" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportPropertyTypeMismatch" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportRedeclaration" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportReturnType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportSelfClsParameterName" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportShadowedImports" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportTypeCommentUsage" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportTypedDictNotRequiredAccess" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnboundVariable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUndefinedVariable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnhashable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUninitializedInstanceVariable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnknownArgumentType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnknownLambdaType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnknownMemberType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnknownParameterType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnknownVariableType" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnnecessaryCast" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnnecessaryComparison" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnnecessaryContains" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnnecessaryIsInstance" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnnecessaryTypeIgnoreComment" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnreachable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnsupportedDunderAll" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUntypedBaseClass" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUntypedClassDecorator" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUntypedFunctionDecorator" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUntypedNamedTuple" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedCallResult" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedClass" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedCoroutine" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedExcept" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedExpression" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedFunction" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedImport" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportUnusedVariable" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.reportWildcardImportFromLibrary" =
        std.contract.Sequence
            [
              refs."definitions.diagnostic",
              std.contract.any_of [ Bool, String ]
            ],
      "definitions.strictDictionaryInference" = Bool,
      "definitions.strictListInference" = Bool,
      "definitions.strictParameterNoneValue" = Bool,
      "definitions.strictSetInference" = Bool,
    }
    in
  {
      analyzeUnannotatedFunctions
        | refs."definitions.analyzeUnannotatedFunctions"
        | optional,
      defineConstant | { _ | std.contract.any_of [ Bool, String ] } | optional,
      deprecateTypingAliases
        | refs."definitions.deprecateTypingAliases"
        | optional,
      disableBytesTypePromotions
        | refs."definitions.disableBytesTypePromotions"
        | optional,
      enableExperimentalFeatures
        | refs."definitions.enableExperimentalFeatures"
        | optional,
      enableReachabilityAnalysis
        | refs."definitions.enableReachabilityAnalysis"
        | optional,
      enableTypeIgnoreComments
        | refs."definitions.enableTypeIgnoreComments"
        | optional,
      exclude | Array (js2n.string.Matches "^(.*)$") | optional,
      executionEnvironments
        | Array
          {
            analyzeUnannotatedFunctions
              | refs."definitions.analyzeUnannotatedFunctions"
              | optional,
            deprecateTypingAliases
              | refs."definitions.deprecateTypingAliases"
              | optional,
            disableBytesTypePromotions
              | refs."definitions.disableBytesTypePromotions"
              | optional,
            enableExperimentalFeatures
              | refs."definitions.enableExperimentalFeatures"
              | optional,
            enableReachabilityAnalysis
              | refs."definitions.enableReachabilityAnalysis"
              | optional,
            enableTypeIgnoreComments
              | refs."definitions.enableTypeIgnoreComments"
              | optional,
            extraPaths | refs."definitions.extraPaths" | optional,
            pythonPlatform | refs."definitions.pythonPlatform" | optional,
            pythonVersion | refs."definitions.pythonVersion" | optional,
            reportAbstractUsage
              | refs."definitions.reportAbstractUsage"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportArgumentType
              | refs."definitions.reportArgumentType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportAssertAlwaysTrue
              | refs."definitions.reportAssertAlwaysTrue"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportAssertTypeFailure
              | refs."definitions.reportAssertTypeFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportAssignmentType
              | refs."definitions.reportAssignmentType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportAttributeAccessIssue
              | refs."definitions.reportAttributeAccessIssue"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportCallInDefaultInitializer
              | refs."definitions.reportCallInDefaultInitializer"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportCallIssue
              | refs."definitions.reportCallIssue"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportConstantRedefinition
              | refs."definitions.reportConstantRedefinition"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportDeprecated
              | refs."definitions.reportDeprecated"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportDuplicateImport
              | refs."definitions.reportDuplicateImport"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportFunctionMemberAccess
              | refs."definitions.reportFunctionMemberAccess"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportGeneralTypeIssues
              | refs."definitions.reportGeneralTypeIssues"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportImplicitOverride
              | refs."definitions.reportImplicitOverride"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportImplicitStringConcatenation
              | refs."definitions.reportImplicitStringConcatenation"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportImportCycles
              | refs."definitions.reportImportCycles"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportIncompatibleMethodOverride
              | refs."definitions.reportIncompatibleMethodOverride"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportIncompatibleVariableOverride
              | refs."definitions.reportIncompatibleVariableOverride"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportIncompleteStub
              | refs."definitions.reportIncompleteStub"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInconsistentConstructor
              | refs."definitions.reportInconsistentConstructor"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInconsistentOverload
              | refs."definitions.reportInconsistentOverload"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportIndexIssue
              | refs."definitions.reportIndexIssue"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInvalidStringEscapeSequence
              | refs."definitions.reportInvalidStringEscapeSequence"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInvalidStubStatement
              | refs."definitions.reportInvalidStubStatement"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInvalidTypeArguments
              | refs."definitions.reportInvalidTypeArguments"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInvalidTypeForm
              | refs."definitions.reportInvalidTypeForm"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportInvalidTypeVarUse
              | refs."definitions.reportInvalidTypeVarUse"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMatchNotExhaustive
              | refs."definitions.reportMatchNotExhaustive"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMissingImports
              | refs."definitions.reportMissingImports"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMissingModuleSource
              | refs."definitions.reportMissingModuleSource"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMissingParameterType
              | refs."definitions.reportMissingParameterType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMissingSuperCall
              | refs."definitions.reportMissingSuperCall"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMissingTypeArgument
              | refs."definitions.reportMissingTypeArgument"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportMissingTypeStubs
              | refs."definitions.reportMissingTypeStubs"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportNoOverloadImplementation
              | refs."definitions.reportNoOverloadImplementation"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOperatorIssue
              | refs."definitions.reportOperatorIssue"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOptionalCall
              | refs."definitions.reportOptionalCall"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOptionalContextManager
              | refs."definitions.reportOptionalContextManager"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOptionalIterable
              | refs."definitions.reportOptionalIterable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOptionalMemberAccess
              | refs."definitions.reportOptionalMemberAccess"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOptionalOperand
              | refs."definitions.reportOptionalOperand"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOptionalSubscript
              | refs."definitions.reportOptionalSubscript"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportOverlappingOverload
              | refs."definitions.reportOverlappingOverload"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportPossiblyUnboundVariable
              | refs."definitions.reportPossiblyUnboundVariable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportPrivateImportUsage
              | refs."definitions.reportPrivateImportUsage"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportPrivateUsage
              | refs."definitions.reportPrivateUsage"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportPropertyTypeMismatch
              | refs."definitions.reportPropertyTypeMismatch"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportRedeclaration
              | refs."definitions.reportRedeclaration"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportReturnType
              | refs."definitions.reportReturnType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportSelfClsParameterName
              | refs."definitions.reportSelfClsParameterName"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportShadowedImports
              | refs."definitions.reportShadowedImports"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportTypeCommentUsage
              | refs."definitions.reportTypeCommentUsage"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportTypedDictNotRequiredAccess
              | refs."definitions.reportTypedDictNotRequiredAccess"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnboundVariable
              | refs."definitions.reportUnboundVariable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUndefinedVariable
              | refs."definitions.reportUndefinedVariable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnhashable
              | refs."definitions.reportUnhashable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUninitializedInstanceVariable
              | refs."definitions.reportUninitializedInstanceVariable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnknownArgumentType
              | refs."definitions.reportUnknownArgumentType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnknownLambdaType
              | refs."definitions.reportUnknownLambdaType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnknownMemberType
              | refs."definitions.reportUnknownMemberType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnknownParameterType
              | refs."definitions.reportUnknownParameterType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnknownVariableType
              | refs."definitions.reportUnknownVariableType"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnnecessaryCast
              | refs."definitions.reportUnnecessaryCast"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnnecessaryComparison
              | refs."definitions.reportUnnecessaryComparison"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnnecessaryContains
              | refs."definitions.reportUnnecessaryContains"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnnecessaryIsInstance
              | refs."definitions.reportUnnecessaryIsInstance"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnnecessaryTypeIgnoreComment
              | refs."definitions.reportUnnecessaryTypeIgnoreComment"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnreachable
              | refs."definitions.reportUnreachable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnsupportedDunderAll
              | refs."definitions.reportUnsupportedDunderAll"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUntypedBaseClass
              | refs."definitions.reportUntypedBaseClass"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUntypedClassDecorator
              | refs."definitions.reportUntypedClassDecorator"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUntypedFunctionDecorator
              | refs."definitions.reportUntypedFunctionDecorator"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUntypedNamedTuple
              | refs."definitions.reportUntypedNamedTuple"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedCallResult
              | refs."definitions.reportUnusedCallResult"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedClass
              | refs."definitions.reportUnusedClass"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedCoroutine
              | refs."definitions.reportUnusedCoroutine"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedExcept
              | refs."definitions.reportUnusedExcept"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedExpression
              | refs."definitions.reportUnusedExpression"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedFunction
              | refs."definitions.reportUnusedFunction"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedImport
              | refs."definitions.reportUnusedImport"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportUnusedVariable
              | refs."definitions.reportUnusedVariable"
              | std.contract.any_of [ Bool, String ]
              | optional,
            reportWildcardImportFromLibrary
              | refs."definitions.reportWildcardImportFromLibrary"
              | std.contract.any_of [ Bool, String ]
              | optional,
            root | js2n.string.Matches "^(.*)$",
            strictDictionaryInference
              | refs."definitions.strictDictionaryInference"
              | optional,
            strictListInference
              | refs."definitions.strictListInference"
              | optional,
            strictParameterNoneValue
              | refs."definitions.strictParameterNoneValue"
              | optional,
            strictSetInference
              | refs."definitions.strictSetInference"
              | optional,
            ..
          }
        | optional,
      extends | js2n.string.Matches "^(.*)$" | optional,
      extraPaths | refs."definitions.extraPaths" | optional,
      ignore | Array (js2n.string.Matches "^(.*)$") | optional,
      include | Array (js2n.string.Matches "^(.*)$") | optional,
      pythonPlatform | refs."definitions.pythonPlatform" | optional,
      pythonVersion | refs."definitions.pythonVersion" | optional,
      reportAbstractUsage
        | refs."definitions.reportAbstractUsage"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportArgumentType
        | refs."definitions.reportArgumentType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportAssertAlwaysTrue
        | refs."definitions.reportAssertAlwaysTrue"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportAssertTypeFailure
        | refs."definitions.reportAssertTypeFailure"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportAssignmentType
        | refs."definitions.reportAssignmentType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportAttributeAccessIssue
        | refs."definitions.reportAttributeAccessIssue"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportCallInDefaultInitializer
        | refs."definitions.reportCallInDefaultInitializer"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportCallIssue
        | refs."definitions.reportCallIssue"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportConstantRedefinition
        | refs."definitions.reportConstantRedefinition"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportDeprecated
        | refs."definitions.reportDeprecated"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportDuplicateImport
        | refs."definitions.reportDuplicateImport"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportFunctionMemberAccess
        | refs."definitions.reportFunctionMemberAccess"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportGeneralTypeIssues
        | refs."definitions.reportGeneralTypeIssues"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportImplicitOverride
        | refs."definitions.reportImplicitOverride"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportImplicitStringConcatenation
        | refs."definitions.reportImplicitStringConcatenation"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportImportCycles
        | refs."definitions.reportImportCycles"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportIncompatibleMethodOverride
        | refs."definitions.reportIncompatibleMethodOverride"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportIncompatibleVariableOverride
        | refs."definitions.reportIncompatibleVariableOverride"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportIncompleteStub
        | refs."definitions.reportIncompleteStub"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInconsistentConstructor
        | refs."definitions.reportInconsistentConstructor"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInconsistentOverload
        | refs."definitions.reportInconsistentOverload"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportIndexIssue
        | refs."definitions.reportIndexIssue"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInvalidStringEscapeSequence
        | refs."definitions.reportInvalidStringEscapeSequence"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInvalidStubStatement
        | refs."definitions.reportInvalidStubStatement"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInvalidTypeArguments
        | refs."definitions.reportInvalidTypeArguments"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInvalidTypeForm
        | refs."definitions.reportInvalidTypeForm"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportInvalidTypeVarUse
        | refs."definitions.reportInvalidTypeVarUse"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMatchNotExhaustive
        | refs."definitions.reportMatchNotExhaustive"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMissingImports
        | refs."definitions.reportMissingImports"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMissingModuleSource
        | refs."definitions.reportMissingModuleSource"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMissingParameterType
        | refs."definitions.reportMissingParameterType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMissingSuperCall
        | refs."definitions.reportMissingSuperCall"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMissingTypeArgument
        | refs."definitions.reportMissingTypeArgument"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportMissingTypeStubs
        | refs."definitions.reportMissingTypeStubs"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportNoOverloadImplementation
        | refs."definitions.reportNoOverloadImplementation"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOperatorIssue
        | refs."definitions.reportOperatorIssue"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOptionalCall
        | refs."definitions.reportOptionalCall"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOptionalContextManager
        | refs."definitions.reportOptionalContextManager"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOptionalIterable
        | refs."definitions.reportOptionalIterable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOptionalMemberAccess
        | refs."definitions.reportOptionalMemberAccess"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOptionalOperand
        | refs."definitions.reportOptionalOperand"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOptionalSubscript
        | refs."definitions.reportOptionalSubscript"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportOverlappingOverload
        | refs."definitions.reportOverlappingOverload"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportPossiblyUnboundVariable
        | refs."definitions.reportPossiblyUnboundVariable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportPrivateImportUsage
        | refs."definitions.reportPrivateImportUsage"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportPrivateUsage
        | refs."definitions.reportPrivateUsage"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportPropertyTypeMismatch
        | refs."definitions.reportPropertyTypeMismatch"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportRedeclaration
        | refs."definitions.reportRedeclaration"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportReturnType
        | refs."definitions.reportReturnType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportSelfClsParameterName
        | refs."definitions.reportSelfClsParameterName"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportShadowedImports
        | refs."definitions.reportShadowedImports"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportTypeCommentUsage
        | refs."definitions.reportTypeCommentUsage"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportTypedDictNotRequiredAccess
        | refs."definitions.reportTypedDictNotRequiredAccess"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnboundVariable
        | refs."definitions.reportUnboundVariable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUndefinedVariable
        | refs."definitions.reportUndefinedVariable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnhashable
        | refs."definitions.reportUnhashable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUninitializedInstanceVariable
        | refs."definitions.reportUninitializedInstanceVariable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnknownArgumentType
        | refs."definitions.reportUnknownArgumentType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnknownLambdaType
        | refs."definitions.reportUnknownLambdaType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnknownMemberType
        | refs."definitions.reportUnknownMemberType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnknownParameterType
        | refs."definitions.reportUnknownParameterType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnknownVariableType
        | refs."definitions.reportUnknownVariableType"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnnecessaryCast
        | refs."definitions.reportUnnecessaryCast"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnnecessaryComparison
        | refs."definitions.reportUnnecessaryComparison"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnnecessaryContains
        | refs."definitions.reportUnnecessaryContains"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnnecessaryIsInstance
        | refs."definitions.reportUnnecessaryIsInstance"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnnecessaryTypeIgnoreComment
        | refs."definitions.reportUnnecessaryTypeIgnoreComment"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnreachable
        | refs."definitions.reportUnreachable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnsupportedDunderAll
        | refs."definitions.reportUnsupportedDunderAll"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUntypedBaseClass
        | refs."definitions.reportUntypedBaseClass"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUntypedClassDecorator
        | refs."definitions.reportUntypedClassDecorator"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUntypedFunctionDecorator
        | refs."definitions.reportUntypedFunctionDecorator"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUntypedNamedTuple
        | refs."definitions.reportUntypedNamedTuple"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedCallResult
        | refs."definitions.reportUnusedCallResult"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedClass
        | refs."definitions.reportUnusedClass"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedCoroutine
        | refs."definitions.reportUnusedCoroutine"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedExcept
        | refs."definitions.reportUnusedExcept"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedExpression
        | refs."definitions.reportUnusedExpression"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedFunction
        | refs."definitions.reportUnusedFunction"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedImport
        | refs."definitions.reportUnusedImport"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportUnusedVariable
        | refs."definitions.reportUnusedVariable"
        | std.contract.any_of [ Bool, String ]
        | optional,
      reportWildcardImportFromLibrary
        | refs."definitions.reportWildcardImportFromLibrary"
        | std.contract.any_of [ Bool, String ]
        | optional,
      strict | Array (js2n.string.Matches "^(.*)$") | optional,
      strictDictionaryInference
        | refs."definitions.strictDictionaryInference"
        | optional,
      strictListInference | refs."definitions.strictListInference" | optional,
      strictParameterNoneValue
        | refs."definitions.strictParameterNoneValue"
        | optional,
      strictSetInference | refs."definitions.strictSetInference" | optional,
      stubPath | js2n.string.Matches "^(.*)$" | optional,
      typeCheckingMode
        | std.enum.TagOrString
        | [| 'strict, 'standard, 'basic, 'off |]
        | optional,
      typeshedPath | js2n.string.Matches "^(.*)$" | optional,
      useLibraryCodeForTypes | Bool | optional,
      venv | js2n.string.Matches "^(.*)$" | optional,
      venvPath | js2n.string.Matches "^(.*)$" | optional,
      verboseOutput | Bool | optional,
      ..
    }