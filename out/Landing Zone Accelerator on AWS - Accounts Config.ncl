# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AwsAccountId" =
        std.contract.Sequence
            [ js2n.string.MaxLength 12, js2n.string.MinLength 12 ],
      "definitions.EmailAddress" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 64,
              js2n.string.MinLength 6,
              js2n.string.Matches "['^\\S+@\\S+\\.\\S+$', '^\\w+$']"
            ],
      "definitions.IAccountConfig" =
        {
            accountAlias
              | refs."definitions.NonEmptyNoSpaceString"
              | String
              | doc "Account alias used for sign-in page URL in place of 12-digit number. This must be unique within the AWS partition and be only digits, lowercase letters, and hyphens. It will be validated againt the Regular Expression ^[a-z0-9]([a-z0-9]|-(?!-)){1,61}[a-z0-9]$"
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "The description is to used to provide more information about the account. This value is not used when creating accounts."
              | optional,
            email
              | refs."definitions.EmailAddress"
              | String
              | doc "The email address of the owner to assign to the account. The email address must not already be associated with another AWS account. You must use a valid email address. The address must be a minimum of 6 and a maximum of 64 characters long. All characters must be 7-bit ASCII characters There must be one and only one @ symbol, which separates the local name from the domain name. The local name can’t contain any of the following characters: whitespace, ” ‘ ( ) < > [ ] : ; , | % & The local name can’t begin with a dot (.) The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or dot (.) The domain name can’t begin or end with a hyphen (-) or dot (.) The domain name must contain at least one dot",
            name
              | refs."definitions.NonEmptyNoSpaceString"
              | String
              | doc m%"
                The friendly name that is assigned to the account for reference within the Accelerator. The name will be used to reference this account in other configuration files and not to lookup the account in AWS.
                
                For pre-existing accounts this does not need to match the AWS account name.
                
                When creating new accounts with the Accelerator, this name will be used as the AWS account name.
                
                The name should not contain any spaces as this isn't supported by the Accelerator.
              "%,
            organizationalUnit
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name for the Organizational Unit that this account is a member of. This Organizational Unit must exist in the organization-config.yaml file."
              | optional,
            warm
              | Bool
              | doc "'Warm' the account by creating an EC2 instance that runs for 15 minutes Use for new accounts that will need to have ec2 instance provisioned as part of the solution The 'warming' will take place in the operations stack This property may be removed after the account has been provisioned"
              | optional,
          },
      "definitions.IAccountIdConfig" =
        {
            accountId | refs."definitions.AwsAccountId" | String,
            email | refs."definitions.EmailAddress" | String,
          },
      "definitions.IAccountsConfig" =
        {
            accountIds
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAccountIdConfig", { _ | Dyn } ]
              )
              | optional,
            mandatoryAccounts
              | std.contract.any_of
                [
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.IAccountConfig", { _ | Dyn } ]),
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.IGovCloudAccountConfig",
                        { _ | Dyn }
                      ])
                ],
            workloadAccounts
              | std.contract.any_of
                [
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [ refs."definitions.IAccountConfig", { _ | Dyn } ]),
                  js2n.array.ArrayOf
                    (std.contract.Sequence
                      [
                        refs."definitions.IGovCloudAccountConfig",
                        { _ | Dyn }
                      ])
                ],
          },
      "definitions.IGovCloudAccountConfig" =
        {
            accountAlias
              | refs."definitions.NonEmptyNoSpaceString"
              | String
              | doc "Account alias used for sign-in page URL in place of 12-digit number. This must be unique within the AWS partition and be only digits, lowercase letters, and hyphens. It will be validated againt the Regular Expression ^[a-z0-9]([a-z0-9]|-(?!-)){1,61}[a-z0-9]$"
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "The description is to used to provide more information about the account. This value is not used when creating accounts."
              | optional,
            email
              | refs."definitions.EmailAddress"
              | String
              | doc "The email address of the owner to assign to the account. The email address must not already be associated with another AWS account. You must use a valid email address. The address must be a minimum of 6 and a maximum of 64 characters long. All characters must be 7-bit ASCII characters There must be one and only one @ symbol, which separates the local name from the domain name. The local name can’t contain any of the following characters: whitespace, ” ‘ ( ) < > [ ] : ; , | % & The local name can’t begin with a dot (.) The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or dot (.) The domain name can’t begin or end with a hyphen (-) or dot (.) The domain name must contain at least one dot",
            enableGovCloud
              | Bool
              | doc "Indicates whether or not a GovCloud partition account should be created."
              | optional,
            name
              | refs."definitions.NonEmptyNoSpaceString"
              | String
              | doc m%"
                The friendly name that is assigned to the account for reference within the Accelerator. The name will be used to reference this account in other configuration files and not to lookup the account in AWS.
                
                For pre-existing accounts this does not need to match the AWS account name.
                
                When creating new accounts with the Accelerator, this name will be used as the AWS account name.
                
                The name should not contain any spaces as this isn't supported by the Accelerator.
              "%,
            organizationalUnit
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name for the Organizational Unit that this account is a member of. This Organizational Unit must exist in the organization-config.yaml file."
              | optional,
          },
      "definitions.NonEmptyNoSpaceString" =
        std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "^[^\\s]*$" ],
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
    }
    in
  refs."definitions.IAccountsConfig"