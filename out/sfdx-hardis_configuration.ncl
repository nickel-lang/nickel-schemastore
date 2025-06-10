# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.enum_monitoring_commands" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'RELEASE_UPDATES,
                'UNUSED_LICENSES,
                'MISSING_ATTRIBUTES,
                'METADATA_STATUS,
                'UNUSED_METADATAS,
                'LINT_ACCESS,
                'LEGACY_API,
                'AUDIT_TRAIL
              |]
            ],
      "definitions.enum_notification_types" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'RELEASE_UPDATES,
                'UNUSED_LICENSES,
                'MISSING_ATTRIBUTES,
                'METADATA_STATUS,
                'UNUSED_METADATAS,
                'LINT_ACCESS,
                'LEGACY_API,
                'DEPLOYMENT,
                'BACKUP,
                'APEX_TESTS,
                'AUDIT_TRAIL
              |]
            ],
    }
    in
  {
      allowedOrgTypes
        | Array (
          std.contract.Sequence
            [ std.enum.TagOrString, [| 'scratch, 'sandbox |] ]
        )
        | doc "Types of orgs allowed for config & development. If not set, sandbox and scratch are allowed by default"
        | optional,
      apexTestsMinCoverageOrgWide
        | Number
        | doc "Minimum percentage of apex code coverage accepted"
        | optional,
      autoCleanTypes
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'v60,
                'systemDebug,
                'sensitiveMetadatas,
                'productrequest,
                'minimizeProfiles,
                'listViewsMine,
                'localfields,
                'flowPositions,
                'destructivechanges,
                'datadotcom,
                'dashboards,
                'checkPermissions,
                'caseentitlement
              |]
            ]
        )
        | doc "When saving a sfdx-hardis task, the list of cleanings will be automatically applied to sfdx sources"
        | optional,
      autoRemoveUserPermissions
        | Array String
        | doc "When saving a sfdx-hardis task, these permissions will be removed from profiles"
        | optional,
      autoRetrieveWhenPull
        | Array String
        | doc "When calling hardis:scratch:pull, if you define metadatas (named or not), they will also be retrieved using force:source:retrieve"
        | optional,
      availableProjects
        | Array String
        | doc "List of business projects that are managed in the same repository. Will be used to build git branch name when using hardis:work:new"
        | optional,
      availableTargetBranches
        | Array String
        | doc "List of git branches that can be used as target for merge requests"
        | optional,
      branchPrefixChoices
        | Array Dyn
        | doc "When calling hardis:work:new, you can override the default branch prefixes. Input title, value and description for each of them"
        | optional,
      cleanXmlPatterns
        | Array
          {
            globPattern
              | String
              | doc "Glob pattern to identify XML files to clean",
            xpaths | Array String | doc "XPaths to identify elements to remove",
          }
        | doc "List of patterns to automatically clean XML files"
        | optional,
      commandsPostDeploy
        | Array
          {
            command | String | doc "Command line to run",
            context
              | std.enum.TagOrString
              | [| 'process-deployment-only, 'check-deployment-only, 'all |]
              | doc "Context when the command must be run"
              | optional,
            id | String | doc "Identifier of the command (can be any string)",
            label | String | doc "Label of the command (what does it do ?)",
            skipIfError
              | Bool
              | doc "Do not run the command if there is a deployment error"
              | optional,
          }
        | doc "List of commands to run after a deployment"
        | optional,
      commandsPreDeploy
        | Array
          {
            command | String | doc "Command line to run" | optional,
            id
              | String
              | doc "Identifier of the command (can be any string)"
              | optional,
            label
              | String
              | doc "Label of the command (what does it do ?)"
              | optional,
          }
        | doc "List of commands to run before a deployment"
        | optional,
      customCommands
        | Array
          {
            commands
              | Array
                {
                  command
                    | String
                    | doc "Command line to run when clicking on the menu",
                  helpUrl
                    | String
                    | doc "URL for help page of the command"
                    | optional,
                  icon
                    | String
                    | doc "Icon (can be any of svg icons of this list: https://github.com/hardisgroupcom/vscode-sfdx-hardis/tree/master/resources"
                    | optional,
                  id
                    | String
                    | doc "Identifier of the command (can be any string)",
                  label
                    | String
                    | doc "Label of the command that will appear in menu",
                  tooltip
                    | String
                    | doc "Text that will appear when user will hover the command"
                    | optional,
                }
              | doc "List of commands of the menu"
              | optional,
            id | String | doc "Identifier of the menu (can be any string)",
            label | String | doc "Label of the menu",
          }
        | doc "List of custom commands for VsCode SFDX-Hardis extension"
        | optional,
      customCommandsPosition
        | std.enum.TagOrString
        | [| 'last, 'first |]
        | doc "Position of custom commands in the menu (first or last)"
        | optional,
      customOrgColors
        | {  .. }
        | doc "Custom colors set by VsCode SFDX Hardis"
        | optional,
      customPlugins
        | Array
          {
            helpUrl | String | doc "Url of plugin documentation" | optional,
            name | String | doc "Name of the plugin npm package" | optional,
          }
        | doc "List of additional plugins that will be displayed in VsCode SFDX-Hardis Dependencies panel"
        | optional,
      dataPackages
        | Array
          {
            dataPath | String | doc "Path to SFDMU project",
            importInScratchOrgs | Bool | doc "Path to SFDMU project",
          }
        | doc "List of data packages"
        | optional,
      defaultPackageInstallationKey
        | String
        | doc "When generating a new package version protected with password, use this value as default package installation key"
        | optional,
      deploymentPlan
        | {
          packages
            | Array
              {
                dataPath | String | optional,
                label | String | optional,
                order | Number | optional,
                packageXmlFile | String | optional,
                waitAfter
                  | Number
                  | doc "Delay to wait before installing the next package"
                  | optional,
              }
            | doc "During deployment, main package.xml will be split into these packages. Can also contain data packages"
            | optional,
          ..
        }
        | doc "Deployment plan that will be performed during deployments. Can be based on packageXmlFile for sources or on dataPath for sfdmu data deployments"
        | optional,
      devHubAlias
        | String
        | doc "Dev Hub alias, usually DevHub_ProjectName"
        | optional,
      devHubUsername
        | String
        | doc "Dev Hub username, used to authenticate to DevHub from CI jobs"
        | optional,
      developmentBranch
        | String
        | doc "When creating a new sfdx-hardis task, this git branch is used as base to create the feature/debug sub branch. The merge request will later have this branch as target."
        | optional,
      docDeployToCloudflare
        | Bool
        | doc "Automatically deploy MkDocs HTML documentation from CI/CD Workflows to Cloudflare"
        | optional,
      docDeployToOrg
        | Bool
        | doc "Automatically deploy MkDocs HTML documentation from CI/CD Workflows to Salesforce org as static resource"
        | optional,
      extends
        | String
        | doc "You can base your local sfdx-hardis configuration on a remote config file. That allows you to have the same config base for all your projects"
        | optional,
      initPermissionSets
        | Array (
          std.contract.any_of
            [
              String,
              {
                name
                  | String
                  | doc "Permission Set or Permission Set Group name"
                  | optional,
              }
            ]
        )
        | doc "When creating a scratch org, Admin user will be automatically assigned to those permission sets"
        | optional,
      installPackagesDuringCheckDeploy
        | Bool
        | doc "When calling deployment check command, installs any package referred within installedPackages property"
        | optional,
      installedPackages
        | Array
          {
            Id | String | optional,
            SubscriberPackageId | String | optional,
            SubscriberPackageName | String | optional,
            SubscriberPackageNamespace | js2n.Nullable String | optional,
            SubscriberPackageVersionId | String,
            SubscriberPackageVersionName | String | optional,
            SubscriberPackageVersionNumber | String | optional,
            installDuringDeployments
              | Bool
              | doc "If true, during deployments this package will be installed in target org if not installed yet"
              | optional,
            installOnScratchOrgs
              | Bool
              | doc "If true, this package will be installed when creating a new scratch org with sfdx-hardis"
              | optional,
            installationkey
              | String
              | doc "Installation key for key-protected package"
              | optional,
          }
        | doc "Defines the list of packages installed on the project. Use "
        | optional,
      instanceUrl
        | String
        | doc "Salesforce instance URL used by CI for deployment or backups"
        | optional,
      linterIgnoreRightMetadataFile
        | String
        | doc "Ignore profiles or permission sets"
        | optional,
      listViewsToSetToMine
        | Array String
        | doc "List of ListView items to set to Mine after a delivery (that does not accept value 'Everything')"
        | optional,
      mergeTargets
        | Array String
        | doc "In branch-scoped config file, declares the list of branches that the current one can have as merge target. For example, integration will have mergeTargets [uat]"
        | optional,
      monitoringAllowedSectionsActions
        | {  .. }
        | doc "Override list of Setup Audit Trail elements that won't be considered as suspect by monitoring tools"
        | optional,
      monitoringCommands
        | Array
          {
            command | String | doc "Bash command to run",
            frequency | String | doc "daily or weekly" | optional,
            key
              | String
              | doc "Unique identifier of the monitoring command. Can be used with monitoringDisable"
              | optional,
            title | String | doc "Title of the command (will appear in logs)",
          }
        | doc "List of monitoring commands to run with command hardis:org:monitor:all"
        | optional,
      monitoringDisable
        | Array refs."definitions.enum_monitoring_commands"
        | doc "List of commands to skip during monitoring jobs"
        | optional,
      monitoringExcludeUsernames
        | Array String
        | doc "List of usernames to exclude while running monitoring commands"
        | optional,
      msTeamsWebhookUrl
        | String
        | doc "Url of the Ms Teams channel Web Hook that can be used to send ALL notifications"
        | optional,
      msTeamsWebhookUrlCritical
        | String
        | doc "Url of the Ms Teams channel Web Hook that can be used to send CRITICAL notifications"
        | optional,
      msTeamsWebhookUrlInfo
        | String
        | doc "Url of the Ms Teams channel Web Hook that can be used to send INFO notifications"
        | optional,
      msTeamsWebhookUrlSevere
        | String
        | doc "Url of the Ms Teams channel Web Hook that can be used to send SEVERE notifications"
        | optional,
      msTeamsWebhookUrlWarning
        | String
        | doc "Url of the Ms Teams channel Web Hook that can be used to send WARNING notifications"
        | optional,
      newTaskNameRegex
        | String
        | doc "Regex to validate new task names"
        | optional,
      newTaskNameRegexExample
        | String
        | doc "Example of value that will match newTaskNameRegex"
        | optional,
      notificationsDisable
        | Array refs."definitions.enum_notification_types"
        | doc "List of notifications types to skip sending"
        | optional,
      packageNoOverwritePath
        | String
        | doc "Path to a custom package-no-overwrite XML file (used in smartDeploy command)"
        | optional,
      poolConfig
        | {
          maxScratchOrgsNumber
            | Number
            | doc "Maximum number of active scratch orgs in the scratch org pool"
            | optional,
          maxScratchOrgsNumberToCreateOnce
            | Number
            | doc "Maximum number of scratch orgs to create in one CI job"
            | optional,
          minScratchOrgRemainingDays
            | Number
            | doc "When pool scratch org is less than this number, it is deleted and another one is created"
            | optional,
          storageService
            | String
            | doc "Remote service allowing to store scratch org pool details"
            | optional,
          ..
        }
        | doc "Configuration allowing to generate and fetch scratch orgs from scratch org pool"
        | optional,
      productionBranch
        | String
        | doc "Name of the git branch corresponding to production environment"
        | optional,
      projectName
        | String
        | doc "Identifier for the project (can be the client and project)"
        | optional,
      retrofitBranch
        | String
        | doc "Name of the git branch where retrofit merge requests targets to"
        | optional,
      retrofitIgnoredFiles
        | Array String
        | doc "When calling hardis:org:retrieve:sources:retrofit, list of files to ignore (discard just after retrieve)"
        | optional,
      runtests
        | String
        | doc "WARNING: Use with caution, only in branch scoped config ! Can be a list of test classes if testLevel=RunSpecifiedTests, or a regex if testLevel=RunRepositoryTests"
        | optional,
      scratchOrgDuration
        | js2n.number.Maximum 30
        | js2n.number.Minimum 1
        | doc "Defines the lifespan of the scratch org in number of days, from 1 to 30"
        | optional,
      scratchOrgInitApexScripts
        | Array String
        | doc "Apex scripts to call after scratch org initialization"
        | optional,
      sfdmuCanModify
        | String
        | doc "Instance host name to allow SFDMU to deploy data in a production org"
        | optional,
      sharedDevSandboxes
        | Bool
        | doc "Define to true if contributors can share dev sandboxes"
        | optional,
      skipCodeCoverage
        | Bool
        | doc "WARNING: Use with caution, only in branch scoped config ! Do not check code coverage for a deployment"
        | optional,
      skipMinimizeProfiles
        | Array String
        | doc "These profiles will not be reformatted by command hardis:project:clean:minimizeprofiles"
        | optional,
      skipUpdateForceIgnore
        | Bool
        | doc "Defines if sfdx-hardis will propose to upgrade local .forceignore file"
        | optional,
      skipUpdateGitIgnore
        | Bool
        | doc "Defines if sfdx-hardis will propose to upgrade local .gitignore file"
        | optional,
      sourcesToRetrofit
        | Array String
        | doc "List of metadata to retrieve for retrofit job"
        | optional,
      targetUsername
        | String
        | doc "Salesforce username used by CI for deployment or backups"
        | optional,
      testCoverageNotBlocking
        | Bool
        | doc "Does not make the deployment job fail if apex tests code coverage is failing"
        | optional,
      testLevel
        | std.enum.TagOrString
        | [|
          'RunAllTestsInOrg,
          'RunLocalTests,
          'RunRepositoryTestsExceptSeeAllData,
          'RunRepositoryTests,
          'RunSpecifiedTests,
          'NoTestRun
        |]
        | doc "WARNING: Use with caution, only in branch scoped config ! You can override default test level for deployments for special use cases, for example when you have SeeAllData=true you can use RunRepositoryTests associated with a regex in runtests option"
        | optional,
      useDeltaDeployment
        | Bool
        | doc "Defines if sfdx-hardis will deploy in delta from minor to major branches"
        | optional,
      useSmartDeploymentTests
        | Bool
        | doc "Define if smart deployment tests will be activated and run test classes only if necessary (see more in hardis:project:deploy:smart documentation"
        | optional,
    }