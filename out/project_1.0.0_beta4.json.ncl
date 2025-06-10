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
        | doc "Glob pattern to specify additional code files that needs to be compiled. (data type: string or array with glob pattern(s)). Example: [ \"folder1/**/*.cs\", \"folder2/**/*.cs\" ]"
        | optional,
      compileBuiltIn
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate the default code files that are included for compilation. (data type: string or array with glob pattern(s)). Example: [ \"**/*.cs\", \"../folder2/**/*.cs\" ]"
        | optional,
      compileExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate code files that needs to be excluded from compilation. (data type: string or array with glob pattern(s)). Example: [ \"folder1/**/*.cs\", \"folder2/**/*.cs\" ]"
        | optional,
      compileFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Individual file paths relative to application root that needs to be included for compilation. (data type: string or array). Example: [ \"folder1/test1.cs\", \"folder2/test2.cs\" ]"
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
        | doc "Configurations are named groups of compilation settings. There are 2 defaults built into the runtime namely 'Debug' and 'Release'."
        | optional,
      content
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify the files to be considered as content on dnu publish. Example: [ \"folder1/**/*\" ]"
        | optional,
      contentExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify the files to be excluded from being content on dnu publish. Example: [ \"folder1/*.cs\", \"folder2/*.cs\" ]"
        | optional,
      contentFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify the individual files to be content files on dnu publish. Example: [ \"folder1/content.cs\", \"folder2/content2.img\" ]"
        | optional,
      copyright | String | doc "Copyright details for the package" | optional,
      dependencies | refs."definitions.dependencies" | optional,
      description
        | String
        | doc "The description of the application"
        | optional,
      exclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate the default files to be excluded from processing. (data type: string or array with glob pattern(s))."
        | optional,
      excludeBuiltIn
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate all the additional files to be excluded from processing. (data type: string or array with glob pattern(s))."
        | optional,
      frameworks | { _ | refs."definitions.configType" } | optional,
      iconUrl
        | String
        | doc "A URL for the image to use as the icon for the package. This should be a 32x32-pixel .png file that has a transparent background."
        | optional,
      licenseUrl
        | String
        | doc "A link to the license that the package is under"
        | optional,
      owners | js2n.array.UniqueItems | Array String | optional,
      preprocess
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate all the code files to be pre-processed. (data type: string or array with glob pattern(s))."
        | optional,
      preprocessExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate all the code files to be excluded from pre-processing. (data type: string or array with glob pattern(s))."
        | optional,
      preprocessFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate specific code files to be included for pre-processing. (data type: string or array)."
        | optional,
      projectUrl
        | String
        | doc "A URL for the home page of the package"
        | optional,
      publishExclude
        | std.contract.any_of [ String, Array String ]
        | doc "List of files to exclude from publish output (dnu publish)."
        | optional,
      resource
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate all the files that need to be compiled as resources. (data type: string or array with glob pattern(s))"
        | optional,
      resourceExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate files that need to be excluded from being compiled as resources. (data type: string or array with glob pattern(s))"
        | optional,
      resourceFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate individual files that need to be compiled as resources. (data type: string or array)."
        | optional,
      scripts
        | {
          postpack | refs."definitions.script" | optional,
          postpublish | refs."definitions.script" | optional,
          postrestore | refs."definitions.script" | optional,
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
        | doc "Glob pattern to specify the code files to share with dependent projects. Example: [ \"folder1/*.cs\", \"folder2/*.cs\" ]"
        | optional,
      sharedExclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify the code files to be excluded from sharing with dependent projects. Example: [ \"folder1/*.cs\", \"folder2/*.cs\" ]"
        | optional,
      sharedFiles
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify the individual code files to be shared with dependent projects. Example: [ \"folder1/shared1.cs\", \"folder2/shared2.cs\" ]"
        | optional,
      summary | String | doc "A short description of the package" | optional,
      tags | js2n.array.UniqueItems | Array String | optional,
      title | String | doc "The human-friendly title of the package" | optional,
      userSecretsId
        | String
        | doc "Specify a unique id to manage the development time user secrets of the application"
        | optional,
      version
        | String
        | doc "The version of the application. Example: 1.2.0.0"
        | optional,
      webroot
        | String
        | doc "Specifying the webroot property in the project.json file specifies the web server root (aka public folder). In visual studio, this folder will be used to root IIS. Static files should be put in here."
        | optional,
      ..
    }