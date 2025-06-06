# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.alias" =
        {
            depends_on
              | Array Dyn
              | doc "(optional) expresses startup and shutdown dependencies between apps"
              | optional,
            icon | String | doc "(optional) set icon" | optional,
          },
      "definitions.app" =
        {
            cluster
              | String
              | doc "(optional) ECS cluster can be specified here. By default it's derived from env & namespace"
              | optional,
            create_domain
              | Bool
              | doc "(optional) Create domain for the serverless domain manager during the deployment."
              | optional,
            depends_on
              | Array Dyn
              | doc "(optional) expresses startup and shutdown dependencies between apps"
              | optional,
            docker_registry
              | String
              | doc "(optional) Docker registry can be set here. By default it uses ECR repo with the name of the service."
              | optional,
            env | Array String | doc "environments" | optional,
            file
              | String
              | doc "(optional) Path to serverless file can be specified here. Normally it's serverless.yml in the app directory."
              | optional,
            image
              | String
              | doc "(optional) Docker image can be specified here. By default it's derived from the app name."
              | optional,
            node_version
              | String
              | doc "(optional) Node version that will be used by nvm can be specified here that. Default is v14."
              | optional,
            path
              | String
              | doc "(optional) Path to ecs app folder can be specified here. By default it's derived from apps path and app name."
              | optional,
            skip_deploy | Bool | doc "(optional) skip deploy app." | optional,
            sls_node_modules_cache_mount
              | String
              | doc "(optional) SLS node_modules cache mount path can be specified here. It's used to store cache during CI/CD process."
              | optional,
            task_definition_revision
              | String
              | doc "(optional) Task definition revision can be specified here. By default latest revision is used to perform a deployment. Normally this parameter can be used via cli during specific deployment needs."
              | optional,
            timeout
              | std.number.Integer
              | doc "(optional) ECS deployment timeout can be specified here."
              | optional,
            type | String | doc "app type" | optional,
            unsafe
              | Bool
              | doc "(optional) Enables unsafe mode that increases deploy time on a cost of shorter healthcheck."
              | optional,
          },
      "definitions.ecs" =
        {
            aws_profile
              | String
              | doc "(optional) ECS-specific AWS profile (optional) can be specified here (but normally it should be inherited from a global AWS_PROFILE)."
              | optional,
            aws_region
              | String
              | doc "(optional) ECS-specific AWS Region of this environment should be specified here. Normally global AWS_REGION is used."
              | optional,
            cluster
              | String
              | doc "(optional) ECS cluster can be specified here. By default it's derived from env & namespace"
              | optional,
            depends_on
              | Array Dyn
              | doc "(optional) expresses startup and shutdown dependencies between apps"
              | optional,
            docker_registry
              | String
              | doc "(optional) Docker registry can be set here. By default it uses ECR repo with the name of the service."
              | optional,
            icon | String | doc "(optional) set icon" | optional,
            image
              | String
              | doc "(optional) Docker image can be specified here. By default it's derived from the app name."
              | optional,
            path
              | String
              | doc "(optional) Path to ecs app folder can be specified here. By default it's derived from apps path and app name."
              | optional,
            skip_deploy | Bool | doc "(optional) skip deploy app." | optional,
            task_definition_revision
              | String
              | doc "(optional) Task definition revision can be specified here. By default latest revision is used to perform a deployment. Normally this parameter can be used via cli during specific deployment needs."
              | optional,
            timeout
              | std.number.Integer
              | doc "(optional) ECS deployment timeout can be specified here."
              | optional,
            unsafe
              | Bool
              | doc "(optional) Enables unsafe mode that increases deploy time on a cost of shorter healthcheck."
              | optional,
          },
      "definitions.serverless" =
        {
            aws_profile
              | String
              | doc "(optional) Serverless-specific AWS profile (optional) can be specified here (but normally it should be inherited from a global AWS_PROFILE)."
              | optional,
            aws_region
              | String
              | doc "(optional) Serverless-specific AWS Region of this environment should be specified here. Normally global AWS_REGION is used."
              | optional,
            create_domain
              | Bool
              | doc "(optional) Create domain for the serverless domain manager during the deployment."
              | optional,
            depends_on
              | Array Dyn
              | doc "(optional) expresses startup and shutdown dependencies between apps"
              | optional,
            env | Array String | doc "environments" | optional,
            file
              | String
              | doc "(optional) Path to serverless file can be specified here. Normally it's serverless.yml in the app directory."
              | optional,
            icon | String | doc "(optional) set icon" | optional,
            node_version
              | String
              | doc "(optional) Node version that will be used by nvm can be specified here that. Default is v14."
              | optional,
            path
              | String
              | doc "(optional) Path to the serverless app directory can be specified here. Normally it's derived from app directory and app name."
              | optional,
            sls_node_modules_cache_mount
              | String
              | doc "(optional) SLS node_modules cache mount path can be specified here. It's used to store cache during CI/CD process."
              | optional,
          },
      "definitions.terraform" =
        {
            aws_profile
              | String
              | doc "(optional) Terraform-specific AWS profile (optional) can be specified here (but normally it should be inherited from a global AWS_PROFILE)."
              | optional,
            aws_region
              | String
              | doc "(optional) Terraform-specific AWS Region of this environment should be specified here. Normally global AWS_REGION is used."
              | optional,
            root_domain_name
              | String
              | doc "(optional) Root domain name can be set here. This is the main domain that will be passed to the terraform. Generally if your app lives at 'api.dev.nutcorp.net' the root domain is `nutcorp.net`"
              | optional,
            state_bucket_name
              | String
              | doc "(optional) Terraform state bucket name can be specified here. Normally it's generated and defaults to <NAMESPACE>-tf-state"
              | optional,
            state_bucket_region
              | String
              | doc "(optional) Terraform state bucket region can be specified here. Normally AWS_REGION is used here. Can be overridden via env vars or flags."
              | optional,
            state_name
              | String
              | doc "(optional) Terraform state name that will be used in the .tfstate file. Normally it's 'terraform' or state name."
              | optional,
            version
              | String
              | doc "(optional) Terraform version can be set here. 1.1.3 by default."
              | optional,
          },
    }
    in
  {
      alias
        | { _ | refs."definitions.alias" }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
        | doc "(optional) Alias mode can be enabled here. This can be used to combine various apps via depends_on parameter."
        | optional,
      app
        | { _ | refs."definitions.app" }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
        | doc "Apps configuration."
        | optional,
      apps_path
        | String
        | doc "(optional) Path to apps directory can be set. By default apps are searched in 'apps' and 'projects' directories. This is needed in case your repo structure is not purely ize-structured (let's say you have 'src' repo in your dotnet app, as an example)"
        | optional,
      aws_profile
        | String
        | doc "(optional) AWS Profile can be specified here (but normally it's specified via AWS_PROFILE env var)",
      aws_region
        | String
        | doc "(required) AWS Region of this environment should be specified here. Can be overridden by AWS_PROFILE env var or --aws-region flag.",
      config_file
        | String
        | doc "(optional) Path to ize.toml config file can be specified, but normally it's read from the environment's directory automatically."
        | optional,
      custom_prompt
        | std.contract.any_of [ Bool, String ]
        | doc "(optional) Custom prompt can be enabled here for all console connections. Default: false."
        | optional,
      docker_registry
        | String
        | doc "(optional) Docker registry can be set here. By default it uses ECR repo with the name of the service."
        | optional,
      ecs
        | { _ | refs."definitions.ecs" }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
        | doc "Ecs apps configuration."
        | optional,
      env
        | String
        | doc "(optional) Environment name can be specified here. Normally it should be passed via `ENV` variable or --env flag.",
      env_dir
        | String
        | doc "(optional) Environment directory can be specified here. Normally it's calculated automatically based on the directory structure convention.",
      home
        | String
        | doc "(optional) User home directory can be specified here. Normally $HOME is used.",
      infra
        | {
          terraform
            | {
              aws_profile
                | String
                | doc "(optional) Terraform-specific AWS profile (optional) can be specified here (but normally it should be inherited from a global AWS_PROFILE)."
                | optional,
              aws_region
                | String
                | doc "(optional) Terraform-specific AWS Region of this environment should be specified here. Normally global AWS_REGION is used."
                | optional,
              root_domain_name
                | String
                | doc "(optional) Root domain name can be set here. This is the main domain that will be passed to the terraform. Generally if your app lives at 'api.dev.nutcorp.net' the root domain is `nutcorp.net`"
                | optional,
              state_bucket_name
                | String
                | doc "(optional) Terraform state bucket name can be specified here. Normally it's generated and defaults to <NAMESPACE>-tf-state"
                | optional,
              state_bucket_region
                | String
                | doc "(optional) Terraform state bucket region can be specified here. Normally AWS_REGION is used here. Can be overridden via env vars or flags."
                | optional,
              state_name
                | String
                | doc "(optional) Terraform state name that will be used in the .tfstate file. Normally it's 'terraform' or state name."
                | optional,
              terraform_version | String | optional,
              version
                | String
                | doc "(optional) Terraform version can be set here. 1.1.3 by default."
                | optional,
            }
            | doc "Infrastructure configuration.",
          tunnel
            | {
              bastion_instance_id
                | String
                | doc "Bastion instance ID."
                | optional,
              forward_host | Array String | optional,
            }
            | doc "Tunnel configuration."
            | optional,
          ..
        }
        | doc "Infrastructure configuration."
        | optional,
      ize_dir
        | String
        | doc "(optional) Ize directory can be specified here. Normally it's assumed to be .infra or .ize in the current repo.",
      log_level
        | String
        | doc "(optional) Log level can be specified here. Possible levels: info, debug, trace, panic, warn, error, fatal(default). Can be overridden via IZE_LOG_LEVEL env var or via --log-level flag."
        | optional,
      namespace
        | String
        | doc "(required) Namespace of the project can be specified here. It is used as a base for all naming. It can be overridden by NAMESPACE env var or --namespace flag.",
      plain_text
        | std.contract.any_of [ Bool, String ]
        | doc "(optional) Plain text output can be enabled here. Default is false. Can be overridden by IZE_PLAIN_TEXT env var or --plain-text flag."
        | optional,
      prefer_runtime
        | String
        | doc "(optional) Prefer a specific runtime. (native or docker) (default 'native')",
      root_dir
        | String
        | doc "(optional) Project directory can be set here. By default it's the current directory, but in case you prefer to run ize from the outside of repo it may be useful (uncommon).",
      serverless
        | { _ | refs."definitions.serverless" }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
        | doc "Serverless apps configuration."
        | optional,
      tag
        | String
        | doc "(optional) Tag can be set statically. Normally it is being constructed automatically based on the git revision."
        | optional,
      terraform
        | { _ | refs."definitions.terraform" }
        | js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
        | doc "Terraform configuration."
        | optional,
      terraform_version
        | String
        | doc "(optional) Terraform version can be set here. 1.1.3 by default"
        | optional,
      tf_log
        | String
        | doc "(optional) Terraform TF_LOG can be set here.  Can be TRACE, DEBUG, INFO, WARN or ERROR."
        | optional,
      tf_log_path
        | String
        | doc "(optional) TF_LOG_PATH can be set here."
        | optional,
      tunnel
        | {
          bastion_instance_id | String | doc "Bastion instance ID." | optional,
          forward_host | Array String | optional,
        }
        | doc "Tunnel configuration."
        | optional,
    }