# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      FileOptions
        | {
          ExcludeSearchPatterns
            | Array String
            | doc "Can be used by tools such as VS Code to automatically share its exclusion settings with OmniSharp"
            | optional,
          SystemExcludeSearchPatterns
            | Array String
            | doc "Recommended for manual editing"
            | optional,
          ..
        }
        | doc "Used to define which directories and files should be included in OmniSharp's project file / solution file discovery process. Not individual .cs files."
        | optional,
      FormattingOptions
        | {
          EnableEditorConfigSupport | Bool | optional,
          IndentBlock | Bool | optional,
          IndentBraces | Bool | optional,
          IndentSwitchCaseSection | Bool | optional,
          IndentSwitchCaseSectionWhenBlock | Bool | optional,
          IndentSwitchSection | Bool | optional,
          IndentationSize | std.number.Integer | optional,
          LabelPositioning | String | optional,
          NewLine | String | optional,
          NewLineForCatch | Bool | optional,
          NewLineForClausesInQuery | Bool | optional,
          NewLineForElse | Bool | optional,
          NewLineForFinally | Bool | optional,
          NewLineForMembersInAnonymousTypes | Bool | optional,
          NewLineForMembersInObjectInit | Bool | optional,
          NewLinesForBracesInAccessors | Bool | optional,
          NewLinesForBracesInAnonymousMethods | Bool | optional,
          NewLinesForBracesInAnonymousTypes | Bool | optional,
          NewLinesForBracesInControlBlocks | Bool | optional,
          NewLinesForBracesInLambdaExpressionBody | Bool | optional,
          NewLinesForBracesInMethods | Bool | optional,
          NewLinesForBracesInObjectCollectionArrayInitializers
            | Bool
            | optional,
          NewLinesForBracesInProperties | Bool | optional,
          NewLinesForBracesInTypes | Bool | optional,
          SpaceAfterCast | Bool | optional,
          SpaceAfterColonInBaseTypeDeclaration | Bool | optional,
          SpaceAfterComma | Bool | optional,
          SpaceAfterControlFlowStatementKeyword | Bool | optional,
          SpaceAfterDot | Bool | optional,
          SpaceAfterMethodCallName | Bool | optional,
          SpaceAfterSemicolonsInForStatement | Bool | optional,
          SpaceBeforeColonInBaseTypeDeclaration | Bool | optional,
          SpaceBeforeComma | Bool | optional,
          SpaceBeforeDot | Bool | optional,
          SpaceBeforeOpenSquareBracket | Bool | optional,
          SpaceBeforeSemicolonsInForStatement | Bool | optional,
          SpaceBetweenEmptyMethodCallParentheses | Bool | optional,
          SpaceBetweenEmptyMethodDeclarationParentheses | Bool | optional,
          SpaceBetweenEmptySquareBrackets | Bool | optional,
          SpaceWithinCastParentheses | Bool | optional,
          SpaceWithinExpressionParentheses | Bool | optional,
          SpaceWithinMethodCallParentheses | Bool | optional,
          SpaceWithinMethodDeclarationParenthesis | Bool | optional,
          SpaceWithinOtherParentheses | Bool | optional,
          SpaceWithinSquareBrackets | Bool | optional,
          SpacesIgnoreAroundVariableDeclaration | Bool | optional,
          SpacingAfterMethodDeclarationName | Bool | optional,
          SpacingAroundBinaryOperator | String | optional,
          TabSize | std.number.Integer | optional,
          UseTabs | Bool | optional,
          WrappingKeepStatementsOnSingleLine | Bool | optional,
          WrappingPreserveSingleLine | Bool | optional,
          ..
        }
        | doc "Used to control C# formatting"
        | optional,
      ImplementTypeOptions
        | {
          InsertionBehavior
            | std.enum.TagOrString
            | [| 'AtTheEnd, 'WithOtherMembersOfTheSameKind |]
            | optional,
          PropertyGenerationBehavior
            | std.enum.TagOrString
            | [| 'PreferAutoProperties, 'PreferThrowingProperties |]
            | optional,
          ..
        }
        | optional,
      Plugins | { LocationPaths | Array String | optional, .. } | optional,
      RenameOptions
        | {
          RenameInComments | Bool | optional,
          RenameInStrings | Bool | optional,
          RenameOverloads | Bool | optional,
          ..
        }
        | optional,
      RoslynExtensionsOptions
        | {
          DocumentAnalysisTimeoutMs | std.number.Integer | optional,
          EnableAnalyzersSupport
            | Bool
            | doc "If set to false, only refactorings are available"
            | optional,
          EnableDecompilationSupport | Bool | optional,
          LocationPaths | Array String | optional,
          ..
        }
        | doc "Used to define refactorings, code actions and analyzer locations that OmniSharp should use (i.e. Roslynator)"
        | optional,
      cake
        | { bakeryPath | String | optional, enabled | Bool | optional, .. }
        | doc "Used to configure Cake (cake files)"
        | optional,
      msbuild
        | {
          Configuration
            | std.contract.any_of
              [
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'Release, 'Debug |] ],
                String
              ]
            | doc "Build configuration used for project evaluation"
            | optional,
          CscToolExe | String | doc "FileName of C# compiler" | optional,
          CscToolPath
            | String
            | doc "Local Roslyn path (e.g. <MSBuildPath>/Current/Bin/Roslyn)"
            | optional,
          EnablePackageAutoRestore | Bool | optional,
          MSBuildExtensionsPath
            | String
            | doc "MSBuild extensions path. On Standalone this defaults to the MSBuild folder. In VisualStudio mode this folder will be %VSINSTALLDIR%\\MSBuild"
            | optional,
          MSBuildSDKsPath
            | String
            | doc "Path to the Sdks folder for this MSBuild instance"
            | optional,
          Platform
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'Itanium, 'ARM64, 'ARM, 'x64, 'x86, 'AnyCPU |]
                  ],
                String
              ]
            | doc "Specifies which version of the Common Language Runtime (CLR) use for project evaluation"
            | optional,
          RoslynTargetsPath | String | optional,
          TargetFrameworkRootPath
            | String
            | doc "Root directory where the target framework will be looked for. Uses default path if this is null"
            | optional,
          ToolsVersion
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| '"15.0", '"4.0", '"3.5", '"2.0", 'Current |]
                  ],
                String
              ]
            | doc "Value of ToolsVersion to use when building projects passed to this task"
            | optional,
          VisualStudioVersion | String | optional,
          enabled | Bool | optional,
          loadProjectsOnDemand
            | Bool
            | doc "If true, MSBuild project system will only be loading projects for files that were opened in the editor as well as referenced projects, recursively"
            | optional,
          ..
        }
        | doc "Used to configure MSBuild solutions and projects"
        | optional,
      script
        | {
          defaultTargetFramework
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'net48,
                      'net472,
                      'net471,
                      'net47,
                      'net462,
                      'net461,
                      'net46,
                      'net452,
                      'net451,
                      'net45,
                      'net403,
                      'net40,
                      'net35,
                      'net20,
                      'net11,
                      '"netcoreapp3.1",
                      '"netcoreapp3.0",
                      '"netcoreapp2.2",
                      '"netcoreapp2.1",
                      '"netcoreapp2.0",
                      '"netcoreapp1.1",
                      '"netcoreapp1.0",
                      '"netstandard2.1",
                      '"netstandard2.0",
                      '"netstandard1.6",
                      '"netstandard1.5",
                      '"netstandard1.4",
                      '"netstandard1.3",
                      '"netstandard1.2",
                      '"netstandard1.1",
                      '"netstandard1.0"
                    |]
                  ],
                String
              ]
            | optional,
          enableScriptNuGetReferences | Bool | optional,
          enabled | Bool | optional,
          rspFilePath
            | String
            | doc "A response file (.rsp) is used to provide the command line arguments that are used to run the roslyn script compiler process. You can use this to override the default namespace includes among other things."
            | optional,
          ..
        }
        | doc "Used to configure C# scripting (CSX files)"
        | optional,
      ..
    }