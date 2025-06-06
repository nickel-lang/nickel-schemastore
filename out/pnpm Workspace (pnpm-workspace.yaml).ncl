# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.catalog" =
        std.contract.Sequence
            [ js2n.record.MinProperties 1, refs."definitions.dependency" ],
      "definitions.dependency" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              js2n.record.PropertyNames
                (std.contract.Sequence
                  [ js2n.string.MaxLength 214, js2n.string.MinLength 1 ]),
              { _ | js2n.string.MinLength 1 }
            ],
      "definitions.optionalDependency" = { _ | String },
      "definitions.peerDependency" = { _ | String },
      "definitions.peerDependencyMeta" =
        {
            _ | {
              "optional"
                | Bool
                | doc "Specifies that this peer dependency is optional and should not be installed automatically."
                | optional,
              ..
            }
          },
    }
    in
  {
      allowNonAppliedPatches
        | Bool
        | doc "When true, installation won't fail if some of the patches from the \"patchedDependencies\" field were not applied."
        | optional,
      allowUnusedPatches
        | Bool
        | doc "When true, installation won't fail if some of the patches from the \"patchedDependencies\" field were not applied. (Previously named \"allowNonAppliedPatches\")"
        | optional,
      allowedDeprecatedVersions
        | { _ | Dyn }
        | doc "A list of deprecated versions that the warnings are suppressed."
        | optional,
      auditConfig
        | {
          ignoreCves
            | Array (js2n.string.Matches "^CVE-\\d{4}-\\d{4,7}$")
            | doc "A list of CVE IDs that will be ignored by \"pnpm audit\"."
            | optional,
          ignoreGhsas
            | Array (
              js2n.string.Matches "^GHSA(-[23456789cfghjmpqrvwx]{4}){3}$"
            )
            | doc "A list of GHSA Codes that will be ignored by \"pnpm audit\"."
            | optional,
        }
        | optional,
      autoInstallPeers
        | Bool
        | doc "When true, any missing non-optional peer dependencies are automatically installed."
        | optional,
      ca
        | String
        | doc "The Certificate Authority signing certificate that is trusted for SSL connections to the registry."
        | optional,
      cacheDir
        | String
        | doc "The location of the cache (package metadata and dlx)."
        | optional,
      cafile
        | String
        | doc "A path to a file containing one or multiple Certificate Authority signing certificates."
        | optional,
      catalog
        | js2n.record.MinProperties 1
        | refs."definitions.dependency"
        | doc m%"
          Define dependency version ranges as reusable constants,
          for later reference in package.json files.
          This (singular) field creates a catalog named default.
          
        "%
        | optional,
      catalogMode
        | std.enum.TagOrString
        | [| 'manual, 'prefer, 'strict |]
        | doc "Controlling if and how dependencies are added to the default catalog"
        | optional,
      catalogs
        | js2n.record.MinProperties 1
        | {
          _ | std.contract.Sequence [ refs."definitions.catalog", { _ | Dyn } ]
        }
        | doc "Define arbitrarily named catalogs"
        | optional,
      cert
        | String
        | doc "A client certificate to pass when accessing the registry."
        | optional,
      childConcurrency
        | Number
        | doc "The maximum number of child processes to allocate simultaneously to build node_modules."
        | optional,
      color
        | std.enum.TagOrString
        | [| 'never, 'auto, 'always |]
        | doc "Controls colors in the output."
        | optional,
      configDependencies
        | { _ | Dyn }
        | doc "Config dependencies allow you to share and centralize configuration files, settings, and hooks across multiple projects. They are installed before all regular dependencies ('dependencies', 'devDependencies', 'optionalDependencies'), making them ideal for setting up custom hooks, patches, and catalog entries."
        | optional,
      dangerouslyAllowAllBuilds
        | Bool
        | doc "If set to true, all build scripts (e.g. preinstall, install, postinstall) from dependencies will run automatically, without requiring approval."
        | optional,
      dedupeDirectDeps
        | Bool
        | doc "When set to true, dependencies that are already symlinked to the root node_modules directory of the workspace will not be symlinked to subproject node_modules directories."
        | optional,
      dedupeInjectedDeps
        | Bool
        | doc "When this setting is enabled, dependencies that are injected will be symlinked from the workspace whenever possible."
        | optional,
      dedupePeerDependents
        | Bool
        | doc "When this setting is set to true, packages with peer dependencies will be deduplicated after peers resolution."
        | optional,
      deployAllFiles
        | Bool
        | doc "When deploying a package or installing a local package, all files of the package are copied."
        | optional,
      disallowWorkspaceCycles
        | Bool
        | doc "When set to true, installation will fail if the workspace has cycles."
        | optional,
      dlxCacheMaxAge
        | Number
        | doc "The time in minutes after which dlx cache expires."
        | optional,
      enableModulesDir
        | Bool
        | doc "When false, pnpm will not write any files to the modules directory (node_modules)."
        | optional,
      enablePrePostScripts
        | Bool
        | doc "When true, pnpm will run any pre/post scripts automatically."
        | optional,
      engineStrict
        | Bool
        | doc "If this is enabled, pnpm will not install any package that claims to not be compatible with the current Node version."
        | optional,
      executionEnv
        | {
          nodeVersion
            | String
            | doc "Specifies which exact Node.js version should be used for the project's runtime."
            | optional,
        }
        | optional,
      extendNodePath
        | Bool
        | doc "When false, the NODE_PATH environment variable is not set in the command shims."
        | optional,
      fetchRetries
        | Number
        | doc "How many times to retry if pnpm fails to fetch from the registry."
        | optional,
      fetchRetryFactor
        | Number
        | doc "The exponential factor for retry backoff."
        | optional,
      fetchRetryMaxtimeout
        | Number
        | doc "The maximum fallback timeout to ensure the retry factor does not make requests too long."
        | optional,
      fetchRetryMintimeout
        | Number
        | doc "The minimum (base) timeout for retrying requests."
        | optional,
      fetchTimeout
        | Number
        | doc "The maximum amount of time to wait for HTTP requests to complete."
        | optional,
      forceLegacyDeploy
        | Bool
        | doc "By default, pnpm deploy will try creating a dedicated lockfile from a shared lockfile for deployment. If this setting is set to true, the legacy deploy behavior will be used."
        | optional,
      gitBranchLockfile
        | Bool
        | doc "When set to true, the generated lockfile name after installation will be named based on the current branch name to completely avoid merge conflicts."
        | optional,
      gitChecks
        | Bool
        | doc "Check if current branch is your publish branch, clean, and up-to-date with remote."
        | optional,
      gitShallowHosts
        | Array String
        | doc "When fetching dependencies that are Git repositories, if the host is listed in this setting, pnpm will use shallow cloning to fetch only the needed commit, not all the history."
        | optional,
      globalBinDir
        | String
        | doc "Allows to set the target directory for the bin files of globally installed packages."
        | optional,
      globalDir
        | String
        | doc "Specify a custom directory to store global packages."
        | optional,
      globalPnpmfile
        | String
        | doc "The location of a global pnpmfile. A global pnpmfile is used by all projects during installation."
        | optional,
      hoist
        | Bool
        | doc "When true, all dependencies are hoisted to node_modules/.pnpm/node_modules."
        | optional,
      hoistPattern
        | Array String
        | doc "Tells pnpm which packages should be hoisted to node_modules/.pnpm/node_modules"
        | optional,
      hoistWorkspacePackages
        | Bool
        | doc "When true, packages from the workspaces are symlinked to either <workspace_root>/node_modules/.pnpm/node_modules or to <workspace_root>/node_modules depending on other hoisting settings (hoistPattern and publicHoistPattern)."
        | optional,
      httpsProxy
        | String
        | doc "A proxy to use for outgoing HTTPS requests. If the HTTPS_PROXY, https_proxy, HTTP_PROXY or http_proxy environment variables are set, their values will be used instead."
        | optional,
      ignoreCompatibilityDb
        | Bool
        | doc "During installation the dependencies of some packages are automatically patched. If you want to disable this, set this config to false."
        | optional,
      ignoreDepScripts
        | Bool
        | doc "Do not execute any scripts of the installed packages. Scripts of the projects are executed."
        | optional,
      ignorePatchFailures
        | Bool
        | doc "Default is undefined. Errors out when a patch with an exact version or version range fails. Ignores failures from name-only patches. When true, prints a warning instead of failing when any patch cannot be applied. When false, errors out for any patch failure."
        | optional,
      ignorePnpmfile
        | Bool
        | doc ".pnpmfile.cjs will be ignored. Useful together with --ignore-scripts when you want to make sure that no script gets executed during install."
        | optional,
      ignoreScripts
        | Bool
        | doc "Do not execute any scripts defined in the project package.json and its dependencies."
        | optional,
      ignoreWorkspaceCycles
        | Bool
        | doc "When set to true, no workspace cycle warnings will be printed."
        | optional,
      ignoreWorkspaceRootCheck
        | Bool
        | doc "Adding a new dependency to the root workspace package fails, unless the --ignore-workspace-root-check or -w flag is used."
        | optional,
      ignoredBuiltDependencies
        | Array String
        | doc "A list of package names that should not be built during installation."
        | optional,
      ignoredOptionalDependencies
        | Array String
        | doc "A list of optional dependencies that the install should be skipped."
        | optional,
      includeWorkspaceRoot
        | Bool
        | doc "When executing commands recursively in a workspace, execute them on the root workspace project as well."
        | optional,
      injectWorkspacePackages
        | Bool
        | doc "Enables hard-linking of all local workspace dependencies instead of symlinking them."
        | optional,
      key
        | String
        | doc "A client key to pass when accessing the registry."
        | optional,
      linkWorkspacePackages
        | std.contract.any_of
          [ Bool, std.contract.Sequence [ std.enum.TagOrString, [| 'deep |] ] ]
        | doc "If this is enabled, locally available packages are linked to node_modules instead of being downloaded from the registry."
        | optional,
      localAddress
        | String
        | doc "The IP address of the local interface to use when making connections to the npm registry."
        | optional,
      lockfile
        | Bool
        | doc "When set to false, pnpm won't read or generate a pnpm-lock.yaml file."
        | optional,
      lockfileIncludeTarballUrl
        | Bool
        | doc "Add the full URL to the package's tarball to every entry in pnpm-lock.yaml."
        | optional,
      loglevel
        | std.enum.TagOrString
        | [| 'error, 'warn, 'info, 'debug |]
        | doc "Any logs at or higher than the given level will be shown. "
        | optional,
      managePackageManagerVersions
        | Bool
        | doc "When enabled, pnpm will automatically download and run the version of pnpm specified in the packageManager field of package.json."
        | optional,
      maxsockets
        | Number
        | doc "The maximum number of connections to use per origin (protocol/host/port combination)."
        | optional,
      mergeGitBranchLockfilesBranchPattern
        | js2n.Nullable (Array Dyn)
        | doc "This configuration matches the current branch name to determine whether to merge all git branch lockfile files. "
        | optional,
      modulesCacheMaxAge
        | Number
        | doc "The time in minutes after which orphan packages from the modules directory should be removed."
        | optional,
      modulesDir
        | String
        | doc "The directory in which dependencies will be installed (instead of node_modules)."
        | optional,
      networkConcurrency
        | Number
        | doc "Controls the maximum number of HTTP(S) requests to process simultaneously."
        | optional,
      neverBuiltDependencies
        | Array String
        | doc "A list of dependencies to run builds for."
        | optional,
      nodeLinker
        | std.enum.TagOrString
        | [| 'pnp, 'hoisted, 'isolated |]
        | doc "Defines what linker should be used for installing Node packages."
        | optional,
      nodeOptions
        | String
        | doc "Options to pass through to Node.js via the NODE_OPTIONS environment variable."
        | optional,
      nodeVersion
        | String
        | doc "The Node.js version to use when checking a package's engines setting."
        | optional,
      noproxy
        | String
        | doc "A comma-separated string of domain extensions that a proxy should not be used for."
        | optional,
      npmPath
        | String
        | doc "The location of the npm binary that pnpm uses for some actions, like publishing."
        | optional,
      onlyBuiltDependencies
        | Array String
        | doc "A list of package names that are allowed to be executed during installation."
        | optional,
      onlyBuiltDependenciesFile
        | String
        | doc "Specifies a JSON file that lists the only packages permitted to run installation scripts during the pnpm install process."
        | optional,
      optimisticRepeatInstall
        | Bool
        | doc "When enabled, a fast check will be performed before proceeding to installation. This way a repeat install or an install on a project with everything up-to-date becomes a lot faster."
        | optional,
      overrides
        | { _ | Dyn }
        | doc "Used to override any dependency in the dependency graph."
        | optional,
      packageExtensions
        | {
          _ | {
            dependencies
              | refs."definitions.dependency"
              | { _ | Dyn }
              | optional,
            optionalDependencies
              | refs."definitions.optionalDependency"
              | optional,
            peerDependencies | refs."definitions.peerDependency" | optional,
            peerDependenciesMeta
              | refs."definitions.peerDependencyMeta"
              | optional,
          }
        }
        | js2n.record.FieldsMatch "^.+$"
        | doc "Used to extend the existing package definitions with additional information."
        | optional,
      packageImportMethod
        | std.enum.TagOrString
        | [| 'clone-or-copy, 'clone, 'copy, 'hardlink, 'auto |]
        | doc "Controls the way packages are imported from the store (if you want to disable symlinks inside node_modules, then you need to change the nodeLinker setting, not this one)."
        | optional,
      packageManagerStrict
        | Bool
        | doc "If this setting is disabled, pnpm will not fail if a different package manager is specified in the packageManager field of package.json. When enabled, only the package name is checked (since pnpm v9.2.0), so you can still run any version of pnpm regardless of the version specified in the packageManager field."
        | optional,
      packageManagerStrictVersion
        | Bool
        | doc "When enabled, pnpm will fail if its version doesn't exactly match the version specified in the packageManager field of package.json."
        | optional,
      packages
        | js2n.array.UniqueItems
        | Array String
        | doc "Workspace package paths. Glob patterns are supported"
        | optional,
      patchedDependencies
        | { _ | Dyn }
        | doc "A list of dependencies that are patched."
        | optional,
      patchesDir
        | String
        | doc "The generated patch file will be saved to this directory."
        | optional,
      peerDependencyRules
        | {
          allowAny
            | Array String
            | doc "Any peer dependency matching the pattern will be resolved from any version, regardless of the range specified in \"peerDependencies\"."
            | optional,
          allowedVersions
            | { _ | Dyn }
            | doc "Unmet peer dependency warnings will not be printed for peer dependencies of the specified range."
            | optional,
          ignoreMissing
            | Array String
            | doc "pnpm will not print warnings about missing peer dependencies from this list."
            | optional,
        }
        | optional,
      peersSuffixMaxLength
        | Number
        | doc "Max length of the peer IDs suffix added to dependency keys in the lockfile. If the suffix is longer, it is replaced with a hash."
        | optional,
      pnpmfile | String | doc "The location of the local pnpmfile." | optional,
      preferFrozenLockfile
        | Bool
        | doc "When set to true and the available pnpm-lock.yaml satisfies the package.json dependencies directive, a headless installation is performed."
        | optional,
      preferSymlinkedExecutables
        | Bool
        | doc "Create symlinks to executables in node_modules/.bin instead of command shims. This setting is ignored on Windows, where only command shims work."
        | optional,
      preferWorkspacePackages
        | Bool
        | doc "If this is enabled, local packages from the workspace are preferred over packages from the registry, even if there is a newer version of the package in the registry."
        | optional,
      proxy
        | String
        | doc "A proxy to use for outgoing http requests. If the HTTP_PROXY or http_proxy environment variables are set, proxy settings will be honored by the underlying request library."
        | optional,
      publicHoistPattern
        | Array String
        | doc "Unlike hoistPattern, which hoists dependencies to a hidden modules directory inside the virtual store, publicHoistPattern hoists dependencies matching the pattern to the root modules directory."
        | optional,
      publishBranch
        | String
        | doc "The primary branch of the repository which is used for publishing the latest changes."
        | optional,
      recursiveInstall
        | Bool
        | doc "If this is enabled, the primary behaviour of pnpm install becomes that of pnpm install -r, meaning the install is performed on all workspace or subdirectory packages."
        | optional,
      registry
        | String
        | doc "The base URL of the npm package registry (trailing slash included)."
        | optional,
      registrySupportsTimeField
        | Bool
        | doc "Set this to true if the registry that you are using returns the \"time\" field in the abbreviated metadata."
        | optional,
      requiredScripts
        | Array String
        | doc "A list of scripts that must exist in each project."
        | optional,
      resolutionMode
        | std.enum.TagOrString
        | [| 'lowest-direct, 'time-based, 'highest |]
        | doc "Determines how pnpm resolves dependencies, See https://pnpm.io/npmrc#resolution-mode"
        | optional,
      resolvePeersFromWorkspaceRoot
        | Bool
        | doc "When enabled, dependencies of the root workspace project are used to resolve peer dependencies of any projects in the workspace."
        | optional,
      savePrefix
        | std.enum.TagOrString
        | [| '"", '"~", '"^" |]
        | doc "Configure how versions of packages installed to a package.json file get prefixed."
        | optional,
      saveWorkspaceProtocol
        | std.contract.any_of
          [
            Bool,
            std.contract.Sequence [ std.enum.TagOrString, [| 'rolling |] ]
          ]
        | doc "This setting controls how dependencies that are linked from the workspace are added to package.json."
        | optional,
      scriptShell
        | String
        | doc "The shell to use for scripts run with the pnpm run command."
        | optional,
      shamefullyHoist
        | Bool
        | doc "By default, pnpm creates a semistrict node_modules, meaning dependencies have access to undeclared dependencies but modules outside of node_modules do not."
        | optional,
      sharedWorkspaceLockfile
        | Bool
        | doc "If this is enabled, pnpm creates a single pnpm-lock.yaml file in the root of the workspace."
        | optional,
      shellEmulator
        | Bool
        | doc "When true, pnpm will use a JavaScript implementation of a bash-like shell to execute scripts."
        | optional,
      sideEffectsCache
        | Bool
        | doc "Use and cache the results of (pre/post)install hooks."
        | optional,
      sideEffectsCacheReadonly
        | Bool
        | doc "Only use the side effects cache if present, do not create it for new packages."
        | optional,
      stateDir
        | String
        | doc "The location where all the packages are saved on the disk."
        | optional,
      storeDir
        | String
        | doc "The location where all the packages are saved on the disk."
        | optional,
      strictDepBuilds
        | Bool
        | doc "When strictDepBuilds is enabled, the installation will exit with a non-zero exit code if any dependencies have unreviewed build scripts (aka postinstall scripts)."
        | optional,
      strictPeerDependencies
        | Bool
        | doc "If this is enabled, commands will fail if there is a missing or invalid peer dependency in the tree."
        | optional,
      strictSsl
        | Bool
        | doc "Whether or not to do SSL key validation when making requests to the registry via HTTPS."
        | optional,
      strictStorePkgContentCheck
        | Bool
        | doc "Some registries allow the exact same content to be published under different package names and/or versions. "
        | optional,
      supportedArchitectures
        | {
          cpu | Array String | optional,
          libc | Array String | optional,
          os | Array String | optional,
        }
        | doc "Specifies architectures for which you'd like to install optional dependencies, even if they don't match the architecture of the system running the install."
        | optional,
      symlink
        | Bool
        | doc "When symlink is set to false, pnpm creates a virtual store directory without any symlinks. It is a useful setting together with nodeLinker=pnp."
        | optional,
      syncInjectedDepsAfterScripts
        | js2n.array.UniqueItems
        | Array String
        | doc "Injected workspace dependencies are collections of hardlinks, which don't add or remove the files when their sources change."
        | optional,
      tag
        | String
        | doc "If you pnpm add a package and you don't provide a specific version, then it will install the package at the version registered under the tag from this setting."
        | optional,
      unsafePerm
        | Bool
        | doc "Set to true to enable UID/GID switching when running package scripts. If set explicitly to false, then installing as a non-root user will fail."
        | optional,
      updateConfig
        | {
          ignoreDependencies
            | Array String
            | doc "A list of packages that should be ignored when running \"pnpm outdated\" or \"pnpm update --latest\"."
            | optional,
        }
        | optional,
      updateNotifier
        | Bool
        | doc "When true, pnpm will check for updates to the installed packages and notify the user."
        | optional,
      useBetaCli
        | Bool
        | doc "Experimental option that enables beta features of the CLI."
        | optional,
      useNodeVersion
        | String
        | doc "Specifies which exact Node.js version should be used for the project's runtime."
        | optional,
      useStderr
        | Bool
        | doc "When true, all the output is written to stderr."
        | optional,
      verifyDepsBeforeRun
        | js2n.Enum [ "install", "warn", "error", "prompt", false ]
        | doc "This setting allows the checking of the state of dependencies before running scripts."
        | optional,
      verifyStoreIntegrity
        | Bool
        | doc "By default, if a file in the store has been modified, the content of this file is checked before linking it to a project's node_modules. "
        | optional,
      virtualStoreDir
        | String
        | doc "The directory with links to the store."
        | optional,
      virtualStoreDirMaxLength
        | Number
        | doc "Sets the maximum allowed length of directory names inside the virtual store directory (node_modules/.pnpm)."
        | optional,
    }