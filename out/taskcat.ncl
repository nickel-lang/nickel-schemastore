# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.GeneralConfig" =
        {
            artifact_regions
              | Array (
                js2n.string.Matches
                  "^(ap|eu|us|sa|ca|cn|af|me|il|us-gov)-(central|south|north|east|west|southeast|southwest|northeast|northwest)-[0-9]$"
              )
              | doc "List of AWS regions where artifacts need to be copied. This helps same region artifact bucket access to resources"
              | optional,
            auth | { _ | String } | doc "AWS authentication section" | optional,
            parameters
              | {
                _ | std.contract.any_of
                  [
                    Array (std.contract.any_of [ std.number.Integer, String ]),
                    Bool,
                    std.number.Integer,
                    String
                  ]
              }
              | doc "Parameter key-values to pass to CloudFormation, parameters provided in global config take precedence"
              | optional,
            posthooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HookData", { _ | Dyn } ]
              )
              | doc "hooks to execute after executing tests"
              | optional,
            prehooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HookData", { _ | Dyn } ]
              )
              | doc "hooks to execute prior to executing tests"
              | optional,
            regions
              | Array (
                js2n.string.Matches
                  "^(ap|eu|us|sa|ca|cn|af|me|il|us-gov)-(central|south|north|east|west|southeast|southwest|northeast|northwest)-[0-9]$"
              )
              | doc "List of AWS regions"
              | optional,
            s3_bucket
              | String
              | doc "Name of S3 bucket to upload project to, if left out a bucket will be auto-generated"
              | optional,
            s3_regional_buckets
              | Bool
              | doc "Enable regional auto-buckets."
              | optional,
            tags
              | { _ | String }
              | doc "Tags to apply to CloudFormation template"
              | optional,
          },
      "definitions.HookData" =
        {
            config | { _ | Dyn } | doc "hook configuration" | optional,
            type | String | doc "hook type" | optional,
          },
      "definitions.ProjectConfig" =
        {
            artifact_regions
              | Array (
                js2n.string.Matches
                  "^(ap|eu|us|sa|ca|cn|af|me|il|us-gov)-(central|south|north|east|west|southeast|southwest|northeast|northwest)-[0-9]$"
              )
              | doc "List of AWS regions where artifacts need to be copied. This helps same region artifact bucket access to resources"
              | optional,
            auth | { _ | String } | doc "AWS authentication section" | optional,
            az_blacklist
              | Array (
                js2n.string.Matches
                  "(afs1-az1|afs1-az2|afs1-az3|afs1-los1-az1|ape1-az1|ape1-az2|ape1-az3|apne1-az1|apne1-az2|apne1-az4|apne1-tpe1-az1|apne2-az1|apne2-az2|apne2-az3|apne2-az4|apne3-az1|apne3-az2|apne3-az3|aps1-az1|aps1-az2|aps1-az3|aps1-ccu1-az1|aps1-del1-az1|aps2-az1|aps2-az2|aps2-az3|apse1-az1|apse1-az2|apse1-az3|apse1-bkk1-az1|apse1-mnl1-az1|apse2-akl1-az1|apse2-az1|apse2-az2|apse2-az3|apse2-per1-az1|apse3-az1|apse3-az2|apse3-az3|apse4-az1|apse4-az2|apse4-az3|cac1-az1|cac1-az2|cac1-az4|caw1-az1|caw1-az2|caw1-az3|euc1-az1|euc1-az2|euc1-az3|euc1-ham1-az1|euc1-waw1-az1|euc2-az1|euc2-az2|euc2-az3|eun1-az1|eun1-az2|eun1-az3|eun1-cph1-az1|eun1-hel1-az1|eus1-az1|eus1-az2|eus1-az3|eus2-az1|eus2-az2|eus2-az3|euw1-az1|euw1-az2|euw1-az3|euw2-az1|euw2-az2|euw2-az3|euw3-az1|euw3-az2|euw3-az3|ilc1-az1|ilc1-az2|ilc1-az3|mec1-az1|mec1-az2|mec1-az3|mes1-az1|mes1-az2|mes1-az3|mes1-mct1-az1|sae1-az1|sae1-az2|sae1-az3|use1-atl1-az1|use1-az1|use1-az2|use1-az3|use1-az4|use1-az5|use1-az6|use1-bos1-az1|use1-bue1-az1|use1-chi2-az1|use1-dfw2-az1|use1-iah2-az1|use1-lim1-az1|use1-mci1-az1|use1-mia1-az1|use1-msp1-az1|use1-nyc1-az1|use1-phl1-az1|use1-qro1-az1|use1-scl1-az1|use2-az1|use2-az2|use2-az3|usw1-az1|usw1-az3|usw2-az1|usw2-az2|usw2-az3|usw2-az4|usw2-den1-az1|usw2-las1-az1|usw2-lax1-az1|usw2-lax1-az2|usw2-pdx1-az1|usw2-phx2-az1|usw2-sea1-az1)"
              )
              | doc "List of Availablilty Zones ID's to exclude when generating availability zones"
              | optional,
            build_submodules
              | Bool
              | doc "Build Lambda zips recursively for submodules, set to false to disable"
              | optional,
            lambda_source_path
              | String
              | doc "Path relative to the project root containing Lambda zip files, default is 'lambda_functions/source'"
              | optional,
            lambda_zip_path
              | String
              | doc "Path relative to the project root to place Lambda zip files"
              | optional,
            name
              | js2n.string.Matches "^[a-z0-9-/]*$"
              | doc "Project name, used as s3 key prefix when uploading objects"
              | optional,
            org_id
              | String
              | doc "Organization ID to use when launching CFN Stacks. starts with o-. It is found on Organization Settings page"
              | optional,
            owner
              | String
              | doc "email address for project owner (not used at present)"
              | optional,
            package_lambda
              | Bool
              | doc "Package Lambda functions into zips before uploading to s3, set to false to disable"
              | optional,
            parameters
              | {
                _ | std.contract.any_of
                  [
                    Array (std.contract.any_of [ std.number.Integer, String ]),
                    Bool,
                    std.number.Integer,
                    String
                  ]
              }
              | doc "Parameter key-values to pass to CloudFormation, parameters provided in global config take precedence"
              | optional,
            posthooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HookData", { _ | Dyn } ]
              )
              | doc "hooks to execute after executing tests"
              | optional,
            prehooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HookData", { _ | Dyn } ]
              )
              | doc "hooks to execute prior to executing tests"
              | optional,
            regions
              | Array (
                js2n.string.Matches
                  "^(ap|eu|us|sa|ca|cn|af|me|il|us-gov)-(central|south|north|east|west|southeast|southwest|northeast|northwest)-[0-9]$"
              )
              | doc "List of AWS regions"
              | optional,
            role_name
              | String
              | doc "Role name to use when launching CFN Stacks."
              | optional,
            s3_bucket
              | js2n.string.Matches "^[a-z0-9-]*$"
              | doc "Name of S3 bucket to upload project to, if left out a bucket will be auto-generated"
              | optional,
            s3_enable_sig_v2
              | Bool
              | doc "Enable (deprecated) sigv2 access to auto-generated buckets"
              | optional,
            s3_object_acl
              | js2n.string.Matches
                "^(bucket-owner-full-control|bucket-owner-read|authenticated-read|aws-exec-read|public-read-write|public-read|private)$"
              | doc "ACL for uploaded s3 objects"
              | optional,
            s3_regional_buckets
              | Bool
              | doc "Enable regional auto-buckets."
              | optional,
            shorten_stack_name
              | Bool
              | doc "Shorten stack names generated for tests, set to true to enable"
              | optional,
            tags
              | { _ | String }
              | doc "Tags to apply to CloudFormation template"
              | optional,
            template
              | String
              | doc "path to template file relative to the project config file path"
              | optional,
          },
      "definitions.TestConfig" =
        {
            artifact_regions
              | Array (
                js2n.string.Matches
                  "^(ap|eu|us|sa|ca|cn|af|me|il|us-gov)-(central|south|north|east|west|southeast|southwest|northeast|northwest)-[0-9]$"
              )
              | doc "List of AWS regions where artifacts need to be copied. This helps same region artifact bucket access to resources"
              | optional,
            auth | { _ | String } | doc "AWS authentication section" | optional,
            az_blacklist
              | Array (
                js2n.string.Matches
                  "(afs1-az1|afs1-az2|afs1-az3|afs1-los1-az1|ape1-az1|ape1-az2|ape1-az3|apne1-az1|apne1-az2|apne1-az4|apne1-tpe1-az1|apne2-az1|apne2-az2|apne2-az3|apne2-az4|apne3-az1|apne3-az2|apne3-az3|aps1-az1|aps1-az2|aps1-az3|aps1-ccu1-az1|aps1-del1-az1|aps2-az1|aps2-az2|aps2-az3|apse1-az1|apse1-az2|apse1-az3|apse1-bkk1-az1|apse1-mnl1-az1|apse2-akl1-az1|apse2-az1|apse2-az2|apse2-az3|apse2-per1-az1|apse3-az1|apse3-az2|apse3-az3|apse4-az1|apse4-az2|apse4-az3|cac1-az1|cac1-az2|cac1-az4|caw1-az1|caw1-az2|caw1-az3|euc1-az1|euc1-az2|euc1-az3|euc1-ham1-az1|euc1-waw1-az1|euc2-az1|euc2-az2|euc2-az3|eun1-az1|eun1-az2|eun1-az3|eun1-cph1-az1|eun1-hel1-az1|eus1-az1|eus1-az2|eus1-az3|eus2-az1|eus2-az2|eus2-az3|euw1-az1|euw1-az2|euw1-az3|euw2-az1|euw2-az2|euw2-az3|euw3-az1|euw3-az2|euw3-az3|ilc1-az1|ilc1-az2|ilc1-az3|mec1-az1|mec1-az2|mec1-az3|mes1-az1|mes1-az2|mes1-az3|mes1-mct1-az1|sae1-az1|sae1-az2|sae1-az3|use1-atl1-az1|use1-az1|use1-az2|use1-az3|use1-az4|use1-az5|use1-az6|use1-bos1-az1|use1-bue1-az1|use1-chi2-az1|use1-dfw2-az1|use1-iah2-az1|use1-lim1-az1|use1-mci1-az1|use1-mia1-az1|use1-msp1-az1|use1-nyc1-az1|use1-phl1-az1|use1-qro1-az1|use1-scl1-az1|use2-az1|use2-az2|use2-az3|usw1-az1|usw1-az3|usw2-az1|usw2-az2|usw2-az3|usw2-az4|usw2-den1-az1|usw2-las1-az1|usw2-lax1-az1|usw2-lax1-az2|usw2-pdx1-az1|usw2-phx2-az1|usw2-sea1-az1)"
              )
              | doc "List of Availablilty Zones ID's to exclude when generating availability zones"
              | optional,
            parameters
              | {
                _ | std.contract.any_of
                  [
                    Array (std.contract.any_of [ std.number.Integer, String ]),
                    Bool,
                    std.number.Integer,
                    String
                  ]
              }
              | doc "Parameter key-values to pass to CloudFormation, parameters provided in global config take precedence"
              | optional,
            posthooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HookData", { _ | Dyn } ]
              )
              | doc "hooks to execute after executing tests"
              | optional,
            prehooks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HookData", { _ | Dyn } ]
              )
              | doc "hooks to execute prior to executing tests"
              | optional,
            regions
              | Array (
                js2n.string.Matches
                  "^(ap|eu|us|sa|ca|cn|af|me|il|us-gov)-(central|south|north|east|west|southeast|southwest|northeast|northwest)-[0-9]$"
              )
              | doc "List of AWS regions"
              | optional,
            role_name
              | String
              | doc "Role name to use when launching CFN Stacks."
              | optional,
            s3_bucket
              | js2n.string.Matches "^[a-z0-9-]*$"
              | doc "Name of S3 bucket to upload project to, if left out a bucket will be auto-generated"
              | optional,
            s3_regional_buckets
              | Bool
              | doc "Enable regional auto-buckets."
              | optional,
            stack_name | String | doc "Cloudformation Stack Name" | optional,
            stack_name_prefix
              | String
              | doc "Prefix to apply to generated CFN Stack Name"
              | optional,
            stack_name_suffix
              | String
              | doc "Suffix to apply to generated CFN Stack Name"
              | optional,
            tags
              | { _ | String }
              | doc "Tags to apply to CloudFormation template"
              | optional,
            template
              | String
              | doc "path to template file relative to the project config file path"
              | optional,
          },
    }
    in
  {
      general | refs."definitions.GeneralConfig" | optional,
      project | refs."definitions.ProjectConfig" | optional,
      tests | { _ | refs."definitions.TestConfig" } | optional,
    }