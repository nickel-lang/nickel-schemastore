# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AllowedRuleType" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.RegularAllowedRuleType", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ReachabilityAllowedRuleType", { _ | Dyn } ]
            ],
      "definitions.AnonReporterOptionsType" =
        {
            wordlist
              | Array String
              | doc "List of words to use to replace path elements of file names in the output with so the output isn't directly traceable to its intended purpose. When the list is exhausted, the anon reporter will use random strings patterned after the original file name in stead. The list is empty by default. Read more in https://github.com/sverweij/dependency-cruiser/blob/main/doc/cli.md#anon---obfuscated-json"
              | optional,
          },
      "definitions.CacheOptionsType" =
        {
            compress
              | Bool
              | doc m%"
                Whether to compress the cache or not
                Setting this to true will adds a few ms to the execution time, but
                typically reduces the cache size by 80-90%.
                
                Defaults to false.
              "%
              | optional,
            folder
              | String
              | doc "The folder to store the cache in. Defaults to node_modules/.cache/dependency-cruiser"
              | optional,
            strategy | refs."definitions.CacheStrategyType" | String | optional,
          },
      "definitions.CacheStrategyType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'content, 'metadata |] ],
      "definitions.CompoundDoNotFollowType" =
        {
            dependencyTypes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DependencyTypeType", String ]
              )
              | doc "an array of dependency types to include, but not follow further"
              | optional,
            path
              | refs."definitions.REAsStringsType"
              | doc "a regular expression for modules to include, but not follow further"
              | optional,
          },
      "definitions.CompoundExcludeType" =
        {
            dynamic
              | Bool
              | doc "a boolean indicating whether or not to exclude dynamic dependencies"
              | optional,
            path
              | refs."definitions.REAsStringsType"
              | doc "a regular expression for modules to exclude from being cruised"
              | optional,
          },
      "definitions.CompoundFocusType" =
        {
            depth
              | js2n.number.Maximum 4
              | js2n.number.Minimum 1
              | doc "by default 'focus' only inlcudes the direct neighbours of the focus'ed module(s). This property makes dependency-cruiser will also include neighbors of neighbors, up to the specified depth."
              | optional,
            path
              | refs."definitions.REAsStringsType"
              | doc "dependency-cruiser will include modules matching this regular expression in its output, as well as their neighbours (direct dependencies and dependents)"
              | optional,
          },
      "definitions.CompoundHighlightType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "dependency-cruiser will mark modules matching this regular expression as 'highlighted' in its output"
              | optional,
          },
      "definitions.CompoundIncludeOnlyType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "dependency-cruiser will include modules matching this regular expression in its output, as well as their neighbours (direct dependencies and dependents)"
              | optional,
          },
      "definitions.CompoundReachesType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "dependency-cruiser will include modules matching this regular expression in its output, as well as _any_ module that reaches them - either directly or via via"
              | optional,
          },
      "definitions.DependencyTypeType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'unknown,
                'undetermined,
                'type-only,
                'type-import,
                'triple-slash-type-reference,
                'triple-slash-file-reference,
                'triple-slash-directive,
                'triple-slash-amd-dependency,
                'require,
                'pre-compilation-only,
                'npm,
                'npm-unknown,
                'npm-peer,
                'npm-optional,
                'npm-no-pkg,
                'npm-dev,
                'npm-bundled,
                'localmodule,
                'local,
                'jsdoc-import-tag,
                'jsdoc-bracket-import,
                'jsdoc,
                '"import",
                'import-equals,
                'export,
                'exotic-require,
                'dynamic-import,
                'deprecated,
                'core,
                'amd-exotic-require,
                'amd-require,
                'amd-define,
                'aliased,
                'aliased-workspace,
                'aliased-webpack,
                'aliased-tsconfig,
                'aliased-tsconfig-paths,
                'aliased-tsconfig-base-url,
                'aliased-subpath-import
              |]
            ],
      "definitions.DependentsForbiddenRuleType" =
        {
            comment | String | optional,
            from
              | refs."definitions.DependentsFromRestrictionType"
              | { _ | Dyn },
            module
              | refs."definitions.DependentsModuleRestrictionType"
              | { _ | Dyn },
            name | String | optional,
            scope
              | std.enum.TagOrString
              | [| 'folder, 'module |]
              | doc "What to apply the rule to - modules (the default) or folders. Currently ignored for DependentsForbiddenRules, defaulting to 'module'"
              | optional,
            severity | refs."definitions.SeverityType" | String | optional,
          },
      "definitions.DependentsFromRestrictionType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
          },
      "definitions.DependentsModuleRestrictionType" =
        {
            numberOfDependentsLessThan
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 0
              | doc "Matches when the number of times the 'to' module is used falls below (<) this number. Caveat: only works in concert with path and pathNot restrictions in the from and to parts of the rule; other conditions will be ignored. E.g. to flag modules that are used only once or not at all, use 2 here."
              | optional,
            numberOfDependentsMoreThan
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 0
              | doc "Matches when the number of times the 'to' module is used raises above (>) this number. Caveat: only works in concert with path and pathNot restrictions in the from and to parts of the rule; other conditions will be ignored. E.g. to flag modules that are used more than 10 times, use 10 here."
              | optional,
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
          },
      "definitions.DotReporterOptionsType" =
        {
            collapsePattern
              | refs."definitions.REAsStringsType"
              | doc "Regular expressions to collapse to. For the \"dot\" reporter defaults to null, but \"node_modules/[^/]+\" is recommended for most use cases."
              | optional,
            filters
              | refs."definitions.ReporterFiltersType"
              | { _ | Dyn }
              | optional,
            showMetrics
              | Bool
              | doc "When passed the value 'true', shows instability metrics in the output if dependency-cruiser calculated them. Doesn't show them in all other cases. Defaults to false"
              | optional,
            theme | refs."definitions.DotThemeType" | { _ | Dyn } | optional,
          },
      "definitions.DotThemeArrayType" =
        Array (
            std.contract.Sequence
              [ refs."definitions.DotThemeEntryType", { _ | Dyn } ]
          ),
      "definitions.DotThemeEntryType" =
        {
            attributes | { _ | Dyn } | optional,
            criteria | { _ | Dyn } | optional,
          },
      "definitions.DotThemeType" =
        {
            dependencies
              | refs."definitions.DotThemeArrayType"
              | Array Dyn
              | doc "List of criteria and attributes to apply for dependencies when the criteria are met. Conditions can use any dependency attribute. Attributes can be any that are valid in GraphViz dot edges."
              | optional,
            edge
              | { _ | Dyn }
              | doc "Name- value pairs of GraphViz dot edge attributes."
              | optional,
            graph
              | { _ | Dyn }
              | doc "Name- value pairs of GraphViz dot (global) attributes."
              | optional,
            modules
              | refs."definitions.DotThemeArrayType"
              | Array Dyn
              | doc "List of criteria and attributes to apply for modules when the criteria are met. Conditions can use any module attribute. Attributes can be any that are valid in GraphViz dot nodes."
              | optional,
            node
              | { _ | Dyn }
              | doc "Name- value pairs of GraphViz dot node attributes."
              | optional,
            replace
              | Bool
              | doc "If passed with the value 'true', the passed theme replaces the default one. In all other cases it extends the default theme."
              | optional,
          },
      "definitions.ExtendsType" = std.contract.any_of [ String, Array String ],
      "definitions.ForbiddenRuleType" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.RegularForbiddenRuleType", { _ | Dyn } ],
              std.contract.Sequence
                [
                  refs."definitions.ReachabilityForbiddenRuleType",
                  { _ | Dyn }
                ],
              std.contract.Sequence
                [ refs."definitions.DependentsForbiddenRuleType", { _ | Dyn } ]
            ],
      "definitions.FromRestrictionType" =
        {
            orphan
              | Bool
              | doc "Whether or not to match when the module is an orphan (= has no incoming or outgoing dependencies). When this property it is part of a rule, dependency-cruiser will ignore the 'to' part."
              | optional,
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
          },
      "definitions.MarkdownReporterOptionsType" =
        {
            collapseDetails
              | Bool
              | doc "Whether or not to collapse the list of violations in a <details> block. Defaults to true."
              | optional,
            collapsedMessage
              | String
              | doc "The text to in the <summary> section of the <details> block. E.g. 'click to see all violations'. When left out shows a default value."
              | optional,
            detailsHeader
              | String
              | doc "The text to show as a header on top of the detailed list of violations. E.g. '### All violations'. When left out shows a default value."
              | optional,
            includeIgnoredInDetails
              | Bool
              | doc "Whether or not to show ignored violations in the detailed list. Defaults to true."
              | optional,
            includeIgnoredInSummary
              | Bool
              | doc "Whether or not to show rules in the list of rules for which all violations are ignored. Defaults to true."
              | optional,
            noViolationsMessage
              | String
              | doc "The text to show when no violations were found. E.g. 'No violations found'. When left out shows a default value."
              | optional,
            showDetails
              | Bool
              | doc "Whether or not to show a detailed list of violations. Defaults to true."
              | optional,
            showDetailsHeader
              | Bool
              | doc "Whether or not to give the detailed list of violations a header. Defaults to true."
              | optional,
            showFooter
              | Bool
              | doc "Whether or not to show a footer (with version & run date) at the bottom of the report. Defaults to true"
              | optional,
            showRulesSummary
              | Bool
              | doc "Whether or not to show a list of violated rules in the summary. Defaults to true."
              | optional,
            showStatsSummary
              | Bool
              | doc "Whether or not to show high level stats in the summary. Defaults to true."
              | optional,
            showSummary
              | Bool
              | doc "Whether or not to show a summary in the report. Defaults to true."
              | optional,
            showSummaryHeader
              | Bool
              | doc "Whether or not to give the summary a header. Defaults to true."
              | optional,
            showTitle
              | Bool
              | doc "Whether or not to show a title in the report. Defaults to true."
              | optional,
            summaryHeader
              | String
              | doc "The text to show as a header on top of the summary. E.g. '### Summary'. When left out shows a default value."
              | optional,
            title
              | String
              | doc "The text to show as a title of the report. E.g. '## dependency-cruiser forbidden dependency check - results'. When left out shows a default value."
              | optional,
          },
      "definitions.MermaidReporterOptionsType" =
        {
            minify
              | Bool
              | doc "Whether or not to compresses the output text. Defaults to true."
              | optional,
          },
      "definitions.MetricsReporterOptionsType" =
        {
            hideFolders
              | Bool
              | doc "When true hides folder metrics from the report. Defaults to false"
              | optional,
            hideModules
              | Bool
              | doc "When true hides module metrics from the report. Defaults to false"
              | optional,
            orderBy
              | std.enum.TagOrString
              | [|
                'topLevelStatementCount,
                'size,
                'name,
                'efferentCouplings,
                'afferentCouplings,
                'moduleCount,
                'instability
              |]
              | doc "By what attribute (in addition to the names of the folders/ modules) to order the metrics by. Defaults to 'instability'."
              | optional,
          },
      "definitions.MiniDependency" =
        {
            dependencyTypes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DependencyTypeType", String ]
              )
              | doc "The dependency types of the module relative to the previous module in the chain it is a part of (e.g. a cycle)",
            name | String | doc "The name of the module",
          },
      "definitions.MiniDependencyRestrictionType" =
        js2n.OneOf
            [
              refs."definitions.REAsStringsType",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dependencyTypes =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [
                                  refs."definitions.DependencyTypeType",
                                  String
                                ]),
                        dependencyTypesNot =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [
                                  refs."definitions.DependencyTypeType",
                                  String
                                ]),
                        path = refs."definitions.REAsStringsType",
                        pathNot = refs."definitions.REAsStringsType",
                      },
                  required = {},
                }
            ],
      "definitions.ModuleSystemType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'tsd, 'amd, 'es6, 'cjs |] ],
      "definitions.ModuleSystemsType" =
        Array (
            std.contract.Sequence
              [ refs."definitions.ModuleSystemType", String ]
          ),
      "definitions.OptionsType" =
        {
            affected
              | std.contract.any_of [ Bool, String ]
              | doc "dependency-cruiser will mark modules that have changed since the specified revision (or 'main', when not specified) in its output, as well as _any_ module that reaches them - either directly or via via. NOTE: this is currently a command line _only_ option, so if you pass this to the API or in a configuration file it will be ignored."
              | optional,
            babelConfig
              | {
                fileName
                  | String
                  | doc "The Babel configuration file to use. The fileName is relative to dependency-cruiser's current working directory. When not provided defaults to './.babelrc.json'. Dependency-cruiser currently supports only the json variant. Support for (js|cjs|mjs) variants and configuration in package.json might follow in future releases."
                  | optional,
              }
              | doc "Babel configuration (e.g. '.babelrc.json') to use."
              | optional,
            baseDir
              | String
              | doc "The directory dependency-cruiser should run its cruise from. Defaults to the current working directory."
              | optional,
            builtInModules
              | {
                add
                  | Array String
                  | doc "List of module names that are to be considered as 'built-in' in addition to the default list of the environment you're currently in. Use this e.g. if you're writing electron code and want to add 'electron' as built-in."
                  | optional,
                override
                  | Array String
                  | doc "List of module names that are to be considered as 'built-in'. By default dependency-cruiser uses the list of built-ins from nodejs. If you code for another environment (e.g. the browser) and you use shims for nodejs builtins like 'path' from node_modules, you could pass an empty array here. If you want to just add a couple of extra built-ins to the default list, use the 'add' attribute instead."
                  | optional,
              }
              | doc "Options to tweak what dependency-cruiser considers 'built-in' modules. If you're targeting nodejs, or don't use any built-in modules you can probably leave this alone."
              | optional,
            cache
              | std.contract.any_of
                [
                  Bool,
                  String,
                  std.contract.Sequence
                    [ refs."definitions.CacheOptionsType", { _ | Dyn } ]
                ]
              | doc m%"
                - false: don't use caching. 
                - true or empty object: use caching with the default settings 
                - a string (deprecated): cache in the folder denoted by the string & use the 
                  default caching strategy. This is deprecated - instead pass a cache object 
                  e.g. ```{ folder: 'your/cache/location' }```.
                
                Defaults to false (no caching).
                When caching is switched on the default cache folder is 'node_modules/.cache/dependency-cruiser/'
              "%
              | optional,
            collapse
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 9,
                      js2n.number.Minimum 1
                    ]
                ]
              | doc "Collapse a to a folder depth by passing a single digit (e.g. 2). When passed a regex collapses to that pattern E.g. ^packages/[^/]+/ would collapse to modules/ folders directly under your packages folder."
              | optional,
            combinedDependencies
              | Bool
              | doc "if true combines the package.jsons found from the module up to the base folder the cruise is initiated from. Useful for how (some) mono-repos manage dependencies & dependency definitions. Defaults to `false`."
              | optional,
            detectJSDocImports
              | Bool
              | doc "When true, dependency-cruiser will detect dependencies in JSDoc-style import statements. Implies `\"parser\": \"tsc\"`. Defaults to false."
              | optional,
            doNotFollow
              | js2n.OneOf
                [
                  refs."definitions.REAsStringsType",
                  std.contract.Sequence
                    [ refs."definitions.CompoundDoNotFollowType", { _ | Dyn } ]
                ]
              | doc "a regular expression for modules to include, but not follow further"
              | optional,
            enhancedResolveOptions
              | {
                aliasFields
                  | Array String
                  | doc "A list of alias fields in manifests (package.jsons). Specify a field, such as browser, to be parsed according to [this specification](https://github.com/defunctzombie/package-browser-field-spec). Also see [resolve.alias](https://webpack.js.org/configuration/resolve/#resolvealiasfields) in the webpack docs. Defaults to an empty array (don't use any alias fields)."
                  | optional,
                cachedInputFileSystem
                  | {
                    cacheDuration
                      | std.number.Integer
                      | js2n.number.Maximum 1800000
                      | js2n.number.Minimum 0
                      | doc "The number of milliseconds [enhanced-resolve](webpack/enhanced-resolve)'s cached file system should use for cache duration. Typically you won't have to touch this - the default works well for repos up to 5000 modules/ 20000 dependencies, and likely for numbers above as well. If you experience memory problems on a (humongous) repository you can use the cacheDuration attribute to tame enhanced-resolve's memory usage by lowering the cache duration trading off against some (for values over 1000ms) or significant (for values below 500ms) performance. Dependency-cruiser currently uses 4000ms, and in the past has used 1000ms - both with good results."
                      | optional,
                  }
                  | doc "Options to pass to the resolver (webpack's 'enhanced resolve') regarding caching."
                  | optional,
                conditionNames
                  | Array String
                  | doc "List of conditions to check for in the exports field. e.g. use `['imports']` if you're only interested in exposed es6 modules, ['require'] for commonjs, or all conditions at once (['import', 'require', 'node', 'default']) if anything goes for you. Only works when the 'exportsFields' array is non-empty"
                  | optional,
                exportsFields
                  | Array String
                  | doc "List of strings to consider as 'exports' fields in package.json. Use ['exports'] when you use packages that use such a field and your environment supports it (e.g. node ^12.19 || >=14.7 or recent versions of webpack)."
                  | optional,
                extensions
                  | Array String
                  | doc "List of extensions to scan for when resolving. Typically you want to leave this alone as dependency-cruiser figures out what extensions to scan based on 1. what is available in your environment 2. in the order your environment (nodejs, typescript) applies the resolution itself. However, if you want it to scan less you can specify so with the extensions attribute. E.g. when you're 100% sure you _only_ have typescript & json and nothing else you can pass ['.ts', '.json'] - which can lead to performance gains on systems with slow i/o (like ms-windows), especially when your tsconfig contains paths/ aliases."
                  | optional,
                mainFields
                  | Array String
                  | doc "A list of main fields in manifests (package.json s). Typically you'd want to keep leave this this on its default (['main']) , but if you e.g. use external packages that only expose types, and you still want references to these types to be resolved you could expand this to ['main', 'types', 'typings']"
                  | optional,
                mainFiles
                  | Array Dyn
                  | doc "A list of files to consider 'main' files, defaults to ['index']. Only set this when you have really special needs that warrant it."
                  | optional,
              }
              | doc "Options used in module resolution that for dependency-cruiser's use cannot go in a webpack config. For details please refer to the documentation of enhanced-resolve itself."
              | optional,
            exclude
              | js2n.OneOf
                [
                  refs."definitions.REAsStringsType",
                  std.contract.Sequence
                    [ refs."definitions.CompoundExcludeType", { _ | Dyn } ]
                ]
              | doc "a regular expression for modules to exclude from being cruised"
              | optional,
            exoticRequireStrings
              | Array String
              | doc "List of strings you have in use in addition to cjs/ es6 requires & imports to declare module dependencies. Use this e.g. if you've re-declared require (`const want = require`), use a require-wrapper (like semver-try-require) or use window.require as a hack to workaround something"
              | optional,
            experimentalStats
              | Bool
              | doc "When this flag is set to true, dependency-cruiser will calculate some stats for each module. Has some performance impact. EXPERIMENTAL Will be renamed when the 'experimental' state is lifted. Defaults to false."
              | optional,
            externalModuleResolutionStrategy
              | std.enum.TagOrString
              | [| 'yarn-pnp, 'node_modules |]
              | doc "What external module resolution strategy to use. Defaults to 'node_modules' (not used anymore - module resolution strategy determination is automatic now)"
              | optional,
            extraExtensionsToScan
              | Array String
              | doc "List of extensions to scan _in addition_ to the extensions already covered by any available parser. Dependency-cruiser will consider files ending in these extensions but it will _not_ examine its content or derive any of their dependencies Sample value: [\".jpg\", \".png\", \".json\"]"
              | optional,
            focus
              | js2n.OneOf
                [
                  refs."definitions.REAsStringsType",
                  std.contract.Sequence
                    [ refs."definitions.CompoundFocusType", { _ | Dyn } ]
                ]
              | doc "dependency-cruiser will include modules matching this regular expression in its output, as well as their neighbours (direct dependencies and dependents)"
              | optional,
            forceDeriveDependents
              | Bool
              | doc "Hasn't had any effect on dependency-cruiser's behaviour since a few major versions ago. If there's a need to manipulate this use the `skipAnalysisNotInRules` option in stead. Previously documented behaviour: When true includes de-normalized dependents in the cruise-result, even though there's no rule in the rule set that requires them. Defaults to false."
              | optional,
            highlight
              | js2n.OneOf
                [
                  refs."definitions.REAsStringsType",
                  std.contract.Sequence
                    [ refs."definitions.CompoundHighlightType", { _ | Dyn } ]
                ]
              | doc "dependency-cruiser will mark modules matching this regular expression as 'highlighted' in its output"
              | optional,
            includeOnly
              | js2n.OneOf
                [
                  refs."definitions.REAsStringsType",
                  std.contract.Sequence
                    [ refs."definitions.CompoundIncludeOnlyType", { _ | Dyn } ]
                ]
              | doc "a regular expression for modules to cruise; anything outside it will be skipped"
              | optional,
            knownViolations
              | refs."definitions.ViolationsType"
              | Array Dyn
              | doc "baseline of known validations. Typically you'd specify these in a file called .dependency-cruiser-known-violations.json (which you'd generate with the --outputType 'baseline') - and which is easy to keep up to date. In a pinch you can specify them here as well. The known violations in .dependency-cruiser-known-violations.json always take precedence."
              | optional,
            maxDepth
              | std.number.Integer
              | js2n.number.Maximum 99
              | js2n.number.Minimum 0
              | doc "The maximum cruise depth specified. 0 means no maximum specified. While it might look attractive to regulate the size of the output, this is not the best option to do so. Filters (exclude, includeOnly, focus), the dot and archi reporter's collapsePattern and the collapse options offer better, more reliable and more understandable results."
              | optional,
            metrics
              | Bool
              | doc "When this flag is set to true, dependency-cruiser will calculate (stability) metrics for all modules and folders. Defaults to false."
              | optional,
            moduleSystems
              | refs."definitions.ModuleSystemsType"
              | Array Dyn
              | optional,
            parser
              | std.enum.TagOrString
              | [| 'swc, 'tsc, 'acorn |]
              | doc "overrides the parser dependency-cruiser will use - EXPERIMENTAL. The use of 'swc' as a parser here is deprecated."
              | optional,
            prefix | String | optional,
            preserveSymlinks
              | Bool
              | doc "if true leave symlinks untouched, otherwise use the realpath. Defaults to `false` (which is also nodejs's default behavior since version 6)"
              | optional,
            progress
              | {
                maximumLevel
                  | js2n.Enum [ -1, 40, 50, 60, 70, 80, 99 ]
                  | doc "The maximum log level to emit messages at. Ranges from OFF (-1, don't show any messages), via SUMMARY (40), INFO (50), DEBUG (60) all the way to show ALL messages (99)."
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'none, 'ndjson, 'performance-log, 'cli-feedback |]
                  | optional,
              }
              | doc "How dependency-cruiser shows progress. Defaults to 'none'."
              | optional,
            reaches
              | js2n.OneOf
                [
                  refs."definitions.REAsStringsType",
                  std.contract.Sequence
                    [ refs."definitions.CompoundReachesType", { _ | Dyn } ]
                ]
              | doc "dependency-cruiser will include modules matching this regular expression in its output, as well as _any_ module that reaches them - either directly or via via"
              | optional,
            reporterOptions
              | refs."definitions.ReporterOptionsType"
              | { _ | Dyn }
              | optional,
            skipAnalysisNotInRules
              | Bool
              | doc "When this flag is set to true, dependency-cruiser will skip all analysis that don't serve a rule. E.g. if there's no 'circular' rule in the rule set it won't analyse cycles. This flag affects cycle, dependents and orphan analysis. If you have a rule set that doesn't use one of these features, switching it to true will make cruises faster. Defaults to false for backwards compatibility. For most uses of dependency-cruiser we recommend to switch this option to true, though."
              | optional,
            tsConfig
              | {
                fileName
                  | String
                  | doc "The TypeScript project file to use. The fileName is relative to dependency-cruiser's current working directory. When not provided defaults to './tsconfig.json'."
                  | optional,
              }
              | doc "TypeScript project file ('tsconfig.json') to use for (1) compilation and (2) resolution (e.g. with the paths property)"
              | optional,
            tsPreCompilationDeps
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence [ std.enum.TagOrString, [| 'specify |] ]
                ]
              | doc "if true detect dependencies that only exist before typescript-to-javascript compilation."
              | optional,
            webpackConfig
              | {
                arguments
                  | { _ | Dyn }
                  | doc "Arguments to pass if your config file returns a function. E.g. {mode: 'production'} if you want to use webpack 4's 'mode' feature"
                  | optional,
                env
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | doc "Environment to pass if your config file returns a function"
                  | optional,
                fileName
                  | String
                  | doc "The webpack conf file to use (typically something like 'webpack.conf.js'). The fileName is relative to dependency-cruiser's current working directory. When not provided defaults to './webpack.conf.js'."
                  | optional,
              }
              | doc "Webpack configuration file to use to get resolve options from"
              | optional,
          },
      "definitions.REAsStringsType" =
        std.contract.any_of [ String, Array String ],
      "definitions.ReachabilityAllowedRuleType" =
        {
            comment | String | optional,
            from
              | refs."definitions.ReachabilityFromRestrictionType"
              | { _ | Dyn },
            scope
              | std.enum.TagOrString
              | [| 'folder, 'module |]
              | doc "What to apply the rule to - modules (the default) or folders. Currently ignored for 'allowed' rules, defaulting to 'module'"
              | optional,
            to | refs."definitions.ReachabilityToRestrictionType" | { _ | Dyn },
          },
      "definitions.ReachabilityForbiddenRuleType" =
        {
            comment | String | optional,
            from
              | refs."definitions.ReachabilityFromRestrictionType"
              | { _ | Dyn },
            name | String | optional,
            scope
              | std.enum.TagOrString
              | [| 'folder, 'module |]
              | doc "What to apply the rule to - modules (the default) or folders. Currently ignored for ReachabilityForbiddenRules, defaulting to 'module'"
              | optional,
            severity | refs."definitions.SeverityType" | String | optional,
            to | refs."definitions.ReachabilityToRestrictionType" | { _ | Dyn },
          },
      "definitions.ReachabilityFromRestrictionType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
          },
      "definitions.ReachabilityToRestrictionType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
            reachable
              | Bool
              | doc "Whether or not to match modules that aren't reachable from the from part of the rule.",
          },
      "definitions.RegularAllowedRuleType" =
        {
            comment | String | optional,
            from | refs."definitions.FromRestrictionType" | { _ | Dyn },
            scope
              | std.enum.TagOrString
              | [| 'folder, 'module |]
              | doc "What to apply the rule to - modules (the default) or folders. Currently ignored for 'allowed' rules, defaulting to 'module'"
              | optional,
            to | refs."definitions.ToRestrictionType" | { _ | Dyn },
          },
      "definitions.RegularForbiddenRuleType" =
        {
            comment
              | String
              | doc "You can use this field to document why the rule is there."
              | optional,
            from | refs."definitions.FromRestrictionType" | { _ | Dyn },
            name
              | String
              | doc "A short name for the rule - will appear in reporters to enable customers to quickly identify a violated rule. Try to keep them short, eslint style. E.g. 'not-to-core' for a rule forbidding dependencies on core modules, or 'not-to-unresolvable' for one that prevents dependencies on modules that probably don't exist."
              | optional,
            scope
              | std.enum.TagOrString
              | [| 'folder, 'module |]
              | doc "What to apply the rule to - modules (the default) or folders. Switching the scope to 'folder' can be useful in rules where this makes a difference like those regarding circular dependencies or instability. Only the to.moreUnstable, to.circular, and path (both from and to) attributes work at the moment. Other attributes will follow suit in later releases (depending on demand)."
              | optional,
            severity | refs."definitions.SeverityType" | String | optional,
            to | refs."definitions.ToRestrictionType" | { _ | Dyn },
          },
      "definitions.ReporterFiltersType" =
        {
            exclude
              | refs."definitions.CompoundExcludeType"
              | { _ | Dyn }
              | optional,
            focus
              | refs."definitions.CompoundFocusType"
              | { _ | Dyn }
              | optional,
            includeOnly
              | refs."definitions.CompoundIncludeOnlyType"
              | { _ | Dyn }
              | optional,
            reaches
              | refs."definitions.CompoundReachesType"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ReporterOptionsType" =
        {
            anon
              | refs."definitions.AnonReporterOptionsType"
              | { _ | Dyn }
              | optional,
            archi
              | refs."definitions.DotReporterOptionsType"
              | { _ | Dyn }
              | optional,
            ddot
              | refs."definitions.DotReporterOptionsType"
              | { _ | Dyn }
              | optional,
            dot
              | refs."definitions.DotReporterOptionsType"
              | { _ | Dyn }
              | optional,
            flat
              | refs."definitions.DotReporterOptionsType"
              | { _ | Dyn }
              | optional,
            markdown
              | refs."definitions.MarkdownReporterOptionsType"
              | { _ | Dyn }
              | optional,
            mermaid
              | refs."definitions.MermaidReporterOptionsType"
              | { _ | Dyn }
              | optional,
            metrics
              | refs."definitions.MetricsReporterOptionsType"
              | { _ | Dyn }
              | optional,
            text
              | refs."definitions.TextReporterOptionsType"
              | { _ | Dyn }
              | optional,
          },
      "definitions.RequiredModuleRestrictionType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
          },
      "definitions.RequiredRuleType" =
        {
            comment | String | optional,
            module
              | refs."definitions.RequiredModuleRestrictionType"
              | { _ | Dyn },
            name | String | optional,
            scope
              | std.enum.TagOrString
              | [| 'folder, 'module |]
              | doc "What to apply the rule to - modules (the default) or folders. Currently ignored for RequiredRules, defaulting to 'module'"
              | optional,
            severity | refs."definitions.SeverityType" | String | optional,
            to | refs."definitions.RequiredToRestrictionType" | { _ | Dyn },
          },
      "definitions.RequiredToRestrictionType" =
        {
            path
              | refs."definitions.REAsStringsType"
              | doc "Criteria at least one dependency of each matching module must adhere to."
              | optional,
            reachable
              | Bool
              | doc "Whether or not to match transitive ('indirect') dependencies as well as direct ones."
              | optional,
          },
      "definitions.RuleSummaryType" =
        {
            name
              | String
              | doc "The (short, eslint style) name of the violated rule. Typically something like 'no-core-punycode' or 'no-outside-deps'.",
            severity | refs."definitions.SeverityType" | String,
          },
      "definitions.SeverityType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ignore, 'info, 'warn, 'error |] ],
      "definitions.TextReporterOptionsType" =
        {
            highlightFocused
              | Bool
              | doc "Whether or not to highlight modules that are focused with the --focus command line option (/ general option). Defaults to false"
              | optional,
          },
      "definitions.ToRestrictionType" =
        {
            circular
              | Bool
              | doc "Whether or not to match when following to the to will ultimately end up in the from."
              | optional,
            couldNotResolve
              | Bool
              | doc "Whether or not to match modules dependency-cruiser could not resolve (and probably aren't on disk). For this one too: leave out if you don't care either way."
              | optional,
            dependencyTypes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DependencyTypeType", String ]
              )
              | doc "Whether or not to match modules of any of these types (leaving out matches any of them)"
              | optional,
            dependencyTypesNot
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DependencyTypeType", String ]
              )
              | doc "Whether or not to match modules NOT of any of these types (leaving out matches none of them)"
              | optional,
            dynamic
              | Bool
              | doc "Whether or not to match when the dependency is a dynamic one."
              | optional,
            exoticRequire
              | refs."definitions.REAsStringsType"
              | doc "A regular expression to match against any 'exotic' require strings"
              | optional,
            exoticRequireNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression to match against any 'exotic' require strings - when it should NOT be caught by the rule"
              | optional,
            exoticallyRequired
              | Bool
              | doc "Whether or not to match when the dependency is exotically required."
              | optional,
            license
              | refs."definitions.REAsStringsType"
              | doc "Whether or not to match modules that were released under one of the mentioned licenses. E.g. to flag GPL-1.0, GPL-2.0 licensed modules (e.g. because your app is not compatible with the GPL) use \"GPL\""
              | optional,
            licenseNot
              | refs."definitions.REAsStringsType"
              | doc "Whether or not to match modules that were NOT released under one of the mentioned licenses. E.g. to flag everything non MIT use \"MIT\" here"
              | optional,
            moreThanOneDependencyType
              | Bool
              | doc "If true matches dependencies with more than one dependency type (e.g. defined in _both_ npm and npm-dev)"
              | optional,
            moreUnstable
              | Bool
              | doc "When set to true moreUnstable matches for any dependency that has a higher Instability than the module that depends on it. When set to false it matches when the opposite is true; the dependency has an equal or lower Instability. This attribute is useful when you want to check against Robert C. Martin's stable dependency principle. See online documentation for examples and details. Leave this out when you don't care either way."
              | optional,
            path
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should match to be caught by this rule."
              | optional,
            pathNot
              | refs."definitions.REAsStringsType"
              | doc "A regular expression or an array of regular expressions an end of a dependency should NOT match to be caught by this rule."
              | optional,
            preCompilationOnly
              | Bool
              | doc "true if this dependency only exists before compilation (like type only imports), false in all other cases. Only returned when the tsPreCompilationDeps is set to 'specify'."
              | optional,
            via
              | refs."definitions.MiniDependencyRestrictionType"
              | doc "For circular dependencies - whether or not to match cycles that include some modules with these conditions. If you want to match cycles that _exclusively_ include modules satisfying them use the viaOnly restriction.E.g. to allow all cycles, except when they go through one specific module. Typically to temporarily disallow some cycles with a lower severity - setting up a rule with a via that ignores them in an 'allowed' section."
              | optional,
            viaNot
              | refs."definitions.REAsStringsType"
              | doc "This attribute is deprecated. Use 'viaOnly' with a 'pathNot' attribute in stead."
              | optional,
            viaOnly
              | refs."definitions.MiniDependencyRestrictionType"
              | doc "For circular dependencies - whether or not to match cycles that include exclusively modules with these conditions. This is different from the regular via that already matches when only _some_ of the modules in the cycle satisfy the condition."
              | optional,
            viaSomeNot
              | refs."definitions.REAsStringsType"
              | doc "This attribute is deprecated. Use 'via' with a 'pathNot' attribute in stead."
              | optional,
          },
      "definitions.ViolationType" =
        {
            comment
              | String
              | doc "Free format text you can e.g. use to explain why this violation can be ignored or is quarantined (only used in _known-violations_) "
              | optional,
            cycle
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MiniDependency", { _ | Dyn } ]
              )
              | doc "The circular path if the violation is about circularity"
              | optional,
            from | String,
            metrics
              | {
                from | { instability | Number, },
                to | { instability | Number, },
              }
              | optional,
            rule | refs."definitions.RuleSummaryType" | { _ | Dyn },
            to | String,
            type | refs."definitions.ViolationTypeType" | String | optional,
            via
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MiniDependency", { _ | Dyn } ]
              )
              | doc "The path from the from to the to if the violation is transitive"
              | optional,
          },
      "definitions.ViolationTypeType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'folder,
                'instability,
                'cycle,
                'reachability,
                'module,
                'dependency
              |]
            ],
      "definitions.ViolationsType" =
        Array (
            std.contract.Sequence
              [ refs."definitions.ViolationType", { _ | Dyn } ]
          ),
    }
    in
  {
      "$schema" | String | optional,
      allowed
        | Array refs."definitions.AllowedRuleType"
        | doc "A list of rules that describe dependencies that are allowed. dependency-cruiser will emit the warning message 'not-in-allowed' for each dependency that does not at least meet one of them."
        | optional,
      allowedSeverity
        | refs."definitions.SeverityType"
        | doc "Severity to use when a dependency is not in the 'allowed' set of rules. Defaults to 'warn'"
        | optional,
      extends | refs."definitions.ExtendsType" | optional,
      forbidden
        | Array refs."definitions.ForbiddenRuleType"
        | doc "A list of rules that describe dependencies that are not allowed. dependency-cruiser will emit a separate error (warning/ informational) messages for each violated rule."
        | optional,
      options | refs."definitions.OptionsType" | optional,
      required
        | Array refs."definitions.RequiredRuleType"
        | doc "A list of rules that describe what dependencies modules _must_ have. E.g. - every controller needs to (directly) depend on a base controller. - each source file should be the dependency of a spec file with the same    base name"
        | optional,
    }