# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.buildOptions" =
        {
            additionalArguments | Array String | optional,
            allowUnsafe | Bool | optional,
            compile
              | std.contract.any_of
                [
                  String,
                  {
                    builtIns
                      | std.contract.any_of
                        [
                          String,
                          {
                            exclude
                              | std.contract.any_of [ String, Array String ]
                              | doc "List of file globbing patterns to be included."
                              | optional,
                            include
                              | std.contract.any_of [ String, Array String ]
                              | doc "List of file globbing patterns to be included."
                              | optional,
                            ..
                          },
                          Array String
                        ]
                      | optional,
                    exclude
                      | std.contract.any_of [ String, Array String ]
                      | doc "List of file globbing patterns to be excluded."
                      | optional,
                    excludeFiles
                      | std.contract.any_of [ String, Array String ]
                      | doc "List of file paths to be excluded."
                      | optional,
                    include
                      | std.contract.any_of [ String, Array String ]
                      | doc "List of file globbing patterns to be included."
                      | optional,
                    includeFiles
                      | std.contract.any_of [ String, Array String ]
                      | doc "List of file paths to be included."
                      | optional,
                    mappings
                      | { _ | Dyn }
                      | doc "Pairs of destination folders and glob patterns specifying additional files to include/exclude."
                      | optional,
                    ..
                  },
                  Array String
                ]
              | doc "Defines glob patterns and file path to include for compilation."
              | optional,
            compilerName | String | optional,
            copyToOutput
              | refs."definitions.buildOptions.properties.compile"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
              | optional,
            debugType
              | std.enum.TagOrString
              | [| 'none, 'full, 'portable |]
              | optional,
            define | js2n.array.UniqueItems | Array String | optional,
            delaySign | Bool | optional,
            embed
              | refs."definitions.buildOptions.properties.compile"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
              | optional,
            emitEntryPoint | Bool | optional,
            keyFile | String | optional,
            languageVersion
              | std.enum.TagOrString
              | [|
                'experimental,
                'csharp6,
                'csharp5,
                'csharp4,
                'csharp3,
                'csharp2,
                'csharp1
              |]
              | optional,
            nowarn | js2n.array.UniqueItems | Array String | optional,
            optimize | Bool | optional,
            outputName | String | optional,
            platform
              | std.enum.TagOrString
              | [| 'Itanium, 'x64, 'x86, 'ARM, 'anycpu32bitpreferred, 'anycpu |]
              | optional,
            preserveCompilationContext
              | Bool
              | doc "Set this option to preserve reference assemblies and other context data to allow for runtime compilation."
              | optional,
            publicSign | Bool | optional,
            warningsAsErrors | Bool | optional,
            xmlDoc | Bool | optional,
            ..
          },
      "definitions.buildOptions.properties.compile" =
        std.contract.any_of
            [
              String,
              {
                builtIns
                  | std.contract.any_of
                    [
                      String,
                      {
                        exclude
                          | std.contract.any_of [ String, Array String ]
                          | doc "List of file globbing patterns to be included."
                          | optional,
                        include
                          | std.contract.any_of [ String, Array String ]
                          | doc "List of file globbing patterns to be included."
                          | optional,
                        ..
                      },
                      Array String
                    ]
                  | optional,
                exclude
                  | std.contract.any_of [ String, Array String ]
                  | doc "List of file globbing patterns to be excluded."
                  | optional,
                excludeFiles
                  | std.contract.any_of [ String, Array String ]
                  | doc "List of file paths to be excluded."
                  | optional,
                include
                  | std.contract.any_of [ String, Array String ]
                  | doc "List of file globbing patterns to be included."
                  | optional,
                includeFiles
                  | std.contract.any_of [ String, Array String ]
                  | doc "List of file paths to be included."
                  | optional,
                mappings
                  | { _ | Dyn }
                  | doc "Pairs of destination folders and glob patterns specifying additional files to include/exclude."
                  | optional,
                ..
              },
              Array String
            ],
      "definitions.compilationOptions" =
        {
            allowUnsafe | Bool | optional,
            debugType
              | std.enum.TagOrString
              | [| 'none, 'full, 'portable |]
              | optional,
            define | js2n.array.UniqueItems | Array String | optional,
            delaySign | Bool | optional,
            emitEntryPoint | Bool | optional,
            keyFile | String | optional,
            languageVersion
              | std.enum.TagOrString
              | [|
                'experimental,
                'csharp6,
                'csharp5,
                'csharp4,
                'csharp3,
                'csharp2,
                'csharp1
              |]
              | optional,
            nowarn | js2n.array.UniqueItems | Array String | optional,
            optimize | Bool | optional,
            outputName | String | optional,
            platform
              | std.enum.TagOrString
              | [| 'Itanium, 'x64, 'x86, 'ARM, 'anycpu32bitpreferred, 'anycpu |]
              | optional,
            preserveCompilationContext
              | Bool
              | doc "Set this option to preserve reference assemblies and other context data to allow for runtime compilation"
              | optional,
            publicSign | Bool | optional,
            warningsAsErrors | Bool | optional,
            ..
          },
      "definitions.configType" =
        {
            buildOptions
              | refs."definitions.buildOptions"
              | { _ | Dyn }
              | optional,
            compilationOptions
              | refs."definitions.compilationOptions"
              | { _ | Dyn }
              | optional,
            dependencies
              | refs."definitions.dependencies"
              | { _ | Dyn }
              | optional,
            frameworkAssemblies
              | refs."definitions.dependencies"
              | { _ | Dyn }
              | optional,
            imports
              | std.contract.any_of [ String, Array String ]
              | doc "Allow packages supporting these frameworks to be installed in this target, regardless of the compatibility rules."
              | optional,
            ..
          },
      "definitions.dependencies" =
        {
            _ | std.contract.any_of
              [
                String,
                {
                  exclude | refs."definitions.libraryIncludeFlags" | optional,
                  include | refs."definitions.libraryIncludeFlags" | optional,
                  suppressParent
                    | refs."definitions.libraryIncludeFlags"
                    | optional,
                  target
                    | std.enum.TagOrString
                    | [| 'package, 'project |]
                    | doc "Restrict this dependency to matching only a Project or a Package."
                    | optional,
                  type
                    | std.enum.TagOrString
                    | [| 'platform, 'build, '"default" |]
                    | optional,
                  version | String | optional,
                  ..
                }
              ]
          },
      "definitions.libraryIncludeFlag" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'none,
                'analyzers,
                'native,
                'contentFiles,
                'build,
                'compile,
                'runtime,
                'all
              |]
            ],
      "definitions.libraryIncludeFlags" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.libraryIncludeFlag", String ],
              Array (
                std.contract.Sequence
                  [ refs."definitions.libraryIncludeFlag", String ]
              )
            ],
      "definitions.packOptions" =
        {
            files
              | refs."definitions.buildOptions.properties.compile"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
              | optional,
            iconUrl
              | String
              | doc "A URL for the image to use as the icon for the package. This should be a 32x32-pixel .png file that has a transparent background."
              | optional,
            licenseUrl
              | String
              | doc "A link to the license for the package."
              | optional,
            owners
              | js2n.array.UniqueItems
              | Array String
              | doc "List of owners of the package."
              | optional,
            releaseNotes
              | String
              | doc "A description of the changes made in each release of the package."
              | optional,
            repository
              | js2n.record.Record
                {
                  additional = 'Some String,
                  patterns = {},
                  properties =
                    {
                        type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'git |] ],
                        url = String,
                      },
                  required = {},
                }
              | doc "Contains information about the repository where the project is stored."
              | optional,
            requireLicenseAcceptance
              | Bool
              | doc "A Boolean value that specifies whether the client needs to ensure that the package license (described by licenseUrl) is accepted before the package is installed."
              | optional,
            summary
              | String
              | doc "A short description of the package."
              | optional,
            tags
              | js2n.array.UniqueItems
              | Array String
              | doc "A space-delimited list of tags and keywords that describe the package."
              | optional,
            ..
          },
      "definitions.publishOptions" =
        std.contract.Sequence
            [
              refs."definitions.buildOptions.properties.compile",
              std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
            ],
      "definitions.runtimeOptions" =
        {
            configProperties
              | {
                "System.GC.Concurrent"
                  | Bool
                  | doc "Enables/disables concurrent garbage collection."
                  | optional,
                "System.GC.GCHeapAffinitizeRanges"
                  | js2n.string.MinLength 1
                  | doc "Specifies the list of processors to use for garbage collector threads."
                  | optional,
                "System.GC.HeapAffinitizeMask"
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Specifies the exact processors that garbage collector threads should use."
                  | optional,
                "System.GC.HeapCount"
                  | std.number.Integer
                  | js2n.number.Minimum 0
                  | doc "Limits the number of heaps created by the garbage collector."
                  | optional,
                "System.GC.HeapHardLimit"
                  | String
                  | doc "Specifies the maximum commit size, in bytes, for the GC heap and GC bookkeeping."
                  | optional,
                "System.GC.HeapHardLimitPercent"
                  | Number
                  | doc "Specifies the GC heap usage as a percentage of the total memory."
                  | optional,
                "System.GC.LOHThreshold"
                  | std.number.Integer
                  | doc "Specifies the threshold size, in bytes, that causes objects to go on the large object heap (LOH)."
                  | optional,
                "System.GC.NoAffinitize"
                  | Bool
                  | doc "Specifies whether to affinitize garbage collection threads with processors. To affinitize a GC thread means that it can only run on its specific CPU. A heap is created for each GC thread."
                  | optional,
                "System.GC.RetainVM"
                  | Bool
                  | doc "Configures whether segments that should be deleted are put on a standby list for future use or are released back to the operating system (OS)."
                  | optional,
                "System.GC.Server"
                  | Bool
                  | doc "Enables/disables server garbage collection."
                  | optional,
                "System.Threading.ThreadPool.MaxThreads"
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Sets the maximum number of threads for the thread pool."
                  | optional,
                "System.Threading.ThreadPool.MinThreads"
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "Sets the minimum number of threads for the thread pool."
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.script" = std.contract.any_of [ String, Array String ],
    }
    in
  {
      authors
        | js2n.array.UniqueItems
        | Array String
        | doc "The author of the application."
        | optional,
      buildOptions | refs."definitions.buildOptions" | optional,
      commands | { _ | String } | optional,
      compilationOptions | refs."definitions.compilationOptions" | optional,
      compile
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to compile. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'compile' in 'buildOptions' instead."
        | optional,
      compileExclude
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to exclude from compilation. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'compile' in 'buildOptions' instead."
        | optional,
      compileFiles
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Files to include in compilation (overrides 'compileExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]. Use 'compile' in 'buildOptions' instead."
        | optional,
      configurations
        | {
          _ | {
            buildOptions | refs."definitions.buildOptions" | optional,
            compilationOptions
              | refs."definitions.compilationOptions"
              | optional,
            ..
          }
        }
        | doc "Configurations are named groups of compilation settings. There are two defaults built into the runtime: 'Debug' and 'Release'."
        | optional,
      content
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to include as content. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'publishOptions' to publish or 'copyToOutput' in 'buildOptions' to copy to build output instead."
        | optional,
      contentExclude
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to exclude from the content list. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'publishOptions' to publish or 'copyToOutput' in 'buildOptions' to copy to build output instead."
        | optional,
      contentFiles
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Files to include as content (overrides 'contentExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]. Use 'publishOptions' to publish or 'copyToOutput' in 'buildOptions' to copy to build output instead."
        | optional,
      copyright | String | doc "Copyright details for the package." | optional,
      dependencies | refs."definitions.dependencies" | optional,
      description
        | String
        | doc "The description of the project/package."
        | optional,
      exclude
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to indicate files to exclude from other glob patterns, in addition to the default patterns specified in 'excludeBuiltIn'. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'exclude' within 'compile' or 'embed' instead."
        | optional,
      excludeBuiltIn
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Default glob pattern to indicate files to exclude from other glob patterns. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'exclude' within 'compile' or 'embed' instead."
        | optional,
      frameworks
        | { _ | refs."definitions.configType" }
        | doc "Target frameworks that will be built, and dependencies that are specific to the build of this project for that framework."
        | optional,
      iconUrl
        | String
        | doc "[Deprecated] A URL for the image to use as the icon for the package. This should be a 32x32-pixel .png file that has a transparent background. Use this in 'packOptions' instead."
        | optional,
      language
        | String
        | doc "The locale ID for the package, such as en-us."
        | optional,
      licenseUrl
        | String
        | doc "[Deprecated] A link to the license for the package. Use this in 'packOptions' instead."
        | optional,
      namedResource
        | { _ | String }
        | doc "Overrides the generated resource names with custom ones."
        | optional,
      owners
        | js2n.array.UniqueItems
        | Array String
        | doc "[Deprecated] List of owners of the package. Use this in 'packOptions' instead."
        | optional,
      packInclude
        | { _ | Dyn }
        | doc "[Deprecated] Pairs of destination folders and glob patterns specifying additional files to include in the output NuGet package. (data type: JSON map). Example: { \"tools/\": \"tools/**/*.*\" }. Use 'files' in 'packOptions' instead."
        | optional,
      packOptions | refs."definitions.packOptions" | optional,
      preprocess
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to use for preprocessing. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      preprocessExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to exclude from use for preprocessing. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      preprocessFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Files to include to use for preprocessing (overrides 'preprocessExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]"
        | optional,
      projectUrl
        | String
        | doc "A URL for the home page of the package."
        | optional,
      publishExclude
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to exclude from publish output. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'publishOptions' instead."
        | optional,
      publishOptions
        | refs."definitions.publishOptions"
        | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
        | optional,
      releaseNotes
        | String
        | doc "[Deprecated] A description of the changes made in each release of the package. Use this in 'packOptions' instead."
        | optional,
      repository
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties =
              {
                  type =
                    std.contract.Sequence [ std.enum.TagOrString, [| 'git |] ],
                  url = String,
                },
            required = {},
          }
        | doc "[Deprecated] Contains information about the repository where the project is stored. Use this in 'packOptions' instead."
        | optional,
      requireLicenseAcceptance
        | Bool
        | doc "[Deprecated] A Boolean value that specifies whether the client needs to ensure that the package license (described by licenseUrl) is accepted before the package is installed. Use this in 'packOptions' instead."
        | optional,
      resource
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to include as resources. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'embed' in 'buildOptions' instead."
        | optional,
      resourceExclude
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Glob pattern to specify files to exclude from the resources list. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]. Use 'embed' in 'buildOptions' instead."
        | optional,
      resourceFiles
        | std.contract.any_of [ String, Array String ]
        | doc "[Deprecated] Files to include as resources (overrides 'resourceExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]. Use 'embed' in 'buildOptions' instead."
        | optional,
      runtimeOptions | refs."definitions.runtimeOptions" | optional,
      runtimes
        | { _ | Dyn }
        | doc "List of runtime identifiers supported by this project (used when building standalone applications)."
        | optional,
      scripts
        | {
          postcompile | refs."definitions.script" | optional,
          postpack | refs."definitions.script" | optional,
          postpublish | refs."definitions.script" | optional,
          postrestore | refs."definitions.script" | optional,
          precompile | refs."definitions.script" | optional,
          prepack | refs."definitions.script" | optional,
          prepare | refs."definitions.script" | optional,
          prepublish | refs."definitions.script" | optional,
          prerestore | refs."definitions.script" | optional,
          ..
        }
        | doc "Scripts to execute during the various stages."
        | optional,
      shared
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to share with dependent projects. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      sharedExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to exclude from sharing with dependent projects. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      sharedFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Files to include for sharing with dependent projects (overrides 'sharedExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]"
        | optional,
      summary
        | String
        | doc "[Deprecated] A short description of the package. Use this in 'packOptions' instead."
        | optional,
      tags
        | js2n.array.UniqueItems
        | Array String
        | doc "[Deprecated] A space-delimited list of tags and keywords that describe the package. Use this in 'packOptions' instead."
        | optional,
      testRunner
        | String
        | doc "The name of the test runner to use with this project"
        | optional,
      title | String | doc "The human-friendly title of the package" | optional,
      tools
        | {
          _ | std.contract.any_of
            [ String, { version | String | optional, .. } ]
        }
        | doc "Project-specific command line tools accessible when in the project.json directory."
        | optional,
      version
        | String
        | doc "The version of the project/package. Examples: 1.2.3, 1.2.3-beta, 1.2.3-*"
        | optional,
      ..
    }