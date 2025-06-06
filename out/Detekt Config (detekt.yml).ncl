# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      build
        | {
          excludeCorrectable | Bool | optional,
          maxIssues | std.number.Integer | optional,
          weights | { _ | std.number.Integer } | optional,
          ..
        }
        | optional,
      comments
        | {
          AbsentOrWrongFileLicense
            | {
              licenseTemplateFile | String | optional,
              licenseTemplateIsRegex | Bool | optional,
              ..
            }
            | optional,
          CommentOverPrivateFunction | { _ | Dyn } | optional,
          CommentOverPrivateProperty | { _ | Dyn } | optional,
          DeprecatedBlockTag | { _ | Dyn } | optional,
          EndOfSentenceFormat
            | { endOfSentenceFormat | String | optional, .. }
            | optional,
          KDocReferencesNonPublicProperty | { _ | Dyn } | optional,
          OutdatedDocumentation
            | {
              allowParamOnConstructorProperties | Bool | optional,
              matchDeclarationsOrder | Bool | optional,
              matchTypeParameters | Bool | optional,
              ..
            }
            | optional,
          UndocumentedPublicClass
            | {
              searchInInnerClass | Bool | optional,
              searchInInnerInterface | Bool | optional,
              searchInInnerObject | Bool | optional,
              searchInNestedClass | Bool | optional,
              searchInProtectedClass | Bool | optional,
              ..
            }
            | optional,
          UndocumentedPublicFunction
            | { searchProtectedFunction | Bool | optional, .. }
            | optional,
          UndocumentedPublicProperty
            | { searchProtectedProperty | Bool | optional, .. }
            | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      complexity
        | {
          CognitiveComplexMethod
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          ComplexCondition
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          ComplexInterface
            | {
              ignoreOverloaded | Bool | optional,
              includePrivateDeclarations | Bool | optional,
              includeStaticDeclarations | Bool | optional,
              threshold | std.number.Integer | optional,
              ..
            }
            | optional,
          CyclomaticComplexMethod
            | {
              ignoreNestingFunctions | Bool | optional,
              ignoreSimpleWhenEntries | Bool | optional,
              ignoreSingleWhenExpression | Bool | optional,
              nestingFunctions | Array String | optional,
              threshold | std.number.Integer | optional,
              ..
            }
            | optional,
          LabeledExpression
            | { ignoredLabels | Array String | optional, .. }
            | optional,
          LargeClass
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          LongMethod
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          LongParameterList
            | {
              constructorThreshold | std.number.Integer | optional,
              functionThreshold | std.number.Integer | optional,
              ignoreAnnotatedParameter | Array String | optional,
              ignoreDataClasses | Bool | optional,
              ignoreDefaultParameters | Bool | optional,
              ..
            }
            | optional,
          MethodOverloading
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          NamedArguments
            | {
              ignoreArgumentsMatchingNames | Bool | optional,
              threshold | std.number.Integer | optional,
              ..
            }
            | optional,
          NestedBlockDepth
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          NestedScopeFunctions
            | {
              functions | Array String | optional,
              threshold | std.number.Integer | optional,
              ..
            }
            | optional,
          ReplaceSafeCallChainWithRun | { _ | Dyn } | optional,
          StringLiteralDuplication
            | {
              excludeStringsWithLessThan5Characters | Bool | optional,
              ignoreAnnotation | Bool | optional,
              ignoreStringsRegex | String | optional,
              threshold | std.number.Integer | optional,
              ..
            }
            | optional,
          TooManyFunctions
            | {
              ignoreDeprecated | Bool | optional,
              ignoreOverridden | Bool | optional,
              ignorePrivate | Bool | optional,
              thresholdInClasses | std.number.Integer | optional,
              thresholdInEnums | std.number.Integer | optional,
              thresholdInFiles | std.number.Integer | optional,
              thresholdInInterfaces | std.number.Integer | optional,
              thresholdInObjects | std.number.Integer | optional,
              ..
            }
            | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      config
        | {
          checkExhaustiveness | Bool | optional,
          excludes | String | optional,
          validation | Bool | optional,
          warningsAsErrors | Bool | optional,
          ..
        }
        | optional,
      console-reports
        | { active | Bool | optional, exclude | Array String | optional, .. }
        | optional,
      coroutines
        | {
          GlobalCoroutineUsage | { _ | Dyn } | optional,
          InjectDispatcher
            | { dispatcherNames | Array String | optional, .. }
            | optional,
          RedundantSuspendModifier | { _ | Dyn } | optional,
          SleepInsteadOfDelay | { _ | Dyn } | optional,
          SuspendFunWithCoroutineScopeReceiver | { _ | Dyn } | optional,
          SuspendFunWithFlowReturnType | { _ | Dyn } | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      empty-blocks
        | {
          EmptyCatchBlock
            | { allowedExceptionNameRegex | String | optional, .. }
            | optional,
          EmptyClassBlock | { _ | Dyn } | optional,
          EmptyDefaultConstructor | { _ | Dyn } | optional,
          EmptyDoWhileBlock | { _ | Dyn } | optional,
          EmptyElseBlock | { _ | Dyn } | optional,
          EmptyFinallyBlock | { _ | Dyn } | optional,
          EmptyForBlock | { _ | Dyn } | optional,
          EmptyFunctionBlock
            | { ignoreOverridden | Bool | optional, .. }
            | optional,
          EmptyIfBlock | { _ | Dyn } | optional,
          EmptyInitBlock | { _ | Dyn } | optional,
          EmptyKtFile | { _ | Dyn } | optional,
          EmptySecondaryConstructor | { _ | Dyn } | optional,
          EmptyTryBlock | { _ | Dyn } | optional,
          EmptyWhenBlock | { _ | Dyn } | optional,
          EmptyWhileBlock | { _ | Dyn } | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      exceptions
        | {
          ExceptionRaisedInUnexpectedLocation
            | { methodNames | Array String | optional, .. }
            | optional,
          InstanceOfCheckForException | { _ | Dyn } | optional,
          NotImplementedDeclaration | { _ | Dyn } | optional,
          ObjectExtendsThrowable | { _ | Dyn } | optional,
          PrintStackTrace | { _ | Dyn } | optional,
          RethrowCaughtException | { _ | Dyn } | optional,
          ReturnFromFinally
            | { ignoreLabeled | Bool | optional, .. }
            | optional,
          SwallowedException
            | {
              allowedExceptionNameRegex | String | optional,
              ignoredExceptionTypes | Array String | optional,
              ..
            }
            | optional,
          ThrowingExceptionFromFinally | { _ | Dyn } | optional,
          ThrowingExceptionInMain | { _ | Dyn } | optional,
          ThrowingExceptionsWithoutMessageOrCause
            | { exceptions | Array String | optional, .. }
            | optional,
          ThrowingNewInstanceOfSameException | { _ | Dyn } | optional,
          TooGenericExceptionCaught
            | {
              allowedExceptionNameRegex | String | optional,
              exceptionNames | Array String | optional,
              ..
            }
            | optional,
          TooGenericExceptionThrown
            | { exceptionNames | Array String | optional, .. }
            | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      formatting
        | {
          AnnotationOnSeparateLine
            | { autoCorrect | Bool | optional, .. }
            | optional,
          AnnotationSpacing | { autoCorrect | Bool | optional, .. } | optional,
          ArgumentListWrapping
            | {
              autoCorrect | Bool | optional,
              indentSize | std.number.Integer | optional,
              maxLineLength | std.number.Integer | optional,
              ..
            }
            | optional,
          BlockCommentInitialStarAlignment
            | { autoCorrect | Bool | optional, .. }
            | optional,
          ChainWrapping | { autoCorrect | Bool | optional, .. } | optional,
          CommentSpacing | { autoCorrect | Bool | optional, .. } | optional,
          CommentWrapping
            | {
              autoCorrect | Bool | optional,
              indentSize | std.number.Integer | optional,
              ..
            }
            | optional,
          DiscouragedCommentLocation
            | { autoCorrect | Bool | optional, .. }
            | optional,
          EnumEntryNameCase | { autoCorrect | Bool | optional, .. } | optional,
          Filename | { _ | Dyn } | optional,
          FinalNewline
            | {
              autoCorrect | Bool | optional,
              insertFinalNewLine | Bool | optional,
              ..
            }
            | optional,
          FunKeywordSpacing | { autoCorrect | Bool | optional, .. } | optional,
          FunctionReturnTypeSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          FunctionSignature
            | {
              autoCorrect | Bool | optional,
              forceMultilineWhenParameterCountGreaterOrEqualThan
                | std.number.Integer
                | optional,
              functionBodyExpressionWrapping | String | optional,
              indentSize | std.number.Integer | optional,
              maxLineLength | std.number.Integer | optional,
              ..
            }
            | optional,
          FunctionStartOfBodySpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          FunctionTypeReferenceSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          ImportOrdering
            | { autoCorrect | Bool | optional, layout | String | optional, .. }
            | optional,
          Indentation
            | {
              autoCorrect | Bool | optional,
              indentSize | std.number.Integer | optional,
              ..
            }
            | optional,
          KdocWrapping
            | {
              autoCorrect | Bool | optional,
              indentSize | std.number.Integer | optional,
              ..
            }
            | optional,
          MaximumLineLength
            | {
              ignoreBackTickedIdentifier | Bool | optional,
              maxLineLength | std.number.Integer | optional,
              ..
            }
            | optional,
          ModifierListSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          ModifierOrdering | { autoCorrect | Bool | optional, .. } | optional,
          MultiLineIfElse | { autoCorrect | Bool | optional, .. } | optional,
          NoBlankLineBeforeRbrace
            | { autoCorrect | Bool | optional, .. }
            | optional,
          NoBlankLinesInChainedMethodCalls
            | { autoCorrect | Bool | optional, .. }
            | optional,
          NoConsecutiveBlankLines
            | { autoCorrect | Bool | optional, .. }
            | optional,
          NoEmptyClassBody | { autoCorrect | Bool | optional, .. } | optional,
          NoEmptyFirstLineInMethodBlock
            | { autoCorrect | Bool | optional, .. }
            | optional,
          NoLineBreakAfterElse
            | { autoCorrect | Bool | optional, .. }
            | optional,
          NoLineBreakBeforeAssignment
            | { autoCorrect | Bool | optional, .. }
            | optional,
          NoMultipleSpaces | { autoCorrect | Bool | optional, .. } | optional,
          NoSemicolons | { autoCorrect | Bool | optional, .. } | optional,
          NoTrailingSpaces | { autoCorrect | Bool | optional, .. } | optional,
          NoUnitReturn | { autoCorrect | Bool | optional, .. } | optional,
          NoUnusedImports | { autoCorrect | Bool | optional, .. } | optional,
          NoWildcardImports
            | { packagesToUseImportOnDemandProperty | String | optional, .. }
            | optional,
          NullableTypeSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          PackageName | { autoCorrect | Bool | optional, .. } | optional,
          ParameterListSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          ParameterListWrapping
            | {
              autoCorrect | Bool | optional,
              maxLineLength | std.number.Integer | optional,
              ..
            }
            | optional,
          SpacingAroundAngleBrackets
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingAroundColon | { autoCorrect | Bool | optional, .. } | optional,
          SpacingAroundComma | { autoCorrect | Bool | optional, .. } | optional,
          SpacingAroundCurly | { autoCorrect | Bool | optional, .. } | optional,
          SpacingAroundDot | { autoCorrect | Bool | optional, .. } | optional,
          SpacingAroundDoubleColon
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingAroundKeyword
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingAroundOperators
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingAroundParens
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingAroundRangeOperator
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingAroundUnaryOperator
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingBetweenDeclarationsWithAnnotations
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingBetweenDeclarationsWithComments
            | { autoCorrect | Bool | optional, .. }
            | optional,
          SpacingBetweenFunctionNameAndOpeningParenthesis
            | { autoCorrect | Bool | optional, .. }
            | optional,
          StringTemplate | { autoCorrect | Bool | optional, .. } | optional,
          TrailingCommaOnCallSite
            | {
              autoCorrect | Bool | optional,
              useTrailingCommaOnCallSite | Bool | optional,
              ..
            }
            | optional,
          TrailingCommaOnDeclarationSite
            | {
              autoCorrect | Bool | optional,
              useTrailingCommaOnDeclarationSite | Bool | optional,
              ..
            }
            | optional,
          TypeArgumentListSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          TypeParameterListSpacing
            | { autoCorrect | Bool | optional, .. }
            | optional,
          UnnecessaryParenthesesBeforeTrailingLambda
            | { autoCorrect | Bool | optional, .. }
            | optional,
          Wrapping
            | {
              autoCorrect | Bool | optional,
              indentSize | std.number.Integer | optional,
              ..
            }
            | optional,
          active | Bool | optional,
          android | Bool | optional,
          autoCorrect | Bool | optional,
          ..
        }
        | optional,
      libraries
        | {
          ForbiddenPublicDataClass
            | { ignorePackages | Array String | optional, .. }
            | optional,
          LibraryCodeMustSpecifyReturnType | { _ | Dyn } | optional,
          LibraryEntitiesShouldNotBePublic | { _ | Dyn } | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      naming
        | {
          BooleanPropertyNaming
            | {
              allowedPattern | String | optional,
              ignoreOverridden | Bool | optional,
              ..
            }
            | optional,
          ClassNaming | { classPattern | String | optional, .. } | optional,
          ConstructorParameterNaming
            | {
              excludeClassPattern | String | optional,
              ignoreOverridden | Bool | optional,
              parameterPattern | String | optional,
              privateParameterPattern | String | optional,
              ..
            }
            | optional,
          EnumNaming | { enumEntryPattern | String | optional, .. } | optional,
          ForbiddenClassName
            | { forbiddenName | Array String | optional, .. }
            | optional,
          FunctionMaxLength
            | { maximumFunctionNameLength | std.number.Integer | optional, .. }
            | optional,
          FunctionMinLength
            | { minimumFunctionNameLength | std.number.Integer | optional, .. }
            | optional,
          FunctionNaming
            | {
              excludeClassPattern | String | optional,
              functionPattern | String | optional,
              ignoreOverridden | Bool | optional,
              ..
            }
            | optional,
          FunctionParameterNaming
            | {
              excludeClassPattern | String | optional,
              ignoreOverridden | Bool | optional,
              parameterPattern | String | optional,
              ..
            }
            | optional,
          InvalidPackageDeclaration
            | {
              requireRootInDeclaration | Bool | optional,
              rootPackage | String | optional,
              ..
            }
            | optional,
          LambdaParameterNaming
            | { parameterPattern | String | optional, .. }
            | optional,
          MatchingDeclarationName
            | { mustBeFirst | Bool | optional, .. }
            | optional,
          MemberNameEqualsClassName
            | { ignoreOverridden | Bool | optional, .. }
            | optional,
          NoNameShadowing | { _ | Dyn } | optional,
          NonBooleanPropertyPrefixedWithIs | { _ | Dyn } | optional,
          ObjectPropertyNaming
            | {
              constantPattern | String | optional,
              privatePropertyPattern | String | optional,
              propertyPattern | String | optional,
              ..
            }
            | optional,
          PackageNaming | { packagePattern | String | optional, .. } | optional,
          TopLevelPropertyNaming
            | {
              constantPattern | String | optional,
              privatePropertyPattern | String | optional,
              propertyPattern | String | optional,
              ..
            }
            | optional,
          VariableMaxLength
            | { maximumVariableNameLength | std.number.Integer | optional, .. }
            | optional,
          VariableMinLength
            | { minimumVariableNameLength | std.number.Integer | optional, .. }
            | optional,
          VariableNaming
            | {
              excludeClassPattern | String | optional,
              ignoreOverridden | Bool | optional,
              privateVariablePattern | String | optional,
              variablePattern | String | optional,
              ..
            }
            | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      output-reports
        | { active | Bool | optional, exclude | Array String | optional, .. }
        | optional,
      performance
        | {
          ArrayPrimitive | { _ | Dyn } | optional,
          CouldBeSequence
            | { threshold | std.number.Integer | optional, .. }
            | optional,
          ForEachOnRange | { _ | Dyn } | optional,
          SpreadOperator | { _ | Dyn } | optional,
          UnnecessaryPartOfBinaryExpression | { _ | Dyn } | optional,
          UnnecessaryTemporaryInstantiation | { _ | Dyn } | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      potential-bugs
        | {
          AvoidReferentialEquality
            | { forbiddenTypePatterns | Array String | optional, .. }
            | optional,
          CastToNullableType | { _ | Dyn } | optional,
          Deprecation | { _ | Dyn } | optional,
          DontDowncastCollectionTypes | { _ | Dyn } | optional,
          DoubleMutabilityForCollection
            | { mutableTypes | Array String | optional, .. }
            | optional,
          ElseCaseInsteadOfExhaustiveWhen | { _ | Dyn } | optional,
          EqualsAlwaysReturnsTrueOrFalse | { _ | Dyn } | optional,
          EqualsWithHashCodeExist | { _ | Dyn } | optional,
          ExitOutsideMain | { _ | Dyn } | optional,
          ExplicitGarbageCollectionCall | { _ | Dyn } | optional,
          HasPlatformType | { _ | Dyn } | optional,
          IgnoredReturnValue
            | {
              ignoreFunctionCall | Array String | optional,
              ignoreReturnValueAnnotations | Array String | optional,
              restrictToConfig | Bool | optional,
              returnValueAnnotations | Array String | optional,
              returnValueTypes | Array String | optional,
              ..
            }
            | optional,
          ImplicitDefaultLocale | { _ | Dyn } | optional,
          ImplicitUnitReturnType
            | { allowExplicitReturnType | Bool | optional, .. }
            | optional,
          InvalidRange | { _ | Dyn } | optional,
          IteratorHasNextCallsNextMethod | { _ | Dyn } | optional,
          IteratorNotThrowingNoSuchElementException | { _ | Dyn } | optional,
          LateinitUsage
            | { ignoreOnClassesPattern | String | optional, .. }
            | optional,
          MapGetWithNotNullAssertionOperator | { _ | Dyn } | optional,
          MissingPackageDeclaration | { _ | Dyn } | optional,
          NullCheckOnMutableProperty | { _ | Dyn } | optional,
          NullableToStringCall | { _ | Dyn } | optional,
          UnconditionalJumpStatementInLoop | { _ | Dyn } | optional,
          UnnecessaryNotNullCheck | { _ | Dyn } | optional,
          UnnecessaryNotNullOperator | { _ | Dyn } | optional,
          UnnecessarySafeCall | { _ | Dyn } | optional,
          UnreachableCatchBlock | { _ | Dyn } | optional,
          UnreachableCode | { _ | Dyn } | optional,
          UnsafeCallOnNullableType | { _ | Dyn } | optional,
          UnsafeCast | { _ | Dyn } | optional,
          UnusedUnaryOperator | { _ | Dyn } | optional,
          UselessPostfixExpression | { _ | Dyn } | optional,
          WrongEqualsTypeParameter | { _ | Dyn } | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      processors
        | { active | Bool | optional, exclude | Array String | optional, .. }
        | optional,
      ruleauthors
        | {
          UseEntityAtName | { _ | Dyn } | optional,
          ViolatesTypeResolutionRequirements | { _ | Dyn } | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      style
        | {
          AlsoCouldBeApply | { _ | Dyn } | optional,
          CanBeNonNullable | { _ | Dyn } | optional,
          CascadingCallWrapping
            | { includeElvis | Bool | optional, .. }
            | optional,
          ClassOrdering | { _ | Dyn } | optional,
          CollapsibleIfStatements | { _ | Dyn } | optional,
          DataClassContainsFunctions
            | { conversionFunctionPrefix | Array String | optional, .. }
            | optional,
          DataClassShouldBeImmutable | { _ | Dyn } | optional,
          DestructuringDeclarationWithTooManyEntries
            | { maxDestructuringEntries | std.number.Integer | optional, .. }
            | optional,
          EqualsNullCall | { _ | Dyn } | optional,
          EqualsOnSignatureLine | { _ | Dyn } | optional,
          ExplicitCollectionElementAccessMethod | { _ | Dyn } | optional,
          ExplicitItLambdaParameter | { _ | Dyn } | optional,
          ExpressionBodySyntax
            | { includeLineWrapping | Bool | optional, .. }
            | optional,
          ForbiddenComment
            | {
              allowedPatterns | String | optional,
              customMessage | String | optional,
              values | Array String | optional,
              ..
            }
            | optional,
          ForbiddenImport
            | {
              forbiddenPatterns | String | optional,
              imports
                | Array { reason | String | optional, value | String, .. }
                | optional,
              ..
            }
            | optional,
          ForbiddenMethodCall
            | {
              methods
                | Array { reason | String | optional, value | String, .. }
                | optional,
              ..
            }
            | optional,
          ForbiddenSuppress
            | { rules | Array String | optional, .. }
            | optional,
          ForbiddenVoid
            | {
              ignoreOverridden | Bool | optional,
              ignoreUsageInGenerics | Bool | optional,
              ..
            }
            | optional,
          FunctionOnlyReturningConstant
            | {
              excludedFunctions | Array String | optional,
              ignoreActualFunction | Bool | optional,
              ignoreOverridableFunction | Bool | optional,
              ..
            }
            | optional,
          LoopWithTooManyJumpStatements
            | { maxJumpCount | std.number.Integer | optional, .. }
            | optional,
          MagicNumber
            | {
              ignoreAnnotation | Bool | optional,
              ignoreCompanionObjectPropertyDeclaration | Bool | optional,
              ignoreConstantDeclaration | Bool | optional,
              ignoreEnums | Bool | optional,
              ignoreExtensionFunctions | Bool | optional,
              ignoreHashCodeFunction | Bool | optional,
              ignoreLocalVariableDeclaration | Bool | optional,
              ignoreNamedArgument | Bool | optional,
              ignoreNumbers | Array String | optional,
              ignorePropertyDeclaration | Bool | optional,
              ignoreRanges | Bool | optional,
              ..
            }
            | optional,
          MandatoryBracesIfStatements | { _ | Dyn } | optional,
          MandatoryBracesLoops | { _ | Dyn } | optional,
          MaxChainedCallsOnSameLine
            | { maxChainedCalls | std.number.Integer | optional, .. }
            | optional,
          MaxLineLength
            | {
              excludeCommentStatements | Bool | optional,
              excludeImportStatements | Bool | optional,
              excludePackageStatements | Bool | optional,
              excludeRawStrings | Bool | optional,
              maxLineLength | std.number.Integer | optional,
              ..
            }
            | optional,
          MayBeConst | { _ | Dyn } | optional,
          ModifierOrder | { _ | Dyn } | optional,
          MultilineLambdaItParameter | { _ | Dyn } | optional,
          MultilineRawStringIndentation
            | { indentSize | std.number.Integer | optional, .. }
            | optional,
          NestedClassesVisibility | { _ | Dyn } | optional,
          NewLineAtEndOfFile | { _ | Dyn } | optional,
          NoTabs | { _ | Dyn } | optional,
          NullableBooleanCheck | { _ | Dyn } | optional,
          ObjectLiteralToLambda | { _ | Dyn } | optional,
          OptionalAbstractKeyword | { _ | Dyn } | optional,
          OptionalUnit | { _ | Dyn } | optional,
          OptionalWhenBraces | { _ | Dyn } | optional,
          PreferToOverPairSyntax | { _ | Dyn } | optional,
          ProtectedMemberInFinalClass | { _ | Dyn } | optional,
          RedundantExplicitType | { _ | Dyn } | optional,
          RedundantHigherOrderMapUsage | { _ | Dyn } | optional,
          RedundantVisibilityModifierRule | { _ | Dyn } | optional,
          ReturnCount
            | {
              excludeGuardClauses | Bool | optional,
              excludeLabeled | Bool | optional,
              excludeReturnFromLambda | Bool | optional,
              excludedFunctions | Array String | optional,
              max | std.number.Integer | optional,
              ..
            }
            | optional,
          SafeCast | { _ | Dyn } | optional,
          SerialVersionUIDInSerializableClass | { _ | Dyn } | optional,
          SpacingBetweenPackageAndImports | { _ | Dyn } | optional,
          ThrowsCount
            | {
              excludeGuardClauses | Bool | optional,
              max | std.number.Integer | optional,
              ..
            }
            | optional,
          TrailingWhitespace | { _ | Dyn } | optional,
          TrimMultilineRawString | { _ | Dyn } | optional,
          UnderscoresInNumericLiterals
            | {
              acceptableLength | std.number.Integer | optional,
              allowNonStandardGrouping | Bool | optional,
              ..
            }
            | optional,
          UnnecessaryAbstractClass | { _ | Dyn } | optional,
          UnnecessaryAnnotationUseSiteTarget | { _ | Dyn } | optional,
          UnnecessaryApply | { _ | Dyn } | optional,
          UnnecessaryBackticks | { _ | Dyn } | optional,
          UnnecessaryFilter | { _ | Dyn } | optional,
          UnnecessaryInheritance | { _ | Dyn } | optional,
          UnnecessaryInnerClass | { _ | Dyn } | optional,
          UnnecessaryLet | { _ | Dyn } | optional,
          UnnecessaryParentheses
            | { allowForUnclearPrecedence | Bool | optional, .. }
            | optional,
          UntilInsteadOfRangeTo | { _ | Dyn } | optional,
          UnusedImports | { _ | Dyn } | optional,
          UnusedPrivateClass | { _ | Dyn } | optional,
          UnusedPrivateMember
            | { allowedNames | String | optional, .. }
            | optional,
          UseAnyOrNoneInsteadOfFind | { _ | Dyn } | optional,
          UseArrayLiteralsInAnnotations | { _ | Dyn } | optional,
          UseCheckNotNull | { _ | Dyn } | optional,
          UseCheckOrError | { _ | Dyn } | optional,
          UseDataClass | { allowVars | Bool | optional, .. } | optional,
          UseEmptyCounterpart | { _ | Dyn } | optional,
          UseIfEmptyOrIfBlank | { _ | Dyn } | optional,
          UseIfInsteadOfWhen | { _ | Dyn } | optional,
          UseIsNullOrEmpty | { _ | Dyn } | optional,
          UseOrEmpty | { _ | Dyn } | optional,
          UseRequire | { _ | Dyn } | optional,
          UseRequireNotNull | { _ | Dyn } | optional,
          UseSumOfInsteadOfFlatMapSize | { _ | Dyn } | optional,
          UselessCallOnNotNull | { _ | Dyn } | optional,
          UtilityClassWithPublicConstructor | { _ | Dyn } | optional,
          VarCouldBeVal
            | { ignoreLateinitVar | Bool | optional, .. }
            | optional,
          WildcardImport
            | { excludeImports | Array String | optional, .. }
            | optional,
          active | Bool | optional,
          ..
        }
        | optional,
      ..
    }