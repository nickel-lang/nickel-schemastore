# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ComparisonOperator" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'EQUAL_TO, 'LESS_THAN, 'GREATER_THAN |]
            ],
      "definitions.CustomS3ResourceAndKmsPolicyOverridesConfig" =
        {
            kmsPolicy | String | doc "KMS policy file" | optional,
            s3Policy | String | doc "S3 resource policy file" | optional,
          },
      "definitions.EmailAddress" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 64,
              js2n.string.MinLength 6,
              js2n.string.Matches "['^\\S+@\\S+\\.\\S+$', '^\\w+$']"
            ],
      "definitions.IAcceleratorMetadataConfig" =
        {
            account | String,
            enable | Bool | doc "Enable Accelerator Metadata",
            readOnlyAccessRoleArns | Array String,
          },
      "definitions.IAcceleratorSettingsConfig" =
        {
            maxConcurrentStacks
              | Number
              | doc "Set maximum number of concurrent stacks that can be processed at a time while transpiling the application. If no value is specified it defaults to 250"
              | optional,
          },
      "definitions.IAccessLogBucketConfig" =
        {
            customPolicyOverrides
              | refs."definitions.ICustomS3ResourcePolicyOverridesConfig"
              | { _ | Dyn }
              | doc "Custom policy overrides configuration."
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "To control target environments (AWS Account and Region) for the given `accessLogBucket` setting, you may optionally specify deployment targets. Leaving `deploymentTargets` undefined will apply `useCMK` setting to all accounts and enabled regions."
              | optional,
            enable
              | Bool
              | doc "Flag indicating S3 access logging bucket is enable by solution."
              | optional,
            importedBucket
              | refs."definitions.IImportedS3ManagedEncryptionKeyBucketConfig"
              | { _ | Dyn }
              | doc "Imported bucket configuration."
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "Declaration of (S3 Bucket) Lifecycle rules."
              | optional,
            s3ResourcePolicyAttachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyStatement", { _ | Dyn } ]
              )
              | doc "JSON policy files."
              | optional,
          },
      "definitions.IAccountCloudTrailConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Which OU's or Accounts the trail will be deployed to",
            name
              | String
              | doc "Name that will be used to create the CloudTrail.",
            regions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Region(s) that this account trail will be deployed in.",
            settings
              | refs."definitions.ICloudTrailSettingsConfig"
              | { _ | Dyn }
              | doc "Settings for the CloudTrail log",
          },
      "definitions.IAssetBucketConfig" =
        {
            customPolicyOverrides
              | refs."definitions.CustomS3ResourceAndKmsPolicyOverridesConfig"
              | { _ | Dyn }
              | doc "Custom policy overrides configuration."
              | optional,
            importedBucket
              | refs."definitions.IImportedCustomerManagedEncryptionKeyBucketConfig"
              | { _ | Dyn }
              | doc "Imported bucket configuration."
              | optional,
            kmsResourcePolicyAttachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyStatement", { _ | Dyn } ]
              )
              | doc "JSON policy files."
              | optional,
            s3ResourcePolicyAttachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyStatement", { _ | Dyn } ]
              )
              | doc "JSON policy files."
              | optional,
          },
      "definitions.IBackupConfig" =
        {
            vaults
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVaultConfig", { _ | Dyn } ]
              )
              | doc "List of AWS Backup Vaults",
          },
      "definitions.IBudgetReportConfig" =
        {
            amount
              | Number
              | doc "The cost or usage amount that's associated with a budget forecast, actual spend, or budget threshold.",
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "List of OU's and accounts to be configured for Budgets configuration"
              | optional,
            includeCredit
              | Bool
              | doc "Specifies whether a budget includes credits."
              | optional,
            includeDiscount
              | Bool
              | doc "Specifies whether a budget includes discounts."
              | optional,
            includeOtherSubscription
              | Bool
              | doc "Specifies whether a budget includes non-RI subscription costs."
              | optional,
            includeRecurring
              | Bool
              | doc "Specifies whether a budget includes recurring fees such as monthly RI fees."
              | optional,
            includeRefund
              | Bool
              | doc "Specifies whether a budget includes refunds."
              | optional,
            includeSubscription
              | Bool
              | doc "Specifies whether a budget includes subscriptions."
              | optional,
            includeSupport
              | Bool
              | doc "Specifies whether a budget includes support subscription fees."
              | optional,
            includeTax
              | Bool
              | doc "Specifies whether a budget includes taxes."
              | optional,
            includeUpfront
              | Bool
              | doc "Specifies whether a budget includes upfront RI costs."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of a budget. The value must be unique within an account. BudgetName can't include : and \\ characters. If you don't include value for BudgetName in the template, Billing and Cost Management assigns your budget a randomly generated name.",
            notifications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INotificationConfig", { _ | Dyn } ]
              )
              | doc "The comparison that's used for the notification that's associated with a budget."
              | optional,
            subscriptionType
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.SubscriptionType", String ],
                  String
                ]
              | doc m%"
                The type of notification that AWS sends to a subscriber.
                
                An enum value that specifies the target subscription type either EMAIL or SNS
              "%
              | optional,
            timeUnit
              | String
              | doc "The length of time until a budget resets the actual and forecasted spend. DAILY is available only for RI_UTILIZATION and RI_COVERAGE budgets.",
            type
              | String
              | doc "Specifies whether this budget tracks costs, usage, RI utilization, RI coverage, Savings Plans utilization, or Savings Plans coverage.",
            unit
              | refs."definitions.NonEmptyString"
              | String
              | doc "The unit of measurement that's used for the budget forecast, actual spend, or budget threshold, such as USD or GBP."
              | optional,
            useAmortized
              | Bool
              | doc "Specifies whether a budget uses the amortized rate."
              | optional,
            useBlended
              | Bool
              | doc "Specifies whether a budget uses a blended rate."
              | optional,
          },
      "definitions.ICdkOptionsConfig" =
        {
            centralizeBuckets
              | Bool
              | doc m%"
                Indicates whether CDK stacks in workload accounts will utilize S3 buckets in the management account rather than within the account.
                
                When the accelerator deploys resources using the AWS CDK, assets are first built and stored in S3. By default, the S3 bucket is located within the deployment target account.
              "%,
            customDeploymentRole
              | String
              | doc "Creates a deployment role in all accounts in the home region with the name specified in the parameter. This role is used by the LZA for all CDK deployment tasks."
              | optional,
            forceBootstrap
              | Bool
              | doc "Forces the Accelerator to deploy the bootstrapping stack and circumvent the ssm parameter check. This option is needed when adding or removing a custom deployment role"
              | optional,
            stackRefactor
              | refs."definitions.IStackRefactor"
              | { _ | Dyn }
              | doc "Enables stack refactoring for specific stacks. When enabled, the Accelerator will reorganize the resources defined in the stack to avoid exceeding the 500-resource limit for CloudFormation stacks."
              | optional,
            useManagementAccessRole
              | Bool
              | doc m%"
                Indicates whether CDK operations use the IAM role specified in the `managementAccountAccessRole` option in `global-config.yaml` rather than the default roles created by CDK.
                
                The roles created and leveraged by CDK by default can be found [here](https://docs.aws.amazon.com/cdk/v2/guide/bootstrapping.html#bootstrapping-contract).
              "%,
          },
      "definitions.ICentralLogBucketConfig" =
        {
            customPolicyOverrides
              | refs."definitions.ICustomS3ResourceAndKmsPolicyOverridesConfig"
              | { _ | Dyn }
              | doc "Custom policy overrides configuration."
              | optional,
            importedBucket
              | refs."definitions.IImportedS3ManagedEncryptionKeyBucketConfig"
              | { _ | Dyn }
              | doc "Imported bucket configuration."
              | optional,
            kmsResourcePolicyAttachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyStatement", { _ | Dyn } ]
              )
              | doc "JSON policy files."
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "Declaration of (S3 Bucket) Lifecycle rules. Configure additional resource policy attachments"
              | optional,
            s3ResourcePolicyAttachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyStatement", { _ | Dyn } ]
              )
              | doc "JSON policy files."
              | optional,
          },
      "definitions.ICentralizeCdkBucketsConfig" =
        {
            enable
              | Bool
              | doc m%"
                ***Deprecated*** Replaced by cdkOptions in global config.
                
                Indicates whether CDK stacks in workload accounts will utilize S3 buckets in the management account rather than within the account.
                
                When the accelerator deploys resources using the AWS CDK, assets are first built and stored in S3. By default, the S3 bucket is located within the deployment target account.
              "%,
          },
      "definitions.ICloudTrailConfig" =
        {
            accountTrails
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAccountCloudTrailConfig", { _ | Dyn } ]
              )
              | doc "Optional configuration of account level CloudTrails. Can be used with or without an Organization Trail"
              | optional,
            enable
              | Bool
              | doc m%"
                Indicates whether AWS Cloudtrail enabled.
                
                Cloudtrail a service that helps you enable governance, compliance, and operational and risk auditing of your AWS account. This setting does not create any trails.  You will also need to either and organization trail or setup account level trails.
              "%,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "Optional S3 Log Bucket Lifecycle rules"
              | optional,
            organizationTrail
              | Bool
              | doc m%"
                Indicates whether AWS OrganizationTrail enabled.
                
                When OrganizationTrail and cloudtrail is enabled accelerator will enable trusted access designates CloudTrail as a trusted service in your organization. A trusted service can query the organization's structure and create service-linked roles in the organization's accounts.
              "%,
            organizationTrailSettings
              | refs."definitions.ICloudTrailSettingsConfig"
              | { _ | Dyn }
              | doc "Optional configuration of the organization trail.  OrganizationTrail must be enabled in order to use these settings"
              | optional,
          },
      "definitions.ICloudTrailSettingsConfig" =
        {
            apiCallRateInsight
              | Bool
              | doc "Will enable CloudTrail Insights and enable the API Call Rate Insight",
            apiErrorRateInsight
              | Bool
              | doc "Will enable CloudTrail Insights and enable the API Error Rate Insight",
            globalServiceEvents
              | Bool
              | doc "For global services such as AWS Identity and Access Management (IAM), AWS STS, Amazon CloudFront, and Route 53, events are delivered to any trail that includes global services,  and are logged as occurring in US East Region.",
            lambdaDataEvents
              | Bool
              | doc "Adds an Lambda Data Event Selector for filtering events that match Lambda operations. These events provide insight into the resource operations performed on or within a resource. These are also known as data plane operations.",
            managementEvents
              | Bool
              | doc "Management events provide insight into management operations that are on resources in your AWS account. These are also known as control plane operations. Management events can also include non-API events that occur in your account. For example, when a user logs in to your account, CloudTrail logs the ConsoleLogin event. Enabling will set ReadWriteType.ALL",
            multiRegionTrail
              | Bool
              | doc "Whether or not this trail delivers log files from all regions in the account.",
            s3DataEvents
              | Bool
              | doc "Adds an S3 Data Event Selector for filtering events that match S3 operations. These events provide insight into the resource operations performed on or within a resource. These are also known as data plane operations.",
            sendToCloudWatchLogs
              | Bool
              | doc "If CloudTrail pushes logs to CloudWatch Logs in addition to S3.  CloudWatch Logs will also be replicated to S3.",
          },
      "definitions.ICloudWatchDataProtectionConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "To control target environments (AWS Account and Region) for the given `categories` setting, you may optionally specify deployment targets. Leaving `deploymentTargets` undefined will apply `categories` setting to all accounts and enabled regions."
              | optional,
            managedDataIdentifiers
              | refs."definitions.ICloudWatchManagedDataProtectionIdentifierConfig"
              | { _ | Dyn }
              | doc "CloudWatch Logs managed data identifiers configuration.",
            overrideExisting
              | Bool
              | doc "(OPTIONAL) Indicates whether existing CloudWatch Log data protection configuration can be overwritten."
              | optional,
          },
      "definitions.ICloudWatchLogsConfig" =
        {
            dataProtection
              | refs."definitions.ICloudWatchDataProtectionConfig"
              | { _ | Dyn }
              | doc "CloudWatch Log data protection configuration"
              | optional,
            dynamicPartitioning
              | refs."definitions.NonEmptyString"
              | String
              | doc "Declaration of Dynamic Partition for Kinesis Firehose."
              | optional,
            dynamicPartitioningByAccountId
              | Bool
              | doc "Declaration of Dynamic Partitioning for Kinesis Firehose by Account ID."
              | optional,
            enable
              | Bool
              | doc "Enable or disable CloudWatch replication"
              | optional,
            encryption
              | refs."definitions.IServiceEncryptionConfig"
              | { _ | Dyn }
              | doc "Encryption setting for AWS CloudWatch log group data."
              | optional,
            exclusions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ICloudWatchLogsExclusionConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Exclude Log Groups during replication"
              | optional,
            replaceLogDestinationArn
              | refs."definitions.NonEmptyString"
              | String
              | doc "Customer defined log subscription filter destination arn, that is associated with with the existing log group. Accelerator solution needs to disassociate this destination before configuring solution defined subscription filter destination."
              | optional,
          },
      "definitions.ICloudWatchLogsExclusionConfig" =
        {
            accounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of accounts where the exclusion will be applied to"
              | optional,
            excludeAll
              | Bool
              | doc "Exclude replication on all logs. By default this is set to false."
              | optional,
            logGroupNames
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of log groups names where the exclusion will be applied to"
              | optional,
            organizationalUnits
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of OUs that the exclusion will apply to"
              | optional,
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "List of regions where the exclusion will be applied to. If no value is supplied, exclusion is applied to all enabled regions."
              | optional,
          },
      "definitions.ICloudWatchManagedDataProtectionIdentifierConfig" =
        {
            categories
              | Array String
              | doc "CloudWatch Logs managed data identifiers configuration.",
          },
      "definitions.IControlTowerConfig" =
        {
            controls
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IControlTowerControlConfig", { _ | Dyn } ]
              )
              | doc m%"
                A list of Control Tower controls to enable.
                
                Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail. Please see this page for more information: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-controltower-enabledcontrol.html
              "%
              | optional,
            enable
              | Bool
              | doc m%"
                Indicates whether AWS Control Tower Landing Zone enabled.
                
                When control tower is enabled, accelerator makes sure account configuration file have three mandatory AWS CT accounts. In AWS Control Tower, three shared accounts in your landing zone are provisioned automatically during setup: the management account, the log archive account, and the audit account.
              "%,
            landingZone
              | refs."definitions.IControlTowerLandingZoneConfig"
              | { _ | Dyn }
              | doc "AWS Control Tower Landing Zone configuration"
              | optional,
          },
      "definitions.IControlTowerControlConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Control Tower control deployment targets, controls can only be deployed to Organizational Units",
            enable | Bool | doc "Control enabled",
            identifier
              | refs."definitions.NonEmptyString"
              | String
              | doc "Control Tower control identifier, for Strongly Recommended or Elective controls this should start with AWS-GR",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(Optional) Region(s) where this service quota increase will be requested. Service Quota increases will be requested in the home region only if this property is not defined.  If this property is defined, the regions must also be listed in the enabledRegions section or the change will not be applied."
              | optional,
          },
      "definitions.IControlTowerLandingZoneConfig" =
        {
            logging
              | refs."definitions.IControlTowerLandingZoneLoggingConfig"
              | { _ | Dyn }
              | doc "AWS Control Tower Landing Zone logging configuration",
            security
              | refs."definitions.IControlTowerLandingZoneSecurityConfig"
              | { _ | Dyn }
              | doc "AWS Control Tower Landing Zone security configuration",
            version
              | String
              | doc "The landing zone version, for example, 3.3.",
          },
      "definitions.IControlTowerLandingZoneLoggingConfig" =
        {
            accessLoggingBucketRetentionDays
              | Number
              | doc "Retention time of the logs for access to the bucket.",
            loggingBucketRetentionDays
              | Number
              | doc "Retention time of the Amazon S3 log archive bucket",
            organizationTrail
              | Bool
              | doc "Flag indicates Organizational-level AWS CloudTrail configuration is configured or not.",
          },
      "definitions.IControlTowerLandingZoneSecurityConfig" =
        {
            enableIdentityCenterAccess
              | Bool
              | doc "Flag indicates AWS account access option.",
          },
      "definitions.ICostAndUsageReportConfig" =
        {
            additionalArtifacts
              | Array String
              | doc "A list of manifests that you want Amazon Web Services to create for this report."
              | optional,
            additionalSchemaElements
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "A list of strings that indicate additional content that Amazon Web Services includes in the report, such as individual resource IDs."
              | optional,
            compression
              | String
              | doc "The compression format that Amazon Web Services uses for the report.",
            format
              | String
              | doc "The format that Amazon Web Services saves the report in.",
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "Declaration of (S3 Bucket) Lifecycle rules."
              | optional,
            refreshClosedReports
              | Bool
              | doc "Whether you want Amazon Web Services to update your reports after they have been finalized if Amazon Web Services detects charges related to previous months. These charges can include refunds, credits, or support fees.",
            reportName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the report that you want to create. The name must be unique, is case sensitive, and can't include spaces.",
            reportVersioning
              | String
              | doc "Whether you want Amazon Web Services to overwrite the previous version of each report or to deliver the report in addition to the previous versions.",
            s3Prefix
              | refs."definitions.NonEmptyString"
              | String
              | doc "The prefix that Amazon Web Services adds to the report name when Amazon Web Services delivers the report. Your prefix can't include spaces.",
            timeUnit
              | String
              | doc "The granularity of the line items in the report.",
          },
      "definitions.ICustomS3ResourceAndKmsPolicyOverridesConfig" =
        {
            kmsPolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc "KMS policy file"
              | optional,
            s3Policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "S3 resource policy file"
              | optional,
          },
      "definitions.ICustomS3ResourcePolicyOverridesConfig" =
        {
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "S3 resource policy file"
              | optional,
          },
      "definitions.IDefaultEventBusConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Default Event Bus Policy deployment targets.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "Resource-based policy definition json file. This file must be present in config repository",
          },
      "definitions.IDeploymentTargets" =
        {
            accounts | Array String | optional,
            excludedAccounts | Array String | optional,
            excludedRegions | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.IElbLogBucketConfig" =
        {
            customPolicyOverrides
              | refs."definitions.ICustomS3ResourcePolicyOverridesConfig"
              | { _ | Dyn }
              | doc "Custom policy overrides configuration."
              | optional,
            importedBucket
              | refs."definitions.IImportedS3ManagedEncryptionKeyBucketConfig"
              | { _ | Dyn }
              | doc "Imported bucket configuration."
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "Declaration of (S3 Bucket) Lifecycle rules. Configure additional resource policy attachments"
              | optional,
            s3ResourcePolicyAttachments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResourcePolicyStatement", { _ | Dyn } ]
              )
              | doc "JSON policy files."
              | optional,
          },
      "definitions.IExternalLandingZoneResourcesConfig" =
        {
            acceleratorName | refs."definitions.NonEmptyString" | String,
            acceleratorPrefix | refs."definitions.NonEmptyString" | String,
            importExternalLandingZoneResources
              | Bool
              | doc "When the accelerator deploys resources using the AWS CDK, assets are first built and stored in S3. By default, the S3 bucket is located within the deployment target account.",
            mappingFileBucket | String | optional,
          },
      "definitions.IGlobalConfig" =
        {
            acceleratorMetadata
              | refs."definitions.IAcceleratorMetadataConfig"
              | { _ | Dyn }
              | doc "Accelerator Metadata Configuration Creates a bucket in the logging account to enable accelerator metadata collection"
              | optional,
            acceleratorSettings
              | refs."definitions.IAcceleratorSettingsConfig"
              | { _ | Dyn }
              | doc "Accelerator Settings Configuration Allows setting additional properties for accelerator"
              | optional,
            backup
              | refs."definitions.IBackupConfig"
              | { _ | Dyn }
              | doc m%"
                Backup Vaults Configuration
                
                To generate vaults, you need to provide below value for this parameter.
              "%
              | optional,
            cdkOptions
              | refs."definitions.ICdkOptionsConfig"
              | { _ | Dyn }
              | doc m%"
                AWS CDK options configuration. This lets you customize the operation of the CDK within LZA, specifically:
                
                centralizeBuckets: Enabling this option modifies the CDK bootstrap process to utilize a single S3 bucket per region located in the management account for CDK assets generated by LZA. Otherwise, CDK will create a new S3 bucket in every account and every region supported by LZA. useManagementAccessRole: Enabling this option modifies CDK operations to use the IAM role specified in the `managementAccountAccessRole` option in `global-config.yaml` rather than the default roles created by CDK. Default CDK roles will still be created, but will remain unused. Any stacks previously deployed by LZA will retain their [associated execution role](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-servicerole.html). For more information on these roles, please see [here](https://docs.aws.amazon.com/cdk/v2/guide/bootstrapping.html#bootstrapping-contract).
              "%
              | optional,
            centralizeCdkBuckets
              | refs."definitions.ICentralizeCdkBucketsConfig"
              | { _ | Dyn }
              | doc m%"
                ***Deprecated***
                
                NOTICE: The configuration of CDK buckets is being moved to cdkOptions in the Global Config. This block is deprecated and will be removed in a future release
              "%
              | optional,
            cloudwatchLogRetentionInDays
              | Number
              | doc "Global  {@link  https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CloudWatchLogsConcepts.html CloudWatch Logs retention in days }  configuration.",
            controlTower
              | refs."definitions.IControlTowerConfig"
              | { _ | Dyn }
              | doc m%"
                AWS Control Tower Landing Zone configuration
                
                To indicate environment has control tower enabled, you need to provide below value for this parameter.
              "%,
            defaultEventBus
              | refs."definitions.IDefaultEventBusConfig"
              | { _ | Dyn }
              | doc m%"
                Configuration for the Default Event Bus
                
                End-users provide a custom policy, via the `policy` property, LZA will apply the custom policy to the default event bus policy.
              "%
              | optional,
            enableOptInRegions
              | Bool
              | doc "Whether to automatically enable opt-in regions configured for all LZA managed accounts."
              | optional,
            enabledRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc m%"
                List of AWS Region names where accelerator will be deployed. Home region must be part of this list.
                
                To add us-west-2 along with home region for accelerator deployment, you need to provide below value for this parameter.
              "%,
            externalLandingZoneResources
              | refs."definitions.IExternalLandingZoneResourcesConfig"
              | { _ | Dyn }
              | doc m%"
                ExternalLandingZoneResourcesConfig.
                
                centralizeBuckets: Enabling this option modifies the CDK bootstrap process to utilize a single S3 bucket per region located in the management account for CDK assets generated by LZA. Otherwise, CDK will create a new S3 bucket in every account and every region supported by LZA.
              "%
              | optional,
            homeRegion
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Accelerator home region name. The region where accelerator pipeline deployed.
                
                To use us-east-1 as home region for the accelerator, you need to provide below value for this parameter. Note: Variable HOME_REGION created for future usage of home region in the file
              "%,
            lambda
              | refs."definitions.ILambdaConfig"
              | { _ | Dyn }
              | doc "AWS Lambda Function environment variables encryption configuration options."
              | optional,
            limits
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IServiceQuotaLimitsConfig", { _ | Dyn } ]
              )
              | doc m%"
                AWS Service Quota - Limit configuration
                
                To enable limits within service quota, you need to provide below value for this parameter.
              "%
              | optional,
            logging
              | refs."definitions.ILoggingConfig"
              | { _ | Dyn }
              | doc m%"
                Accelerator logging configuration
                
                To enable organization trail and session manager logs sending to S3, you need to provide below value for this parameter.
              "%,
            managementAccountAccessRole
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                This role trusts the management account, allowing users in the management account to assume the role, as permitted by the management account administrator. The role has administrator permissions in the new member account.
                
                Examples:
                - AWSControlTowerExecution
                - OrganizationAccountAccessRole
              "%,
            reports
              | refs."definitions.IReportConfig"
              | { _ | Dyn }
              | doc m%"
                Report configuration
                
                To enable budget report along with cost and usage report, you need to provide below value for this parameter.
              "%
              | optional,
            s3
              | refs."definitions.IS3GlobalConfig"
              | { _ | Dyn }
              | doc "AWS S3 global configuration options."
              | optional,
            snsTopics
              | refs."definitions.ISnsConfig"
              | { _ | Dyn }
              | doc m%"
                SNS Topics Configuration
                
                To send CloudWatch Alarms and SecurityHub notifications you will need to configure at least one SNS Topic For SecurityHub notification you will need to set the deployment target to Root in order to receive notifications from all accounts
              "%
              | optional,
            ssmInventory
              | refs."definitions.ISsmInventoryConfig"
              | { _ | Dyn }
              | doc m%"
                SSM Inventory Configuration
                
                [EC2 prerequisites](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-inventory-walk.html) [Connectivity prerequisites](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-prereqs.html)
              "%
              | optional,
            ssmParameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISsmParametersConfig", { _ | Dyn } ]
              )
              | doc m%"
                SSM parameter configurations
                
                Create SSM parameters through the LZA. Parameters can be deployed to Organizational Units or Accounts using deploymentTargets
              "%
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "Custom Tags for all resources created by Landing Zone Accelerator that can be tagged."
              | optional,
            terminationProtection
              | Bool
              | doc "Whether to enable termination protection for this stack."
              | optional,
          },
      "definitions.IImportedCustomerManagedEncryptionKeyBucketConfig" =
        {
            applyAcceleratorManagedBucketPolicy
              | Bool
              | doc "Flag indicating Accelerator to apply solution generated policy to imported bucket."
              | optional,
            createAcceleratorManagedKey
              | Bool
              | doc "Flag indicating solution should create CMK and apply to imported bucket."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Imported bucket name",
          },
      "definitions.IImportedS3ManagedEncryptionKeyBucketConfig" =
        {
            applyAcceleratorManagedBucketPolicy
              | Bool
              | doc "Flag indicating Accelerator to apply solution generated policy to imported bucket."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Imported bucket name",
          },
      "definitions.ILambdaConfig" =
        {
            encryption
              | refs."definitions.IServiceEncryptionConfig"
              | { _ | Dyn }
              | doc "Encryption setting for AWS Lambda environment variables."
              | optional,
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
      "definitions.ILoggingConfig" =
        {
            accessLogBucket
              | refs."definitions.IAccessLogBucketConfig"
              | { _ | Dyn }
              | doc "Declaration of a (S3 Bucket) Lifecycle rule configuration."
              | optional,
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "Accelerator logging account name. Accelerator use LogArchive account for global logging. This account maintains consolidated logs.",
            assetBucket
              | refs."definitions.IAssetBucketConfig"
              | { _ | Dyn }
              | doc "Declaration of a (S3 Bucket) configuration."
              | optional,
            centralLogBucket
              | refs."definitions.ICentralLogBucketConfig"
              | { _ | Dyn }
              | doc "Declaration of a (S3 Bucket) Lifecycle rule configuration."
              | optional,
            centralizedLoggingRegion
              | refs."definitions.NonEmptyString"
              | String
              | doc "Accelerator central logs bucket region name. Accelerator use CentralLogs bucket to store various log files, Accelerator created buckets and CWL replicates to CentralLogs bucket. CentralLogs bucket region is optional, when not provided this bucket will be created in Accelerator home region."
              | optional,
            cloudtrail
              | refs."definitions.ICloudTrailConfig"
              | { _ | Dyn }
              | doc "CloudTrail logging configuration",
            cloudwatchLogs
              | refs."definitions.ICloudWatchLogsConfig"
              | { _ | Dyn }
              | doc "CloudWatch Logging configuration."
              | optional,
            elbLogBucket
              | refs."definitions.IElbLogBucketConfig"
              | { _ | Dyn }
              | doc "Declaration of a (S3 Bucket) Lifecycle rule configuration."
              | optional,
            sessionManager
              | refs."definitions.ISessionManagerConfig"
              | { _ | Dyn }
              | doc "SessionManager logging configuration",
          },
      "definitions.INotificationConfig" =
        {
            address
              | refs."definitions.NonEmptyString"
              | String
              | doc "The address that AWS sends budget notifications to, either an SNS topic or an email."
              | optional,
            comparisonOperator
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ComparisonOperator", String ],
                  String
                ]
              | doc "The comparison that's used for this notification.",
            recipients
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "The recipients list that AWS sends budget notifications to, either an SNS topic or an email."
              | optional,
            subscriptionType
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.SubscriptionType", String ],
                  String
                ]
              | doc "The type of notification that AWS sends to a subscriber.",
            threshold
              | Number
              | doc "The type of threshold associate with a notification."
              | optional,
            thresholdType
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ThresholdType", String ],
                  String
                ]
              | doc "The type of threshold for a notification.For ABSOLUTE_VALUE thresholds, AWS notifies you when you go over or are forecasted to go over your total cost threshold. For PERCENTAGE thresholds, AWS notifies you when you go over or are forecasted to go over a certain percentage of your forecasted spend. For example,if you have a budget for 200 dollars and you have a PERCENTAGE threshold of 80%, AWS notifies you when you go over 160 dollars.",
            type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NotificationType", String ],
                  String
                ]
              | doc "The comparison that's used for the notification that's associated with a budget.",
          },
      "definitions.IReportConfig" =
        {
            budgets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IBudgetReportConfig", { _ | Dyn } ]
              )
              | doc m%"
                Budget report configuration
                
                If you want to create budget report with monthly granularity of the line items in the report and other default parameters , you need to provide below value for this parameter.
              "%
              | optional,
            costAndUsageReport
              | refs."definitions.ICostAndUsageReportConfig"
              | { _ | Dyn }
              | doc m%"
                Cost and usage report configuration
                
                If you want to create cost and usage report with daily granularity of the line items in the report, you need to provide below value for this parameter.
              "%
              | optional,
          },
      "definitions.IResourcePolicyStatement" = { policy | String, },
      "definitions.IS3EncryptionConfig" =
        {
            createCMK
              | Bool
              | doc "Flag indicates whether solution will create CMK for S3 bucket encryption. Note: This configuration is not applicable to the assets S3 bucket. This bucket will always have a key generated and applied.",
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "To control target environments (AWS Account and Region) for the given `createCMK` setting, you may optionally specify deployment targets. Leaving `deploymentTargets` undefined will apply `createCMK` setting to all accounts and enabled regions."
              | optional,
          },
      "definitions.IS3GlobalConfig" =
        {
            encryption
              | refs."definitions.IS3EncryptionConfig"
              | { _ | Dyn }
              | doc "S3 encryption configuration."
              | optional,
          },
      "definitions.IServiceEncryptionConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "To control target environments (AWS Account and Region) for the given `useCMK` setting, you may optionally specify deployment targets. Leaving `deploymentTargets` undefined will apply `useCMK` setting to all accounts and enabled regions."
              | optional,
            useCMK
              | Bool
              | doc "Flag indicates whether Accelerator deployed AWS Service will use AWS KMS CMK for encryption or Service managed KMS.",
          },
      "definitions.IServiceQuotaLimitsConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "List of AWS Account names to be included in the Service Quota changes",
            desiredValue
              | Number
              | doc "Value associated with the limit change.",
            quotaCode
              | String
              | doc "Indicates the code for the service as these are tied to the account.",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(Optional) Region(s) where this service quota increase will be requested. Service Quota increases will be requested in the home region only if this property is not defined."
              | optional,
            serviceCode
              | String
              | doc "Indicates which service Service Quota is changing the limit for.",
          },
      "definitions.ISessionManagerConfig" =
        {
            attachPolicyToIamRoles
              | Array String
              | doc "List of IAM EC2 roles that the Session Manager access policy should be attached to"
              | optional,
            excludeAccounts
              | Array String
              | doc "List of AWS Account names to be excluded from configuring SessionManager configuration"
              | optional,
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "List of AWS Region names to be excluded from configuring SessionManager configuration"
              | optional,
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | doc "S3 Lifecycle rule for log storage"
              | optional,
            sendToCloudWatchLogs
              | Bool
              | doc "Indicates whether sending SessionManager logs to CloudWatchLogs enabled.",
            sendToS3
              | Bool
              | doc m%"
                Indicates whether sending SessionManager logs to S3 enabled.
                
                When this flag is on, accelerator will send session manager logs to Central log bucket in LogArchive account.
              "%,
          },
      "definitions.ISnsConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Deployment targets for SNS topics SNS Topics will always be deployed to the Log Archive account email subscriptions will be in the Log Archive account All other accounts and regions will forward to the Logging account"
              | optional,
            topics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISnsTopicConfig", { _ | Dyn } ]
              )
              | doc "List of SNS Topics"
              | optional,
          },
      "definitions.ISnsTopicConfig" =
        {
            emailAddresses
              | Array (
                std.contract.Sequence
                  [ refs."definitions.EmailAddress", String ]
              )
              | doc "List of email address for notification",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "SNS Topic Name",
          },
      "definitions.ISsmInventoryConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Configure the Deployment Targets",
            enable | Bool | doc "Enable SSM Inventory",
          },
      "definitions.ISsmParameterConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the SSM Parameter, this is used to generate the CloudFormation Logical Id.",
            path
              | refs."definitions.NonEmptyString"
              | String
              | doc "The path or name used when creating SSM Parameter.",
            value
              | refs."definitions.NonEmptyString"
              | String
              | doc "The value of the SSM Parameter",
          },
      "definitions.ISsmParametersConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Configure the Deployment Targets",
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISsmParameterConfig", { _ | Dyn } ]
              )
              | doc "A list of SSM parameters to create",
          },
      "definitions.IStackRefactor" =
        {
            networkVpcStack
              | Bool
              | doc "Enables refactoring for the network stacks."
              | optional,
          },
      "definitions.ITag" = { key | String, value | String, },
      "definitions.ITransition" =
        {
            storageClass | refs."definitions.StorageClass" | String,
            transitionAfter | Number,
          },
      "definitions.IVaultConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Which OU's or Accounts the vault will be deployed to",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name that will be used to create the vault.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "The path to a JSON file defining Backup Vault access policy"
              | optional,
          },
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
      "definitions.NotificationType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'FORECASTED, 'ACTUAL |] ],
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
      "definitions.SubscriptionType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'SNS, 'EMAIL |] ],
      "definitions.ThresholdType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ABSOLUTE_VALUE, 'PERCENTAGE |] ],
    }
    in
  refs."definitions.IGlobalConfig"