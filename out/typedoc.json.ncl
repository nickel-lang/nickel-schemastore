# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      alwaysCreateEntryPointModule
        | Bool
        | doc "When set, TypeDoc will always create a `Module` for entry points, even if only one is provided"
        | optional,
      basePath
        | String
        | doc "Specifies the base path to be used when displaying file paths"
        | optional,
      blockTags
        | Array String
        | doc "Block tags which TypeDoc should recognize when parsing comments"
        | optional,
      cacheBust
        | Bool
        | doc "Include the generation time in links to static assets"
        | optional,
      cascadedModifierTags
        | Array String
        | doc "Modifier tags which should be copied to all children of the parent reflection"
        | optional,
      categorizeByGroup
        | Bool
        | doc "Specify whether categorization will be done at the group level"
        | optional,
      categoryOrder
        | Array String
        | doc "Specify the order in which categories appear. * indicates the relative order for categories not in the list"
        | optional,
      cleanOutputDir
        | Bool
        | doc "If set, TypeDoc will remove the output directory before writing output"
        | optional,
      cname
        | String
        | doc "Set the CNAME file text, it's useful for custom domains on GitHub Pages"
        | optional,
      commentStyle
        | std.enum.TagOrString
        | [| 'all, 'line, 'block, 'jsdoc |]
        | doc "Determines how TypeDoc searches for comments"
        | optional,
      compilerOptions
        | { _ | Dyn }
        | doc "Selectively override the TypeScript compiler options used by TypeDoc"
        | optional,
      customCss
        | String
        | doc "Path to a custom CSS file to for the theme to import"
        | optional,
      customFooterHtml
        | String
        | doc "Custom footer after the TypeDoc link"
        | optional,
      customFooterHtmlDisableWrapper
        | Bool
        | doc "If set, disables the wrapper element for customFooterHtml"
        | optional,
      customJs | String | doc "Path to a custom JS file to import" | optional,
      darkHighlightTheme
        | String
        | doc "Specify the code highlighting theme in dark mode"
        | optional,
      defaultCategory
        | String
        | doc "Specify the default category for reflections without a category"
        | optional,
      disableGit
        | Bool
        | doc "Assume that all can be linked to with the sourceLinkTemplate, sourceLinkTemplate must be set if this is enabled. {path} will be rooted at basePath"
        | optional,
      disableSources
        | Bool
        | doc "Disable setting the source of a reflection when documenting it"
        | optional,
      emit
        | std.enum.TagOrString
        | [| 'none, 'docs, 'both |]
        | doc "Specify what TypeDoc should emit, 'docs', 'both', or 'none'"
        | optional,
      entryPointStrategy
        | std.enum.TagOrString
        | [| '"merge", 'packages, 'expand, 'resolve |]
        | doc "The strategy to be used to convert entry points into documentation modules"
        | optional,
      entryPoints
        | Array String
        | doc "The entry points of your documentation"
        | optional,
      exclude
        | Array String
        | doc "Define patterns to be excluded when expanding a directory that was specified as an entry point"
        | optional,
      excludeCategories
        | Array String
        | doc "Exclude symbols within this category from the documentation"
        | optional,
      excludeExternals
        | Bool
        | doc "Prevent externally resolved symbols from being documented"
        | optional,
      excludeInternal
        | Bool
        | doc "Prevent symbols that are marked with @internal from being documented"
        | optional,
      excludeNotDocumented
        | Bool
        | doc "Prevent symbols that are not explicitly documented from appearing in the results"
        | optional,
      excludeNotDocumentedKinds
        | Array String
        | doc "Specify the type of reflections that can be removed by excludeNotDocumented"
        | optional,
      excludePrivate
        | Bool
        | doc "Ignore private variables and methods, defaults to true."
        | optional,
      excludeProtected
        | Bool
        | doc "Ignore protected variables and methods"
        | optional,
      excludeReferences
        | Bool
        | doc "If a symbol is exported multiple times, ignore all but the first export"
        | optional,
      excludeTags
        | Array String
        | doc "Remove the listed block/modifier tags from doc comments"
        | optional,
      extends | Array String | optional,
      externalPattern
        | Array String
        | doc "Define patterns for files that should be considered being external"
        | optional,
      externalSymbolLinkMappings
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Define custom links for symbols not included in the documentation"
        | optional,
      favicon
        | String
        | doc "Path to favicon to include as the site icon"
        | optional,
      gitRemote
        | String
        | doc "Use the specified remote for linking to GitHub/Bitbucket source files. Has no effect if disableGit or disableSources is set"
        | optional,
      gitRevision
        | String
        | doc "Use specified revision instead of the last revision for linking to GitHub/Bitbucket source files. Has no effect if disableSources is set"
        | optional,
      githubPages
        | Bool
        | doc "Generate a .nojekyll file to prevent 404 errors in GitHub Pages. Defaults to `true`"
        | optional,
      groupOrder
        | Array String
        | doc "Specify the order in which groups appear. * indicates the relative order for groups not in the list"
        | optional,
      groupReferencesByType
        | Bool
        | doc "If set, references will be grouped with the type they refer to rather than in a 'References' group"
        | optional,
      headings
        | std.contract.any_of
          [ Bool, { document | Bool | optional, readme | Bool | optional, } ]
        | doc "Determines which optional headings are rendered"
        | optional,
      hideGenerator
        | Bool
        | doc "Do not print the TypeDoc link at the end of the page"
        | optional,
      highlightLanguages
        | Array String
        | doc "Specify the languages which will be loaded to highlight code when rendering"
        | optional,
      hostedBaseUrl
        | String
        | doc "Specify a base URL to be used in generating a sitemap.xml in our output folder and canonical links. If not specified, no sitemap will be generated"
        | optional,
      html
        | String
        | doc "Specify the location where html documentation should be written to."
        | optional,
      ignoredHighlightLanguages
        | Array String
        | doc "Specify languages which will be accepted as valid highlight languages, but will not be highlighted at runtime"
        | optional,
      includeHierarchySummary
        | Bool
        | doc "If set, a reflections hierarchy summary will be rendered to a summary page. Defaults to `true`"
        | optional,
      includeVersion
        | Bool
        | doc "Add the package version to the project name"
        | optional,
      inlineTags
        | Array String
        | doc "Inline tags which TypeDoc should recognize when parsing comments"
        | optional,
      intentionallyNotDocumented
        | Array String
        | doc "A list of full reflection names which should not produce warnings about not being documented"
        | optional,
      intentionallyNotExported
        | Array String
        | doc "A list of types which should not produce 'referenced but not documented' warnings"
        | optional,
      jsDocCompatibility
        | std.contract.any_of
          [
            Bool,
            {
              defaultTag | Bool | optional,
              exampleTag | Bool | optional,
              ignoreUnescapedBraces | Bool | optional,
              inheritDocTag | Bool | optional,
            }
          ]
        | doc "Sets compatibility options for comment parsing that increase similarity with JSDoc comments"
        | optional,
      json
        | String
        | doc "Specify the location and filename a JSON file describing the project is written to"
        | optional,
      kindSortOrder
        | Array String
        | doc "Specify the sort order for reflections when 'kind' is specified"
        | optional,
      lang
        | String
        | doc "Sets the language to be used in generation and in TypeDoc's messages"
        | optional,
      lightHighlightTheme
        | String
        | doc "Specify the code highlighting theme in light mode"
        | optional,
      locales
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Add translations for a specified locale. This option is primarily intended to be used as a stopgap while waiting for official locale support to be added to TypeDoc"
        | optional,
      logLevel
        | std.enum.TagOrString
        | [| 'None, 'Error, 'Warn, 'Info, 'Verbose |]
        | doc "Specify what level of logging should be used"
        | optional,
      markdownItLoader
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Specify a callback to be called when loading the markdown-it instance. Will be passed the instance of the parser which TypeDoc will use"
        | optional,
      markdownItOptions
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Specify the options passed to markdown-it, the Markdown parser used by TypeDoc"
        | optional,
      markdownLinkExternal
        | Bool
        | doc "Specifies that http[s]:// links in comments and markdown files should be treated as external links to be opened in a new tab"
        | optional,
      maxTypeConversionDepth
        | Number
        | doc "Set the maximum depth of types to be converted"
        | optional,
      modifierTags
        | Array String
        | doc "Modifier tags which TypeDoc should recognize when parsing comments"
        | optional,
      name
        | String
        | doc "Set the name of the project that will be used in the header of the template"
        | optional,
      navigation
        | std.contract.any_of
          [
            Bool,
            {
              compactFolders | Bool | optional,
              excludeReferences | Bool | optional,
              includeCategories | Bool | optional,
              includeFolders | Bool | optional,
              includeGroups | Bool | optional,
            }
          ]
        | doc "Determines how the navigation sidebar is organized"
        | optional,
      navigationLeaves
        | Array String
        | doc "Branches of the navigation tree which should not be expanded"
        | optional,
      navigationLinks
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Defines links to be included in the header"
        | optional,
      notRenderedTags
        | Array String
        | doc "Tags which will be preserved in doc comments, but not rendered when creating output"
        | optional,
      options
        | String
        | doc "Specify a json option file that should be loaded. If not specified TypeDoc will look for 'typedoc.json' in the current directory"
        | optional,
      out
        | String
        | doc "Specify the location the documentation for the default output should be written to. The default output type may be changed by plugins."
        | optional,
      outputs
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Specify the location the documentation for the default output should be written to. The default output type may be changed by plugins."
        | optional,
      packageOptions
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Set options which will be set within each package when entryPointStrategy is set to packages"
        | optional,
      packagesRequiringDocumentation
        | Array String
        | doc "A list of packages that must be documented"
        | optional,
      plugin
        | Array String
        | doc "Specify the npm plugins that should be loaded. Omit to load all installed plugins"
        | optional,
      preserveLinkText
        | Bool
        | doc "If set, @link tags without link text will use the text content as the link. If not set, will use the target reflection name"
        | optional,
      preserveWatchOutput
        | Bool
        | doc "If set, TypeDoc will not clear the screen between compilation runs"
        | optional,
      pretty
        | Bool
        | doc "Specify whether the output JSON should be formatted with tabs"
        | optional,
      projectDocuments
        | Array String
        | doc "Documents which should be added as children to the root of the generated documentation. Supports globs to match multiple files"
        | optional,
      readme
        | String
        | doc "Path to the readme file that should be displayed on the index page. Pass `none` to disable the index page and start the documentation on the globals page"
        | optional,
      requiredToBeDocumented
        | Array String
        | doc "A list of reflection kinds that must be documented"
        | optional,
      router
        | String
        | doc "Specify the router name to use to determine file names in the documentation"
        | optional,
      searchCategoryBoosts
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Configure search to give a relevance boost to selected categories"
        | optional,
      searchGroupBoosts
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Configure search to give a relevance boost to selected kinds (eg \"class\")"
        | optional,
      searchInComments
        | Bool
        | doc "If set, the search index will also include comments. This will greatly increase the size of the search index"
        | optional,
      searchInDocuments
        | Bool
        | doc "If set, the search index will also include documents. This will greatly increase the size of the search index"
        | optional,
      showConfig
        | Bool
        | doc "Print the resolved configuration and exit"
        | optional,
      sidebarLinks
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Defines links to be included in the sidebar"
        | optional,
      skipErrorChecking
        | Bool
        | doc "Do not run TypeScript's type checking before generating docs"
        | optional,
      sluggerConfiguration
        | std.contract.any_of [ Bool, { lowercase | Bool | optional, } ]
        | doc "Determines how anchors within rendered HTML are determined."
        | optional,
      sort
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'documents-last,
                'documents-first,
                'external-last,
                'kind,
                'required-first,
                'visibility,
                'instance-first,
                'static-first,
                'enum-member-source-order,
                'enum-value-descending,
                'enum-value-ascending,
                'alphabetical-ignoring-documents,
                'alphabetical,
                'source-order
              |]
            ]
        )
        | doc "Specify the sort strategy for documented values"
        | optional,
      sortEntryPoints
        | Bool
        | doc "If set, entry points will be subject to the same sorting rules as other reflections"
        | optional,
      sourceLinkExternal
        | Bool
        | doc "Specifies that source links should be treated as external links to be opened in a new tab"
        | optional,
      sourceLinkTemplate
        | String
        | doc "Specify a link template to be used when generating source urls. If not set, will be automatically created using the git remote. Supports {path}, {line}, {gitRevision} placeholders"
        | optional,
      suppressCommentWarningsInDeclarationFiles
        | Bool
        | doc "Prevents warnings due to unspecified tags from being reported in comments within .d.ts files."
        | optional,
      theme
        | String
        | doc "Specify the theme name to render the documentation with"
        | optional,
      titleLink
        | String
        | doc "Set the link the title in the header points to. Defaults to the documentation homepage"
        | optional,
      treatValidationWarningsAsErrors
        | Bool
        | doc "If set, warnings emitted during validation will be treated as errors. This option cannot be used to disable treatWarningsAsErrors for validation warnings"
        | optional,
      treatWarningsAsErrors
        | Bool
        | doc "If set, all warnings will be treated as errors"
        | optional,
      tsconfig
        | String
        | doc "Specify a TypeScript config file that should be loaded. If not specified TypeDoc will look for 'tsconfig.json' in the current directory"
        | optional,
      typePrintWidth
        | Number
        | doc "Width at which to wrap code to a new line when rendering a type"
        | optional,
      useFirstParagraphOfCommentAsSummary
        | Bool
        | doc "If set and no @summary tag is specified, TypeDoc will use the first paragraph of comments as the short summary in the module/namespace view"
        | optional,
      useHostedBaseUrlForAbsoluteLinks
        | Bool
        | doc "If set, TypeDoc will produce absolute links to pages on your site using the hostedBaseUrl option"
        | optional,
      useTsLinkResolution
        | Bool
        | doc "Use TypeScript's link resolution when determining where @link tags point. This only applies to JSDoc style comments"
        | optional,
      validation
        | std.contract.any_of
          [
            Bool,
            {
              invalidLink | Bool | optional,
              notDocumented | Bool | optional,
              notExported | Bool | optional,
              rewrittenLink | Bool | optional,
              unusedMergeModuleWith | Bool | optional,
            }
          ]
        | doc "Specify which validation steps TypeDoc should perform on your generated documentation"
        | optional,
      visibilityFilters
        | js2n.record.Record
          {
            additional = 'None,
            patterns = { "^@" = Bool, },
            properties =
              {
                  external = Bool,
                  inherited = Bool,
                  private = Bool,
                  protected = Bool,
                },
            required = {},
          }
        | doc "Specify the default visibility for builtin filters and additional filters according to modifier tags"
        | optional,
      watch
        | Bool
        | doc "Watch files for changes and rebuild docs on change"
        | optional,
      ..
    }