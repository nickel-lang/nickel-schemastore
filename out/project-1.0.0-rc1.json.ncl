# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.compilationOptions" =
        {
            allowUnsafe | Bool | optional,
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
            optimize | Bool | optional,
            useOssSigning | Bool | optional,
            warningsAsErrors | Bool | optional,
            ..
          },
      "definitions.configType" =
        {
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
            ..
          },
      "definitions.dependencies" =
        {
            _ | std.contract.any_of
              [
                String,
                {
                  target
                    | std.enum.TagOrString
                    | [| 'package, 'project |]
                    | doc "Restrict this dependency to matching only a Project or a Package"
                    | optional,
                  type
                    | std.enum.TagOrString
                    | [| 'build, '"default" |]
                    | optional,
                  version | String | optional,
                  ..
                }
              ]
          },
      "definitions.script" = std.contract.any_of [ String, Array String ],
    }
    in
  {
      authors | js2n.array.UniqueItems | Array String | optional,
      commands | { _ | String } | optional,
      compilationOptions | refs."definitions.compilationOptions" | optional,
      compile
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to compile. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      compileExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to exclude from compilation. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      compileFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Files to include in compilation (overrides 'compileExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]"
        | optional,
      configurations
        | {
          _ | {
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
        | doc "Glob pattern to specify files to include as content. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      contentExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to exclude from the content list. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      contentFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Files to include as content (overrides 'contentExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]"
        | optional,
      copyright | String | doc "Copyright details for the package." | optional,
      dependencies | refs."definitions.dependencies" | optional,
      description
        | String
        | doc "The description of the project/package."
        | optional,
      exclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate files to exclude from other glob patterns, in addition to the default patterns specified in 'excludeBuiltIn'. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      excludeBuiltIn
        | std.contract.any_of [ String, Array String ]
        | doc "Default glob pattern to indicate files to exclude from other glob patterns. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      frameworks | { _ | refs."definitions.configType" } | optional,
      iconUrl
        | String
        | doc "A URL for the image to use as the icon for the package. This should be a 32x32-pixel .png file that has a transparent background."
        | optional,
      language
        | String
        | doc "The locale ID for the package, such as en-us."
        | optional,
      licenseUrl
        | String
        | doc "A link to the license for the package."
        | optional,
      namedResource
        | { _ | String }
        | doc "Overrides the generated resource names with custom ones."
        | optional,
      owners | js2n.array.UniqueItems | Array String | optional,
      packInclude
        | { _ | Dyn }
        | doc "Pairs of destination folders and glob patterns specifying additional files to include in the output NuGet package. (data type: JSON map). Example: { \"tools/\": \"tools/**/*.*\" }"
        | optional,
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
        | doc "Glob pattern to specify files to exclude from publish output. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
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
                    std.contract.Sequence [ std.enum.TagOrString, [| 'git |] ],
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
      resource
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to include as resources. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      resourceExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify files to exclude from the resources list. (data type: string or array with glob pattern(s)). Example: [ \"Folder1/*.ext\", \"Folder2/*.ext\" ]"
        | optional,
      resourceFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Files to include as resources (overrides 'resourceExclude'). (data type: string or array). Example: [ \"Folder1/File1.ext\", \"Folder2/File2.ext\" ]"
        | optional,
      scripts
        | {
          postbuild | refs."definitions.script" | optional,
          postpack | refs."definitions.script" | optional,
          postpublish | refs."definitions.script" | optional,
          postrestore | refs."definitions.script" | optional,
          prebuild | refs."definitions.script" | optional,
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
      summary | String | doc "A short description of the package." | optional,
      tags
        | js2n.array.UniqueItems
        | Array String
        | doc "A space-delimited list of tags and keywords that describe the package."
        | optional,
      title | String | doc "The human-friendly title of the package" | optional,
      version
        | String
        | doc "The version of the project/package. Examples: 1.2.3, 1.2.3-beta, 1.2.3-*"
        | optional,
      ..
    }