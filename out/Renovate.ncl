# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      abandonmentThreshold
        | js2n.Nullable String
        | doc "Flags packages that have not been updated within this period as abandoned."
        | optional,
      addLabels
        | Array String
        | doc "Labels to add to Pull Request."
        | optional,
      additionalBranchPrefix
        | String
        | doc "Additional string value to be appended to `branchPrefix`."
        | optional,
      additionalReviewers
        | Array String
        | doc "Additional reviewers for Pull Requests (in contrast to `reviewers`, this option adds to the existing reviewer list, rather than replacing it)."
        | optional,
      allowCustomCrateRegistries
        | Bool
        | doc "Set this to `true` to allow custom crate registries."
        | optional,
      allowPlugins
        | Bool
        | doc "Set this to `true` if repositories are allowed to run install plugins."
        | optional,
      allowScripts
        | Bool
        | doc "Set this to `true` if repositories are allowed to run install scripts."
        | optional,
      allowedCommands
        | Array String
        | doc "A list of regular expressions that decide which commands are allowed in post-upgrade tasks."
        | optional,
      allowedEnv
        | Array String
        | doc "List of allowed patterns for environment variable names in repository env config."
        | optional,
      allowedHeaders
        | Array String
        | doc "List of allowed patterns for header names in repository hostRules config."
        | optional,
      ansible
        | { _ | Dyn }
        | doc "Configuration object for the ansible manager"
        | optional,
      ansible-galaxy
        | { _ | Dyn }
        | doc "Configuration object for the ansible-galaxy manager"
        | optional,
      argocd
        | { _ | Dyn }
        | doc "Configuration object for the argocd manager"
        | optional,
      asdf
        | { _ | Dyn }
        | doc "Configuration object for the asdf manager"
        | optional,
      assignAutomerge
        | Bool
        | doc "Assign reviewers and assignees even if the PR is to be automerged."
        | optional,
      assignees
        | Array String
        | doc "Assignees for Pull Request (either username or email address depending on the platform)."
        | optional,
      assigneesFromCodeOwners
        | Bool
        | doc "Determine assignees based on configured code owners and changes in PR."
        | optional,
      assigneesSampleSize
        | js2n.Nullable std.number.Integer
        | doc "Take a random sample of given size from `assignees`."
        | optional,
      autoApprove
        | Bool
        | doc "Set to `true` to automatically approve PRs."
        | optional,
      autoReplaceGlobalMatch
        | Bool
        | doc "Control whether replacement regular expressions are global matches or only the first match."
        | optional,
      autodiscover | Bool | doc "Autodiscover all repositories." | optional,
      autodiscoverFilter
        | Array String
        | doc "Filter the list of autodiscovered repositories."
        | optional,
      autodiscoverNamespaces
        | js2n.Nullable (Array String)
        | doc "Filter the list of autodiscovered repositories by namespaces."
        | optional,
      autodiscoverProjects
        | js2n.Nullable (Array String)
        | doc "Filter the list of autodiscovered repositories by project names."
        | optional,
      autodiscoverRepoOrder
        | std.enum.TagOrString
        | [| 'desc, 'asc |]
        | doc "The order method for autodiscover server side repository search."
        | optional,
      autodiscoverRepoSort
        | std.enum.TagOrString
        | [| 'id, 'size, 'updated, 'created, 'alpha |]
        | doc "The sort method for autodiscover server side repository search."
        | optional,
      autodiscoverTopics
        | js2n.Nullable (Array String)
        | doc "Filter the list of autodiscovered repositories by topics."
        | optional,
      automerge
        | Bool
        | doc "Whether to automerge branches/PRs automatically, without human intervention."
        | optional,
      automergeComment
        | String
        | doc "PR comment to add to trigger automerge. Only used if `automergeType=pr-comment`."
        | optional,
      automergeSchedule
        | std.contract.any_of [ Array String, String ]
        | doc "Limit automerge to these times of day or week."
        | optional,
      automergeStrategy
        | std.enum.TagOrString
        | [| 'squash, 'rebase, 'merge-commit, 'fast-forward, 'auto |]
        | doc "The merge strategy to use when automerging PRs. Used only if `automergeType=pr`."
        | optional,
      automergeType
        | std.enum.TagOrString
        | [| 'pr-comment, 'pr, 'branch |]
        | doc "How to automerge, if enabled."
        | optional,
      azure-pipelines
        | { _ | Dyn }
        | doc "Configuration object for the azure-pipelines manager"
        | optional,
      azureWorkItemId
        | std.number.Integer
        | doc "The id of an existing work item on Azure Boards to link to each PR."
        | optional,
      baseBranches
        | Array String
        | doc "List of one or more custom base branches defined as exact strings and/or via regex expressions."
        | optional,
      baseDir
        | String
        | doc "The base directory for Renovate to store local files, including repository files and cache. If left empty, Renovate will create its own temporary directory to use."
        | optional,
      batect
        | { _ | Dyn }
        | doc "Configuration object for the batect manager"
        | optional,
      batect-wrapper
        | { _ | Dyn }
        | doc "Configuration object for the batect-wrapper manager"
        | optional,
      bazel
        | { _ | Dyn }
        | doc "Configuration object for the bazel manager"
        | optional,
      bazel-module
        | { _ | Dyn }
        | doc "Configuration object for the bazel-module manager"
        | optional,
      bazelisk
        | { _ | Dyn }
        | doc "Configuration object for the bazelisk manager"
        | optional,
      bbAutoResolvePrTasks
        | Bool
        | doc "The PR tasks will be automatically completed after the PR is raised."
        | optional,
      bbUseDefaultReviewers
        | Bool
        | doc "Use the default reviewers (Bitbucket only)."
        | optional,
      bbUseDevelopmentBranch
        | Bool
        | doc "Use the repository's [development branch](https://support.atlassian.com/bitbucket-cloud/docs/branch-a-repository/#The-branching-model) as the repository's default branch."
        | optional,
      bicep
        | { _ | Dyn }
        | doc "Configuration object for the bicep manager"
        | optional,
      binarySource
        | std.enum.TagOrString
        | [| 'hermit, 'install, 'docker, 'global |]
        | doc "Controls how third-party tools like npm or Gradle are called: directly, via Docker sidecar containers, or via dynamic install."
        | optional,
      bitbucket-pipelines
        | { _ | Dyn }
        | doc "Configuration object for the bitbucket-pipelines manager"
        | optional,
      bitrise
        | { _ | Dyn }
        | doc "Configuration object for the bitrise manager"
        | optional,
      branchConcurrentLimit
        | js2n.Nullable std.number.Integer
        | doc "Limit to a maximum of x concurrent branches. 0 means no limit, `null` (default) inherits value from `prConcurrentLimit`."
        | optional,
      branchName | String | doc "Branch name template." | optional,
      branchNameStrict
        | Bool
        | doc "Whether to be strict about the use of special characters within the branch name."
        | optional,
      branchPrefix
        | String
        | doc "Prefix to use for all branch names."
        | optional,
      branchPrefixOld
        | String
        | doc "Old branchPrefix value to check for existing PRs."
        | optional,
      branchTopic | String | doc "Branch topic." | optional,
      buildkite
        | { _ | Dyn }
        | doc "Configuration object for the buildkite manager"
        | optional,
      buildpacks
        | { _ | Dyn }
        | doc "Configuration object for the buildpacks manager"
        | optional,
      bumpVersion
        | std.enum.TagOrString
        | [| 'prerelease, 'patch, 'minor, 'major |]
        | doc "Bump the version in the package file being updated."
        | optional,
      bumpVersions
        | Array
          {
            bumpType
              | String
              | doc "The semver level to use when bumping versions. This is used by the `bumpVersions` feature."
              | optional,
            description
              | std.contract.any_of [ Array String, String ]
              | optional,
            filePatterns
              | Array String
              | doc "A list of patterns to match files that contain the version string."
              | optional,
            matchStrings
              | Array String
              | doc "Queries to use. Valid only within `bumpVersions` or `customManagers` object."
              | optional,
            name
              | String
              | doc "A name for the bumpVersion config. This is used for logging and debugging."
              | optional,
            ..
          }
        | doc "A list of bumpVersion config options to bump generic version numbers."
        | optional,
      bun
        | { _ | Dyn }
        | doc "Configuration object for the bun manager"
        | optional,
      bun-version
        | { _ | Dyn }
        | doc "Configuration object for the bun-version manager"
        | optional,
      bundler
        | { _ | Dyn }
        | doc "Configuration object for the bundler manager"
        | optional,
      cacheDir
        | String
        | doc "The directory where Renovate stores its cache. If left empty, Renovate creates a subdirectory within the `baseDir`."
        | optional,
      cacheHardTtlMinutes
        | std.number.Integer
        | doc "Maximum duration in minutes to keep datasource cache entries."
        | optional,
      cachePrivatePackages
        | Bool
        | doc "Cache private packages in the datasource cache. This is useful for self-hosted setups"
        | optional,
      cacheTtlOverride
        | { _ | Dyn }
        | doc "An object that contains cache namespace TTL override values."
        | optional,
      cake
        | { _ | Dyn }
        | doc "Configuration object for the cake manager"
        | optional,
      cargo
        | { _ | Dyn }
        | doc "Configuration object for the cargo manager"
        | optional,
      cdnurl
        | { _ | Dyn }
        | doc "Configuration object for the cdnurl manager"
        | optional,
      checkedBranches
        | Array String
        | doc "A list of branch names to mark for creation or rebasing as if it was selected in the Dependency Dashboard issue."
        | optional,
      circleci
        | { _ | Dyn }
        | doc "Configuration object for the circleci manager"
        | optional,
      cloneSubmodules
        | Bool
        | doc "Set to `true` to initialize submodules during repository clone."
        | optional,
      cloneSubmodulesFilter
        | Array String
        | doc "List of submodules names or patterns to clone when cloneSubmodules=true."
        | optional,
      cloudbuild
        | { _ | Dyn }
        | doc "Configuration object for the cloudbuild manager"
        | optional,
      cocoapods
        | { _ | Dyn }
        | doc "Configuration object for the cocoapods manager"
        | optional,
      commitBody
        | String
        | doc "Commit message body template. Will be appended to commit message, separated by two line returns."
        | optional,
      commitBodyTable
        | Bool
        | doc "If enabled, append a table in the commit message body describing all updates in the commit."
        | optional,
      commitMessage
        | String
        | doc "Message to use for commit messages and pull request titles."
        | optional,
      commitMessageAction
        | String
        | doc "Action verb to use in commit messages and PR titles."
        | optional,
      commitMessageExtra
        | String
        | doc "Extra description used after the commit message topic - typically the version."
        | optional,
      commitMessageLowerCase
        | std.enum.TagOrString
        | [| 'never, 'auto |]
        | doc "Lowercase PR- and commit titles."
        | optional,
      commitMessagePrefix
        | String
        | doc "Prefix to add to start of commit messages and PR titles. Uses a semantic prefix if `semanticCommits` is enabled."
        | optional,
      commitMessageSuffix
        | String
        | doc "Suffix to add to end of commit messages and PR titles."
        | optional,
      commitMessageTopic
        | String
        | doc "The upgrade topic/noun used in commit messages and PR titles."
        | optional,
      composer
        | { _ | Dyn }
        | doc "Configuration object for the composer manager"
        | optional,
      composerIgnorePlatformReqs
        | Array String
        | doc "Configure use of `--ignore-platform-reqs` or `--ignore-platform-req` for the Composer package manager."
        | optional,
      conan
        | { _ | Dyn }
        | doc "Configuration object for the conan manager"
        | optional,
      confidential
        | Bool
        | doc "If enabled, issues created by Renovate are set as confidential."
        | optional,
      configMigration
        | Bool
        | doc "Enable this to get config migration PRs when needed."
        | optional,
      configWarningReuseIssue
        | Bool
        | doc "Set this to `true` to make Renovate reuse/reopen an existing closed Config Warning issue, instead of opening a new one each time."
        | optional,
      constraints
        | { _ | String }
        | doc "Configuration object to define language or manager version constraints."
        | optional,
      constraintsFiltering
        | std.enum.TagOrString
        | [| 'strict, 'none |]
        | doc "Perform release filtering based on language constraints."
        | optional,
      containerbaseDir
        | String
        | doc "The directory where Renovate stores its containerbase cache. If left empty, Renovate creates a subdirectory within the `cacheDir`."
        | optional,
      copier
        | { _ | Dyn }
        | doc "Configuration object for the copier manager"
        | optional,
      cpanfile
        | { _ | Dyn }
        | doc "Configuration object for the cpanfile manager"
        | optional,
      crossplane
        | { _ | Dyn }
        | doc "Configuration object for the crossplane manager"
        | optional,
      customDatasources
        | { _ | Dyn }
        | doc "Defines custom datasources for usage by managers."
        | optional,
      customEnvVariables
        | { _ | Dyn }
        | doc "Custom environment variables for child processes and sidecar Docker containers."
        | optional,
      customManagers
        | Array
          {
            autoReplaceStringTemplate
              | String
              | doc "Optional `extractVersion` for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            currentValueTemplate
              | String
              | doc "Optional `currentValue` for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            customType
              | std.enum.TagOrString
              | [| 'regex, 'jsonata |]
              | doc "Custom manager to use. Valid only within a `customManagers` object."
              | optional,
            datasourceTemplate
              | String
              | doc "Optional datasource for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            depNameTemplate
              | String
              | doc "Optional depName for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            depTypeTemplate
              | String
              | doc "Optional `depType` for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            description
              | std.contract.any_of [ Array String, String ]
              | optional,
            extractVersionTemplate
              | String
              | doc "Optional `extractVersion` for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            fileFormat
              | std.enum.TagOrString
              | [| 'yaml, 'toml, 'json |]
              | doc "It specifies the syntax of the package file being managed by the custom JSONata manager."
              | optional,
            matchStrings
              | Array String
              | doc "Queries to use. Valid only within `bumpVersions` or `customManagers` object."
              | optional,
            matchStringsStrategy
              | std.enum.TagOrString
              | [| 'combination, 'recursive, 'any |]
              | doc "Strategy how to interpret matchStrings."
              | optional,
            packageNameTemplate
              | String
              | doc "Optional packageName for extracted dependencies, else defaults to `depName` value. Valid only within a `customManagers` object."
              | optional,
            registryUrlTemplate
              | String
              | doc "Optional registry URL for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            versioningTemplate
              | String
              | doc "Optional versioning for extracted dependencies. Valid only within a `customManagers` object."
              | optional,
            ..
          }
        | doc "Custom managers using regex matching."
        | optional,
      customizeDashboard
        | { _ | String }
        | doc "Customize sections in the Dependency Dashboard issue."
        | optional,
      defaultRegistryUrls
        | js2n.Nullable (Array String)
        | doc "List of registry URLs to use as the default for a datasource."
        | optional,
      deleteConfigFile
        | Bool
        | doc "If set to `true`, Renovate tries to delete the self-hosted config file after reading it."
        | optional,
      dependencyDashboard
        | Bool
        | doc "Whether to create a \"Dependency Dashboard\" issue in the repository."
        | optional,
      dependencyDashboardApproval
        | Bool
        | doc "Controls if updates need manual approval from the Dependency Dashboard issue before PRs are created."
        | optional,
      dependencyDashboardAutoclose
        | Bool
        | doc "Set to `true` to let Renovate close the Dependency Dashboard issue if there are no more updates."
        | optional,
      dependencyDashboardFooter
        | String
        | doc "Any text added here will be placed last in the Dependency Dashboard issue body, with a divider separator before it."
        | optional,
      dependencyDashboardHeader
        | String
        | doc "Any text added here will be placed first in the Dependency Dashboard issue body."
        | optional,
      dependencyDashboardLabels
        | js2n.Nullable (Array String)
        | doc "These labels will always be applied on the Dependency Dashboard issue, even when they have been removed manually."
        | optional,
      dependencyDashboardOSVVulnerabilitySummary
        | std.enum.TagOrString
        | [| 'unresolved, 'all, 'none |]
        | doc "Control if the Dependency Dashboard issue lists CVEs supplied by [osv.dev](https://osv.dev)."
        | optional,
      dependencyDashboardReportAbandonment
        | Bool
        | doc "Controls whether abandoned packages are reported in the dependency dashboard."
        | optional,
      dependencyDashboardTitle
        | String
        | doc "Title for the Dependency Dashboard issue."
        | optional,
      deps-edn
        | { _ | Dyn }
        | doc "Configuration object for the deps-edn manager"
        | optional,
      description
        | std.contract.any_of [ Array String, String ]
        | doc "Plain text description for a config or preset."
        | optional,
      detectGlobalManagerConfig
        | Bool
        | doc "If `true`, Renovate tries to detect global manager configuration from the file system."
        | optional,
      detectHostRulesFromEnv
        | Bool
        | doc "If `true`, Renovate tries to detect host rules from environment variables."
        | optional,
      devbox
        | { _ | Dyn }
        | doc "Configuration object for the devbox manager"
        | optional,
      devcontainer
        | { _ | Dyn }
        | doc "Configuration object for the devcontainer manager"
        | optional,
      digest
        | { _ | Dyn }
        | doc "Configuration to apply when updating a digest (no change in tag/version)."
        | optional,
      docker-compose
        | { _ | Dyn }
        | doc "Configuration object for the docker-compose manager"
        | optional,
      dockerChildPrefix
        | String
        | doc "Change this value to add a prefix to the Renovate Docker sidecar container names and labels."
        | optional,
      dockerCliOptions
        | String
        | doc "Pass CLI flags to `docker run` command when `binarySource=docker`."
        | optional,
      dockerMaxPages
        | std.number.Integer
        | doc "By default, Renovate fetches up to 20 pages of Docker tags from registries. But you can set your own limit with this config option."
        | optional,
      dockerSidecarImage
        | String
        | doc "Change this value to override the default Renovate sidecar image."
        | optional,
      dockerUser
        | String
        | doc "Set the `UID` and `GID` for Docker-based binaries if you use `binarySource=docker`."
        | optional,
      dockerfile
        | { _ | Dyn }
        | doc "Configuration object for the dockerfile manager"
        | optional,
      draftPR
        | Bool
        | doc "If set to `true` then Renovate creates draft PRs, instead of normal status PRs."
        | optional,
      droneci
        | { _ | Dyn }
        | doc "Configuration object for the droneci manager"
        | optional,
      dryRun
        | std.enum.TagOrString
        | [| 'full, 'lookup, 'extract |]
        | doc "If enabled, perform a dry run by logging messages instead of creating/updating/deleting branches and PRs."
        | optional,
      enabled | Bool | doc "Enable or disable Renovate bot." | optional,
      enabledManagers
        | Array String
        | doc "A list of package managers to enable. Only managers on the list are enabled."
        | optional,
      encrypted
        | js2n.Nullable ({ _ | Dyn })
        | doc "An object containing configuration encrypted with project key."
        | optional,
      encryptedWarning
        | String
        | doc "Warning text to use if encrypted config is found."
        | optional,
      endpoint
        | js2n.Nullable String
        | doc "Custom endpoint to use."
        | optional,
      env
        | { _ | Dyn }
        | doc "Environment variables that Renovate uses when executing package manager commands."
        | optional,
      excludeCommitPaths
        | Array String
        | doc "A file matching any of these glob patterns will not be committed, even if the file has been updated."
        | optional,
      executionTimeout
        | std.number.Integer
        | doc "Default execution timeout in minutes for child processes Renovate creates."
        | optional,
      expandCodeOwnersGroups
        | Bool
        | doc "Expand the configured code owner groups into a full list of group members."
        | optional,
      exposeAllEnv
        | Bool
        | doc "Set this to `true` to allow passing of all environment variables to package managers."
        | optional,
      extends
        | std.contract.any_of [ Array String, String ]
        | doc "Configuration presets to use or extend."
        | optional,
      extractVersion
        | String
        | doc "A regex (`re2`) to extract a version from a datasource's raw version string."
        | optional,
      fetchChangeLogs
        | std.enum.TagOrString
        | [| 'pr, 'branch, 'off |]
        | doc "Controls if and when changelogs/release notes are fetched."
        | optional,
      filterUnavailableUsers
        | Bool
        | doc "Filter reviewers and assignees based on their availability."
        | optional,
      fleet
        | { _ | Dyn }
        | doc "Configuration object for the fleet manager"
        | optional,
      flux
        | { _ | Dyn }
        | doc "Configuration object for the flux manager"
        | optional,
      followTag
        | String
        | doc "If defined, packages will follow this release tag exactly."
        | optional,
      "force"
        | { _ | Dyn }
        | doc "Any configuration set in this object will force override existing settings."
        | optional,
      forceCli
        | Bool
        | doc "Decides if CLI configuration options are moved to the `force` config section."
        | optional,
      forkCreation
        | Bool
        | doc "Whether to create forks as needed at runtime when running in \"fork mode\"."
        | optional,
      forkModeDisallowMaintainerEdits
        | Bool
        | doc "Disallow maintainers to push to Renovate pull requests when running in fork mode."
        | optional,
      forkOrg
        | String
        | doc "The preferred organization to create or find forked repositories, when in fork mode."
        | optional,
      forkProcessing
        | std.enum.TagOrString
        | [| 'disabled, 'enabled, 'auto |]
        | doc "Whether to process forked repositories. By default, all forked repositories are skipped when in `autodiscover` mode."
        | optional,
      forkToken
        | String
        | doc "Set a personal access token here to enable \"fork mode\"."
        | optional,
      fvm
        | { _ | Dyn }
        | doc "Configuration object for the fvm manager"
        | optional,
      git-submodules
        | { _ | Dyn }
        | doc "Configuration object for the git-submodules manager"
        | optional,
      gitAuthor
        | String
        | doc "Author to use for Git commits. Must conform to [RFC5322](https://datatracker.ietf.org/doc/html/rfc5322)."
        | optional,
      gitIgnoredAuthors
        | Array String
        | doc "Git authors which are ignored by Renovate. Must conform to [RFC5322](https://datatracker.ietf.org/doc/html/rfc5322)."
        | optional,
      gitLabIgnoreApprovals
        | Bool
        | doc "Ignore approval rules for MRs created by Renovate, which is useful for automerge."
        | optional,
      gitNoVerify
        | std.contract.any_of
          [
            Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'push, 'commit |] ]
            ),
            std.contract.Sequence [ std.enum.TagOrString, [| 'push, 'commit |] ]
          ]
        | doc "Which Git commands will be run with the `--no-verify` option."
        | optional,
      gitPrivateKey
        | String
        | doc "PGP key to use for signing Git commits."
        | optional,
      gitTimeout
        | std.number.Integer
        | doc "Configure the timeout with a number of milliseconds to wait for a Git task."
        | optional,
      gitUrl
        | std.enum.TagOrString
        | [| 'endpoint, 'ssh, '"default" |]
        | doc "Overrides the default resolution for Git remote, e.g. to switch GitLab from HTTPS to SSH-based."
        | optional,
      github-actions
        | { _ | Dyn }
        | doc "Configuration object for the github-actions manager"
        | optional,
      githubTokenWarn
        | Bool
        | doc "Display warnings about GitHub token not being set."
        | optional,
      gitlabci
        | { _ | Dyn }
        | doc "Configuration object for the gitlabci manager"
        | optional,
      gitlabci-include
        | { _ | Dyn }
        | doc "Configuration object for the gitlabci-include manager"
        | optional,
      glasskube
        | { _ | Dyn }
        | doc "Configuration object for the glasskube manager"
        | optional,
      gleam
        | { _ | Dyn }
        | doc "Configuration object for the gleam manager"
        | optional,
      globalExtends
        | Array String
        | doc "Configuration presets to use or extend for a self-hosted config."
        | optional,
      goGetDirs
        | Array String
        | doc "Directory pattern to run `go get` on."
        | optional,
      gomod
        | { _ | Dyn }
        | doc "Configuration object for the gomod manager"
        | optional,
      gradle
        | { _ | Dyn }
        | doc "Configuration object for the gradle manager"
        | optional,
      gradle-wrapper
        | { _ | Dyn }
        | doc "Configuration object for the gradle-wrapper manager"
        | optional,
      group | { _ | Dyn } | doc "Config if `groupName` is enabled." | optional,
      groupName
        | js2n.Nullable String
        | doc "Human understandable name for the dependency group."
        | optional,
      groupSlug
        | js2n.Nullable String
        | doc "Slug to use for group (e.g. in branch name). Slug is calculated from `groupName` if `null`."
        | optional,
      hashedBranchLength
        | js2n.Nullable std.number.Integer
        | doc "If enabled, branch names will use a hashing function to ensure each branch has that length."
        | optional,
      haskell-cabal
        | { _ | Dyn }
        | doc "Configuration object for the haskell-cabal manager"
        | optional,
      helm-requirements
        | { _ | Dyn }
        | doc "Configuration object for the helm-requirements manager"
        | optional,
      helm-values
        | { _ | Dyn }
        | doc "Configuration object for the helm-values manager"
        | optional,
      helmfile
        | { _ | Dyn }
        | doc "Configuration object for the helmfile manager"
        | optional,
      helmsman
        | { _ | Dyn }
        | doc "Configuration object for the helmsman manager"
        | optional,
      helmv3
        | { _ | Dyn }
        | doc "Configuration object for the helmv3 manager"
        | optional,
      hermit
        | { _ | Dyn }
        | doc "Configuration object for the hermit manager"
        | optional,
      homebrew
        | { _ | Dyn }
        | doc "Configuration object for the homebrew manager"
        | optional,
      hostRules
        | Array
          {
            abortIgnoreStatusCodes
              | Array Number
              | doc "A list of HTTP status codes safe to ignore even when `abortOnError=true`."
              | optional,
            abortOnError
              | Bool
              | doc "If enabled, Renovate aborts its run when HTTP request errors occur."
              | optional,
            artifactAuth
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'composer |] ]
                ))
              | doc "A list of package managers to enable artifact auth. Only managers on the list are enabled. All are enabled if `null`."
              | optional,
            authType
              | String
              | doc "Authentication type for HTTP header. e.g. `\"Bearer\"` or `\"Basic\"`. Use `\"Token-Only\"` to use only the token without an authorization type."
              | optional,
            concurrentRequestLimit
              | js2n.Nullable std.number.Integer
              | doc "Limit concurrent requests per host."
              | optional,
            description
              | std.contract.any_of [ Array String, String ]
              | optional,
            dnsCache | Bool | doc "Enable got DNS cache." | optional,
            enableHttp2 | Bool | doc "Enable got HTTP/2 support." | optional,
            headers
              | { _ | Dyn }
              | doc "Put fields to be forwarded to the HTTP request headers in the headers config option."
              | optional,
            hostType
              | String
              | doc "hostType for a package rule. Can be a platform name or a datasource name."
              | optional,
            httpsCertificate
              | js2n.Nullable String
              | doc "The certificate chains in PEM format."
              | optional,
            httpsCertificateAuthority
              | js2n.Nullable String
              | doc "The overriding trusted CA certificate."
              | optional,
            httpsPrivateKey
              | js2n.Nullable String
              | doc "The private key in PEM format."
              | optional,
            insecureRegistry
              | Bool
              | doc "Explicitly turn on insecure Docker registry access (HTTP)."
              | optional,
            keepAlive
              | Bool
              | doc "Enable HTTP keep-alive for hosts."
              | optional,
            matchHost
              | String
              | doc "A domain name, host name or base URL to match against."
              | optional,
            maxRequestsPerSecond
              | std.number.Integer
              | doc "Limit requests rate per host."
              | optional,
            maxRetryAfter
              | std.number.Integer
              | doc "Maximum retry-after header value to wait for before retrying a failed request."
              | optional,
            readOnly
              | Bool
              | doc "Match against requests that only read data and do not mutate anything."
              | optional,
            timeout
              | std.number.Integer
              | doc "Timeout (in milliseconds) for queries to external endpoints."
              | optional,
            ..
          }
        | doc "Host rules/configuration including credentials."
        | optional,
      html
        | { _ | Dyn }
        | doc "Configuration object for the html manager"
        | optional,
      httpCacheTtlDays
        | std.number.Integer
        | doc "Maximum duration in days to keep HTTP cache entries."
        | optional,
      ignoreDeprecated
        | Bool
        | doc "Avoid upgrading from a non-deprecated version to a deprecated one."
        | optional,
      ignoreDeps | Array String | doc "Dependencies to ignore." | optional,
      ignorePaths
        | Array String
        | doc "Skip any package file whose path matches one of these. Can be a string or glob pattern."
        | optional,
      ignorePlugins
        | Bool
        | doc "Set this to `true` if `allowPlugins=true` but you wish to skip running plugins when updating lock files."
        | optional,
      ignorePrAuthor
        | Bool
        | doc "Set to `true` to fetch the entire list of PRs instead of only those authored by the Renovate user."
        | optional,
      ignorePresets
        | std.contract.any_of [ Array String, String ]
        | doc "A list of presets to ignore, including any that are nested inside an `extends` array."
        | optional,
      ignoreReviewers
        | Array String
        | doc "Reviewers to be ignored in PR reviewers presence (either username or email address depending on the platform)."
        | optional,
      ignoreScripts
        | Bool
        | doc "Set this to `false` if `allowScripts=true` and you wish to run scripts when updating lock files."
        | optional,
      ignoreTests
        | Bool
        | doc "Set to `true` to enable automerging without tests."
        | optional,
      ignoreUnstable
        | Bool
        | doc "Ignore versions with unstable SemVer."
        | optional,
      includeMirrors
        | Bool
        | doc "Whether to process repositories that are mirrors. By default, repositories that are mirrors are skipped."
        | optional,
      includePaths
        | Array String
        | doc "Include package files only within these defined paths."
        | optional,
      inheritConfig
        | Bool
        | doc "If `true`, Renovate will inherit configuration from the `inheritConfigFileName` file in `inheritConfigRepoName`."
        | optional,
      inheritConfigFileName
        | String
        | doc "Renovate will look for this config file name in the `inheritConfigRepoName`."
        | optional,
      inheritConfigRepoName
        | String
        | doc "Renovate will look in this repo for the `inheritConfigFileName`."
        | optional,
      inheritConfigStrict
        | Bool
        | doc "If `true`, any `inheritedConfig` fetch error will result in an aborted run."
        | optional,
      internalChecksAsSuccess
        | Bool
        | doc "Whether to consider passing internal checks such as `minimumReleaseAge` when determining branch status."
        | optional,
      internalChecksFilter
        | std.enum.TagOrString
        | [| 'none, 'flexible, 'strict |]
        | doc "When and how to filter based on internal checks."
        | optional,
      jenkins
        | { _ | Dyn }
        | doc "Configuration object for the jenkins manager"
        | optional,
      jsonata
        | { _ | Dyn }
        | doc "Configuration object for the jsonata manager"
        | optional,
      jsonnet-bundler
        | { _ | Dyn }
        | doc "Configuration object for the jsonnet-bundler manager"
        | optional,
      keepUpdatedLabel
        | String
        | doc "If set, users can add this label to PRs to request they be kept updated with the base branch."
        | optional,
      kotlin-script
        | { _ | Dyn }
        | doc "Configuration object for the kotlin-script manager"
        | optional,
      kubernetes
        | { _ | Dyn }
        | doc "Configuration object for the kubernetes manager"
        | optional,
      kustomize
        | { _ | Dyn }
        | doc "Configuration object for the kustomize manager"
        | optional,
      labels | Array String | doc "Labels to set in Pull Request." | optional,
      leiningen
        | { _ | Dyn }
        | doc "Configuration object for the leiningen manager"
        | optional,
      lockFileMaintenance
        | { _ | Dyn }
        | doc "Configuration for lock file maintenance."
        | optional,
      logContext
        | js2n.Nullable String
        | doc "Add a global or per-repo log context to each log entry."
        | optional,
      logLevelRemap
        | Array
          {
            description
              | std.contract.any_of [ Array String, String ]
              | optional,
            matchMessage
              | String
              | doc "Regex/minimatch expression to match against log message."
              | optional,
            newLogLevel
              | std.enum.TagOrString
              | [| 'fatal, 'error, 'warn, 'info, 'debug, 'trace |]
              | doc "New log level to use if matchMessage matches."
              | optional,
            ..
          }
        | doc "Remap log levels to different levels."
        | optional,
      major
        | { _ | Dyn }
        | doc "Configuration to apply when an update type is `major`."
        | optional,
      managerFilePatterns
        | std.contract.any_of [ Array String, String ]
        | doc "RegEx (`re2`) and glob patterns for matching manager files."
        | optional,
      maven
        | { _ | Dyn }
        | doc "Configuration object for the maven manager"
        | optional,
      maven-wrapper
        | { _ | Dyn }
        | doc "Configuration object for the maven-wrapper manager"
        | optional,
      mergeConfidenceDatasources
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'rubygems, 'pypi, 'packagist, 'nuget, 'npm, 'maven, 'go |]
            ]
        )
        | doc "If set, Renovate will query the merge-confidence JSON API only for datasources that are part of this list."
        | optional,
      mergeConfidenceEndpoint
        | String
        | doc "If set, Renovate will query this API for Merge Confidence data."
        | optional,
      meteor
        | { _ | Dyn }
        | doc "Configuration object for the meteor manager"
        | optional,
      migratePresets
        | { _ | String }
        | doc "Define presets here which have been removed or renamed and should be migrated automatically."
        | optional,
      milestone
        | js2n.Nullable std.number.Integer
        | doc "The number of a milestone. If set, the milestone will be set when Renovate creates the PR."
        | optional,
      minimumReleaseAge
        | js2n.Nullable String
        | doc "Time required before a new release is considered stable."
        | optional,
      minor
        | { _ | Dyn }
        | doc "Configuration to apply when an update type is `minor`."
        | optional,
      mint
        | { _ | Dyn }
        | doc "Configuration object for the mint manager"
        | optional,
      mise
        | { _ | Dyn }
        | doc "Configuration object for the mise manager"
        | optional,
      mix
        | { _ | Dyn }
        | doc "Configuration object for the mix manager"
        | optional,
      mode
        | std.enum.TagOrString
        | [| 'silent, 'full |]
        | doc "Mode of operation."
        | optional,
      nix
        | { _ | Dyn }
        | doc "Configuration object for the nix manager"
        | optional,
      nodenv
        | { _ | Dyn }
        | doc "Configuration object for the nodenv manager"
        | optional,
      npm
        | { _ | Dyn }
        | doc "Configuration object for the npm manager"
        | optional,
      npmToken
        | String
        | doc "npm token used to authenticate with the default registry."
        | optional,
      npmrc
        | String
        | doc "String copy of `.npmrc` file. Use `\\n` instead of line breaks."
        | optional,
      npmrcMerge
        | Bool
        | doc "Whether to merge `config.npmrc` with repo `.npmrc` content if both are found."
        | optional,
      nuget
        | { _ | Dyn }
        | doc "Configuration object for the nuget manager"
        | optional,
      nvm
        | { _ | Dyn }
        | doc "Configuration object for the nvm manager"
        | optional,
      ocb
        | { _ | Dyn }
        | doc "Configuration object for the ocb manager"
        | optional,
      onboarding | Bool | doc "Require a Configuration PR first." | optional,
      onboardingBranch
        | String
        | doc "Change this value to override the default onboarding branch name."
        | optional,
      onboardingCommitMessage
        | js2n.Nullable String
        | doc "Change this value to override the default onboarding commit message."
        | optional,
      onboardingConfig
        | { _ | Dyn }
        | doc "Configuration to use for onboarding PRs."
        | optional,
      onboardingConfigFileName
        | String
        | doc "Change this value to override the default onboarding config file name."
        | optional,
      onboardingNoDeps
        | std.enum.TagOrString
        | [| 'disabled, 'enabled, 'auto |]
        | doc "Onboard the repository even if no dependencies are found."
        | optional,
      onboardingPrTitle
        | String
        | doc "Change this value to override the default onboarding PR title."
        | optional,
      onboardingRebaseCheckbox
        | Bool
        | doc "Set to enable rebase/retry markdown checkbox for onboarding PRs."
        | optional,
      optimizeForDisabled
        | Bool
        | doc "Set to `true` to perform a check for disabled config prior to cloning."
        | optional,
      osgi
        | { _ | Dyn }
        | doc "Configuration object for the osgi manager"
        | optional,
      osvVulnerabilityAlerts
        | Bool
        | doc "Use vulnerability alerts from `osv.dev`."
        | optional,
      packageRules
        | Array
          {
            allowedVersions
              | String
              | doc "A version range or regex pattern capturing allowed versions for dependencies."
              | optional,
            changelogUrl
              | String
              | doc "Set a custom URL for the changelog. Renovate will put this URL in the PR body text."
              | optional,
            description
              | std.contract.any_of [ Array String, String ]
              | optional,
            matchBaseBranches
              | std.contract.any_of [ Array String, String ]
              | doc "List of strings containing exact matches (e.g. `[\"main\"]`) and/or regex expressions (e.g. `[\"/^release/.*/\"]`). Valid only within a `packageRules` object."
              | optional,
            matchCategories
              | std.contract.any_of [ Array String, String ]
              | doc "List of categories to match (for example: `[\"python\"]`). Valid only within a `packageRules` object."
              | optional,
            matchConfidence
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| '"very high", 'high, 'neutral, 'low |]
                      ]
                  ),
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| '"very high", 'high, 'neutral, 'low |]
                    ]
                ]
              | doc "Merge confidence levels to match against (`low`, `neutral`, `high`, `very high`). Valid only within `packageRules` object."
              | optional,
            matchCurrentAge
              | String
              | doc "Matches the current age of the package derived from its release timestamp. Valid only within a `packageRules` object."
              | optional,
            matchCurrentValue
              | String
              | doc "A regex or glob pattern to match against the raw `currentValue` string of a dependency. Valid only within a `packageRules` object."
              | optional,
            matchCurrentVersion
              | String
              | doc "A version, or range of versions, to match against the current version of a package. Valid only within a `packageRules` object."
              | optional,
            matchDatasources
              | std.contract.any_of [ Array String, String ]
              | doc "List of datasources to match (e.g. `[\"orb\"]`). Valid only within a `packageRules` object."
              | optional,
            matchDepNames
              | std.contract.any_of [ Array String, String ]
              | doc "Dep names to match. Valid only within a `packageRules` object."
              | optional,
            matchDepTypes
              | std.contract.any_of [ Array String, String ]
              | doc "List of depTypes to match (e.g. [`peerDependencies`]). Valid only within `packageRules` object."
              | optional,
            matchFileNames
              | Array String
              | doc "List of strings to do an exact match against package and lock files with full path. Only works inside a `packageRules` object."
              | optional,
            matchJsonata
              | Array String
              | doc "A JSONata expression to match against the full config object. Valid only within a `packageRules` object."
              | optional,
            matchManagers
              | std.contract.any_of [ Array String, String ]
              | doc "List of package managers to match (e.g. `[\"pipenv\"]`). Valid only within a `packageRules` object."
              | optional,
            matchNewValue
              | String
              | doc "A regex or glob pattern to match against the raw `newValue` string of a dependency. Valid only within a `packageRules` object."
              | optional,
            matchPackageNames
              | std.contract.any_of [ Array String, String ]
              | doc "Package names to match. Valid only within a `packageRules` object."
              | optional,
            matchRepositories
              | std.contract.any_of [ Array String, String ]
              | doc "List of repositories to match (e.g. `[\"**/*-archived\"]`). Valid only within a `packageRules` object."
              | optional,
            matchSourceUrls
              | std.contract.any_of [ Array String, String ]
              | doc "A list of exact match URLs (or URL patterns) to match sourceUrl against."
              | optional,
            matchUpdateTypes
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'replacement,
                          'bump,
                          'rollback,
                          'lockFileMaintenance,
                          'digest,
                          'pinDigest,
                          'pin,
                          'patch,
                          'minor,
                          'major
                        |]
                      ]
                  ),
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'replacement,
                        'bump,
                        'rollback,
                        'lockFileMaintenance,
                        'digest,
                        'pinDigest,
                        'pin,
                        'patch,
                        'minor,
                        'major
                      |]
                    ]
                ]
              | doc "Update types to match against (`major`, `minor`, `pin`, `pinDigest`, etc). Valid only within `packageRules` object."
              | optional,
            overrideDatasource
              | String
              | doc "Override the datasource value."
              | optional,
            overrideDepName
              | String
              | doc "Override the depName value."
              | optional,
            overridePackageName
              | String
              | doc "Override the packageName value."
              | optional,
            prPriority
              | std.number.Integer
              | doc "Set sorting priority for PR creation. PRs with higher priority are created first, negative priority last."
              | optional,
            replacementName
              | String
              | doc "The name of the new dependency that replaces the old deprecated dependency."
              | optional,
            replacementNameTemplate
              | String
              | doc "Controls what the replacement package name."
              | optional,
            replacementVersion
              | String
              | doc "The version of the new dependency that replaces the old deprecated dependency."
              | optional,
            replacementVersionTemplate
              | String
              | doc "Template field for the version of the new dependency that replaces the old deprecated dependency."
              | optional,
            sourceDirectory
              | String
              | doc "The source directory in which the package is present at its source."
              | optional,
            sourceUrl
              | String
              | doc "The source URL of the package."
              | optional,
            ..
          }
        | doc "Rules for matching packages."
        | optional,
      password | String | doc "Password for authentication." | optional,
      patch
        | { _ | Dyn }
        | doc "Configuration to apply when an update type is `patch`."
        | optional,
      pep621
        | { _ | Dyn }
        | doc "Configuration object for the pep621 manager"
        | optional,
      pep723
        | { _ | Dyn }
        | doc "Configuration object for the pep723 manager"
        | optional,
      persistRepoData
        | Bool
        | doc "If set to `true`: keep repository data between runs instead of deleting the data."
        | optional,
      pin
        | { _ | Dyn }
        | doc "Configuration to apply when an update type is `pin`."
        | optional,
      pinDigest
        | { _ | Dyn }
        | doc "Configuration to apply when pinning a digest (no change in tag/version)."
        | optional,
      pinDigests
        | Bool
        | doc "Whether to add digests to Dockerfile source images."
        | optional,
      pip-compile
        | { _ | Dyn }
        | doc "Configuration object for the pip-compile manager"
        | optional,
      pip_requirements
        | { _ | Dyn }
        | doc "Configuration object for the pip_requirements manager"
        | optional,
      pip_setup
        | { _ | Dyn }
        | doc "Configuration object for the pip_setup manager"
        | optional,
      pipenv
        | { _ | Dyn }
        | doc "Configuration object for the pipenv manager"
        | optional,
      pixi
        | { _ | Dyn }
        | doc "Configuration object for the pixi manager"
        | optional,
      platform
        | std.enum.TagOrString
        | [|
          'local,
          'gitlab,
          'github,
          'gitea,
          'gerrit,
          'codecommit,
          'bitbucket-server,
          'bitbucket,
          'azure
        |]
        | doc "Platform type of repository."
        | optional,
      platformAutomerge
        | Bool
        | doc "Controls if platform-native auto-merge is used."
        | optional,
      platformCommit
        | std.enum.TagOrString
        | [| 'enabled, 'disabled, 'auto |]
        | doc "Use platform API to perform commits instead of using Git directly."
        | optional,
      poetry
        | { _ | Dyn }
        | doc "Configuration object for the poetry manager"
        | optional,
      postUpdateOptions
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'yarnDedupeHighest,
                'yarnDedupeFewer,
                'pnpmDedupe,
                'npmDedupe,
                'kustomizeInflateHelmCharts,
                'helmUpdateSubChartArchives,
                'gomodVendor,
                'gomodSkipVendor,
                'gomodUpdateImportPaths,
                'gomodTidyE,
                '"gomodTidy1.17",
                'gomodTidy,
                'gomodMassage,
                'bundlerConservative
              |]
            ]
        )
        | doc "Enable post-update options to be run after package/artifact updating."
        | optional,
      postUpgradeTasks
        | { _ | Dyn }
        | doc "Post-upgrade tasks that are executed before a commit is made by Renovate."
        | optional,
      prBodyColumns
        | Array String
        | doc "List of columns to use in PR bodies."
        | optional,
      prBodyDefinitions
        | { _ | Dyn }
        | doc "Table column definitions to use in PR tables."
        | optional,
      prBodyNotes
        | std.contract.any_of [ Array String, String ]
        | doc "List of extra notes or templates to include in the Pull Request body."
        | optional,
      prBodyTemplate
        | String
        | doc "Pull Request body template. Controls which sections are rendered in the body of the pull request."
        | optional,
      prCommitsPerRunLimit
        | std.number.Integer
        | doc "Set the maximum number of commits per Renovate run. By default there is no limit."
        | optional,
      prConcurrentLimit
        | std.number.Integer
        | doc "Limit to a maximum of x concurrent branches/PRs. 0 means no limit."
        | optional,
      prCreation
        | std.enum.TagOrString
        | [| 'approval, 'status-success, 'not-pending, 'immediate |]
        | doc "When to create the PR for a branch."
        | optional,
      prFooter
        | String
        | doc "Text added here will be placed last in the PR body, with a divider separator before it."
        | optional,
      prHeader
        | String
        | doc "Text added here will be placed first in the PR body."
        | optional,
      prHourlyLimit
        | std.number.Integer
        | doc "Rate limit PRs to maximum x created per hour. 0 means no limit."
        | optional,
      prNotPendingHours
        | std.number.Integer
        | doc "Timeout in hours for when `prCreation=not-pending`."
        | optional,
      prTitle
        | js2n.Nullable String
        | doc "Pull Request title template. Inherits from `commitMessage` if null."
        | optional,
      prTitleStrict
        | Bool
        | doc "Whether to bypass appending extra context to the Pull Request title."
        | optional,
      pre-commit
        | { _ | Dyn }
        | doc "Configuration object for the pre-commit manager"
        | optional,
      presetCachePersistence
        | Bool
        | doc "Cache resolved presets in package cache."
        | optional,
      printConfig
        | Bool
        | doc "If enabled, Renovate logs the fully resolved config for each repository, plus the fully resolved presets."
        | optional,
      privateKey | String | doc "Server-side private key." | optional,
      privateKeyOld
        | String
        | doc "Secondary or old private key to try."
        | optional,
      privateKeyPath
        | String
        | doc "Path to the Server-side private key."
        | optional,
      privateKeyPathOld
        | String
        | doc "Path to the Server-side old private key."
        | optional,
      processEnv
        | { _ | String }
        | doc "Environment variables to be used in global config only."
        | optional,
      productLinks
        | { _ | String }
        | doc "Links which are used in PRs, issues and comments."
        | optional,
      pruneBranchAfterAutomerge
        | Bool
        | doc "Set to `true` to enable branch pruning after automerging."
        | optional,
      pruneStaleBranches
        | Bool
        | doc "Set to `false` to disable pruning stale branches."
        | optional,
      pub
        | { _ | Dyn }
        | doc "Configuration object for the pub manager"
        | optional,
      puppet
        | { _ | Dyn }
        | doc "Configuration object for the puppet manager"
        | optional,
      pyenv
        | { _ | Dyn }
        | doc "Configuration object for the pyenv manager"
        | optional,
      rangeStrategy
        | std.enum.TagOrString
        | [|
          'in-range-only,
          'update-lockfile,
          'widen,
          'replace,
          'bump,
          'pin,
          'auto
        |]
        | doc "Determines how to modify or update existing ranges."
        | optional,
      rebaseLabel
        | String
        | doc "Label to request a rebase from Renovate bot."
        | optional,
      rebaseWhen
        | std.enum.TagOrString
        | [| 'automerging, 'behind-base-branch, 'conflicted, 'never, 'auto |]
        | doc "Controls when Renovate rebases an existing branch."
        | optional,
      recreateWhen
        | std.enum.TagOrString
        | [| 'never, 'always, 'auto |]
        | doc "Recreate PRs even if same ones were closed previously."
        | optional,
      redisPrefix
        | String
        | doc "Key prefix for redis cache entries."
        | optional,
      redisUrl
        | String
        | doc "If set, this Redis URL will be used for caching instead of the file system."
        | optional,
      regex
        | { _ | Dyn }
        | doc "Configuration object for the regex manager"
        | optional,
      registryAliases
        | { _ | String }
        | doc "Aliases for registries."
        | optional,
      registryUrls
        | js2n.Nullable (Array String)
        | doc "List of URLs to try for dependency lookup. Package manager specific."
        | optional,
      renovate-config-presets
        | { _ | Dyn }
        | doc "Configuration object for the renovate-config-presets manager"
        | optional,
      replacement
        | { _ | Dyn }
        | doc "Configuration to apply when replacing a dependency."
        | optional,
      replacementApproach
        | std.enum.TagOrString
        | [| 'alias, 'replace |]
        | doc "Select whether to perform a direct replacement or alias replacement."
        | optional,
      reportPath
        | js2n.Nullable String
        | doc "Path to where the file should be written. In case of `s3` this has to be a full S3 URI."
        | optional,
      reportType
        | std.enum.TagOrString
        | [| 's3, 'file, 'logging |]
        | doc "Set how, or if, reports should be generated."
        | optional,
      repositories | Array String | doc "List of Repositories." | optional,
      repositoryCache
        | std.enum.TagOrString
        | [| 'reset, 'enabled, 'disabled |]
        | doc "This option decides if Renovate uses a JSON cache to speed up extractions."
        | optional,
      repositoryCacheType
        | String
        | doc "Set the type of renovate repository cache if `repositoryCache` is enabled."
        | optional,
      requireConfig
        | std.enum.TagOrString
        | [| 'ignored, '"optional", 'required |]
        | doc "Controls Renovate's behavior regarding repository config files such as `renovate.json`."
        | optional,
      respectLatest
        | Bool
        | doc "Ignore versions newer than npm \"latest\" version."
        | optional,
      reviewers
        | Array String
        | doc "Requested reviewers for Pull Requests (either username or email address depending on the platform)."
        | optional,
      reviewersFromCodeOwners
        | Bool
        | doc "Determine reviewers based on configured code owners and changes in PR."
        | optional,
      reviewersSampleSize
        | js2n.Nullable std.number.Integer
        | doc "Take a random sample of given size from `reviewers`."
        | optional,
      rollback
        | { _ | Dyn }
        | doc "Configuration to apply when rolling back a version."
        | optional,
      rollbackPrs
        | Bool
        | doc "Create PRs to roll back versions if the current version is not found in the registry."
        | optional,
      ruby-version
        | { _ | Dyn }
        | doc "Configuration object for the ruby-version manager"
        | optional,
      runtime-version
        | { _ | Dyn }
        | doc "Configuration object for the runtime-version manager"
        | optional,
      s3Endpoint
        | String
        | doc "If set, Renovate will use this string as the `endpoint` when creating the AWS S3 client instance."
        | optional,
      s3PathStyle
        | Bool
        | doc "If set, Renovate will enable `forcePathStyle` when creating the AWS S3 client instance."
        | optional,
      sbt
        | { _ | Dyn }
        | doc "Configuration object for the sbt manager"
        | optional,
      scalafmt
        | { _ | Dyn }
        | doc "Configuration object for the scalafmt manager"
        | optional,
      schedule
        | std.contract.any_of [ Array String, String ]
        | doc "Limit branch creation to these times of day or week."
        | optional,
      secrets
        | { _ | String }
        | doc "Object which holds secret name/value pairs."
        | optional,
      semanticCommitScope
        | String
        | doc "Commit scope to use if Semantic Commits are enabled."
        | optional,
      semanticCommitType
        | String
        | doc "Commit type to use if Semantic Commits is enabled."
        | optional,
      semanticCommits
        | std.enum.TagOrString
        | [| 'disabled, 'enabled, 'auto |]
        | doc "Enable Semantic Commit prefixes for commits and PR titles."
        | optional,
      separateMajorMinor
        | Bool
        | doc "If set to `false`, Renovate will upgrade dependencies to their latest release only. Renovate will not separate major or minor branches."
        | optional,
      separateMinorPatch
        | Bool
        | doc "If set to `true`, Renovate will separate `minor` and `patch` updates into separate branches."
        | optional,
      separateMultipleMajor
        | Bool
        | doc "If set to `true`, PRs will be raised separately for each available `major` upgrade version."
        | optional,
      separateMultipleMinor
        | Bool
        | doc "If set to `true`, Renovate creates separate PRs for each `minor` stream."
        | optional,
      setup-cfg
        | { _ | Dyn }
        | doc "Configuration object for the setup-cfg manager"
        | optional,
      skipInstalls
        | js2n.Nullable Bool
        | doc "Skip installing modules/dependencies if lock file updating is possible without a full install."
        | optional,
      statusCheckNames
        | { _ | Dyn }
        | doc "Custom strings to use as status check names."
        | optional,
      stopUpdatingLabel
        | String
        | doc "Label to make Renovate stop updating a PR."
        | optional,
      suppressNotifications
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'prIgnoreNotification,
                'prEditedNotification,
                'onboardingClose,
                'missingCredentialsError,
                'lockFileErrors,
                'dependencyLookupWarnings,
                'configErrorIssue,
                'branchAutomergeFailure,
                'artifactErrors
              |]
            ]
        )
        | doc "Options to suppress various types of warnings and other notifications."
        | optional,
      sveltos
        | { _ | Dyn }
        | doc "Configuration object for the sveltos manager"
        | optional,
      swift
        | { _ | Dyn }
        | doc "Configuration object for the swift manager"
        | optional,
      tekton
        | { _ | Dyn }
        | doc "Configuration object for the tekton manager"
        | optional,
      terraform
        | { _ | Dyn }
        | doc "Configuration object for the terraform manager"
        | optional,
      terraform-version
        | { _ | Dyn }
        | doc "Configuration object for the terraform-version manager"
        | optional,
      terragrunt
        | { _ | Dyn }
        | doc "Configuration object for the terragrunt manager"
        | optional,
      terragrunt-version
        | { _ | Dyn }
        | doc "Configuration object for the terragrunt-version manager"
        | optional,
      tflint-plugin
        | { _ | Dyn }
        | doc "Configuration object for the tflint-plugin manager"
        | optional,
      timezone
        | String
        | doc "Must conform to [IANA Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) format."
        | optional,
      token | String | doc "Repository Auth Token." | optional,
      travis
        | { _ | Dyn }
        | doc "Configuration object for the travis manager"
        | optional,
      unicodeEmoji | Bool | doc "Enable or disable Unicode emoji." | optional,
      updateInternalDeps
        | Bool
        | doc "Whether to update internal dep versions in a monorepo. Works on Yarn Workspaces."
        | optional,
      updateLockFiles
        | Bool
        | doc "Set to `false` to disable lock file updating."
        | optional,
      updateNotScheduled
        | Bool
        | doc "Whether to update branches when not scheduled. Renovate will not create branches outside of the schedule."
        | optional,
      updatePinnedDependencies
        | Bool
        | doc "Whether to update pinned (single version) dependencies or not."
        | optional,
      useBaseBranchConfig
        | std.enum.TagOrString
        | [| 'none, '"merge" |]
        | doc "Whether to read configuration from `baseBranches` instead of only the default branch."
        | optional,
      useCloudMetadataServices
        | Bool
        | doc "If `false`, Renovate does not try to access cloud metadata services."
        | optional,
      userAgent
        | js2n.Nullable String
        | doc "If set to any string, Renovate will use this as the `user-agent` it sends with HTTP requests."
        | optional,
      userStrings
        | { _ | Dyn }
        | doc "User-facing strings for the Renovate comment when a PR is closed."
        | optional,
      username | String | doc "Username for authentication." | optional,
      velaci
        | { _ | Dyn }
        | doc "Configuration object for the velaci manager"
        | optional,
      vendir
        | { _ | Dyn }
        | doc "Configuration object for the vendir manager"
        | optional,
      versionCompatibility
        | String
        | doc "A regex (`re2`) with named capture groups to show how version and compatibility are split from a raw version string."
        | optional,
      versioning
        | js2n.OneOf
          [
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  'unity3d,
                  'ubuntu,
                  'swift,
                  'semver-coerced,
                  'semver,
                  'same-major,
                  'ruby,
                  'rpm,
                  'rez,
                  'regex,
                  'redhat,
                  'python,
                  'pvp,
                  'poetry,
                  'perl,
                  'pep440,
                  'nuget,
                  'npm,
                  'node,
                  'nixpkgs,
                  'maven,
                  'loose,
                  'lambda-node,
                  'kubernetes-api,
                  'ivy,
                  'hex,
                  'hermit,
                  'helm,
                  'hashicorp,
                  'gradle,
                  'go-mod-directive,
                  'glasskube,
                  'git,
                  'docker,
                  'devbox,
                  'debian,
                  'deb,
                  'conda,
                  'conan,
                  'composer,
                  'cargo,
                  'bazel-module,
                  'azure-rest-api,
                  'aws-machine-image,
                  'aws-eks-addon
                |]
              ],
            js2n.string.Matches "^regex:"
          ]
        | String
        | doc "Versioning to use for filtering and comparisons."
        | optional,
      vulnerabilityAlerts
        | { _ | Dyn }
        | doc "Config to apply when a PR is needed due to a vulnerability in the existing package version."
        | optional,
      woodpecker
        | { _ | Dyn }
        | doc "Configuration object for the woodpecker manager"
        | optional,
      writeDiscoveredRepos
        | String
        | doc "Writes discovered repositories to a JSON file and then exit."
        | optional,
      ..
    }