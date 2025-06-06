# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.account" = String,
      "definitions.apiEndpoint" = String,
      "definitions.appName" = String,
      "definitions.appUrls" =
        Array
            {
              credentialId
                | String
                | doc "ID to the credentials that will be used to connect to the SAP Cloudplatform account."
                | optional,
              parameters
                | Array Dyn
                | doc "Additional parameters can be passed for each end-to-end test deployment by specifying optional parameters for an application URL. These parameters are appended to the npm command during execution. These parameters must be a list of strings, where each string corresponds to one element of the parameters. For example, if the parameter `--tag scenario1` should be passed to the test, specify parameters: ['--tag', 'scenario1']."
                | optional,
              url
                | String
                | doc "The URLs under which the app is available after deployment. Each appUrl can be a string with the URL or a map containing a property url and a property credentialId.",
            },
      "definitions.application" = String,
      "definitions.cfTargets" =
        Array
            {
              apiEndpoint | refs."definitions.apiEndpoint" | String | optional,
              appName | refs."definitions.appName" | String | optional,
              credentialsId
                | refs."definitions.credentialsId"
                | String
                | optional,
              manifest | refs."definitions.manifest" | String | optional,
              mtaExtensionCredentials
                | refs."definitions.mtaExtensionCredentials"
                | String
                | optional,
              mtaExtensionDescriptor
                | refs."definitions.mtaExtensionDescriptor"
                | String
                | optional,
              org | refs."definitions.org" | String | optional,
              space | refs."definitions.space" | String | optional,
            },
      "definitions.cloudFoundry" =
        {
            apiEndpoint | refs."definitions.apiEndpoint" | String | optional,
            appName | refs."definitions.appName" | String | optional,
            credentialsId
              | refs."definitions.credentialsId"
              | String
              | optional,
            manifest | refs."definitions.manifest" | String | optional,
            mtaExtensionCredentials
              | refs."definitions.mtaExtensionCredentials"
              | String
              | optional,
            mtaExtensionDescriptor
              | refs."definitions.mtaExtensionDescriptor"
              | String
              | optional,
            org | refs."definitions.org" | String | optional,
            space | refs."definitions.space" | String | optional,
          },
      "definitions.credentialsId" = String,
      "definitions.dockerImage" = String,
      "definitions.environment" = { _ | Dyn },
      "definitions.host" = String,
      "definitions.manifest" = String,
      "definitions.mtaExtensionCredentials" = String,
      "definitions.mtaExtensionDescriptor" = String,
      "definitions.neoTargets" =
        Array
            {
              account | refs."definitions.account" | String,
              application | refs."definitions.application" | String,
              credentialsId
                | refs."definitions.credentialsId"
                | String
                | optional,
              environment
                | refs."definitions.environment"
                | { _ | Dyn }
                | optional,
              host | refs."definitions.host" | String,
              runtime | refs."definitions.runtime" | String,
              runtimeVersion | refs."definitions.runtimeVersion" | String,
              size | refs."definitions.size" | String | optional,
              vmArguments | refs."definitions.vmArguments" | String | optional,
            },
      "definitions.org" = String,
      "definitions.runtime" = String,
      "definitions.runtimeVersion" = String,
      "definitions.size" = String,
      "definitions.space" = String,
      "definitions.vmArguments" = String,
    }
    in
  {
      customDefaults
        | Array String
        | doc "List of paths or URLs to YAML files with custom defaults to consider. These defaults override built-in defaults, and can be shared across multiple projects. Project configuration takes precedence."
        | optional,
      general
        | js2n.Nullable
          {
            collectTelemetryData
              | Bool
              | doc "No personal data is collected. For details, consult the analytics documentation."
              | optional,
            features
              | {
                parallelTestExecution
                  | std.enum.TagOrString
                  | [| 'off, 'on |]
                  | doc "Run E2E Tests in parallel. This feature is disabled by default because it is not supported in Blue Ocean. If this feature is enabled, we suggest not using the Blue Ocean interface and rely on the classic UI instead."
                  | optional,
                ..
              }
              | doc "Allows enabling or disable certain optional features."
              | optional,
            globalExtensionsRepository
              | String
              | doc "Git url of the repository containing the extensions."
              | optional,
            globalExtensionsRepositoryCredentialsId
              | String
              | doc "Credentials required to clone the repository"
              | optional,
            globalExtensionsVersion
              | String
              | doc "Version of the extensions which should be used, e.g. the tag name"
              | optional,
            jenkinsKubernetes
              | {
                jnlpAgent
                  | String
                  | doc "Docker image for jnlp agent to be used."
                  | optional,
                ..
              }
              | doc "If the Jenkins is running on a kubernetes cluster as a pod, we can use the dynamic scaling feature in the pipeline. In order to enable this, an environment variable ON_K8S has to be set to true on the jenkins."
              | optional,
            productiveBranch
              | String
              | doc "The name of your default branch. This branch will be used for deploying your application. Other branches will skip deployment."
              | optional,
            projectName
              | String
              | doc "Name of the project. Will be used as identifier e.g. when creating a hdi container or executing code scans."
              | optional,
            unsafeMode
              | Bool
              | doc "Enable unsafe mode to skip checking environment variables for insecure elements. Only use this for demo purposes, never for productive usage."
              | optional,
          }
        | doc "The general configuration of the pipeline"
        | optional,
      stages
        | js2n.Nullable
          {
            artifactDeployment
              | {
                nexus
                  | {
                    credentialsId | refs."definitions.credentialsId" | optional,
                    mavenRepository
                      | String
                      | doc "Name of the nexus repository for Maven and MTA artifacts. Ignored if the project does not contain pom.xml or mta.yml in the project root."
                      | optional,
                    npmRepository
                      | String
                      | doc "Name of the nexus repository for NPM artifacts. Ignored if the project does not contain a package.json in the project root directory."
                      | optional,
                    url
                      | String
                      | doc "URL of the nexus. The scheme part of the URL will not be considered, because only http is supported.",
                    version
                      | std.enum.TagOrString
                      | [| 'nexus3, 'nexus2 |]
                      | doc "Version of nexus. Can be nexus2 or nexus3."
                      | optional,
                    ..
                  }
                  | js2n.record.Required [ "repository" ]
                  | optional,
                ..
              }
              | doc "The deployment of artifacts to nexus can be configured with a map containing the following properties."
              | optional,
            backendIntegrationTests
              | {
                credentials
                  | Array { alias | String, credentialId | String, }
                  | doc "The list of system credentials to be injected during integration tests. The following example will provide the username and password for the systems with the aliases ERP and SFSF. For this, it will use the Jenkins credentials entries erp-credentials and successfactors-credentials. You have to ensure that corresponding credential entries exist in your Jenkins configuration."
                  | optional,
                forkCount
                  | String
                  | doc "The number of JVM processes that are spawned to run the tests in parallel in case of using a maven based project structure. For more details visit the surefire documentation."
                  | optional,
                retry
                  | std.number.Integer
                  | doc "The number of times that integration tests will retry before aborting the build. Note: This will consume more time for the jenkins build."
                  | optional,
                sidecarEnvVars
                  | { _ | Dyn }
                  | doc "Environment variables to set in the container."
                  | optional,
                sidecarImage
                  | String
                  | doc "Name of the Docker image that should be used."
                  | optional,
                sidecarName
                  | String
                  | doc "On Docker: Name of the container in the local network. On Kubernetes: Name of the container."
                  | optional,
                sidecarReadyCommand
                  | String
                  | doc "Command executed inside the container, which returns exit code 0 when the container is ready to be used."
                  | optional,
              }
              | optional,
            checkmarxScan
              | {
                checkMarxProjectName
                  | String
                  | doc "Name of the project on Checkmarx server."
                  | optional,
                checkmarxCredentialsId
                  | String
                  | doc "The Credential ID to connect to Checkmarx server. The credentials must be type username with password. This property becomes mandatory if the credentials are not configured in the Jenkins plugin itself."
                  | optional,
                checkmarxServerUrl
                  | String
                  | doc "An URL to Checkmarx server. This property becomes mandatory if the URL to the Checkmarx server is not configured in the Jenkins plugin itself or if the checkmarxCredentialsId is configured."
                  | optional,
                filterPattern
                  | String
                  | doc "Files which needs to be skipped during scanning."
                  | optional,
                fullScansScheduled
                  | Bool
                  | doc "Toggle to enable or disable full scan on a certain schedule."
                  | optional,
                generatePdfReport
                  | Bool
                  | doc "Possibility to generate PDF reports of the scan."
                  | optional,
                groupId | String | doc "Checkmarx Group ID",
                incremental
                  | Bool
                  | doc "Perform incremental scan with every run. If turned false, complete project is scanned on every submission."
                  | optional,
                preset
                  | std.contract.any_of [ std.number.Integer, String ]
                  | doc "Name or numerical ID of Checkmarx preset to be used when scanning this project. When a name (string) is specified, the pipeline will try to discover the corresponding numerical ID via the Checkmarx API. Please also make sure to specify checkmarxCredentialsId and checkmarxServerUrl in such a case. For determining available presets in your Checkmarx webclient, go to Checkmarx -> Management -> Scan Settings -> Preset Manager. Alternatively, you can determine the numerical ID of your targeted preset by following those guides: Token-based Authentication and Get All Preset Details."
                  | optional,
                vulnerabilityThresholdLow
                  | std.number.Integer
                  | doc "The threshold for low level threats. If the findings are greater than this value, pipeline execution will result in failure."
                  | optional,
                vulnerabilityThresholdMedium
                  | std.number.Integer
                  | doc "The threshold for medium level threats. If the findings are greater than this value, pipeline execution will result in failure."
                  | optional,
              }
              | doc "Checkmarx is one of the security analysis tools which is supported by the pipeline."
              | optional,
            compliance
              | {
                runInAllBranches
                  | Bool
                  | doc "Define whether the scan should also happen in non productive branches, i.e. if your SonarQube instance supports that."
                  | optional,
              }
              | doc "Configure the stage Compliance, which currently executes a SonarQube (https://www.sonarqube.org/) scan."
              | optional,
            endToEndTests
              | {
                appUrls | refs."definitions.appUrls" | optional,
                enableZeroDowntimeDeployment
                  | Bool
                  | doc "It is possible to activate zero downtime deployment in end-to-end tests with the option enableZeroDowntimeDeployment. This will lead to a blue-green-deployment on SCP Cloud Foundry respectively to a rolling update on SCP Neo. By default, this feature is turned off."
                  | optional,
                onlyRunInProductiveBranch
                  | Bool
                  | doc "Running end-to-end tests can be restricted to the productiveBranch with the option onlyRunInProductiveBranch. This might be useful when the end-to-end tests slow down development, and build failure on the productiveBranch is acceptable. By default, this feature is turned off."
                  | optional,
                ..
              }
              | optional,
            frontEndIntegrationTests
              | { dockerImage | refs."definitions.dockerImage" | optional, }
              | optional,
            frontEndUnitTests
              | { dockerImage | refs."definitions.dockerImage" | optional, }
              | optional,
            npmAudit
              | {
                auditedAdvisories
                  | Array (std.contract.any_of [ std.number.Integer, String ])
                  | doc "In case you audited an advisory, and it turns out to be a false positive, you can mark it as audited by adding its id to the auditedAdvisories in the stage configuration. A false positive in this case is when you are confident your application is not affected in any way by the underlying bug or vulnerability."
                  | optional,
              }
              | doc "This stage uses the npm audit command to check for known vulnerabilities in dependencies."
              | optional,
            performanceTests
              | {
                cfTargets | refs."definitions.cfTargets" | optional,
                neoTargets | refs."definitions.neoTargets" | optional,
                ..
              }
              | optional,
            productionDeployment
              | {
                appUrls | refs."definitions.appUrls" | optional,
                cfTargets | refs."definitions.cfTargets" | optional,
                neoTargets | refs."definitions.neoTargets" | optional,
                ..
              }
              | optional,
            s4SdkQualityChecks
              | {
                codeCoverageFrontend
                  | { _ | Dyn }
                  | doc "A map containing the thresholds unstable and failing. If the code coverage is lower than what is configured in unstable, the pipeline result is unstable. If it is lower than what is configured in failing, the pipeline will fail."
                  | optional,
                customOdataServices
                  | Array String
                  | doc "We recommend only using OData services listed in the in SAP API Business Hub. Despite that for using custom business objects you can add those APIs here."
                  | optional,
                disabledChecks
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'checkBackendCodeCoverage,
                          'checkFrontendCodeCoverage,
                          'checkServices,
                          'checkResilience,
                          'checkDeploymentDescriptors
                        |]
                      ]
                  )
                  | doc "A list of checks which should not be executed. Possible values are: checkDeploymentDescriptors (Check for insecure options, such as ALLOW_MOCKED_AUTH_HEADER in deployment descriptors), checkResilience(Check that application is resilient to faults in the network), checkServices (Check that only official APIs are used), checkFrontendCodeCoverage (Ensures high frontend code coverage), checkBackendCodeCoverage (Ensures high backend code coverage)"
                  | optional,
                jacocoExcludes
                  | Array String
                  | doc "A list of exclusions expressed as an Ant-style pattern relative to the application folder. An example can be found below."
                  | optional,
                nonErpDestinations
                  | Array String
                  | doc "List of destination names that do not refer to ERP systems. Use this parameter to exclude specific destinations from being checked in context of ERP API whitelists."
                  | optional,
                nonErpUrls
                  | Array String
                  | doc "List of URLs that are not defined as destinations. Use this parameter to exclude specific URLs from being checked in context of ERP API whitelists."
                  | optional,
                threshold
                  | {
                    successCoverage
                      | std.number.Integer
                      | js2n.number.Minimum 70,
                    unstableCoverage
                      | std.number.Integer
                      | js2n.number.Minimum 65,
                  }
                  | doc "This setting allows the code coverage to be stricter compared to the default values. By default, the pipeline will fail if the coverage is below 65% line coverage (unstableCoverage), and will be unstable if it is less than 70% (successCoverage). If lower numbers are configured, or this configuration is left out, the default values are applied."
                  | optional,
              }
              | optional,
            sourceClearScan
              | {
                config
                  | {
                    scope | String | optional,
                    vuln_methods_extra_ignored_directories | String | optional,
                    ..
                  }
                  | doc "Additional configuration for the SourceClear agent. The key-value pairs will be added to srcclr.yml."
                  | optional,
                credentialsId | refs."definitions.credentialsId",
              }
              | doc "Configure SourceClear scans.Note: Please note that the SourceClear stage of this pipeline is not actively maintained anymore. In case of issues, feel free to contribute to this project by opening a pull request."
              | optional,
            whitesourceScan
              | {
                credentialsId | refs."definitions.credentialsId",
                product | String | doc "Name of your product in WhiteSource.",
                staticVersion
                  | String
                  | doc "Overwrites the respective version in the whitesource UI per scan with the staticVersion. Per default for every new version of a pom/package.json a new project will be created in the whitesource UI. To deactivate the creation of new projects and always have a fixed version for each project in the whitesource UI, configure the staticVersion."
                  | optional,
                whitesourceUserTokenCredentialsId
                  | String
                  | doc "Unique identifier of the Secret Text on Jenkins server that stores WhiteSource userKey of a user. This is required only if the administrator of the WhiteSource service has enabled additional access level control. More details can be found here."
                  | optional,
                ..
              }
              | doc m%"
                Configure credentials for WhiteSource scans. The minimum required Maven WhiteSource plugin version is 18.6.2, ensure this in the plugins section of the project pom.xml file.
                
                Pipeline will execute npx whitesource run for npm projects. Please ensure that all package.json files have a name and version configured so that it is possible to distinguish between the different packages.
              "%
              | optional,
            ..
          }
        | doc "Configuration, which will modify the behaviour of stages in the SAP Cloud SDK Pipeline."
        | optional,
      steps
        | js2n.Nullable
          {
            artifactPrepareVersion
              | {
                commitUserName
                  | String
                  | doc "Defines the user name which appears in version control for the versioning update (in case versioningType: cloud)."
                  | optional,
                dockerImage | refs."definitions.dockerImage" | optional,
                includeCommitId
                  | Bool
                  | doc "Defines if the automatically generated version (versioningType: cloud) should include the commit id hash."
                  | optional,
                tagPrefix
                  | String
                  | doc "Defines the prefix which is used for the git tag which is written during the versioning run (only versioningType: cloud)."
                  | optional,
                unixTimestamp
                  | Bool
                  | doc "Defines if the Unix timestamp number should be used as build number instead of the standard date format."
                  | optional,
                versioningType
                  | String
                  | doc "Defines the type of versioning (cloud: fully automatic, cloud_noTag: automatic but no tag created, library: manual)"
                  | optional,
                ..
              }
              | doc "If automatic versioning is enabled, this step is used to set a common version for artifacts and optionally push a corresponding tag."
              | optional,
            checkGatling
              | {
                enabled
                  | Bool
                  | doc "You can enable Gatling tests by turning the flag to true."
                  | optional,
                ..
              }
              | doc "Gatling is used as one of the performance tests tool."
              | optional,
            checkJMeter
              | {
                dockerImage | refs."definitions.dockerImage" | optional,
                failThreshold
                  | std.number.Integer
                  | doc "Marks build as FAILURE if the value exceeds the threshold."
                  | optional,
                options | String | doc "Options such as proxy." | optional,
                testPlan
                  | String
                  | doc "The directory where the test plans reside. Should reside in a subdirectory under performance-tests directory if both JMeter and Gatling are enabled."
                  | optional,
                unstableThreshold
                  | std.number.Integer
                  | doc "Marks build as UNSTABLE if the value exceeds the threshold."
                  | optional,
                ..
              }
              | doc "Apache JMeter is executed as part of performance tests of the application. The user is free to choose between JMeter and Gatling or both."
              | optional,
            cloudFoundryDeploy
              | {
                cloudFoundry | refs."definitions.cloudFoundry" | optional,
                dockerImage | refs."definitions.dockerImage" | optional,
                keepOldInstance
                  | Bool
                  | doc "In case of a blue-green deployment the old instance will be stopped and will remain in the Cloud Foundry space by default. If this option is set to false, the old instance will be deleted."
                  | optional,
                smokeTestStatusCode
                  | std.number.Integer
                  | doc "Expected return code for smoke test success."
                  | optional,
                ..
              }
              | doc "A step configuration regarding Cloud Foundry deployment. This is required by stages like end-to-end tests, performance tests, and production deployment."
              | optional,
            debugReportArchive
              | {
                shareConfidentialInformation
                  | Bool
                  | doc "If set to true, a confidential debug report is being generated with each build."
                  | optional,
                ..
              }
              | doc "The debugReportArchive configuration can be used to create confidential (instead of redacted) debug reports. The difference between the redacted and the confidential debug report is that potentially confidential information, such as the GitHub repository and branch, global extension repository and shared libraries, are included in the confidential debug report. It is the user's responsibility to make sure that the debug report does not contain any confidential information."
              | optional,
            executeNpm
              | {
                defaultNpmRegistry
                  | String
                  | doc "The default npm registry url to be used as the remote mirror. Bypasses the local download cache if specified."
                  | optional,
                dockerImage | refs."definitions.dockerImage" | optional,
                ..
              }
              | doc "The executeNpm step is used for all invocations of the npm build tool. It is, for example, used for building the frontend and for executing end to end tests."
              | optional,
            executeSourceClearScan
              | { dockerImage | refs."definitions.dockerImage" | optional, .. }
              | optional,
            fortifyExecuteScan
              | {
                autoCreate
                  | Bool
                  | doc "Whether Fortify project and project version shall be implicitly auto created in case they cannot be found in the backend"
                  | optional,
                buildTool
                  | String
                  | doc "Scan type used for the step which can be 'maven', 'pip'"
                  | optional,
                defaultVersioningModel
                  | String
                  | doc "The default project versioning model used in case 'projectVersion' parameter is empty for creating the version based on the build descriptor version to report results in SSC, can be one of 'major', 'major-minor', 'semantic', 'full'"
                  | optional,
                dockerImage | refs."definitions.dockerImage" | optional,
                exclude
                  | Array String
                  | doc "A list of directories/files to be excluded from the scan. Wildcards can be used, e.g., '**/Test.java'."
                  | optional,
                fortifyCredentialsId
                  | String
                  | doc "Jenkins 'Secret text' credentials ID containing token to authenticate to Fortify SSC.",
                githubTokenCredentialsId
                  | String
                  | doc "Jenkins 'Secret text' credentials ID containing token to authenticate to GitHub."
                  | optional,
                memory
                  | String
                  | doc "The amount of memory granted to the translate/scan executions"
                  | optional,
                projectName
                  | String
                  | doc "The project used for reporting results in SSC"
                  | optional,
                serverUrl
                  | String
                  | doc "Fortify SSC Url to be used for accessing the APIs"
                  | optional,
                src
                  | Array String
                  | doc "A list of source directories to scan. Wildcards can be used, e.g., 'src/main/java/**/*'. The default value for buildTool: 'maven' is ['**/*.xml', '**/*.html', '**/*.jsp', '**/*.js', '**/src/main/resources/**/*', '**/src/main/java/**/*'], for buildTool: 'pip' it is ['./**/*']."
                  | optional,
                uploadResults
                  | Bool
                  | doc "Whether results shall be uploaded or not"
                  | optional,
                verbose
                  | Bool
                  | doc "Sends the verbose output to the Jenkins log."
                  | optional,
                ..
              }
              | optional,
            mavenExecute
              | {
                dockerImage | refs."definitions.dockerImage" | optional,
                projectSettingsFile
                  | String
                  | doc "The project settings.xml to be used for maven builds. You can specify a relative path to your project root or a URL starting with http or https."
                  | optional,
                ..
              }
              | doc "The mavenExecute step is used for all invocations of the mvn build tool. It is either used directly for executing specific maven phases such as test, or indirectly for steps that execute maven plugins such as checkPmd."
              | optional,
            mtaBuild
              | {
                applicationName
                  | String
                  | doc "The name of the application which is being built. If the parameter has been provided and no mta.yaml exists, the mta.yaml will be automatically generated using this parameter and the information (name and version) from package.json before the actual build starts."
                  | optional,
                buildTarget
                  | String
                  | doc "The target platform to which the mtar can be deployed."
                  | optional,
                defaultNpmRegistry
                  | String
                  | doc "Url to the npm registry that should be used for installing npm dependencies."
                  | optional,
                dockerImage | refs."definitions.dockerImage" | optional,
                dockerOptions
                  | std.contract.any_of [ String, Array Dyn ]
                  | doc "Docker options to be set when starting the container (List or String)."
                  | optional,
                extension
                  | String
                  | doc "The path to the extension descriptor file."
                  | optional,
                globalSettingsFile
                  | String
                  | doc "Path or url to the mvn settings file that should be used as global settings file."
                  | optional,
                mtaBuildTool
                  | String
                  | doc "Choose which tool is used to build your mta project. The default option is `cloudMbt` which is not backwards compatible with the `classic` tool. For more information on migrating from `classic` to `cloudMbt`, please refer to https://sap.github.io/cloud-mta-build-tool/migration/."
                  | optional,
                mtaJarLocation
                  | String
                  | doc "The location of the SAP Multitarget Application Archive Builder jar file, including file name and extension. If it is not provided, the SAP Multitarget Application Archive Builder is expected on PATH."
                  | optional,
                projectSettingsFile
                  | String
                  | doc "Path or url to the mvn settings file that should be used as project settings file."
                  | optional,
                ..
              }
              | optional,
            neoDeploy
              | {
                dockerImage | refs."definitions.dockerImage" | optional,
                neo
                  | {
                    account | refs."definitions.account",
                    application | refs."definitions.application",
                    credentialsId | refs."definitions.credentialsId" | optional,
                    environment | refs."definitions.environment" | optional,
                    host | refs."definitions.host",
                    runtime | refs."definitions.runtime",
                    runtimeVersion | refs."definitions.runtimeVersion",
                    size | refs."definitions.size" | optional,
                    vmArguments | refs."definitions.vmArguments" | optional,
                  }
                  | doc "The map for neo."
                  | optional,
                ..
              }
              | optional,
            sonarExecuteScan
              | {
                dockerImage | refs."definitions.dockerImage" | optional,
                instance
                  | String
                  | doc "This property refers to a SonarQube instance, which needs to be defined in the Jenkins.",
                options
                  | std.contract.any_of [ String, Array Dyn ]
                  | doc "A list of additional options (in the form of '-Dxy=z') to be passed to the sonar scanner tool."
                  | optional,
                projectKey
                  | String
                  | doc "The project key is used to refer your project.",
                ..
              }
              | doc "Configure SonarQube (https://www.sonarqube.org/) scans."
              | optional,
            tmsUpload
              | {
                credentialsId
                  | String
                  | doc "Credentials to be used for the file and node uploads to the Transport Management Service."
                  | optional,
                customDescription
                  | String
                  | doc "Can be used as the description of a transport request. Will overwrite the default."
                  | optional,
                nodeName
                  | String
                  | doc "Defines the name of the node to which the *.mtar file should be uploaded."
                  | optional,
                ..
              }
              | doc "This step allows you to upload an MTA file (multi-target application archive) and multiple MTA extension descriptors into a TMS (SAP Cloud Platform Transport Management Service) landscape for further TMS-controlled distribution through a TMS-configured landscape."
              | optional,
            whitesourceExecuteScan
              | {
                orgAdminUserTokenCredentialsId
                  | refs."definitions.credentialsId",
                productName
                  | String
                  | doc "Name of your product in WhiteSource.",
                productVersion
                  | String
                  | doc "Overwrites the project version in the WhiteSource UI per scan with the given version. Per default, the version from the main build descriptor file is used and transformed according to the versioningModel parameter, i.e. \"1\" for the default model of \"major\"."
                  | optional,
                userTokenCredentialsId
                  | String
                  | doc "Unique identifier of the Secret Text on Jenkins server that stores WhiteSource userKey of a user. This is required only if the administrator of the WhiteSource service has enabled additional access level control. More details can be found here."
                  | optional,
                ..
              }
              | doc m%"
                Configure credentials for WhiteSource scans. The minimum required Maven WhiteSource plugin version is 18.6.2, ensure this in the plugins section of the project pom.xml file.
                
                Pipeline will execute npx whitesource run for npm projects. Please ensure that all package.json files have a name configured so that it is possible to distinguish between the different packages.
              "%
              | optional,
            ..
          }
        | optional,
      ..
    }