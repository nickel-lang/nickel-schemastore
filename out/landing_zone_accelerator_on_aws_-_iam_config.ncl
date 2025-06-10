# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AssumedByType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'provider, 'principalArn, 'account, 'service |]
            ],
      "definitions.IActiveDirectoryConfigurationInstanceConfig" =
        {
            adConnectorGroup
              | refs."definitions.NonEmptyString"
              | String
              | doc "Active directory connector group",
            adGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Active directory group list",
            adPasswordPolicy
              | refs."definitions.IActiveDirectoryPasswordPolicyConfig"
              | { _ | Dyn }
              | doc "Active directory user password policy",
            adPerAccountGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Active directory per account group list",
            adUsers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IActiveDirectoryUserConfig", { _ | Dyn } ]
              )
              | doc "Active directory user list",
            enableTerminationProtection
              | Bool
              | doc "Flag for Ec2 instance enable api termination protection"
              | optional,
            imagePath
              | refs."definitions.NonEmptyString"
              | String
              | doc "Ec2 image path",
            instanceRole
              | refs."definitions.NonEmptyString"
              | String
              | doc "Ec2 instance role name",
            instanceType
              | refs."definitions.NonEmptyString"
              | String
              | doc "Ec2 instance type",
            securityGroupInboundSources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Ec2 security group inbound sources",
            subnetName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Ec2 instance subnet name",
            userDataScripts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IActiveDirectoryConfigurationInstanceUserDataConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Instance user data script configuration",
            vpcName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Ec2 instance vpc name",
          },
      "definitions.IActiveDirectoryConfigurationInstanceUserDataConfig" =
        {
            scriptFilePath
              | refs."definitions.NonEmptyString"
              | String
              | doc "Script file path",
            scriptName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Friendly name for the user data script",
          },
      "definitions.IActiveDirectoryPasswordPolicyConfig" =
        {
            complexity | Bool,
            failedAttempts | Number,
            history | Number,
            lockoutAttemptsReset | Number,
            lockoutDuration | Number,
            maximumAge | Number,
            minimumAge | Number,
            minimumLength | Number,
            reversible | Bool,
          },
      "definitions.IActiveDirectoryUserConfig" =
        {
            email
              | refs."definitions.NonEmptyString"
              | String
              | doc "Active directory user email",
            groups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Active directory user group names",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Active directory user name",
          },
      "definitions.IAssumedByConfig" =
        {
            principal
              | refs."definitions.NonEmptyString"
              | String
              | doc "Type of IAM principal type like service, account, principalArn or provider, which can assume this role."
              | optional,
            type
              | refs."definitions.AssumedByType"
              | String
              | doc m%"
                IAM principal of either service, account, principalArn or provider type.
                
                IAM principal of sns service type (i.e. new ServicePrincipal('sns.amazonaws.com')), which can assume this role.
              "%,
          },
      "definitions.ICustomerManagedPolicyReferenceConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Identity Center PermissionSet permissions boundary customer managed policy name.",
            path
              | refs."definitions.NonEmptyString"
              | String
              | doc "The path to the IAM policy that you have configured in each account where you want to deploy your permission set."
              | optional,
          },
      "definitions.IDeploymentTargets" =
        {
            accounts | Array String | optional,
            excludedAccounts | Array String | optional,
            excludedRegions | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.IGroupConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                A name for the IAM group. For valid values, see the GroupName parameter for the CreateGroup action in the IAM API Reference. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the group name.
                
                If you specify a name, you must specify the CAPABILITY_NAMED_IAM value to acknowledge your template's capabilities. For more information, see Acknowledging IAM Resources in AWS CloudFormation Templates.
              "%,
            policies
              | refs."definitions.IPoliciesConfig"
              | { _ | Dyn }
              | doc "List of policy objects"
              | optional,
          },
      "definitions.IGroupSetConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Group set's deployment targets",
            groups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IGroupConfig", { _ | Dyn } ]
              )
              | doc "List of IAM group objects",
          },
      "definitions.IIamConfig" =
        {
            groupSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IGroupSetConfig", { _ | Dyn } ]
              )
              | doc "Group set configuration"
              | optional,
            homeRegion
              | refs."definitions.Region"
              | String
              | doc "Accelerator home region name."
              | optional,
            identityCenter
              | refs."definitions.IIdentityCenterConfig"
              | { _ | Dyn }
              | doc "Identity Center configuration"
              | optional,
            managedActiveDirectories
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IManagedActiveDirectoryConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Managed active directory configuration"
              | optional,
            policySets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IPolicySetConfig", { _ | Dyn } ]
              )
              | doc m%"
                Policy set configuration.
                
                To configure IAM policy named Default-Boundary-Policy with permission boundary defined in iam-policies/boundary-policy.json file, you need to provide following values for this parameter.
              "%
              | optional,
            providers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISamlProviderConfig", { _ | Dyn } ]
              )
              | doc "SAML provider configuration To configure SAML configuration, you need to provide the following values for this parameter. Replace provider name and metadata document file. Document file must be in config repository"
              | optional,
            roleSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IRoleSetConfig", { _ | Dyn } ]
              )
              | doc "Role sets configuration"
              | optional,
            userSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IUserSetConfig", { _ | Dyn } ]
              )
              | doc "User set configuration"
              | optional,
          },
      "definitions.IIdentityCenterAssignmentConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Identity Center assignment deployment targets",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The Name for the Assignment.",
            permissionSetName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Permission Set name that will be used for the Assignment.",
            principalId
              | refs."definitions.NonEmptyString"
              | String
              | doc "PrincipalId that will be used for the Assignment"
              | optional,
            principalType
              | refs."definitions.PrincipalType"
              | String
              | doc "PrincipalType that will be used for the Assignment"
              | optional,
            principals
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IIdentityCenterAssignmentPrincipalConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Assignment principal configuration list."
              | optional,
          },
      "definitions.IIdentityCenterAssignmentPrincipalConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the principal",
            type
              | refs."definitions.NonEmptyString"
              | String
              | doc "Assignment principal type",
          },
      "definitions.IIdentityCenterConfig" =
        {
            delegatedAdminAccount
              | refs."definitions.NonEmptyString"
              | String
              | doc "Override for Delegated Admin Account"
              | optional,
            identityCenterAssignments
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IIdentityCenterAssignmentConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "List of Assignments"
              | optional,
            identityCenterPermissionSets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IIdentityCenterPermissionSetConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "List of PermissionSets"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A name for the Identity Center Configuration",
          },
      "definitions.IIdentityCenterPermissionSetConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description string for the Permission Set"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A name for the Identity Center Permission Set Configuration",
            policies
              | refs."definitions.IIdentityCenterPoliciesConfig"
              | { _ | Dyn }
              | doc "Policy Configuration for Customer Managed Permissions and AWS Managed Permissions"
              | optional,
            sessionDuration
              | Number
              | doc "A number value (in minutes). The length of time that the application user sessions are valid for in the ISO-8601 standard."
              | optional,
          },
      "definitions.IIdentityCenterPoliciesConfig" =
        {
            acceleratorManaged
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of the names customer managed policies that would be attached to permission set."
              | optional,
            awsManaged
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of AWS managed policies that would be attached to permission set."
              | optional,
            customerManaged
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of the names and paths of the customer managed policies that would be attached to permission set."
              | optional,
            inlinePolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The inline policy that is attached to the permission set.
                
                 {@link  http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-inlinepolicy InlinePolicy }  reference
              "%
              | optional,
            permissionsBoundary
              | refs."definitions.IPermissionsBoundaryConfig"
              | { _ | Dyn }
              | doc "Specifies the configuration of the AWS managed or customer managed policy that you want to set as a permissions boundary."
              | optional,
          },
      "definitions.IManagedActiveDirectoryConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "Active directory deploy target account",
            activeDirectoryConfigurationInstance
              | refs."definitions.IActiveDirectoryConfigurationInstanceConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Active directory instance to configure active directory"
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "Descriptive text that appears on the details page after the directory has been created."
              | optional,
            dnsName
              | refs."definitions.NonEmptyString"
              | String
              | doc "A fully qualified domain name. This name will resolve inside your VPC only. It does not need to be publicly resolvable.",
            edition
              | std.enum.TagOrString
              | [| 'Enterprise, 'Standard |]
              | doc "Active directory edition, example AWS Managed Microsoft AD is available in two editions: Standard and Enterprise",
            logs
              | refs."definitions.IManagedActiveDirectoryLogConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Active directory logs configuration"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Friendly name for the active directory",
            netBiosDomainName
              | refs."definitions.NonEmptyString"
              | String
              | doc "A short identifier for your Net BIOS domain name.",
            region
              | refs."definitions.Region"
              | String
              | doc "Active directory deploy target region",
            resolverRuleName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Active directory route 53 resolver rule name"
              | optional,
            secretConfig
              | refs."definitions.IManagedActiveDirectorySecretConfig"
              | { _ | Dyn }
              | doc m%"
                (OPTIONAL) Active directory admin user secret configuration.
                
                * {@link  IamConfig  }  /  {@link  ManagedActiveDirectoryConfig  }  /  {@link  ManagedActiveDirectorySecretConfig  }
              "%
              | optional,
            sharedAccounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) Active directory shared account name list."
              | optional,
            sharedOrganizationalUnits
              | refs."definitions.IManagedActiveDirectorySharedOuConfig"
              | { _ | Dyn }
              | doc m%"
                (OPTIONAL) Active directory shared ou configuration.
                
                * {@link  IamConfig  }  /  {@link  ManagedActiveDirectoryConfig  }  /  {@link  ManagedActiveDirectorySharedOuConfig  }
              "%
              | optional,
            vpcSettings
              | refs."definitions.IManagedActiveDirectoryVpcSettingsConfig"
              | { _ | Dyn }
              | doc "Specifies the VPC settings of the Microsoft AD directory server in AWS",
          },
      "definitions.IManagedActiveDirectoryLogConfig" =
        {
            groupName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Active directory log group name,  that will be used to receive the security logs from your domain controllers. We recommend pre-pending the name with /aws/directoryservice/, but that is not required.",
            retentionInDays
              | Number
              | doc "Log group retention in days"
              | optional,
          },
      "definitions.IManagedActiveDirectorySecretConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Active directory admin user secret account name. When no account name provided Accelerator will create the secret into the account MAD exists
                
                Note: Please do not use the Management account for the admin user secret account name.
              "%
              | optional,
            adminSecretName
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Active directory admin user secret account name. When no account name provided Accelerator will create the secret into the account MAD exists
                
                Note: Please do not use the Management account for the admin user secret account name.
              "%
              | optional,
            region
              | refs."definitions.Region"
              | String
              | doc "Active directory admin user secret region name. When no region name provided Accelerator will create the secret into the region MAD exists"
              | optional,
          },
      "definitions.IManagedActiveDirectorySharedOuConfig" =
        {
            excludedAccounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | optional,
            organizationalUnits
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              ),
          },
      "definitions.IManagedActiveDirectoryVpcSettingsConfig" =
        {
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc m%"
                Friendly name of the vpc subnets, where active directory will be deployed
                
                Minimum of two subnets from two different availability zone is required
              "%,
            vpcName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Friendly name of the vpc where active directory will be deployed",
          },
      "definitions.IPermissionsBoundaryConfig" =
        {
            awsManagedPolicyName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The AWS managed policy name that you want to attach to a permission set as a permissions boundary."
              | optional,
            customerManagedPolicy
              | refs."definitions.ICustomerManagedPolicyReferenceConfig"
              | { _ | Dyn }
              | doc "Specifies the name and path of a customer managed policy."
              | optional,
          },
      "definitions.IPoliciesConfig" =
        {
            awsManaged
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of AWS managed policies. Values can be policy arn or policy name"
              | optional,
            customerManaged
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of Customer managed policies"
              | optional,
          },
      "definitions.IPolicyConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the managed policy.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "A JSON file containing policy boundary definition.",
          },
      "definitions.IPolicySetConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Policy set deployment targets",
            identityCenterDependency
              | Bool
              | doc "Flag indicates if the policy is used in Identity Center PermissionSet assignments."
              | optional,
            policies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IPolicyConfig", { _ | Dyn } ]
              )
              | doc "List of Policies",
          },
      "definitions.IRoleConfig" =
        {
            assumedBy
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAssumedByConfig", { _ | Dyn } ]
              )
              | doc "AssumedBy configuration",
            boundaryPolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc "A permissions boundary configuration"
              | optional,
            externalIds
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of IDs that the role assumer needs to provide one of when assuming this role"
              | optional,
            instanceProfile
              | Bool
              | doc "Indicates whether role is used for EC2 instance profile"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A name for the role",
            policies
              | refs."definitions.IPoliciesConfig"
              | { _ | Dyn }
              | doc "List of policies for the role"
              | optional,
          },
      "definitions.IRoleSetConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Role set deployment targets",
            path
              | refs."definitions.NonEmptyString"
              | String
              | doc "The path to the role"
              | optional,
            roles
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IRoleConfig", { _ | Dyn } ]
              )
              | doc "List of role objects",
          },
      "definitions.ISamlProviderConfig" =
        {
            metadataDocument
              | refs."definitions.NonEmptyString"
              | String
              | doc "SAML metadata document XML file, this file must be present in config repository",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The name of the provider to create.
                
                This parameter allows a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
                
                Length must be between 1 and 128 characters.
              "%,
          },
      "definitions.IUserConfig" =
        {
            boundaryPolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                AWS supports permissions boundaries for IAM entities (users or roles). A permissions boundary is an advanced feature for using a managed policy to set the maximum permissions that an identity-based policy can grant to an IAM entity. An entity's permissions boundary allows it to perform only the actions that are allowed by both its identity-based policies and its permissions boundaries.
                
                Permission boundary is derived from iam-policies/boundary-policy.json file in config repository
              "%
              | optional,
            disableConsoleAccess
              | Bool
              | doc "A boolean value to define if the user should have access to the AWS console. True will disable console access, False will enable it. defaults to False."
              | optional,
            group
              | refs."definitions.NonEmptyString"
              | String
              | doc "Group to add this user to.",
            username
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                A name for the IAM user. For valid values, see the UserName parameter for the CreateUser action in the IAM API Reference. If you don't specify a name, AWS CloudFormation generates a unique physical ID and uses that ID for the user name.
                
                If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.
              "%,
          },
      "definitions.IUserSetConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "User set's deployment target",
            users
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IUserConfig", { _ | Dyn } ]
              )
              | doc "List os user objects",
          },
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
      "definitions.PrincipalType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'GROUP, 'USER |] ],
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
    }
    in
  refs."definitions.IIamConfig"