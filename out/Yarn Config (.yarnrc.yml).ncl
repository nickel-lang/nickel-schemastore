# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.enableNetwork" = Bool,
      "properties.httpProxy" = String,
      "properties.httpsCaFilePath" = String,
      "properties.httpsCertFilePath" = String,
      "properties.httpsKeyFilePath" = String,
      "properties.httpsProxy" = String,
      "properties.npmAlwaysAuth" = Bool,
      "properties.npmAuthIdent" = String,
      "properties.npmAuthToken" = String,
      "properties.npmPublishRegistry" = String,
      "properties.npmRegistryServer" = String,
    }
    in
  {
      cacheFolder
        | String
        | doc "They'll be normalized, compressed, and saved under the form of zip archives with standardized names. The cache is deemed to be relatively safe to be shared by multiple projects, even when multiple Yarn instances run at the same time on different projects. For setting a global cache folder, you should use `enableGlobalCache` instead."
        | optional,
      cacheMigrationMode
        | std.enum.TagOrString
        | [| 'always, 'match-spec, 'required-only |]
        | doc m%"
          Whether or not a cache entry is outdated depends on whether it has been built and checksumed by an earlier release of Yarn, or under a different compression settings. Possible behaviors are:
          
          - If `required-only`, it'll keep using the file as-is, unless the version that generated it was decidedly too old.
          - If `match-spec`, it'll also rebuild the file if the compression level has changed.
          - If `always` (the default), it'll always regenerate the cache files so they use the current cache version.
        "%
        | optional,
      changesetBaseRefs
        | Array String
        | doc "Supports git branches, tags, and commits. The default configuration will compare against master, origin/master, upstream/master, main, origin/main, and upstream/main."
        | optional,
      changesetIgnorePatterns
        | Array String
        | doc "Files matching the following patterns (in terms of relative paths compared to the root of the project) will be ignored by every command checking whether files changed compared to the base ref (this include both `yarn version check` and `yarn workspaces foreach --since`)."
        | optional,
      checksumBehavior
        | std.enum.TagOrString
        | [| 'reset, 'ignore, 'update, 'throw |]
        | doc m%"
          Possible behaviors are:
          
          - If `throw` (the default), Yarn will throw an exception.
          - If `update`, the lockfile will be updated to match the cached checksum.
          - If `reset`, the cache entry will be purged and fetched anew.
          - If `ignore`, nothing will happen, Yarn will skip the check.
        "%
        | optional,
      cloneConcurrency
        | Number
        | doc "We by default limit it to 2 concurrent clone operations."
        | optional,
      compressionLevel
        | js2n.Enum [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, "mixed" ]
        | doc m%"
          Possible values go from `0` ("no compression, faster") to `9` ("heavy compression, slower"). The value `mixed` is a variant of `9` where files are stored uncompressed if the gzip overhead would exceed the size gain.
          
          The default is `0`, which tends to be significantly faster to install. Projects using zero-installs are advised to keep it this way, as experiments showed that Git stores uncompressed package archives more efficiently than gzip-compressed ones.
        "%
        | optional,
      constraintsPath
        | String
        | doc "This only matters for Prolog constraints, which are being deprecated. JavaScript constraints will always be read from the `yarn.config.cjs` file."
        | optional,
      defaultLanguageName
        | String
        | doc "This is an internal configuration setting that shouldn't be touched unless you really know what you're doing."
        | optional,
      defaultProtocol
        | String
        | doc "This is an internal configuration setting that shouldn't be touched unless you really know what you're doing."
        | optional,
      defaultSemverRangePrefix
        | std.enum.TagOrString
        | [| '"", '"~", '"^" |]
        | doc "Possible values are `\"^\"` (the default), `\"~\"` or `\"\"`."
        | optional,
      deferredVersionFolder | String | optional,
      enableColors
        | Bool
        | doc "The default is to check the terminal capabilities, but you can manually override it to either `true` or `false`."
        | optional,
      enableConstraintsChecks
        | Bool
        | doc "If true, Yarn will run your constraints right after finishing its installs. This may help decrease the feedback loop delay by catching errors long before your CI would even report them."
        | optional,
      enableGlobalCache
        | Bool
        | doc "If true (the default), Yarn will store the cache files into a folder located within `globalFolder` instead of respecting `cacheFolder`."
        | optional,
      enableHardenedMode
        | Bool
        | doc m%"
          If true, Yarn will query the remote registries to validate that the lockfile content matches the remote information. These checks make installs slower, so you should only run them on branches managed by users outside your circle of trust.
          
          Yarn will automatically enable the hardened mode on GitHub pull requests from public repository. Should you want to disable it, explicitly set it to `false` in your yarnrc file.
        "%
        | optional,
      enableHyperlinks
        | Bool
        | doc "The default is to check the terminal capabilities, but you can manually override it to either `true` or `false`."
        | optional,
      enableImmutableCache
        | Bool
        | doc "If true, Yarn will refuse to change the cache in any way, whether it would add files or remove them, and will abort installs instead of letting that happen."
        | optional,
      enableImmutableInstalls
        | Bool
        | doc "If true (the default on CI), Yarn will refuse to change the lockfile in any way, whether it would add new entries or remove them. Other files can be added to the checklist via the `immutablePatterns` setting."
        | optional,
      enableInlineBuilds
        | Bool
        | doc "If true (the default on CI environments), Yarn will print the build output directly within the terminal instead of buffering it in an external log file. Note that by default Yarn will attempt to use collapsible terminal sequences on supporting CI providers to make the output more legible."
        | optional,
      enableInlineHunks
        | Bool
        | doc "If true, Yarn will print any patch sections (hunks) that could not be applied successfully to the terminal."
        | optional,
      enableMessageNames
        | Bool
        | doc "If true, Yarn will prefix most messages with codes suitable for search engines, with hyperlink support if your terminal allows it."
        | optional,
      enableMirror
        | Bool
        | doc "If true (the default), Yarn will use the global folder as indirection between the network and the actual cache. This is only useful if `enableGlobalCache` is explicitly set to `false`, as otherwise the cache entries are persisted to the global cache no matter what."
        | optional,
      enableNetwork
        | Bool
        | doc "If false, Yarn will never make any request to the network by itself, and will throw an exception rather than let it happen. It's a very useful setting for CI, which typically want to make sure they aren't loading their dependencies from the network by mistake."
        | optional,
      enableOfflineMode
        | Bool
        | doc m%"
          If true, Yarn will replace any network requests by reads from its local caches - even if they contain old information. This can be useful when performing local work on environments without network access (trains, planes, ...), as you can at least leverage the packages you installed on the same machine in the past.
          
          Since this setting will lead to stale data being used, it's recommended to set it for the current session as an environment variable (by running `export YARN_ENABLE_OFFLINE_MODE=1` in your terminal) rather than by adding it to your `.yarnrc.yml` file.
        "%
        | optional,
      enableProgressBars
        | Bool
        | doc "If true (the default outside of CI environments), Yarn will show progress bars for long-running events."
        | optional,
      enableScripts
        | Bool
        | doc m%"
          If false, Yarn will not execute the `postinstall` scripts from third-party packages when installing the project (workspaces will still see their postinstall scripts evaluated, as they're assumed to be safe if you're running an install within them).
          
          Note that you also have the ability to disable scripts on a per-package basis using `dependenciesMeta`, or to re-enable a specific script by combining `enableScripts` and `dependenciesMeta`.
        "%
        | optional,
      enableStrictSsl
        | Bool
        | doc "If false, SSL certificate errors will be ignored"
        | optional,
      enableTelemetry
        | Bool
        | doc m%"
          If true (the default outside of CI environments), Yarn will periodically send anonymous data to our servers tracking some usage information such as the number of dependencies in your project, how many installs you ran, etc.
          
          Consult the [Telemetry](/advanced/telemetry) page for more details about this process.
        "%
        | optional,
      enableTimers
        | Bool
        | doc "If false, Yarn will not print the time spent running each sub-step when running various commands. This is only needed for testing purposes, when you want each execution to have exactly the same output as the previous ones."
        | optional,
      enableTransparentWorkspaces
        | Bool
        | doc m%"
          If false, Yarn won't link workspaces just because their versions happen to match a semver range. Disabling this setting will require all workspaces to reference one another using the explicit `workspace:` protocol.
          
          This setting is usually only needed when your project needs to use the published version in order to build the new one (that's for example what happens with Babel, which depends on the latest stable release to build the future ones).
        "%
        | optional,
      globalFolder
        | String
        | doc "Various files we be stored there: global cache, metadata cache, ..."
        | optional,
      httpProxy | String | optional,
      httpRetry | Number | optional,
      httpTimeout | Number | optional,
      httpsCaFilePath | String | optional,
      httpsCertFilePath | String | optional,
      httpsKeyFilePath | String | optional,
      httpsProxy | String | optional,
      ignorePath
        | Bool
        | doc "If true, whatever Yarn version is being executed will keep running rather than looking at the value of `yarnPath` to decide."
        | optional,
      immutablePatterns | Array String | optional,
      initFields
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              { "^(.+)$" = std.contract.any_of [ Bool, Number, String ], },
            properties = {},
            required = {},
          }
        | optional,
      initScope | js2n.string.Matches "^([^/]+?)$" | optional,
      injectEnvironmentFiles
        | Array String
        | doc m%"
          By default Yarn will automatically inject the variables stored in the `.env.yarn` file, but you can use this setting to change this behavior.
          
          Note that adding a question mark at the end of the path will silence the error Yarn would throw should the file be missing, which may come in handy when declaring local configuration files.
        "%
        | optional,
      installStatePath
        | String
        | doc "The install state file contains a bunch of cached information about your project. It's only used for optimization purposes, and will be recreated if missing (you don't need to add it to Git)."
        | optional,
      logFilters
        | Array
          {
            code | String | optional,
            level
              | std.enum.TagOrString
              | [| 'discard, 'error, 'warning, 'info |]
              | optional,
            pattern
              | String
              | doc "In case a message matches both `pattern`-based and `code`-based filters, the `pattern`-based ones will take precedence over the other ones. Patterns can be overridden on a case-by-case basis by using the `text` filter, which has precedence over `pattern`."
              | optional,
            text
              | String
              | doc "In case a message matches both `code`-based and `text`-based filters, the `text`-based ones will take precedence over the `code`-based ones."
              | optional,
            ..
          }
        | doc "This can be used to hide specific messages, or instead make them more prominent. Rules defined there accept filtering messages by either name or raw content."
        | optional,
      networkConcurrency
        | Number
        | doc "We default to 50 concurrent requests, but it may be required to limit it even more when working behind proxies that can't handle large amounts of traffic."
        | optional,
      networkSettings
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^(.+)$" =
                    {
                        enableNetwork
                          | refs."properties.enableNetwork"
                          | optional,
                        httpProxy | refs."properties.httpProxy" | optional,
                        httpsCaFilePath
                          | refs."properties.httpsCaFilePath"
                          | optional,
                        httpsCertFilePath
                          | refs."properties.httpsCertFilePath"
                          | optional,
                        httpsKeyFilePath
                          | refs."properties.httpsKeyFilePath"
                          | optional,
                        httpsProxy | refs."properties.httpsProxy" | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | optional,
      nmHoistingLimits
        | std.enum.TagOrString
        | [| 'none, 'dependencies, 'workspaces |]
        | doc m%"
          Replacement of the former `nohoist` setting. Possible values are:
          
          - If `none` (the default), packages are hoisted as per the usual rules.
          - If `workspaces`, packages won't be hoisted past the workspace that depends on them.
          - If `dependencies`, transitive dependencies also won't be hoisted past your direct dependencies.
          
          This setting can be overridden on a per-workspace basis using the `installConfig.hoistingLimits` field.
        "%
        | optional,
      nmMode
        | std.enum.TagOrString
        | [| 'hardlinks-global, 'hardlinks-local, 'classic |]
        | doc m%"
          Possible values are:
          
          - If `classic`, regular copy or clone operations are performed.
          - If `hardlinks-global`, hardlinks to a global content-addressable store will be used.
          - If `hardlinks-local`, hardlinks will only be created between similar packages from the same project.
          
          For compatibility with the ecosystem, the default is `classic`.
        "%
        | optional,
      nmSelfReferences
        | Bool
        | doc "If false, Yarn won't create self-referencing symlinks when using `nodeLinker: node-modules`. This setting can be overridden on a per-workspace basis using the `installConfig.selfReferences` field."
        | optional,
      nodeLinker
        | std.contract.any_of
          [
            String,
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'node-modules, 'pnpm, 'pnp |] ]
          ]
        | doc m%"
          Yarn supports three ways to install your project's dependencies, based on the `nodeLinker` setting. Possible values are:
          
          - If `pnp`, a single Node.js loader file will be generated.
          - If `pnpm`, a `node-modules` will be created using symlinks and hardlinks to a global content-addressable store.
          - If `node-modules`, a regular `node_modules` folder just like in Yarn Classic or npm will be created.
        "%
        | optional,
      npmAlwaysAuth
        | Bool
        | doc "If true, authentication credentials will always be sent when sending requests to the registries. This shouldn't be needed unless you configured the registry to reference a private npm mirror."
        | optional,
      npmAuditExcludePackages | Array String | optional,
      npmAuditIgnoreAdvisories | Array String | optional,
      npmAuditRegistry
        | String
        | doc "If not explicitly set, the value of `npmRegistryServer` will be used."
        | optional,
      npmAuthIdent
        | String
        | doc "Replacement of the former `_auth` setting. Because it requires storing unencrypted values in your configuration, `npmAuthToken` should be preferred when possible."
        | optional,
      npmAuthToken
        | String
        | doc "Replacement of the former `_authToken` settings. If you're using `npmScopes` to define multiple registries, the `npmRegistries` dictionary allows you to override these credentials on a per-registry basis."
        | optional,
      npmPublishAccess
        | std.enum.TagOrString
        | [| 'restricted, 'public |]
        | doc "Valid values are `public` and `restricted`, but `restricted` usually requires to register for a paid plan (this is up to the registry you use). Can be overridden on a per-package basis using the [`publishConfig.access`](manifest#publishConfig.access) field."
        | optional,
      npmPublishProvenance
        | Bool
        | doc "If true, Yarn will generate and publish the provenance information when publishing packages. Can be overridden on a per-package basis using the [`publishConfig.provenance`](manifest#publishConfig.provenance) field."
        | optional,
      npmPublishRegistry
        | String
        | doc "If not explicitly set, the value of `npmRegistryServer` will be used. Overridden by `publishConfig.registry`."
        | optional,
      npmRegistries
        | {
          _ | {
            npmAlwaysAuth | refs."properties.npmAlwaysAuth" | optional,
            npmAuthIdent | refs."properties.npmAuthIdent" | optional,
            npmAuthToken | refs."properties.npmAuthToken" | optional,
            ..
          }
        }
        | js2n.record.FieldsMatch "^(?:^[a-zA-Z][a-zA-Z0-9+-.]*:)?[^\\s]*$"
        | optional,
      npmRegistryServer
        | String
        | doc "Should you want to define different registries for different scopes, see `npmScopes`. To define the authentication scheme for your servers, see `npmAuthToken`. The url must use HTTPS by default, but this can be changed by adding it to the `unsafeHttpWhitelist`."
        | optional,
      npmScopes
        | {
          _ | {
            npmAlwaysAuth | refs."properties.npmAlwaysAuth" | optional,
            npmAuthIdent | refs."properties.npmAuthIdent" | optional,
            npmAuthToken | refs."properties.npmAuthToken" | optional,
            npmPublishRegistry
              | refs."properties.npmPublishRegistry"
              | optional,
            npmRegistryServer | refs."properties.npmRegistryServer" | optional,
            ..
          }
        }
        | js2n.record.FieldsMatch "^\\S+$"
        | optional,
      packageExtensions
        | {
          _ | {
            dependencies
              | { _ | js2n.string.Matches "^(.+)$" }
              | js2n.record.FieldsMatch "^(?:@([^/]+?)/)?([^/]+?)$"
              | optional,
            peerDependencies
              | { _ | js2n.string.Matches "^(.+)$" }
              | js2n.record.FieldsMatch "^(?:@([^/]+?)/)?([^/]+?)$"
              | optional,
            peerDependenciesMeta
              | { _ | { "optional" | Bool | optional, .. } }
              | js2n.record.FieldsMatch "^(?:@([^/]+?)/)?([^/]+?)$"
              | optional,
            ..
          }
        }
        | js2n.record.FieldsMatch "^(?:@([^/]+?)/)?([^/]+?)(?:@(.+))$"
        | doc m%"
          Some packages may have been specified incorrectly with regard to their dependencies - for example with one dependency being missing, causing Yarn to refuse it the access. The `packageExtensions` fields offer a way to extend the existing package definitions with additional information. If you use it, consider sending a PR upstream and contributing your extension to the [`plugin-compat` database](https://github.com/yarnpkg/berry/blob/master/packages/yarnpkg-extensions/sources/index.ts).
          
          Note: This field is made to add dependencies; if you need to rewrite existing ones, prefer the `resolutions` field instead.
        "%
        | optional,
      patchFolder | String | optional,
      pnpEnableEsmLoader
        | Bool
        | doc "If true, Yarn will generate an experimental ESM loader (`.pnp.loader.mjs`) on top of the CJS one."
        | optional,
      pnpEnableInlining
        | Bool
        | doc "If false, Yarn will generate an additional `.pnp.data.json` file."
        | optional,
      pnpFallbackMode
        | std.enum.TagOrString
        | [| 'all, 'dependencies-only, 'none |]
        | doc m%"
          Possible values are:
          
          - If `all`, all packages can access dependencies made available in the fallback.
          - If `dependencies-only` (the default), dependencies will have access to them but not your workspaces.
          - If `none`, no packages will have access to them.
        "%
        | optional,
      pnpIgnorePatterns
        | Array String
        | doc "Files matching those locations will not be covered by PnP and will use the regular Node.js resolution algorithm. Typically only needed if you have subprojects that aren't yet part of your workspace tree."
        | optional,
      pnpMode
        | std.enum.TagOrString
        | [| 'loose, 'strict |]
        | doc m%"
          Possible values are:
          
          - If `strict` (the default), modules won't be allowed to require packages they don't explicitly list in their own dependencies.
          - If `loose`, packages will be allowed to access any other package that would have been hoisted to the top-level under 1.x installs.
          
          Note that, even in loose mode, hoisted require calls are unsafe and should be discouraged.
        "%
        | optional,
      pnpShebang | js2n.string.Matches "^(#!.*\n?)+" | optional,
      pnpUnpluggedFolder
        | String
        | doc "While Yarn attempts to reference and load packages directly from their zip archives, it may not always be possible. In those cases, Yarn will extract the files to the unplugged folder."
        | optional,
      pnpmStoreFolder
        | String
        | doc "By default, the store is stored in the `node_modules/.store` of the project. Sometimes in CI scenario's it is convenient to store this in a different location so it can be cached and reused."
        | optional,
      preferDeferredVersions
        | Bool
        | doc "If true, deferred versioning by default when running the `yarn version` family of commands."
        | optional,
      preferInteractive
        | Bool
        | doc "If true, Yarn will ask for your guidance when some actions would be improved by being disambiguated. Enabling this setting also unlocks some features (for example the `yarn add` command will suggest to reuse the same dependencies as other workspaces if pertinent)."
        | optional,
      preferReuse
        | Bool
        | doc "If true, `yarn add` will attempt to reuse the most common dependency range in other workspaces."
        | optional,
      preferTruncatedLines
        | Bool
        | doc "If true, Yarn will truncate lines that would go beyond the size of the terminal. If progress bars are disabled, lines will never be truncated."
        | optional,
      progressBarStyle
        | std.enum.TagOrString
        | [| '"default", 'hogsfather, 'jack, 'simba, 'patrick |]
        | optional,
      supportedArchitectures
        | {
          cpu
            | Array String
            | doc "See https://nodejs.org/docs/latest/api/process.html#processarch for the architectures supported by Node.js"
            | optional,
          libc | Array String | optional,
          os | Array String | optional,
          ..
        }
        | optional,
      taskPoolConcurrency
        | Number
        | doc "We default to the platform parallelism, but for some CI, `os.cpus` may not report accurate values and may overwhelm their containers."
        | optional,
      taskPoolMode
        | std.enum.TagOrString
        | [| 'workers, 'async |]
        | doc "By default will use workers when performing heavy tasks, such as converting tgz files to zip. This setting can be used to disable workers and use a regular in-thread async processing."
        | optional,
      telemetryInterval
        | Number
        | doc "By default we only send one request per week, making it impossible for us to track your usage with a lower granularity."
        | optional,
      telemetryUserId
        | String
        | doc m%"
          The default settings never assign unique IDs to anyone, so we have no way to know which data originates from which project. This setting can be used to force a user ID to be sent to our telemetry server.
          
          Frankly, it's only useful in some very specific use cases. For example, we use it on the Yarn repository in order to exclude our own usage from the public dashboards (since we run Yarn far more often here than anywhere else, the resulting data would be biased).
        "%
        | optional,
      tsEnableAutoTypes
        | Bool
        | doc "If true, Yarn will automatically add `@types` dependencies when running `yarn add` with packages that don't provide their own typings (as reported by the Algolia npm database). This behavior is enabled by default if you have a tsconfig.json file at the root of your project, or in your current workspace."
        | optional,
      unsafeHttpWhitelist
        | Array (
          js2n.string.Matches
            "[-a-zA-Z0-9@:%._\\+~#=]{1,256}\\.[a-zA-Z0-9()]{1,6}\\b([-a-zA-Z0-9()@:%_\\+.~#?&//=]*)"
        )
        | optional,
      virtualFolder
        | js2n.string.Matches "^.*__virtual__$"
        | doc "Due to a particularity in how Yarn installs packages which list peer dependencies, some packages will be mapped to multiple virtual directories that don't actually exist on the filesystem. This settings tells Yarn where to put them. Note that the folder name *must* be `__virtual__`."
        | optional,
      winLinkType
        | std.enum.TagOrString
        | [| 'symlinks, 'junctions |]
        | doc m%"
          Possible values are:
          
          - If `junctions`, Yarn will use Windows junctions when linking workspaces into `node_modules` directories, which are always absolute paths.
          - If `symlinks`, Yarn will use symlinks, which will use relative paths, and is consistent with Yarn's behavior on non-Windows platforms.
          
          Symlinks are preferred, but they require the Windows user running Yarn to have the `create symbolic links` privilege. As a result, we default to using junctions instead.
        "%
        | optional,
      yarnPath
        | String
        | doc m%"
          This binary will be executed instead of any other (including the global one) for any command run within the directory covered by the rc file. If the file extension ends with `.js` it will be required, and will be spawned in any other case.
          
          The `yarnPath` setting used to be the preferred way to install Yarn within a project, but we now recommend to use [Corepack](https://nodejs.org/api/corepack.html) in most cases.
        "%
        | optional,
      ..
    }