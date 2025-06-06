# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.IAccessAnalyzerConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS AccessAnalyzer enabled in your organization.",
          },
      "definitions.IAlarmConfig" =
        {
            alarmDescription
              | refs."definitions.NonEmptyString"
              | String
              | doc "Description for the alarm",
            alarmName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the alarm",
            comparisonOperator
              | refs."definitions.NonEmptyString"
              | String
              | doc "Comparison to use to check if metric is breaching",
            evaluationPeriods
              | Number
              | doc "The number of periods over which data is compared to the specified threshold.",
            metricName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the metric.",
            namespace
              | refs."definitions.NonEmptyString"
              | String
              | doc "Namespace of the metric.",
            period
              | Number
              | doc "The period over which the specified statistic is applied.",
            snsAlertLevel
              | refs."definitions.NonEmptyString"
              | String
              | doc "Alert SNS notification level Deprecated"
              | optional,
            snsTopicName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) SNS Topic Name SNS Topic Name from global config"
              | optional,
            statistic
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                What functions to use for aggregating.
                
                Can be one of the following:
                -  “Minimum” | “min”
                -  “Maximum” | “max”
                -  “Average” | “avg”
                -  “Sum” | “sum”
                -  “SampleCount | “n”
                -  “pNN.NN”
              "%,
            threshold
              | Number
              | doc "The value against which the specified statistic is compared.",
            treatMissingData
              | refs."definitions.NonEmptyString"
              | String
              | doc "Sets how this alarm is to handle missing data points.",
          },
      "definitions.IAlarmSetConfig" =
        {
            alarms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAlarmConfig", { _ | Dyn } ]
              )
              | doc m%"
                List of AWS CloudWatch Alarms
                
                Following example will create CIS-1.1-RootAccountUsage alarm for RootAccountUsage metric with notification level low
              "%,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Deployment targets for CloudWatch Alarms configuration",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "AWS region names to configure CloudWatch Alarms"
              | optional,
          },
      "definitions.IAuditManagerConfig" =
        {
            defaultReportsConfiguration
              | refs."definitions.IAuditManagerDefaultReportsDestinationConfig"
              | { _ | Dyn }
              | doc "AWS Audit Manager Default Reports configuration.",
            enable | Bool | doc "Indicates whether AWS Audit Manager enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring AWS Audit Manager. Please ensure any regions enabled in the global configuration that do not support Audit Manager are added to the excluded regions list.  {@link  https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/ Supported services by region } ."
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) Declaration of a S3 Lifecycle rule."
              | optional,
          },
      "definitions.IAuditManagerDefaultReportsDestinationConfig" =
        {
            destinationType
              | std.contract.Equal "S3"
              | doc "The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.",
            enable
              | Bool
              | doc "Indicates whether AWS Audit Manager Default Reports enabled.",
          },
      "definitions.IAwsConfig" =
        {
            aggregation
              | refs."definitions.IAwsConfigAggregation"
              | { _ | Dyn }
              | doc "Config Recorder Aggregation configuration"
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc m%"
                (OPTIONAL) AWS Config deployment target.
                
                Leaving `deploymentTargets` undefined will enable AWS Config across all accounts and enabled regions.
                
                We highly recommend enabling AWS Config across all accounts and enabled regions within your organization. `deploymentTargets` should only be used when more granular control is required, not as a default configuration.
                
                To enable AWS Config into Infrastructure organizational unit, you need to provide below value for this parameter.
                
                Note: The delegated admin account defined in centralSecurityServices will always have AwsConfig enabled
              "%
              | optional,
            enableConfigurationRecorder
              | Bool
              | doc m%"
                Indicates whether AWS Config recorder enabled.
                
                To enable AWS Config, you must create a configuration recorder
                
                ConfigurationRecorder resource describes the AWS resource types for which AWS Config records configuration changes. The configuration recorder stores the configurations of the supported resources in your account as configuration items.
              "%,
            enableDeliveryChannel
              | Bool
              | doc m%"
                Indicates whether delivery channel enabled.
                
                AWS Config uses the delivery channel to deliver the configuration changes to your Amazon S3 bucket. DEPRECATED
              "%
              | optional,
            overrideExisting
              | Bool
              | doc m%"
                Indicates whether or not to override existing config recorder settings Must be enabled if any account and region combination has an existing config recorder, even if config recording is turned off The Landing Zone Accelerator will override the settings in all configured accounts and regions
                ** Do not enable this setting if you have deployed LZA
                ** successfully with enableConfigurationRecorder set to true
                ** and overrideExisting either unset or set to false
                ** Doing so will cause a resource conflict When the overrideExisting property is enabled ensure that any scp's are not blocking the passRole iam permission for the iam role name {acceleratorPrefix}Config
              "%
              | optional,
            ruleSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAwsConfigRuleSet", { _ | Dyn } ]
              )
              | doc "AWS Config rule sets"
              | optional,
            useServiceLinkedRole
              | Bool
              | doc "Indicates whether to create the Configuration Recorder with a service linked role. If not specified, AWS Config will use a custom IAM role created by LZA. For new deployments, it is recommended to set this setting to true. For more information, see https://docs.aws.amazon.com/config/latest/developerguide/using-service-linked-roles.html"
              | optional,
          },
      "definitions.IAwsConfigAggregation" =
        {
            delegatedAdminAccount
              | refs."definitions.NonEmptyString"
              | String
              | optional,
            enable | Bool,
          },
      "definitions.IAwsConfigRuleSet" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc m%"
                Config ruleset deployment target.
                
                To configure AWS Config rules into Root and Infrastructure organizational units, you need to provide below value for this parameter.
              "%,
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IConfigRule", { _ | Dyn } ]
              )
              | doc m%"
                AWS Config rule set
                
                Following example will create a custom rule named accelerator-attach-ec2-instance-profile with remediation and a managed rule named accelerator-iam-user-group-membership-check without remediation
              "%,
          },
      "definitions.ICentralSecurityServicesConfig" =
        {
            auditManager
              | refs."definitions.IAuditManagerConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Amazon Audit Manager Configuration"
              | optional,
            delegatedAdminAccount
              | refs."definitions.NonEmptyString"
              | String
              | doc "Designated administrator account name for accelerator security services. AWS organizations designate a member account as a delegated administrator for the organization users and roles from that account can perform administrative actions for security services like Macie, GuardDuty, Detective and Security Hub. Without designated administrator account administrative tasks for security services are performed only by users or roles in the organization's management account. This helps you to separate management of the organization from management of these security services. Accelerator currently supports using the Audit account **only** as the delegated administrator account.",
            detective
              | refs."definitions.IDetectiveConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Amazon Detective Configuration"
              | optional,
            ebsDefaultVolumeEncryption
              | refs."definitions.IEbsDefaultVolumeEncryptionConfig"
              | { _ | Dyn }
              | doc m%"
                AWS Elastic Block Store default encryption configuration
                
                Accelerator use this parameter to configure EBS default encryption. Accelerator will create KMS key for every AWS environment (account and region), which will be used as default EBS encryption key.
                
                To enable EBS default encryption in every region accelerator implemented, you need to provide below value for this parameter.
              "%,
            guardduty
              | refs."definitions.IGuardDutyConfig"
              | { _ | Dyn }
              | doc "Amazon GuardDuty Configuration",
            macie
              | refs."definitions.IMacieConfig"
              | { _ | Dyn }
              | doc m%"
                Amazon Macie Configuration
                
                Accelerator use this parameter to define AWS Macie configuration.
                
                To enable Macie in every region accelerator implemented and set fifteen minutes of frequency to publish updates to policy findings for the account with publishing sensitive data findings to Security Hub. you need to provide below value for this parameter.
              "%,
            s3PublicAccessBlock
              | refs."definitions.IS3PublicAccessBlockConfig"
              | { _ | Dyn }
              | doc m%"
                AWS S3 public access block configuration
                
                Accelerator use this parameter to block AWS S3 public access
                
                To enable S3 public access blocking in every region accelerator implemented, you need to provide below value for this parameter.
              "%,
            scpRevertChangesConfig
              | refs."definitions.IScpRevertChangesConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) AWS Service Control Policies Revert Manual Changes configuration"
              | optional,
            securityHub
              | refs."definitions.ISecurityHubConfig"
              | { _ | Dyn }
              | doc m%"
                AWS Security Hub configuration
                
                Accelerator use this parameter to define AWS Security Hub configuration.
                
                To enable AWS Security Hub for all regions and enable "AWS Foundational Security Best Practices v1.0.0" security standard, deployment targets and disable controls you need provide below value for this parameter.
              "%,
            snsSubscriptions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISnsSubscriptionConfig", { _ | Dyn } ]
              )
              | doc m%"
                AWS SNS subscription configuration Deprecated
                
                NOTICE: The configuration of SNS topics is being moved to the Global Config. This block is deprecated and will be removed in a future release
                
                Accelerator use this parameter to define AWS SNS notification configuration.
                
                To enable high, medium and low SNS notifications, you need to provide below value for this parameter.
              "%
              | optional,
            ssmAutomation
              | refs."definitions.ISsmAutomationConfig"
              | { _ | Dyn }
              | doc m%"
                AWS Systems Manager Document configuration
                
                Accelerator use this parameter to define AWS Systems Manager documents configuration. SSM documents are created in designated administrator account for security services, i.e. Audit account.
                
                To create a SSM document named as "SSM-ELB-Enable-Logging" in every region accelerator implemented and share this document with Root organizational unit(OU), you need to provide below value for this parameter. To share document to specific account uncomment accounts list. A valid SSM document template file ssm-documents/ssm-elb-enable-logging.yaml must be present in Accelerator config repository. Accelerator will use this template file to create the document.
              "%,
          },
      "definitions.ICloudWatchConfig" =
        {
            alarmSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAlarmSetConfig", { _ | Dyn } ]
              )
              | doc m%"
                List AWS CloudWatch Alarms configuration
                
                Following example will create CIS-1.1-RootAccountUsage alarm for RootAccountUsage metric with notification level low
              "%,
            logGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILogGroupsConfig", { _ | Dyn } ]
              )
              | doc m%"
                (OPTIONAL) List CloudWatch Logs configuration
                
                The Following is an example of deploying CloudWatch Logs to multiple regions
              "%
              | optional,
            metricSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IMetricSetConfig", { _ | Dyn } ]
              )
              | doc m%"
                List AWS CloudWatch Metrics configuration
                
                Following example will create metric filter RootAccountMetricFilter for aws-controltower/CloudTrailLogs log group
              "%,
          },
      "definitions.IConfigRule" =
        {
            complianceResourceTypes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) Defines which resources trigger an evaluation for an AWS Config rule."
              | optional,
            customRule
              | refs."definitions.ICustomRuleConfigType"
              | { _ | Dyn }
              | doc "(OPTIONAL) A custom config rule is backed by AWS Lambda function. This is required when creating custom config rule."
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description about this AWS Config rule."
              | optional,
            identifier
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The identifier of the AWS managed rule."
              | optional,
            inputParameters
              | js2n.Nullable
                ({
                  _ | std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ]
                })
              | doc "(OPTIONAL) Input parameter values that are passed to the AWS Config rule."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A name for the AWS Config rule.",
            remediation
              | refs."definitions.IConfigRuleRemediationType"
              | { _ | Dyn }
              | doc "A remediation for the config rule, auto remediation to automatically remediate noncompliant resources."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) Tags for the config rule"
              | optional,
            type
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Config rule type Managed or Custom. For custom config rule, this parameter value is Custom, when creating managed config rule this parameter value can be undefined or empty string"
              | optional,
          },
      "definitions.IConfigRuleRemediationType" =
        {
            automatic
              | Bool
              | doc "The remediation is triggered automatically.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "List of AWS Region names to be excluded from applying remediation"
              | optional,
            maximumAutomaticAttempts
              | Number
              | doc m%"
                The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
                
                For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptSeconds as 50 seconds, AWS Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.
              "%
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IRemediationParametersConfigType",
                    { _ | Dyn }
                  ]
              )
              | doc "List of remediation parameters"
              | optional,
            retryAttemptSeconds
              | Number
              | doc m%"
                Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
                
                For example, if you specify RetryAttemptSeconds as 50 seconds and MaximumAutomaticAttempts as 5, AWS Config will run auto-remediations 5 times within 50 seconds before throwing an exception.
              "%
              | optional,
            rolePolicyFile
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Remediation assume role policy definition json file. This file must be present in config repository.
                
                Create your own custom remediation actions using AWS Systems Manager Automation documents. When a role needed to be created to perform custom remediation actions, role permission needs to be defined in this file.
              "%,
            targetAccountName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the account owning the public document to perform custom remediation actions. Accelerator creates these documents in Audit account and shared with other accounts."
              | optional,
            targetDocumentLambda
              | refs."definitions.ICustomRuleLambdaType"
              | { _ | Dyn }
              | doc "Target SSM document remediation lambda function"
              | optional,
            targetId
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Target ID is the name of the public document.
                
                The name of the AWS SSM document to perform custom remediation actions.
              "%,
            targetVersion
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Version of the target. For example, version of the SSM document.
                
                If you make backward incompatible changes to the SSM document, you must call PutRemediationConfiguration API again to ensure the remediations can run.
              "%
              | optional,
          },
      "definitions.ICustomRuleConfigType" =
        {
            configurationChanges
              | Bool
              | doc m%"
                Whether to run the rule on configuration changes.
                
                Default: false
              "%
              | optional,
            lambda
              | refs."definitions.ICustomRuleLambdaType"
              | { _ | Dyn }
              | doc "The Lambda function to run.",
            maximumExecutionFrequency
              | String
              | doc m%"
                The maximum frequency at which the AWS Config rule runs evaluations.
                
                Default: MaximumExecutionFrequency.TWENTY_FOUR_HOURS
              "%,
            periodic
              | Bool
              | doc "Whether to run the rule on a fixed frequency."
              | optional,
            triggeringResources
              | refs."definitions.ITriggeringResourceType"
              | { _ | Dyn }
              | doc "Defines which resources trigger an evaluation for an AWS Config rule.",
          },
      "definitions.ICustomRuleLambdaType" =
        {
            handler
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the method within your code that Lambda calls to execute your function. The format includes the file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information, see https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-features.html#gettingstarted-features-programmingmodel.",
            rolePolicyFile
              | refs."definitions.NonEmptyString"
              | String
              | doc "Lambda execution role policy definition file",
            runtime
              | refs."definitions.NonEmptyString"
              | String
              | doc "The runtime environment for the Lambda function that you are uploading. For valid values, see the Runtime property in the AWS Lambda Developer Guide.",
            sourceFilePath
              | refs."definitions.NonEmptyString"
              | String
              | doc "The source code file path of your Lambda function. This is a zip file containing lambda function, this file must be available in config repository.",
            timeout
              | Number
              | doc "Lambda function execution timeout in seconds"
              | optional,
          },
      "definitions.IDeploymentTargets" =
        {
            accounts | Array String | optional,
            excludedAccounts | Array String | optional,
            excludedRegions | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.IDetectiveConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether Amazon Detective is enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Amazon Detective. Please ensure any regions enabled in the global configuration that do not support Amazon Detective are added to the excluded regions list.  {@link  https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/ Supported services by region } ."
              | optional,
          },
      "definitions.IDocumentConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of document to be created",
            targetType
              | refs."definitions.NonEmptyString"
              | String
              | doc "Specify a target type to define the kinds of resources the document can run on. For example, to run a document on EC2 instances, specify the following value: /AWS::EC2::Instance. If you specify a value of '/' the document can run on all types of resources. If you don't specify a value, the document can't run on any resources. For a list of valid resource types, see AWS resource and property types reference in the AWS CloudFormation User Guide. Ref: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html Length Constraints: Maximum length of 200. Pattern: ^\\/[\\w\\.\\-\\:\\/]*$"
              | optional,
            template
              | refs."definitions.NonEmptyString"
              | String
              | doc "Document template file path. This file must be available in accelerator config repository.",
          },
      "definitions.IDocumentSetConfig" =
        {
            documents
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IDocumentConfig", { _ | Dyn } ]
              )
              | doc "List of the documents to be shared",
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "Document share target, valid value should be any organizational unit. Document will be shared with every account within the given OU",
          },
      "definitions.IEbsDefaultVolumeEncryptionConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Deployment targets for EBS default volume encryption"
              | optional,
            enable
              | Bool
              | doc "Indicates whether AWS EBS volume have default encryption enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring AWS EBS volume default encryption"
              | optional,
            kmsKey
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) KMS key to encrypt EBS volume."
              | optional,
          },
      "definitions.IEncryptionConfig" =
        {
            kmsKeyArn
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Reference the KMS Key Arn that is used to encrypt the AWS CloudWatch Logs Group. This should be a KMS Key that is not managed by Landing Zone Accelerator."
              | optional,
            kmsKeyName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Use this property to reference a KMS Key Name that is created by Landing Zone Accelerator."
              | optional,
            useLzaManagedKey
              | Bool
              | doc "(OPTIONAL) Set this property to `true` if you would like to use the default CloudWatch Logs KMS CMK that is deployed by Landing Zone Accelerator."
              | optional,
          },
      "definitions.IGuardDutyConfig" =
        {
            autoEnableOrgMembers
              | Bool
              | doc m%"
                (OPTIONAL) Enables/disables the auto enabling of GuardDuty for any account including the new accounts joining the organization
                
                It is recommended to set the value to `false` when using the `deploymentTargets` property to enable GuardDuty only on targeted accounts mentioned in the deploymentTargets. If you do not define or do not set it to `false` any new accounts joining the organization will automatically be enabled with GuardDuty.
              "%
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc m%"
                (OPTIONAL) Deployment targets for GuardDuty
                
                We highly recommend enabling GuardDuty across all accounts and enabled regions within your organization. `deploymentTargets` should only be used when more granular control is required, not as a default configuration Please only specify one of the `deploymentTargets` or `excludeRegions` properties.
                
                Note: The delegated admin account defined in centralSecurityServices will always have GuardDuty enabled
              "%
              | optional,
            ec2Protection
              | refs."definitions.IGuardDutyEc2ProtectionConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) AWS GuardDuty EC2 Protection configuration."
              | optional,
            eksProtection
              | refs."definitions.IGuardDutyEksProtectionConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) AWS GuardDuty EKS Protection configuration."
              | optional,
            enable | Bool | doc "Indicates whether AWS GuardDuty enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc m%"
                (OPTIONAL) List of AWS Region names to be excluded from configuring Amazon GuardDuty
                
                Please only specify one of the `excludeRegions` or `deploymentTargets` properties.
              "%
              | optional,
            exportConfiguration
              | refs."definitions.IGuardDutyExportFindingsConfig"
              | { _ | Dyn }
              | doc "AWS GuardDuty Export Findings configuration.",
            lambdaProtection
              | refs."definitions.IGuardDutyLambdaProtectionConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) AWS GuardDuty Lambda Protection configuration."
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) Declaration of a S3 Lifecycle rule."
              | optional,
            rdsProtection
              | refs."definitions.IGuardDutyRdsProtectionConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) AWS GuardDuty RDS Protection configuration."
              | optional,
            s3Protection
              | refs."definitions.IGuardDutyS3ProtectionConfig"
              | { _ | Dyn }
              | doc "AWS GuardDuty S3 Protection configuration.",
          },
      "definitions.IGuardDutyEc2ProtectionConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS GuardDuty EC2 Malware Protection is enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Amazon GuardDuty EC2 Malware Protection"
              | optional,
            keepSnapshots
              | Bool
              | doc "Indicates whether AWS GuardDuty EC2 Malware Protection should retain snapshots on findings.",
          },
      "definitions.IGuardDutyEksProtectionConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS GuardDuty EKS Protection enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Amazon GuardDuty EKS Protection"
              | optional,
            manageAgent
              | Bool
              | doc "Indicates whether AWS GuardDuty EKS Agent is managed."
              | optional,
          },
      "definitions.IGuardDutyExportFindingsConfig" =
        {
            destinationType
              | std.contract.Equal "S3"
              | doc "The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.",
            enable
              | Bool
              | doc "Indicates whether AWS GuardDuty Export Findings enabled.",
            exportFrequency
              | std.enum.TagOrString
              | [| 'SIX_HOURS, 'ONE_HOUR, 'FIFTEEN_MINUTES |]
              | doc "An enum value that specifies how frequently findings are exported, such as to CloudWatch Events. Possible values FIFTEEN_MINUTES, ONE_HOUR, or SIX_HOURS",
            overrideExisting
              | Bool
              | doc "(OPTIONAL) Indicates whether AWS GuardDuty Export Findings can be overwritten."
              | optional,
            overrideGuardDutyPrefix
              | refs."definitions.IPrefixConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) AWS GuardDuty Prefix for centralized logging path."
              | optional,
          },
      "definitions.IGuardDutyLambdaProtectionConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS GuardDuty Lambda Malware Protection is enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Amazon GuardDuty Lambda Malware Protection"
              | optional,
          },
      "definitions.IGuardDutyRdsProtectionConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS GuardDuty RDS Malware Protection is enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Amazon GuardDuty RDS Malware Protection"
              | optional,
          },
      "definitions.IGuardDutyS3ProtectionConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS GuardDuty S3 Protection enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Amazon GuardDuty S3 Protection"
              | optional,
          },
      "definitions.IIamPasswordPolicyConfig" =
        {
            allowUsersToChangePassword
              | Bool
              | doc "Allows all IAM users in your account to use the AWS Management Console to change their own passwords.",
            hardExpiry
              | Bool
              | doc "Prevents IAM users who are accessing the account via the AWS Management Console from setting a new console password after their password has expired. The IAM user cannot access the console until an administrator resets the password.",
            maxPasswordAge
              | Number
              | doc m%"
                The number of days that an IAM user password is valid.
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of 0. The result is that IAM user passwords never expire.
              "%,
            minimumPasswordLength
              | Number
              | doc m%"
                The minimum number of characters allowed in an IAM user password.
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of 6.
              "%,
            passwordReusePrevention
              | Number
              | doc m%"
                Specifies the number of previous passwords that IAM users are prevented from reusing.
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of 0. The result is that IAM users are not prevented from reusing previous passwords.
              "%,
            requireLowercaseCharacters
              | Bool
              | doc m%"
                Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of false. The result is that passwords do not require at least one lowercase character.
              "%,
            requireNumbers
              | Bool
              | doc m%"
                Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of false. The result is that passwords do not require at least one numeric character.
              "%,
            requireSymbols
              | Bool
              | doc m%"
                Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:
                
                ! @ # $ % ^ & * ( ) _ + - = [ ] { } | '
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of false. The result is that passwords do not require at least one symbol character.
              "%,
            requireUppercaseCharacters
              | Bool
              | doc m%"
                Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).
                
                Note: If you do not specify a value for this parameter, then the operation uses the default value of false. The result is that passwords do not require at least one uppercase character.
              "%,
          },
      "definitions.IKeyConfig" =
        {
            alias
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Initial alias to add to the key"
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc m%"
                This configuration determines which accounts and/or OUs the CMK is deployed to.
                
                To deploy KMS key into Root and Infrastructure organizational units, you need to provide below value for this parameter.
              "%,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description of the key."
              | optional,
            enableKeyRotation
              | Bool
              | doc "(OPTIONAL) Indicates whether AWS KMS rotates the key."
              | optional,
            enabled
              | Bool
              | doc "(OPTIONAL) Indicates whether the key is available for use."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Unique Key name for logical reference",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL)Key policy file path. This file must be available in accelerator config repository."
              | optional,
            removalPolicy
              | std.enum.TagOrString
              | [| 'snapshot, 'retain, 'destroy |]
              | doc "(OPTIONAL) Whether the encryption key should be retained when it is removed from the Stack."
              | optional,
          },
      "definitions.IKeyManagementServiceConfig" =
        {
            keySets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IKeyConfig", { _ | Dyn } ]
              ),
          },
      "definitions.ILifecycleRule" =
        {
            abortIncompleteMultipartUpload
              | Number
              | doc "Specifies a lifecycle rule that aborts incomplete multipart uploads to an Amazon S3 bucket."
              | optional,
            enabled | Bool | doc "Whether this rule is enabled." | optional,
            expiration
              | Number
              | doc "Indicates the number of days after creation when objects are deleted from Amazon S3 and Amazon Glacier."
              | optional,
            expiredObjectDeleteMarker
              | Bool
              | doc "Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired."
              | optional,
            id
              | String
              | doc "Friendly name for the rule. Rule name must be unique."
              | optional,
            noncurrentVersionExpiration
              | Number
              | doc "Time between when a new version of the object is uploaded to the bucket and when old versions of the object expire."
              | optional,
            noncurrentVersionTransitions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITransition", { _ | Dyn } ]
              )
              | doc "One or more transition rules that specify when non-current objects transition to a specified storage class."
              | optional,
            prefix
              | refs."definitions.NonEmptyString"
              | String
              | doc "Object key prefix that identifies one or more objects to which this rule applies."
              | optional,
            transitions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITransition", { _ | Dyn } ]
              )
              | doc "One or more transition rules that specify when an object transitions to a specified storage class."
              | optional,
          },
      "definitions.ILogGroupsConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Deployment targets for CloudWatch Logs",
            encryption
              | refs."definitions.IEncryptionConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) The encryption configuration of the AWS CloudWatch Logs Group."
              | optional,
            logGroupName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the CloudWatch log group",
            logRetentionInDays
              | Number
              | doc m%"
                (OPTIONAL) How long, in days, the log contents will be retained.
                
                To retain all logs, set this value to undefined.
              "%,
            terminationProtected
              | Bool
              | doc "(OPTIONAL) Set this property to `false` if you would like the log group to be deleted if it is removed from the solution configuration file."
              | optional,
          },
      "definitions.IMacieConfig" =
        {
            enable | Bool | doc "Indicates whether AWS Macie enabled.",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "List of AWS Region names to be excluded from configuring Amazon Macie"
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) Declaration of a S3 Lifecycle rule."
              | optional,
            policyFindingsPublishingFrequency
              | std.enum.TagOrString
              | [| 'SIX_HOURS, 'ONE_HOUR, 'FIFTEEN_MINUTES |]
              | doc "(OPTIONAL) Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). An enum value that specifies how frequently findings are published Possible values FIFTEEN_MINUTES, ONE_HOUR, or SIX_HOURS"
              | optional,
            publishPolicyFindings
              | Bool
              | doc "Specifies whether to publish findings at all"
              | optional,
            publishSensitiveDataFindings
              | Bool
              | doc "Specifies whether to publish sensitive data findings to Security Hub. If you set this value to true, Amazon Macie automatically publishes all sensitive data findings that weren't suppressed by a findings filter. The default value is false.",
          },
      "definitions.IMetricConfig" =
        {
            filterName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Metric filter name",
            filterPattern
              | refs."definitions.NonEmptyString"
              | String
              | doc "Pattern to search for log events.",
            logGroupName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The log group to create the filter on.",
            metricName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the metric to emit.",
            metricNamespace
              | refs."definitions.NonEmptyString"
              | String
              | doc "The namespace of the metric to emit.",
            metricValue
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The value to emit for the metric.
                
                Can either be a literal number (typically “1”), or the name of a field in the structure to take the value from the matched event. If you are using a field value, the field value must have been matched using the pattern.
              "%,
            treatMissingData
              | refs."definitions.NonEmptyString"
              | String
              | doc "Sets how this alarm is to handle missing data points."
              | optional,
          },
      "definitions.IMetricSetConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Deployment targets for CloudWatch Metrics configuration"
              | optional,
            metrics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IMetricConfig", { _ | Dyn } ]
              )
              | doc m%"
                AWS CloudWatch Metric list
                
                Following example will create metric filter RootAccountMetricFilter for aws-controltower/CloudTrailLogs log group
              "%,
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) AWS region names to configure CloudWatch Metrics"
              | optional,
          },
      "definitions.INetworkPerimeterConfig" =
        { managedVpcOnly | Bool | optional, },
      "definitions.IPrefixConfig" =
        {
            customOverride
              | refs."definitions.NonEmptyString"
              | String
              | doc "(Optional) Prefix to be used for Centralized Logging Path"
              | optional,
            useCustomPrefix
              | Bool
              | doc "Indicates whether or not to add a custom prefix to LZA Default Centralized Logging location. If useCustomPrefix is set to true, logs will be stored in the Centralized Logging Bucket prefix.",
          },
      "definitions.IRemediationParametersConfigType" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the parameter",
            type
              | std.enum.TagOrString
              | [| 'StringList, '"String" |]
              | doc "Data type of the parameter, allowed value (StringList or String)",
            value
              | refs."definitions.NonEmptyString"
              | String
              | doc "Parameter value",
          },
      "definitions.IResourcePolicyConfig" =
        {
            document | refs."definitions.NonEmptyString" | String,
            resourceType
              | std.enum.TagOrString
              | [|
                'LAMBDA_FUNCTION,
                'CERTIFICATE_AUTHORITY,
                'CODEARTIFACT_REPOSITORY,
                'BACKUP_VAULT,
                'EVENTBRIDGE_EVENTBUS,
                'EFS_FILE_SYSTEM,
                'LEX_BOT,
                'APIGATEWAY_REST_API,
                'SQS_QUEUE,
                'SNS_TOPIC,
                'OPENSEARCH_DOMAIN,
                'ECR_REPOSITORY,
                'SECRETS_MANAGER_SECRET,
                'IAM_ROLE,
                'KMS_KEY,
                'S3_BUCKET
              |],
          },
      "definitions.IResourcePolicyEnforcementConfig" =
        {
            enable | Bool,
            networkPerimeter
              | refs."definitions.INetworkPerimeterConfig"
              | { _ | Dyn }
              | optional,
            policySets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicySetConfig", { _ | Dyn } ]
              ),
            remediation
              | refs."definitions.IResourcePolicyRemediation"
              | { _ | Dyn },
          },
      "definitions.IResourcePolicyRemediation" =
        {
            automatic
              | Bool
              | doc "The remediation is triggered automatically.",
            maximumAutomaticAttempts
              | Number
              | doc "The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5."
              | optional,
            retryAttemptSeconds
              | Number
              | doc "Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds."
              | optional,
          },
      "definitions.IResourcePolicySetConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "The deployment targets - accounts/OUs where the config rule and remediation action will be deployed to",
            inputParameters
              | { _ | String }
              | doc m%"
                The input parameters which will be set as environment variable in Custom Config Rule Lambda and Remediation lambda
                
                Meanwhile, 'SourceAccount' is a reserved parameters for allow-only resource policy -- Lambda_Function and CERTIFICATE_AUTHORITY. For example, 'SourceAccount: 123456789012,987654321098' means requests from these two accounts can be allowed. Apart from these two, No other external accounts can access a lambda function or Certificate Authority.
              "%
              | optional,
            resourcePolicies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyConfig", { _ | Dyn } ]
              )
              | doc "A list of resource policy templates for different types of resources",
          },
      "definitions.IS3PublicAccessBlockConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether AWS S3 block public access is enabled.",
            excludeAccounts
              | Array String
              | doc "List of AWS Account names to be excluded from configuring S3 PublicAccessBlock"
              | optional,
          },
      "definitions.IScpRevertChangesConfig" =
        {
            enable
              | Bool
              | doc "Indicates whether manual changes to Service Control Policies are automatically reverted.",
            snsTopicName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The name of the SNS Topic to send alerts to when SCPs are changed manually"
              | optional,
          },
      "definitions.ISecurityConfig" =
        {
            accessAnalyzer
              | refs."definitions.IAccessAnalyzerConfig"
              | { _ | Dyn },
            awsConfig | refs."definitions.IAwsConfig" | { _ | Dyn },
            centralSecurityServices
              | refs."definitions.ICentralSecurityServicesConfig"
              | { _ | Dyn }
              | doc "Central security configuration",
            cloudWatch | refs."definitions.ICloudWatchConfig" | { _ | Dyn },
            homeRegion
              | refs."definitions.Region"
              | String
              | doc "Accelerator home region name."
              | optional,
            iamPasswordPolicy
              | refs."definitions.IIamPasswordPolicyConfig"
              | { _ | Dyn },
            keyManagementService
              | refs."definitions.IKeyManagementServiceConfig"
              | { _ | Dyn }
              | optional,
            resourcePolicyEnforcement
              | refs."definitions.IResourcePolicyEnforcementConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ISecurityHubConfig" =
        {
            autoEnableOrgMembers
              | Bool
              | doc m%"
                (OPTIONAL) Enables/disables the auto enabling of SecurityHub for any account including the new accounts joining the organization
                
                It is recommended to set the value to `false` when using the `deploymentTargets` property to enable SecurityHub only on targeted accounts mentioned in the deploymentTargets. If you do not define or do not set it to `false` any new accounts joining the organization will automatically be enabled with SecurityHub.
              "%
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc m%"
                (OPTIONAL) Deployment targets for SecurityHub
                
                We highly recommend enabling SecurityHub across all accounts and enabled regions within your organization. `deploymentTargets` should only be used when more granular control is required, not as a default configuration Please only specify one of the `deploymentTargets` or `excludeRegions` properties.
                
                Note: The delegated admin account defined in centralSecurityServices will always have SecurityHub enabled.
              "%
              | optional,
            enable
              | Bool
              | doc "Indicates whether AWS Security Hub is enabled (AWSConfig is required for enabling SecurityHub)",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring Security Hub"
              | optional,
            logging
              | refs."definitions.ISecurityHubLoggingConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Security Hub logs are sent to CloudWatch logs by default. This option can enable or disable the logging."
              | optional,
            notificationLevel
              | String
              | doc "(OPTIONAL) Security Hub notification level"
              | optional,
            regionAggregation
              | Bool
              | doc "(OPTIONAL) Indicates whether Security Hub results are aggregated in the Home Region."
              | optional,
            snsTopicName
              | String
              | doc "(OPTIONAL) SNS Topic for Security Hub notifications."
              | optional,
            standards
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISecurityHubStandardConfig", { _ | Dyn } ]
              )
              | doc "Security Hub standards configuration",
          },
      "definitions.ISecurityHubLoggingCloudwatchConfig" =
        {
            enable
              | Bool
              | doc "Security hub to cloudwatch logging is enabled by default.",
            logGroupName
              | String
              | doc "(OPTIONAL) CloudWatch Log Group Name"
              | optional,
            logLevel
              | refs."definitions.SecurityHubSeverityLevel"
              | String
              | doc "(OPTIONAL) Security Hub logging level"
              | optional,
          },
      "definitions.ISecurityHubLoggingConfig" =
        {
            cloudWatch
              | refs."definitions.ISecurityHubLoggingCloudwatchConfig"
              | { _ | Dyn }
              | doc "Data store to ship the Security Hub logs to."
              | optional,
          },
      "definitions.ISecurityHubStandardConfig" =
        {
            controlsToDisable
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of control names to be disabled for the given security standards"
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Deployment targets for AWS Security Hub standard."
              | optional,
            enable
              | Bool
              | doc "Indicates whether given AWS Security Hub standard enabled.",
            name
              | std.enum.TagOrString
              | [|
                '"",
                '"PCI DSS v3.2.1",
                '"NIST Special Publication 800-53 Revision 5",
                '"CIS AWS Foundations Benchmark v3.0.0",
                '"CIS AWS Foundations Benchmark v1.4.0",
                '"CIS AWS Foundations Benchmark v1.2.0",
                '"AWS Foundational Security Best Practices v1.0.0"
              |]
              | doc "An enum value that specifies one of three security standards supported by Security Hub Possible values are 'AWS Foundational Security Best Practices v1.0.0', 'CIS AWS Foundations Benchmark v1.2.0', 'CIS AWS Foundations Benchmark v1.4.0', 'CIS AWS Foundations Benchmark v3.0.0', 'NIST Special Publication 800-53 Revision 5, and 'PCI DSS v3.2.1'",
          },
      "definitions.IShareTargets" =
        {
            accounts | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.ISnsSubscriptionConfig" =
        {
            email
              | refs."definitions.NonEmptyString"
              | String
              | doc "Subscribing email address",
            level
              | refs."definitions.NonEmptyString"
              | String
              | doc "Notification level high, medium or low",
          },
      "definitions.ISsmAutomationConfig" =
        {
            documentSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IDocumentSetConfig", { _ | Dyn } ]
              )
              | doc "List of documents for automation",
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) List of AWS Region names to be excluded from configuring block S3 public access"
              | optional,
          },
      "definitions.ITag" = { key | String, value | String, },
      "definitions.ITransition" =
        {
            storageClass | refs."definitions.StorageClass" | String,
            transitionAfter | Number,
          },
      "definitions.ITriggeringResourceType" =
        {
            lookupKey
              | refs."definitions.NonEmptyString"
              | String
              | doc "Resource lookup type, resource can be lookup by tag or types. When resource needs to lookup by tag, this field will have tag name.",
            lookupType
              | String
              | doc m%"
                An enum to identify triggering resource types. Possible values ResourceId, Tag, or ResourceTypes
                
                Triggering resource can be lookup by resource id, tags or resource types.
              "%,
            lookupValue
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Resource lookup value, when resource lookup using tag, this field will have tag value to search resource.",
          },
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
      "definitions.Region" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'us-west-2,
                'us-west-1,
                'us-isof-east-1,
                'us-isof-south-1,
                'us-iso-west-1,
                'us-isob-east-1,
                'us-iso-east-1,
                'us-gov-east-1,
                'us-gov-west-1,
                'us-east-2,
                'us-east-1,
                'sa-east-1,
                'me-south-1,
                'me-central-1,
                'il-central-1,
                'eu-isoe-west-1,
                'eu-west-3,
                'eu-west-2,
                'eu-west-1,
                'eu-south-2,
                'eu-south-1,
                'eu-north-1,
                'eu-central-2,
                'eu-central-1,
                'cn-northwest-1,
                'cn-north-1,
                'ca-west-1,
                'ca-central-1,
                'ap-southeast-5,
                'ap-southeast-4,
                'ap-southeast-3,
                'ap-southeast-2,
                'ap-southeast-1,
                'ap-south-2,
                'ap-south-1,
                'ap-northeast-3,
                'ap-northeast-2,
                'ap-northeast-1,
                'ap-east-1,
                'af-south-1
              |]
            ],
      "definitions.SecurityHubSeverityLevel" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'INFORMATIONAL, 'LOW, 'MEDIUM, 'HIGH, 'CRITICAL |]
            ],
      "definitions.StorageClass" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ONEZONE_IA,
                'INTELLIGENT_TIERING,
                'STANDARD_IA,
                'GLACIER_IR,
                'GLACIER,
                'DEEP_ARCHIVE
              |]
            ],
    }
    in
  refs."definitions.ISecurityConfig"