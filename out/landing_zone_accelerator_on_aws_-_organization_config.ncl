# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.IBackupPolicyConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Backup policy deployment targets",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description to assign to the policy.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name to assign to the policy. The regex pattern that is used to validate this parameter is a string of any of the characters in the ASCII character range.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "Backup policy definition json file. This file must be present in config repository",
          },
      "definitions.IChatbotPolicyConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Chatbot policy deployment targets",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description to assign to the policy.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name to assign to the policy. The regex pattern that is used to validate this parameter is a string of any of the characters in the ASCII character range.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "Chatbot policy definition json file. This file must be present in config repository",
          },
      "definitions.IDeploymentTargets" =
        {
            accounts | Array String | optional,
            excludedAccounts | Array String | optional,
            excludedRegions | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.IOrganizationConfig" =
        {
            backupPolicies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IBackupPolicyConfig", { _ | Dyn } ]
              )
              | doc "A Record of Backup Policy configurations",
            chatbotPolicies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IChatbotPolicyConfig", { _ | Dyn } ]
              )
              | doc "A list of Chatbot Policy configurations"
              | optional,
            enable | Bool | doc "Indicates whether AWS Organization enabled.",
            organizationalUnitIds
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IOrganizationalUnitIdConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Optionally provide a list of Organizational Unit IDs to bypass the usage of the AWS Organizations Client lookup. This is not a readonly member since we will initialize it with values if it is not provided"
              | optional,
            organizationalUnits
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IOrganizationalUnitConfig", { _ | Dyn } ]
              )
              | doc "A Record of Organizational Unit configurations",
            quarantineNewAccounts
              | refs."definitions.IQuarantineNewAccountsConfig"
              | { _ | Dyn }
              | doc "A record of Quarantine New Accounts configuration"
              | optional,
            serviceControlPolicies
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IServiceControlPolicyConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "A Record of Service Control Policy configurations",
            taggingPolicies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITaggingPolicyConfig", { _ | Dyn } ]
              )
              | doc "A Record of Tagging Policy configurations",
          },
      "definitions.IOrganizationalUnitConfig" =
        {
            ignore
              | Bool
              | doc "Optional property used to ignore organizational unit and the associated accounts Default value is false"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The name and nested path that you want to assign to the OU. When referring to OU's in the other configuration files ensure that the name matches what has been provided here. For example if you wanted an OU directly off of root just supply the OU name. Always configure all of the OUs in the path. A nested OU configuration would be like this
                - name: Sandbox
                - name: Sandbox/Pipeline
                - name: Sandbox/Development
                - name: Sandbox/Development/Application1
              "%,
          },
      "definitions.IOrganizationalUnitIdConfig" =
        {
            arn | refs."definitions.NonEmptyString" | String | doc "OU arn",
            id | refs."definitions.NonEmptyString" | String | doc "OU id",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A name for the OU",
          },
      "definitions.IQuarantineNewAccountsConfig" =
        {
            enable
              | Bool
              | doc "Indicates where or not a Quarantine policy is applied when new accounts are created. If enabled all accounts created by any means will have the configured policy applied.",
            scpPolicyName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The policy to apply to new accounts. This value must exist if the feature is enabled. The name must also match a policy that is defined in the serviceControlPolicy section."
              | optional,
          },
      "definitions.IServiceControlPolicyConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Service control policy strategy. https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps_strategies.html",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description to assign to the policy.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name to assign to the policy. The regex pattern that is used to validate this parameter is a string of any of the characters in the ASCII character range.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "Service control definition json file. This file must be present in config repository",
            strategy
              | std.enum.TagOrString
              | [| 'allow-list, 'deny-list |]
              | doc "Service control policy deployment targets"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'customerManaged, 'awsManaged |]
              | doc "Kind of service control policy",
          },
      "definitions.ITaggingPolicyConfig" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Tagging policy deployment targets",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description to assign to the policy.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name to assign to the policy. The regex pattern that is used to validate this parameter is a string of any of the characters in the ASCII character range.",
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "Tagging policy definition json file. This file must be present in config repository",
          },
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
    }
    in
  refs."definitions.IOrganizationConfig"