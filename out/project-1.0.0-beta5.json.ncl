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
      bundleExclude
        | std.contract.any_of [ String, Array String ]
        | doc "List of files to exclude from publish output (kpm bundle)."
        | optional,
      code
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify all the code files that needs to be compiled. (data type: string or array with glob pattern(s)). Example: [ \"Folder1\\*.cs\", \"Folder2\\*.cs\" ]"
        | optional,
      commands | { _ | String } | optional,
      compilationOptions | refs."definitions.compilationOptions" | optional,
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
      copyright | String | doc "Copyright details for the package" | optional,
      dependencies | refs."definitions.dependencies" | optional,
      description
        | String
        | doc "The description of the application"
        | optional,
      exclude
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate all the code files to be excluded from compilation. (data type: string or array with glob pattern(s))."
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
        | doc "A link to the license that the package is under"
        | optional,
      namedResource
        | { _ | String }
        | doc "Overrides the generated resource names with custom ones."
        | optional,
      owners | js2n.array.UniqueItems | Array String | optional,
      preprocess
        | String
        | doc "Glob pattern to indicate all the code files to be preprocessed. (data type: string with glob pattern)."
        | optional,
      projectUrl
        | String
        | doc "A URL for the home page of the package"
        | optional,
      releaseNotes
        | String
        | doc "A description of the changes made in each release of the package."
        | optional,
      requireLicenseAcceptance
        | Bool
        | doc "A Boolean value that specifies whether the client needs to ensure that the package license (described by licenseUrl) is accepted before the package is installed."
        | optional,
      resources
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to indicate all the files that need to be compiled as resources."
        | optional,
      scripts
        | {
          postbundle | refs."definitions.script" | optional,
          postpack | refs."definitions.script" | optional,
          postrestore | refs."definitions.script" | optional,
          prebundle | refs."definitions.script" | optional,
          prepack | refs."definitions.script" | optional,
          prepare | refs."definitions.script" | optional,
          prerestore | refs."definitions.script" | optional,
          ..
        }
        | doc "Scripts to execute during the various stages."
        | optional,
      shared
        | std.contract.any_of [ String, Array String ]
        | doc "Glob pattern to specify the code files to share with dependent projects. Example: [ \"Folder1\\*.cs\", \"Folder2\\*.cs\" ]"
        | optional,
      summary | String | doc "A short description of the package" | optional,
      tags | js2n.array.UniqueItems | Array String | optional,
      title | String | doc "The human-friendly title of the package" | optional,
      version
        | String
        | doc "The version of the project/package. Examples: 1.2.3, 1.2.3-beta, 1.2.3-*"
        | optional,
      webroot
        | String
        | doc "Specifying the webroot property in the project.json file specifies the web server root (aka public folder). In visual studio, this folder will be used to root IIS. Static files should be put in here."
        | optional,
      ..
    }