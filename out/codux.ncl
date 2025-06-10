# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      addPanel
        | { assets | Array String | optional, .. }
        | doc m%"
          Add Panel config.
          Can contain list of libraries installed in the project which provide boards for Codux.
        "%
        | optional,
      boardGlobalSetup
        | js2n.OneOf
          [
            js2n.Null,
            String,
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          ]
        | doc m%"
          Path to a file that will be evaluated before each board is rendered,
          Useful for importing global stylesheets and initializing global variables.
          Can be absolute or relative to the project root (in which case it needs to start with './')
          Refer to https://help.codux.com/kb/en/article/kb36623 for more information.
        "%
        | optional,
      boardsPath
        | String
        | doc m%"
          Default directory for new boards, relative to the project root.
          Refer to https://help.codux.com/kb/en/article/kb19337 for more information.
        "%
        | optional,
      componentsDiscovery
        | {
          exclude
            | Array String
            | doc "Array of glob patterns to exclude."
            | optional,
          include
            | Array String
            | doc "Array of glob patterns to include."
            | optional,
          ..
        }
        | doc m%"
          Scopes component discovery in your project.
          Refer to https://help.codux.com/kb/en/article/kb37113 for more information.
        "%
        | optional,
      conditionalClassnamesConfig
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      conditionalRenderers
        | Array String
        | doc m%"
          If the project uses <Routes />, or any other component to conditionally render its
          children based on the URL or some other logic, this string[] should include the names
          of these components ("Routes") for compatibility with Codux.
        "%
        | optional,
      cssCompilation
        | {
          activateCssModules
            | Bool
            | doc "Enables or disables the use of CSS modules.",
          cssModulesExt
            | Array String
            | doc "The extension types for files to load as modules.",
          ..
        }
        | doc m%"
          Enables CSS modules in your project.
          Refer to https://help.codux.com/kb/en/article/kb25813 for more information.
        "%
        | optional,
      defaultImagesDir
        | String
        | doc m%"
          Configures the default directory where the Codux Media Manager stores new assets.
          Refer to https://help.codux.com/kb/en/article/kb96140 for more information.
        "%
        | optional,
      defaultImportedStylesFilePath
        | String
        | doc "Configures the default file path to add new fonts to."
        | optional,
      defaultJSONSchemas
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc m%"
          Configuration for adding additional json schemas to your project.
          This can be used to centralise json schemas addition instead of using $schema and get autocompletion for json files when using Codux.
        "%
        | optional,
      disableProjectSharing
        | Bool
        | doc m%"
          Disables sharing the project in the Codux Online Playground.
          Refer to https://help.codux.com/kb/en/article/kb02353 for more information.
        "%
        | optional,
      externalProviders
        | {
          wix | { metaSiteId | String, projectId | String, .. } | optional,
          ..
        }
        | optional,
      fileNamingConvention
        | js2n.OneOf
          [
            std.contract.Sequence [ std.enum.TagOrString, [| 'kebab-case |] ],
            std.contract.Sequence [ std.enum.TagOrString, [| 'pascal-case |] ],
            std.contract.Sequence [ std.enum.TagOrString, [| 'camel-case |] ]
          ]
        | doc m%"
          Configures file-naming convention for new component creation.
          Refer to https://help.codux.com/kb/en/article/kb29627 for more information.
          Options: "pascal-case" | "camel-case" | "kebab-case"
        "%
        | optional,
      httpServerPort
        | Number
        | doc "Port of HTTP server that is used to serve previews and user project itself."
        | optional,
      ignoredSubPaths
        | Array String
        | doc m%"
          Specifies project folders to exclude from component search.
          Refer to https://help.codux.com/kb/en/article/kb14730 for more information.
        "%
        | optional,
      maxThumbnailSnapshotDelayConfig
        | Number
        | doc m%"
          Maximum time (in milliseconds) to postpone capturing a thumbnail for the board.
          Refer to https://help.codux.com/kb/en/article/kb20920 for more information.
        "%
        | optional,
      newBoard
        | {
          templatesConfig
            | { _ | Dyn }
            | doc m%"
              Defines a configuration object for templates.
              This configuration allows specifying default directories for entities created using these templates.
              Each template can have a custom configuration.
            "%
            | optional,
          templatesPath
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ..
        }
        | doc "Configures default path for board template folders and files."
        | optional,
      newComponent
        | {
          componentsPath
            | String
            | doc "Path where new components and related files will save to."
            | optional,
          templatesConfig
            | { _ | Dyn }
            | doc m%"
              Defines a configuration object for templates.
              This configuration allows specifying default directories for entities created using these templates.
              Each template can have a custom configuration.
            "%
            | optional,
          templatesPath
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ..
        }
        | doc m%"
          Configures default paths for new component and template files.
          Refer to https://help.codux.com/kb/en/article/kb16522 for more information.
        "%
        | optional,
      previewConfiguration
        | {
          envFile
            | String
            | doc "variables that are being accessed from process.env from an env file"
            | optional,
          environmentVariables
            | { _ | Dyn }
            | doc "variables that are being accessed from process.env"
            | optional,
          ..
        }
        | doc m%"
          Specifies environment variables to use globally across the project.
          Refer to https://help.codux.com/kb/en/article/kb37722 for more information.
        "%
        | optional,
      resolve
        | {
          alias
            | { _ | Dyn }
            | doc m%"
              Aliases for package requests.
              Record key is the request to be mapped, value is the new target.
              Alias is attempted before original request.
            "%
            | optional,
          customConditions
            | Array String
            | doc m%"
              Conditions to set in addition to the resolver-specific
              defaults when resolving imports.
            "%
            | optional,
          fallback
            | { _ | Dyn }
            | doc m%"
              Fallback for package requests.
              Record key is the request to be mapped, value is the new target.
              Original request is attempted before fallback.
            "%
            | optional,
          packageRoots
            | Array String
            | doc "Folders to use when searching for packages."
            | optional,
          workspaceAlias
            | { _ | Dyn }
            | doc m%"
              Aliases for all package requests in a monorepo.
              Record key is the request to be mapped, value is the new target.
            "%
            | optional,
          ..
        }
        | doc m%"
          Includes package assets from additional sources, and creates aliases and fallbacks.
          Refer to https://help.codux.com/kb/en/article/kb18719 for more information.
        "%
        | optional,
      safeRender
        | { maxInstancesPerComponent | Number | optional, .. }
        | doc m%"
          Configures maximum rendered elements.
          Refer to https://help.codux.com/kb/en/article/kb18414 for more information.
        "%
        | optional,
      sassCompilation
        | {
          includePaths
            | Array String
            | doc "Array of paths to resolve Sass files from."
            | optional,
          modules
            | {
              ignore
                | std.contract.any_of [ String, Array String ]
                | doc "Array of glob patterns to ignore."
                | optional,
              include
                | std.contract.any_of [ String, Array String ]
                | doc "Array of glob patterns to include.",
              ..
            }
            | doc m%"
              Defines path and module extensions for Sass modules to include and/or ignore.
              Input as an array of glob patterns.
            "%,
          resolveUrls
            | Bool
            | doc "Determines whether URLs in Sass files should resolve to absolute file paths before compiling them.",
          ..
        }
        | doc m%"
          Adds Sass support to compilations.
          Refer to https://help.codux.com/kb/en/article/kb19315 for more information.
        "%
        | optional,
      schemaMemoryUsageView
        | {
          enabled
            | js2n.OneOf [ js2n.Enum [ false ], js2n.Enum [ true ] ]
            | optional,
          ..
        }
        | doc "Configures the schema memory usage panel"
        | optional,
      scripts
        | { _ | Dyn }
        | doc m%"
          Configures scripts for project users to run from Codux (triggerable and on demand).
          Refer to https://help.codux.com/kb/en/article/kb30920 for more information.
        "%
        | optional,
      serverProxyMap
        | { _ | Dyn }
        | doc m%"
          Configures proxy servers for Codux to redirect requests to.
          The key is the path to proxy requests from, and the value is the url to proxy requests to.
          Refer to https://help.codux.com/kb/en/article/kb18137 for more information.
        "%
        | optional,
      staticServerRoot
        | String
        | doc m%"
          The relative path to the folder from which static files are served.
          Refer to https://help.codux.com/kb/en/article/kb23123 for more information.
        "%
        | optional,
      styleFilesConfig
        | {
          commonStyleFilePattern
            | String
            | doc m%"
              An extended glob pattern that describes the common CSS files used in the project.
              The Style Panel will not suggest these files for adding new rules to an element or editing its style.
            "%
            | optional,
          ..
        }
        | doc m%"
          Formats code styling in the Codux code drawer.
          Refer to https://help.codux.com/kb/en/article/kb18018 for more information.
        "%
        | optional,
      styling
        | {
          solution
            | String
            | doc m%"
              Default file extension to use for component style sheets in the project.
              Options: "css" | "sass" | "css modules" | "sass modules" | "scss" | "scss modules" | "stylable"
            "%
            | optional,
          ..
        }
        | doc m%"
          Styling related configuration.
          Contains field for styling solution which determines the main styling solution in the user's project.
          Refer to https://help.codux.com/kb/en/article/kb31817 for more information.
        "%
        | optional,
      svgLoader
        | js2n.OneOf
          [
            std.contract.Sequence [ std.enum.TagOrString, [| 'asset |] ],
            std.contract.Sequence [ std.enum.TagOrString, [| 'svgr |] ],
            std.contract.Sequence [ std.enum.TagOrString, [| 'both |] ]
          ]
        | doc m%"
          Configures how SVG assets load.
          Refer to https://help.codux.com/kb/en/article/kb17934 for more information.
        "%
        | optional,
      tailwindcssConfig
        | String
        | doc m%"
          Lets you pass a custom tailwindcss config file path.
          Refer to https://help.codux.com/kb/en/article/kb18518 for more information.
        "%
        | optional,
      ..
    }