# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns =
          {
              "^.+$" =
                std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        build
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    base_dir
                                      | String
                                      | doc "Resolve relative paths to function's source code with respect to this directory. Use this if SAM template and source code are not in same enclosing folder. By default, relative paths are resolved with respect to the SAM template's location."
                                      | optional,
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    build_dir
                                      | String
                                      | doc "Directory to store build artifacts.Note: This directory will be first removed before starting a build."
                                      | optional,
                                    build_image
                                      | String
                                      | doc "Container image URIs for building functions/layers. You can specify for all functions/layers with just the image URI (--build-image public.ecr.aws/sam/build-nodejs18.x:latest). You can specify for each individual function with (--build-image FunctionLogicalID=public.ecr.aws/sam/build-nodejs18.x:latest). A combination of the two can be used. If a function does not have build image specified or an image URI for all functions, the default SAM CLI build images will be used."
                                      | optional,
                                    build_in_source
                                      | Bool
                                      | doc "Opts in to build project in the source folder. The following workflows support building in source: ['nodejs16.x', 'nodejs18.x', 'nodejs20.x', 'nodejs22.x', 'Makefile', 'esbuild']"
                                      | optional,
                                    cache_dir
                                      | String
                                      | doc "Directory to store cached artifacts. The default cache directory is .aws-sam/cache"
                                      | optional,
                                    cached
                                      | Bool
                                      | doc m%"
                                        Enable cached builds.Reuse build artifacts that have not changed from previous builds. 
                                        
                                        AWS SAM CLI evaluates if files in your project directory have changed. 
                                        
                                        Note: AWS SAM CLI does not evaluate changes made to third party modules that the project depends on.Example: Python function includes a requirements.txt file with the following entry requests=1.x and the latest request module version changes from 1.1 to 1.2, AWS SAM CLI will not pull the latest version until a non-cached build is run.
                                      "%
                                      | optional,
                                    container_env_var
                                      | String
                                      | doc m%"
                                        Environment variables to be passed into build containers
                                        Resource format (FuncName.VarName=Value) or Global format (VarName=Value).
                                        
                                         Example: --container-env-var Func1.VAR1=value1 --container-env-var VAR2=value2
                                      "%
                                      | optional,
                                    container_env_var_file
                                      | String
                                      | doc "Environment variables json file (e.g., env_vars.json) to be passed to containers."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    docker_network
                                      | String
                                      | doc "Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network."
                                      | optional,
                                    exclude
                                      | String
                                      | doc "Name of the resource(s) to exclude from AWS SAM CLI build."
                                      | optional,
                                    hook_name
                                      | String
                                      | doc m%"
                                        Hook package id to extend AWS SAM CLI commands functionality. 
                                        
                                        Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                        
                                        Available Hook Names: ['terraform']
                                      "%
                                      | optional,
                                    manifest
                                      | String
                                      | doc "Path to a custom dependency manifest. Example: custom-package.json"
                                      | optional,
                                    mount_symlinks
                                      | Bool
                                      | doc "Specify if symlinks at the top level of the code should be mounted inside the container. Activating this flag could allow access to locations outside of your workspace by using a symbolic link. By default symlinks are not mounted."
                                      | optional,
                                    mount_with
                                      | std.enum.TagOrString
                                      | [| 'WRITE, 'READ |]
                                      | doc "Specify mount mode for building functions/layers inside container. If it is mounted with write permissions, some files in source code directory may be changed/added by the build process. By default the source code directory is read only."
                                      | optional,
                                    parallel
                                      | Bool
                                      | doc "Enable parallel builds for AWS SAM template's functions and layers."
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    skip_prepare_infra
                                      | Bool
                                      | doc "Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name."
                                      | optional,
                                    skip_pull_image
                                      | Bool
                                      | doc "Skip pulling down the latest Docker image for Lambda runtime."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template file."
                                      | optional,
                                    terraform_project_root_path
                                      | String
                                      | doc "Used for passing the Terraform project root directory path. Current directory will be used as a default value, if this parameter is not provided."
                                      | optional,
                                    use_container
                                      | Bool
                                      | doc "Build functions within an AWS Lambda-like container."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the build command:
                                    * terraform_project_root_path:
                                    Used for passing the Terraform project root directory path. Current directory will be used as a default value, if this parameter is not provided.
                                    * hook_name:
                                    Hook package id to extend AWS SAM CLI commands functionality. 
                                    
                                    Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                    
                                    Available Hook Names: ['terraform']
                                    * skip_prepare_infra:
                                    Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name.
                                    * use_container:
                                    Build functions within an AWS Lambda-like container.
                                    * build_in_source:
                                    Opts in to build project in the source folder. The following workflows support building in source: ['nodejs16.x', 'nodejs18.x', 'nodejs20.x', 'nodejs22.x', 'Makefile', 'esbuild']
                                    * container_env_var:
                                    Environment variables to be passed into build containers
                                    Resource format (FuncName.VarName=Value) or Global format (VarName=Value).
                                    
                                     Example: --container-env-var Func1.VAR1=value1 --container-env-var VAR2=value2
                                    * container_env_var_file:
                                    Environment variables json file (e.g., env_vars.json) to be passed to containers.
                                    * build_image:
                                    Container image URIs for building functions/layers. You can specify for all functions/layers with just the image URI (--build-image public.ecr.aws/sam/build-nodejs18.x:latest). You can specify for each individual function with (--build-image FunctionLogicalID=public.ecr.aws/sam/build-nodejs18.x:latest). A combination of the two can be used. If a function does not have build image specified or an image URI for all functions, the default SAM CLI build images will be used.
                                    * exclude:
                                    Name of the resource(s) to exclude from AWS SAM CLI build.
                                    * parallel:
                                    Enable parallel builds for AWS SAM template's functions and layers.
                                    * mount_with:
                                    Specify mount mode for building functions/layers inside container. If it is mounted with write permissions, some files in source code directory may be changed/added by the build process. By default the source code directory is read only.
                                    * mount_symlinks:
                                    Specify if symlinks at the top level of the code should be mounted inside the container. Activating this flag could allow access to locations outside of your workspace by using a symbolic link. By default symlinks are not mounted.
                                    * build_dir:
                                    Directory to store build artifacts.Note: This directory will be first removed before starting a build.
                                    * cache_dir:
                                    Directory to store cached artifacts. The default cache directory is .aws-sam/cache
                                    * base_dir:
                                    Resolve relative paths to function's source code with respect to this directory. Use this if SAM template and source code are not in same enclosing folder. By default, relative paths are resolved with respect to the SAM template's location.
                                    * manifest:
                                    Path to a custom dependency manifest. Example: custom-package.json
                                    * cached:
                                    Enable cached builds.Reuse build artifacts that have not changed from previous builds. 
                                    
                                    AWS SAM CLI evaluates if files in your project directory have changed. 
                                    
                                    Note: AWS SAM CLI does not evaluate changes made to third party modules that the project depends on.Example: Python function includes a requirements.txt file with the following entry requests=1.x and the latest request module version changes from 1.1 to 1.2, AWS SAM CLI will not pull the latest version until a non-cached build is run.
                                    * template_file:
                                    AWS SAM template file.
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * skip_pull_image:
                                    Skip pulling down the latest Docker image for Lambda runtime.
                                    * docker_network:
                                    Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network.
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Build AWS serverless function code."
                          | optional,
                        delete
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    no_prompts
                                      | Bool
                                      | doc "Specify this flag to allow SAM CLI to skip through the guided prompts."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    s3_bucket
                                      | String
                                      | doc "The S3 bucket path you want to delete."
                                      | optional,
                                    s3_prefix
                                      | String
                                      | doc "The S3 prefix you want to delete"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "The name of the AWS CloudFormation stack you want to delete."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the delete command:
                                    * stack_name:
                                    The name of the AWS CloudFormation stack you want to delete.
                                    * no_prompts:
                                    Specify this flag to allow SAM CLI to skip through the guided prompts.
                                    * s3_bucket:
                                    The S3 bucket path you want to delete.
                                    * s3_prefix:
                                    The S3 prefix you want to delete
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            The sam delete command deletes the CloudFormation
                            stack and all the artifacts which were created using sam deploy.
                          "%
                          | optional,
                        deploy
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    capabilities
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc m%"
                                        List of capabilities that one must specify before AWS Cloudformation can create certain stacks.
                                        
                                        Accepted Values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_RESOURCE_POLICY, CAPABILITY_AUTO_EXPAND.
                                        
                                        Learn more at: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/acknowledging-application-capabilities.html
                                      "%
                                      | optional,
                                    confirm_changeset
                                      | Bool
                                      | doc "Prompt to confirm if the computed changeset is to be deployed by SAM CLI."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    disable_rollback
                                      | Bool
                                      | doc "Preserves the state of previously provisioned resources when an operation fails."
                                      | optional,
                                    fail_on_empty_changeset
                                      | Bool
                                      | doc "Specify whether AWS SAM CLI should return a non-zero exit code if there are no changes to be made to the stack. Defaults to a non-zero exit code."
                                      | optional,
                                    force_upload
                                      | Bool
                                      | doc "Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket."
                                      | optional,
                                    guided
                                      | Bool
                                      | doc "Specify this flag to allow SAM CLI to guide you through the deployment using guided prompts."
                                      | optional,
                                    image_repositories
                                      | Array String
                                      | doc m%"
                                        Mapping of Function Logical ID to AWS ECR Repository URI.
                                        
                                        Example: Function_Logical_ID=ECR_Repo_Uri
                                        This option can be specified multiple times.
                                      "%
                                      | optional,
                                    image_repository
                                      | String
                                      | doc "AWS ECR repository URI where artifacts referenced in the template are uploaded."
                                      | optional,
                                    kms_key_id
                                      | String
                                      | doc "The ID of an AWS KMS key that is used to encrypt artifacts that are at rest in the AWS S3 bucket."
                                      | optional,
                                    max_wait_duration
                                      | std.number.Integer
                                      | doc "Maximum duration in minutes to wait for the deployment to complete."
                                      | optional,
                                    metadata
                                      | String
                                      | doc "Map of metadata to attach to ALL the artifacts that are referenced in the template."
                                      | optional,
                                    no_execute_changeset
                                      | Bool
                                      | doc "Indicates whether to execute the change set. Specify this flag to view stack changes before executing the change set."
                                      | optional,
                                    no_progressbar
                                      | Bool
                                      | doc "Does not showcase a progress bar when uploading artifacts to S3 and pushing docker images to ECR"
                                      | optional,
                                    notification_arns
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "ARNs of SNS topics that AWS Cloudformation associates with the stack."
                                      | optional,
                                    on_failure
                                      | std.enum.TagOrString
                                      | [| 'ROLLBACK, 'DO_NOTHING, 'DELETE |]
                                      | doc m%"
                                        Provide an action to determine what will happen when a stack fails to create. Three actions are available:
                                        
                                        - ROLLBACK: This will rollback a stack to a previous known good state.
                                        
                                        - DELETE: The stack will rollback to a previous state if one exists, otherwise the stack will be deleted.
                                        
                                        - DO_NOTHING: The stack will not rollback or delete, this is the same as disabling rollback.
                                        
                                        Default behaviour is ROLLBACK.
                                        
                                        
                                        
                                        This option is mutually exclusive with --disable-rollback/--no-disable-rollback. You can provide
                                        --on-failure or --disable-rollback/--no-disable-rollback but not both at the same time.
                                      "%
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    resolve_image_repos
                                      | Bool
                                      | doc "Automatically create and delete ECR repositories for image-based functions in non-guided deployments. A companion stack containing ECR repos for each function will be deployed along with the template stack. Automatically created image repositories will be deleted if the corresponding functions are removed."
                                      | optional,
                                    resolve_s3
                                      | Bool
                                      | doc "Automatically resolve AWS S3 bucket for non-guided deployments. Enabling this option will also create a managed default AWS S3 bucket for you. If one does not provide a --s3-bucket value, the managed bucket will be used. Do not use --guided with this option."
                                      | optional,
                                    role_arn
                                      | String
                                      | doc "ARN of an IAM role that AWS Cloudformation assumes when executing a deployment change set."
                                      | optional,
                                    s3_bucket
                                      | String
                                      | doc "AWS S3 bucket where artifacts referenced in the template are uploaded."
                                      | optional,
                                    s3_prefix
                                      | String
                                      | doc "Prefix name that is added to the artifact's name when it is uploaded to the AWS S3 bucket."
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    signing_profiles
                                      | String
                                      | doc "A string that contains Code Sign configuration parameters as FunctionOrLayerNameToSign=SigningProfileName:SigningProfileOwner Since signing profile owner is optional, it could also be written as FunctionOrLayerNameToSign=SigningProfileName"
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of the AWS CloudFormation stack."
                                      | optional,
                                    tags
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "List of tags to associate with the stack."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template which references built artifacts for resources in the template. (if applicable)"
                                      | optional,
                                    use_json
                                      | Bool
                                      | doc "Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the deploy command:
                                    * guided:
                                    Specify this flag to allow SAM CLI to guide you through the deployment using guided prompts.
                                    * template_file:
                                    AWS SAM template which references built artifacts for resources in the template. (if applicable)
                                    * no_execute_changeset:
                                    Indicates whether to execute the change set. Specify this flag to view stack changes before executing the change set.
                                    * fail_on_empty_changeset:
                                    Specify whether AWS SAM CLI should return a non-zero exit code if there are no changes to be made to the stack. Defaults to a non-zero exit code.
                                    * confirm_changeset:
                                    Prompt to confirm if the computed changeset is to be deployed by SAM CLI.
                                    * disable_rollback:
                                    Preserves the state of previously provisioned resources when an operation fails.
                                    * on_failure:
                                    Provide an action to determine what will happen when a stack fails to create. Three actions are available:
                                    
                                    - ROLLBACK: This will rollback a stack to a previous known good state.
                                    
                                    - DELETE: The stack will rollback to a previous state if one exists, otherwise the stack will be deleted.
                                    
                                    - DO_NOTHING: The stack will not rollback or delete, this is the same as disabling rollback.
                                    
                                    Default behaviour is ROLLBACK.
                                    
                                    
                                    
                                    This option is mutually exclusive with --disable-rollback/--no-disable-rollback. You can provide
                                    --on-failure or --disable-rollback/--no-disable-rollback but not both at the same time.
                                    * max_wait_duration:
                                    Maximum duration in minutes to wait for the deployment to complete.
                                    * stack_name:
                                    Name of the AWS CloudFormation stack.
                                    * s3_bucket:
                                    AWS S3 bucket where artifacts referenced in the template are uploaded.
                                    * image_repository:
                                    AWS ECR repository URI where artifacts referenced in the template are uploaded.
                                    * image_repositories:
                                    Mapping of Function Logical ID to AWS ECR Repository URI.
                                    
                                    Example: Function_Logical_ID=ECR_Repo_Uri
                                    This option can be specified multiple times.
                                    * force_upload:
                                    Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket.
                                    * s3_prefix:
                                    Prefix name that is added to the artifact's name when it is uploaded to the AWS S3 bucket.
                                    * kms_key_id:
                                    The ID of an AWS KMS key that is used to encrypt artifacts that are at rest in the AWS S3 bucket.
                                    * role_arn:
                                    ARN of an IAM role that AWS Cloudformation assumes when executing a deployment change set.
                                    * use_json:
                                    Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default.
                                    * resolve_s3:
                                    Automatically resolve AWS S3 bucket for non-guided deployments. Enabling this option will also create a managed default AWS S3 bucket for you. If one does not provide a --s3-bucket value, the managed bucket will be used. Do not use --guided with this option.
                                    * resolve_image_repos:
                                    Automatically create and delete ECR repositories for image-based functions in non-guided deployments. A companion stack containing ECR repos for each function will be deployed along with the template stack. Automatically created image repositories will be deleted if the corresponding functions are removed.
                                    * metadata:
                                    Map of metadata to attach to ALL the artifacts that are referenced in the template.
                                    * notification_arns:
                                    ARNs of SNS topics that AWS Cloudformation associates with the stack.
                                    * tags:
                                    List of tags to associate with the stack.
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * signing_profiles:
                                    A string that contains Code Sign configuration parameters as FunctionOrLayerNameToSign=SigningProfileName:SigningProfileOwner Since signing profile owner is optional, it could also be written as FunctionOrLayerNameToSign=SigningProfileName
                                    * no_progressbar:
                                    Does not showcase a progress bar when uploading artifacts to S3 and pushing docker images to ECR
                                    * capabilities:
                                    List of capabilities that one must specify before AWS Cloudformation can create certain stacks.
                                    
                                    Accepted Values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_RESOURCE_POLICY, CAPABILITY_AUTO_EXPAND.
                                    
                                    Learn more at: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/acknowledging-application-capabilities.html
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "The sam deploy command creates a Cloudformation Stack and deploys your resources."
                          | optional,
                        docs
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | { _ | Dyn }
                                  | doc m%"
                                    Available parameters for the docs command:
                                    * 
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "NEW! Open the documentation in a browser."
                          | optional,
                        init
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    app_template
                                      | String
                                      | doc "Identifier of the managed application template to be used. Alternatively, run '$ sam init' without options for an interactive workflow."
                                      | optional,
                                    application_insights
                                      | Bool
                                      | doc "Enable CloudWatch Application Insights monitoring for application."
                                      | optional,
                                    architecture
                                      | std.enum.TagOrString
                                      | [| 'x86_64, 'arm64 |]
                                      | doc m%"
                                        Architectures for Lambda functions.
                                        
                                        Architectures: ['arm64', 'x86_64']
                                      "%
                                      | optional,
                                    base_image
                                      | std.enum.TagOrString
                                      | [|
                                        '"amazon/ruby3.4-base",
                                        '"amazon/ruby3.3-base",
                                        '"amazon/ruby3.2-base",
                                        '"amazon/python3.9-base",
                                        '"amazon/python3.8-base",
                                        '"amazon/python3.13-base",
                                        '"amazon/python3.12-base",
                                        '"amazon/python3.11-base",
                                        '"amazon/python3.10-base",
                                        '"amazon/nodejs22.x-base",
                                        '"amazon/nodejs20.x-base",
                                        '"amazon/nodejs18.x-base",
                                        '"amazon/nodejs16.x-base",
                                        '"amazon/java8.al2-base",
                                        '"amazon/java21-base",
                                        '"amazon/java17-base",
                                        '"amazon/java11-base",
                                        '"amazon/go1.x-base",
                                        '"amazon/go-provided.al2023-base",
                                        '"amazon/go-provided.al2-base",
                                        '"amazon/dotnet8-base",
                                        '"amazon/dotnet6-base"
                                      |]
                                      | doc m%"
                                        Lambda base image for deploying IMAGE based package type.
                                        
                                        Base images: amazon/dotnet6-base, amazon/dotnet8-base, amazon/go-provided.al2-base, amazon/go-provided.al2023-base, amazon/go1.x-base, amazon/java11-base, amazon/java17-base, amazon/java21-base, amazon/java8.al2-base, amazon/nodejs16.x-base, amazon/nodejs18.x-base, amazon/nodejs20.x-base, amazon/nodejs22.x-base, amazon/python3.10-base, amazon/python3.11-base, amazon/python3.12-base, amazon/python3.13-base, amazon/python3.8-base, amazon/python3.9-base, amazon/ruby3.2-base, amazon/ruby3.3-base, amazon/ruby3.4-base
                                      "%
                                      | optional,
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    dependency_manager
                                      | std.enum.TagOrString
                                      | [|
                                        'pip,
                                        'npm,
                                        'mod,
                                        'maven,
                                        'gradle,
                                        'cli-package,
                                        'bundler
                                      |]
                                      | doc m%"
                                        Dependency manager for Lambda runtime.
                                        
                                        Dependency managers: bundler, cli-package, gradle, maven, mod, npm, pip
                                      "%
                                      | optional,
                                    extra_context
                                      | String
                                      | doc "Override custom parameters in the template's cookiecutter.json configuration e.g. {\"customParam1\": \"customValue1\", \"customParam2\":\"customValue2\"}"
                                      | optional,
                                    location
                                      | String
                                      | doc "Template location (git, mercurial, http(s), zip, path)."
                                      | optional,
                                    name
                                      | String
                                      | doc "Name of AWS SAM Application."
                                      | optional,
                                    no_input
                                      | Bool
                                      | doc "Disable Cookiecutter prompting and accept default values defined in the cookiecutter config."
                                      | optional,
                                    no_interactive
                                      | Bool
                                      | doc "Disable interactive prompting for init parameters. (fail if any required values are missing)"
                                      | optional,
                                    output_dir
                                      | String
                                      | doc "Directory to initialize AWS SAM application."
                                      | optional,
                                    package_type
                                      | std.enum.TagOrString
                                      | [| 'Zip, 'Image |]
                                      | doc m%"
                                        Lambda deployment package type.
                                        
                                        Package Types: Zip, Image
                                      "%
                                      | optional,
                                    runtime
                                      | std.enum.TagOrString
                                      | [|
                                        '"ruby3.4",
                                        '"ruby3.3",
                                        '"ruby3.2",
                                        '"python3.9",
                                        '"python3.8",
                                        '"python3.13",
                                        '"python3.12",
                                        '"python3.11",
                                        '"python3.10",
                                        '"provided.al2023",
                                        '"provided.al2",
                                        'provided,
                                        '"nodejs22.x",
                                        '"nodejs20.x",
                                        '"nodejs18.x",
                                        '"nodejs16.x",
                                        '"java8.al2",
                                        'java21,
                                        'java17,
                                        'java11,
                                        '"go1.x",
                                        'dotnet8,
                                        'dotnet6
                                      |]
                                      | doc m%"
                                        Lambda runtime for application.
                                        
                                        Runtimes: dotnet8, dotnet6, go1.x, java21, java17, java11, java8.al2, nodejs22.x, nodejs20.x, nodejs18.x, nodejs16.x, provided, provided.al2, provided.al2023, python3.9, python3.8, python3.13, python3.12, python3.11, python3.10, ruby3.4, ruby3.3, ruby3.2
                                      "%
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    structured_logging
                                      | Bool
                                      | doc "Enable Structured Logging for application."
                                      | optional,
                                    tracing
                                      | Bool
                                      | doc "Enable AWS X-Ray tracing for application."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the init command:
                                    * no_interactive:
                                    Disable interactive prompting for init parameters. (fail if any required values are missing)
                                    * architecture:
                                    Architectures for Lambda functions.
                                    
                                    Architectures: ['arm64', 'x86_64']
                                    * location:
                                    Template location (git, mercurial, http(s), zip, path).
                                    * runtime:
                                    Lambda runtime for application.
                                    
                                    Runtimes: dotnet8, dotnet6, go1.x, java21, java17, java11, java8.al2, nodejs22.x, nodejs20.x, nodejs18.x, nodejs16.x, provided, provided.al2, provided.al2023, python3.9, python3.8, python3.13, python3.12, python3.11, python3.10, ruby3.4, ruby3.3, ruby3.2
                                    * package_type:
                                    Lambda deployment package type.
                                    
                                    Package Types: Zip, Image
                                    * base_image:
                                    Lambda base image for deploying IMAGE based package type.
                                    
                                    Base images: amazon/dotnet6-base, amazon/dotnet8-base, amazon/go-provided.al2-base, amazon/go-provided.al2023-base, amazon/go1.x-base, amazon/java11-base, amazon/java17-base, amazon/java21-base, amazon/java8.al2-base, amazon/nodejs16.x-base, amazon/nodejs18.x-base, amazon/nodejs20.x-base, amazon/nodejs22.x-base, amazon/python3.10-base, amazon/python3.11-base, amazon/python3.12-base, amazon/python3.13-base, amazon/python3.8-base, amazon/python3.9-base, amazon/ruby3.2-base, amazon/ruby3.3-base, amazon/ruby3.4-base
                                    * dependency_manager:
                                    Dependency manager for Lambda runtime.
                                    
                                    Dependency managers: bundler, cli-package, gradle, maven, mod, npm, pip
                                    * output_dir:
                                    Directory to initialize AWS SAM application.
                                    * name:
                                    Name of AWS SAM Application.
                                    * app_template:
                                    Identifier of the managed application template to be used. Alternatively, run '$ sam init' without options for an interactive workflow.
                                    * no_input:
                                    Disable Cookiecutter prompting and accept default values defined in the cookiecutter config.
                                    * extra_context:
                                    Override custom parameters in the template's cookiecutter.json configuration e.g. {"customParam1": "customValue1", "customParam2":"customValue2"}
                                    * tracing:
                                    Enable AWS X-Ray tracing for application.
                                    * application_insights:
                                    Enable CloudWatch Application Insights monitoring for application.
                                    * structured_logging:
                                    Enable Structured Logging for application.
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Initialize an AWS SAM application."
                          | optional,
                        list_endpoints
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    output
                                      | std.enum.TagOrString
                                      | [| 'table, 'json |]
                                      | doc "Output the results from the command in a given output format (json or table)."
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of corresponding deployed stack.(Not including a stack name will only show local resources defined in the template.)"
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template file."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the list endpoints command:
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * stack_name:
                                    Name of corresponding deployed stack.(Not including a stack name will only show local resources defined in the template.)
                                    * output:
                                    Output the results from the command in a given output format (json or table).
                                    * template_file:
                                    AWS SAM template file.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            Get a summary of the cloud endpoints in the stack.
                            
                            This command will show both the cloud and local endpoints that can
                            be used with sam local and sam sync. Currently the endpoint resources
                            are Lambda functions and API Gateway API resources.
                          "%
                          | optional,
                        list_resources
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    output
                                      | std.enum.TagOrString
                                      | [| 'table, 'json |]
                                      | doc "Output the results from the command in a given output format (json or table)."
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of corresponding deployed stack.(Not including a stack name will only show local resources defined in the template.)"
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template file."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the list resources command:
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * stack_name:
                                    Name of corresponding deployed stack.(Not including a stack name will only show local resources defined in the template.)
                                    * output:
                                    Output the results from the command in a given output format (json or table).
                                    * template_file:
                                    AWS SAM template file.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            Get a list of resources that will be deployed to CloudFormation.
                            
                            If a stack name is provided, the corresponding physical IDs of each
                            resource will be mapped to the logical ID of each resource.
                          "%
                          | optional,
                        list_stack_outputs
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    output
                                      | std.enum.TagOrString
                                      | [| 'table, 'json |]
                                      | doc "Output the results from the command in a given output format (json or table)."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of corresponding deployed stack."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the list stack outputs command:
                                    * stack_name:
                                    Name of corresponding deployed stack.
                                    * output:
                                    Output the results from the command in a given output format (json or table).
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Get the stack outputs as defined in the SAM/CloudFormation template."
                          | optional,
                        local_generate_event
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | { _ | Dyn }
                                  | doc m%"
                                    Available parameters for the local generate event command:
                                    * 
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Generate events for Lambda functions."
                          | optional,
                        local_invoke
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    add_host
                                      | Array String
                                      | doc "Passes a hostname to IP address mapping to the Docker container's host file. This parameter can be passed multiple times.Example:--add-host example.com:127.0.0.1"
                                      | optional,
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    container_env_vars
                                      | String
                                      | doc "JSON file containing additional environment variables to be set within the container when used in a debugging session locally."
                                      | optional,
                                    container_host
                                      | String
                                      | doc "Host of locally emulated Lambda container. This option is useful when the container runs on a different host than AWS SAM CLI. For example, if one wants to run AWS SAM CLI in a Docker container on macOS, this option could specify `host.docker.internal`"
                                      | optional,
                                    container_host_interface
                                      | String
                                      | doc "IP address of the host network interface that container ports should bind to. Use 0.0.0.0 to bind to all interfaces."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    debug_args
                                      | String
                                      | doc "Additional arguments to be passed to the debugger."
                                      | optional,
                                    debug_port
                                      | std.number.Integer
                                      | doc "When specified, Lambda function container will start in debug mode and will expose this port on localhost."
                                      | optional,
                                    debugger_path
                                      | String
                                      | doc "Host path to a debugger that will be mounted into the Lambda container."
                                      | optional,
                                    docker_network
                                      | String
                                      | doc "Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network."
                                      | optional,
                                    docker_volume_basedir
                                      | String
                                      | doc "Specify the location basedir where the SAM template exists. If Docker is running on a remote machine, Path of the SAM template must be mounted on the Docker machine and modified to match the remote machine."
                                      | optional,
                                    env_vars
                                      | String
                                      | doc "JSON file containing values for Lambda function's environment variables."
                                      | optional,
                                    event
                                      | String
                                      | doc "JSON file containing event data passed to the Lambda function during invoke. If this option is not specified, no event is assumed. Pass in the value '-' to input JSON via stdin"
                                      | optional,
                                    force_image_build
                                      | Bool
                                      | doc "Force rebuilding the image used for invoking functions with layers."
                                      | optional,
                                    hook_name
                                      | String
                                      | doc m%"
                                        Hook package id to extend AWS SAM CLI commands functionality. 
                                        
                                        Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                        
                                        Available Hook Names: ['terraform']
                                      "%
                                      | optional,
                                    invoke_image
                                      | String
                                      | doc "Container image URIs for invoking functions or starting api and function. One can specify the image URI used for the local function invocation (--invoke-image public.ecr.aws/sam/build-nodejs20.x:latest). One can also specify for each individual function with (--invoke-image Function1=public.ecr.aws/sam/build-nodejs20.x:latest). If a function does not have invoke image specified, the default AWS SAM CLI emulation image will be used."
                                      | optional,
                                    layer_cache_basedir
                                      | String
                                      | doc "Specify the location basedir where the lambda layers used by the template will be downloaded to."
                                      | optional,
                                    log_file
                                      | String
                                      | doc "File to capture output logs."
                                      | optional,
                                    mount_symlinks
                                      | Bool
                                      | doc "Specify if symlinks at the top level of the code should be mounted inside the container. Activating this flag could allow access to locations outside of your workspace by using a symbolic link. By default symlinks are not mounted."
                                      | optional,
                                    no_event
                                      | Bool
                                      | doc "DEPRECATED: By default no event is assumed."
                                      | optional,
                                    no_memory_limit
                                      | Bool
                                      | doc "Removes the Memory limit during emulation. With this parameter, the underlying container will run without a --memory parameter"
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    runtime
                                      | std.enum.TagOrString
                                      | [|
                                        '"ruby3.4",
                                        '"ruby3.3",
                                        '"ruby3.2",
                                        '"python3.9",
                                        '"python3.8",
                                        '"python3.13",
                                        '"python3.12",
                                        '"python3.11",
                                        '"python3.10",
                                        '"provided.al2023",
                                        '"provided.al2",
                                        'provided,
                                        '"nodejs22.x",
                                        '"nodejs20.x",
                                        '"nodejs18.x",
                                        '"nodejs16.x",
                                        '"java8.al2",
                                        'java21,
                                        'java17,
                                        'java11,
                                        '"go1.x",
                                        'dotnet8,
                                        'dotnet6
                                      |]
                                      | doc m%"
                                        Lambda runtime used to invoke the function.
                                        
                                        Runtimes: dotnet8, dotnet6, go1.x, java21, java17, java11, java8.al2, nodejs22.x, nodejs20.x, nodejs18.x, nodejs16.x, provided, provided.al2, provided.al2023, python3.9, python3.8, python3.13, python3.12, python3.11, python3.10, ruby3.4, ruby3.3, ruby3.2
                                      "%
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    shutdown
                                      | Bool
                                      | doc "Emulate a shutdown event after invoke completes, to test extension handling of shutdown behavior."
                                      | optional,
                                    skip_prepare_infra
                                      | Bool
                                      | doc "Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name."
                                      | optional,
                                    skip_pull_image
                                      | Bool
                                      | doc "Skip pulling down the latest Docker image for Lambda runtime."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template which references built artifacts for resources in the template. (if applicable)"
                                      | optional,
                                    terraform_plan_file
                                      | String
                                      | doc "Used for passing a custom plan file when executing the Terraform hook."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the local invoke command:
                                    * terraform_plan_file:
                                    Used for passing a custom plan file when executing the Terraform hook.
                                    * hook_name:
                                    Hook package id to extend AWS SAM CLI commands functionality. 
                                    
                                    Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                    
                                    Available Hook Names: ['terraform']
                                    * skip_prepare_infra:
                                    Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name.
                                    * event:
                                    JSON file containing event data passed to the Lambda function during invoke. If this option is not specified, no event is assumed. Pass in the value '-' to input JSON via stdin
                                    * no_event:
                                    DEPRECATED: By default no event is assumed.
                                    * runtime:
                                    Lambda runtime used to invoke the function.
                                    
                                    Runtimes: dotnet8, dotnet6, go1.x, java21, java17, java11, java8.al2, nodejs22.x, nodejs20.x, nodejs18.x, nodejs16.x, provided, provided.al2, provided.al2023, python3.9, python3.8, python3.13, python3.12, python3.11, python3.10, ruby3.4, ruby3.3, ruby3.2
                                    * mount_symlinks:
                                    Specify if symlinks at the top level of the code should be mounted inside the container. Activating this flag could allow access to locations outside of your workspace by using a symbolic link. By default symlinks are not mounted.
                                    * template_file:
                                    AWS SAM template which references built artifacts for resources in the template. (if applicable)
                                    * env_vars:
                                    JSON file containing values for Lambda function's environment variables.
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * debug_port:
                                    When specified, Lambda function container will start in debug mode and will expose this port on localhost.
                                    * debugger_path:
                                    Host path to a debugger that will be mounted into the Lambda container.
                                    * debug_args:
                                    Additional arguments to be passed to the debugger.
                                    * container_env_vars:
                                    JSON file containing additional environment variables to be set within the container when used in a debugging session locally.
                                    * docker_volume_basedir:
                                    Specify the location basedir where the SAM template exists. If Docker is running on a remote machine, Path of the SAM template must be mounted on the Docker machine and modified to match the remote machine.
                                    * log_file:
                                    File to capture output logs.
                                    * layer_cache_basedir:
                                    Specify the location basedir where the lambda layers used by the template will be downloaded to.
                                    * skip_pull_image:
                                    Skip pulling down the latest Docker image for Lambda runtime.
                                    * docker_network:
                                    Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network.
                                    * force_image_build:
                                    Force rebuilding the image used for invoking functions with layers.
                                    * shutdown:
                                    Emulate a shutdown event after invoke completes, to test extension handling of shutdown behavior.
                                    * container_host:
                                    Host of locally emulated Lambda container. This option is useful when the container runs on a different host than AWS SAM CLI. For example, if one wants to run AWS SAM CLI in a Docker container on macOS, this option could specify `host.docker.internal`
                                    * container_host_interface:
                                    IP address of the host network interface that container ports should bind to. Use 0.0.0.0 to bind to all interfaces.
                                    * add_host:
                                    Passes a hostname to IP address mapping to the Docker container's host file. This parameter can be passed multiple times.Example:--add-host example.com:127.0.0.1
                                    * invoke_image:
                                    Container image URIs for invoking functions or starting api and function. One can specify the image URI used for the local function invocation (--invoke-image public.ecr.aws/sam/build-nodejs20.x:latest). One can also specify for each individual function with (--invoke-image Function1=public.ecr.aws/sam/build-nodejs20.x:latest). If a function does not have invoke image specified, the default AWS SAM CLI emulation image will be used.
                                    * no_memory_limit:
                                    Removes the Memory limit during emulation. With this parameter, the underlying container will run without a --memory parameter
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Invoke AWS serverless functions locally."
                          | optional,
                        local_start_api
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    add_host
                                      | Array String
                                      | doc "Passes a hostname to IP address mapping to the Docker container's host file. This parameter can be passed multiple times.Example:--add-host example.com:127.0.0.1"
                                      | optional,
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    container_env_vars
                                      | String
                                      | doc "JSON file containing additional environment variables to be set within the container when used in a debugging session locally."
                                      | optional,
                                    container_host
                                      | String
                                      | doc "Host of locally emulated Lambda container. This option is useful when the container runs on a different host than AWS SAM CLI. For example, if one wants to run AWS SAM CLI in a Docker container on macOS, this option could specify `host.docker.internal`"
                                      | optional,
                                    container_host_interface
                                      | String
                                      | doc "IP address of the host network interface that container ports should bind to. Use 0.0.0.0 to bind to all interfaces."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    debug_args
                                      | String
                                      | doc "Additional arguments to be passed to the debugger."
                                      | optional,
                                    debug_function
                                      | String
                                      | doc "Optional. Specifies the Lambda Function logicalId to apply debug options to when --warm-containers is specified. This parameter applies to --debug-port, --debugger-path, and --debug-args."
                                      | optional,
                                    debug_port
                                      | std.number.Integer
                                      | doc "When specified, Lambda function container will start in debug mode and will expose this port on localhost."
                                      | optional,
                                    debugger_path
                                      | String
                                      | doc "Host path to a debugger that will be mounted into the Lambda container."
                                      | optional,
                                    disable_authorizer
                                      | Bool
                                      | doc "Disable custom Lambda Authorizers from being parsed and invoked."
                                      | optional,
                                    docker_network
                                      | String
                                      | doc "Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network."
                                      | optional,
                                    docker_volume_basedir
                                      | String
                                      | doc "Specify the location basedir where the SAM template exists. If Docker is running on a remote machine, Path of the SAM template must be mounted on the Docker machine and modified to match the remote machine."
                                      | optional,
                                    env_vars
                                      | String
                                      | doc "JSON file containing values for Lambda function's environment variables."
                                      | optional,
                                    force_image_build
                                      | Bool
                                      | doc "Force rebuilding the image used for invoking functions with layers."
                                      | optional,
                                    hook_name
                                      | String
                                      | doc m%"
                                        Hook package id to extend AWS SAM CLI commands functionality. 
                                        
                                        Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                        
                                        Available Hook Names: ['terraform']
                                      "%
                                      | optional,
                                    host
                                      | String
                                      | doc "Local hostname or IP address to bind to (default: '127.0.0.1')"
                                      | optional,
                                    invoke_image
                                      | String
                                      | doc "Container image URIs for invoking functions or starting api and function. One can specify the image URI used for the local function invocation (--invoke-image public.ecr.aws/sam/build-nodejs20.x:latest). One can also specify for each individual function with (--invoke-image Function1=public.ecr.aws/sam/build-nodejs20.x:latest). If a function does not have invoke image specified, the default AWS SAM CLI emulation image will be used."
                                      | optional,
                                    layer_cache_basedir
                                      | String
                                      | doc "Specify the location basedir where the lambda layers used by the template will be downloaded to."
                                      | optional,
                                    log_file
                                      | String
                                      | doc "File to capture output logs."
                                      | optional,
                                    no_memory_limit
                                      | Bool
                                      | doc "Removes the Memory limit during emulation. With this parameter, the underlying container will run without a --memory parameter"
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    port
                                      | std.number.Integer
                                      | doc "Local port number to listen on (default: '3000')"
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    shutdown
                                      | Bool
                                      | doc "Emulate a shutdown event after invoke completes, to test extension handling of shutdown behavior."
                                      | optional,
                                    skip_prepare_infra
                                      | Bool
                                      | doc "Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name."
                                      | optional,
                                    skip_pull_image
                                      | Bool
                                      | doc "Skip pulling down the latest Docker image for Lambda runtime."
                                      | optional,
                                    ssl_cert_file
                                      | String
                                      | doc "Path to SSL certificate file (default: None)"
                                      | optional,
                                    ssl_key_file
                                      | String
                                      | doc "Path to SSL key file (default: None)"
                                      | optional,
                                    static_dir
                                      | String
                                      | doc "Any static assets (e.g. CSS/Javascript/HTML) files located in this directory will be presented at /"
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template which references built artifacts for resources in the template. (if applicable)"
                                      | optional,
                                    terraform_plan_file
                                      | String
                                      | doc "Used for passing a custom plan file when executing the Terraform hook."
                                      | optional,
                                    warm_containers
                                      | std.enum.TagOrString
                                      | [| 'LAZY, 'EAGER |]
                                      | doc m%"
                                        Optional. Specifies how AWS SAM CLI manages 
                                        containers for each function.
                                        Two modes are available:
                                        EAGER: Containers for all functions are 
                                        loaded at startup and persist between 
                                        invocations.
                                        LAZY:  Containers are only loaded when each 
                                        function is first invoked. Those containers 
                                        persist for additional invocations.
                                      "%
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the local start api command:
                                    * terraform_plan_file:
                                    Used for passing a custom plan file when executing the Terraform hook.
                                    * hook_name:
                                    Hook package id to extend AWS SAM CLI commands functionality. 
                                    
                                    Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                    
                                    Available Hook Names: ['terraform']
                                    * skip_prepare_infra:
                                    Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name.
                                    * host:
                                    Local hostname or IP address to bind to (default: '127.0.0.1')
                                    * port:
                                    Local port number to listen on (default: '3000')
                                    * static_dir:
                                    Any static assets (e.g. CSS/Javascript/HTML) files located in this directory will be presented at /
                                    * disable_authorizer:
                                    Disable custom Lambda Authorizers from being parsed and invoked.
                                    * ssl_cert_file:
                                    Path to SSL certificate file (default: None)
                                    * ssl_key_file:
                                    Path to SSL key file (default: None)
                                    * template_file:
                                    AWS SAM template which references built artifacts for resources in the template. (if applicable)
                                    * env_vars:
                                    JSON file containing values for Lambda function's environment variables.
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * debug_port:
                                    When specified, Lambda function container will start in debug mode and will expose this port on localhost.
                                    * debugger_path:
                                    Host path to a debugger that will be mounted into the Lambda container.
                                    * debug_args:
                                    Additional arguments to be passed to the debugger.
                                    * container_env_vars:
                                    JSON file containing additional environment variables to be set within the container when used in a debugging session locally.
                                    * docker_volume_basedir:
                                    Specify the location basedir where the SAM template exists. If Docker is running on a remote machine, Path of the SAM template must be mounted on the Docker machine and modified to match the remote machine.
                                    * log_file:
                                    File to capture output logs.
                                    * layer_cache_basedir:
                                    Specify the location basedir where the lambda layers used by the template will be downloaded to.
                                    * skip_pull_image:
                                    Skip pulling down the latest Docker image for Lambda runtime.
                                    * docker_network:
                                    Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network.
                                    * force_image_build:
                                    Force rebuilding the image used for invoking functions with layers.
                                    * warm_containers:
                                    Optional. Specifies how AWS SAM CLI manages 
                                    containers for each function.
                                    Two modes are available:
                                    EAGER: Containers for all functions are 
                                    loaded at startup and persist between 
                                    invocations.
                                    LAZY:  Containers are only loaded when each 
                                    function is first invoked. Those containers 
                                    persist for additional invocations.
                                    * debug_function:
                                    Optional. Specifies the Lambda Function logicalId to apply debug options to when --warm-containers is specified. This parameter applies to --debug-port, --debugger-path, and --debug-args.
                                    * shutdown:
                                    Emulate a shutdown event after invoke completes, to test extension handling of shutdown behavior.
                                    * container_host:
                                    Host of locally emulated Lambda container. This option is useful when the container runs on a different host than AWS SAM CLI. For example, if one wants to run AWS SAM CLI in a Docker container on macOS, this option could specify `host.docker.internal`
                                    * container_host_interface:
                                    IP address of the host network interface that container ports should bind to. Use 0.0.0.0 to bind to all interfaces.
                                    * add_host:
                                    Passes a hostname to IP address mapping to the Docker container's host file. This parameter can be passed multiple times.Example:--add-host example.com:127.0.0.1
                                    * invoke_image:
                                    Container image URIs for invoking functions or starting api and function. One can specify the image URI used for the local function invocation (--invoke-image public.ecr.aws/sam/build-nodejs20.x:latest). One can also specify for each individual function with (--invoke-image Function1=public.ecr.aws/sam/build-nodejs20.x:latest). If a function does not have invoke image specified, the default AWS SAM CLI emulation image will be used.
                                    * no_memory_limit:
                                    Removes the Memory limit during emulation. With this parameter, the underlying container will run without a --memory parameter
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Run & test AWS serverless functions locally as a HTTP API."
                          | optional,
                        local_start_lambda
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    add_host
                                      | Array String
                                      | doc "Passes a hostname to IP address mapping to the Docker container's host file. This parameter can be passed multiple times.Example:--add-host example.com:127.0.0.1"
                                      | optional,
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    container_env_vars
                                      | String
                                      | doc "JSON file containing additional environment variables to be set within the container when used in a debugging session locally."
                                      | optional,
                                    container_host
                                      | String
                                      | doc "Host of locally emulated Lambda container. This option is useful when the container runs on a different host than AWS SAM CLI. For example, if one wants to run AWS SAM CLI in a Docker container on macOS, this option could specify `host.docker.internal`"
                                      | optional,
                                    container_host_interface
                                      | String
                                      | doc "IP address of the host network interface that container ports should bind to. Use 0.0.0.0 to bind to all interfaces."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    debug_args
                                      | String
                                      | doc "Additional arguments to be passed to the debugger."
                                      | optional,
                                    debug_function
                                      | String
                                      | doc "Optional. Specifies the Lambda Function logicalId to apply debug options to when --warm-containers is specified. This parameter applies to --debug-port, --debugger-path, and --debug-args."
                                      | optional,
                                    debug_port
                                      | std.number.Integer
                                      | doc "When specified, Lambda function container will start in debug mode and will expose this port on localhost."
                                      | optional,
                                    debugger_path
                                      | String
                                      | doc "Host path to a debugger that will be mounted into the Lambda container."
                                      | optional,
                                    docker_network
                                      | String
                                      | doc "Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network."
                                      | optional,
                                    docker_volume_basedir
                                      | String
                                      | doc "Specify the location basedir where the SAM template exists. If Docker is running on a remote machine, Path of the SAM template must be mounted on the Docker machine and modified to match the remote machine."
                                      | optional,
                                    env_vars
                                      | String
                                      | doc "JSON file containing values for Lambda function's environment variables."
                                      | optional,
                                    force_image_build
                                      | Bool
                                      | doc "Force rebuilding the image used for invoking functions with layers."
                                      | optional,
                                    hook_name
                                      | String
                                      | doc m%"
                                        Hook package id to extend AWS SAM CLI commands functionality. 
                                        
                                        Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                        
                                        Available Hook Names: ['terraform']
                                      "%
                                      | optional,
                                    host
                                      | String
                                      | doc "Local hostname or IP address to bind to (default: '127.0.0.1')"
                                      | optional,
                                    invoke_image
                                      | String
                                      | doc "Container image URIs for invoking functions or starting api and function. One can specify the image URI used for the local function invocation (--invoke-image public.ecr.aws/sam/build-nodejs20.x:latest). One can also specify for each individual function with (--invoke-image Function1=public.ecr.aws/sam/build-nodejs20.x:latest). If a function does not have invoke image specified, the default AWS SAM CLI emulation image will be used."
                                      | optional,
                                    layer_cache_basedir
                                      | String
                                      | doc "Specify the location basedir where the lambda layers used by the template will be downloaded to."
                                      | optional,
                                    log_file
                                      | String
                                      | doc "File to capture output logs."
                                      | optional,
                                    no_memory_limit
                                      | Bool
                                      | doc "Removes the Memory limit during emulation. With this parameter, the underlying container will run without a --memory parameter"
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    port
                                      | std.number.Integer
                                      | doc "Local port number to listen on (default: '3001')"
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    shutdown
                                      | Bool
                                      | doc "Emulate a shutdown event after invoke completes, to test extension handling of shutdown behavior."
                                      | optional,
                                    skip_prepare_infra
                                      | Bool
                                      | doc "Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name."
                                      | optional,
                                    skip_pull_image
                                      | Bool
                                      | doc "Skip pulling down the latest Docker image for Lambda runtime."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template which references built artifacts for resources in the template. (if applicable)"
                                      | optional,
                                    terraform_plan_file
                                      | String
                                      | doc "Used for passing a custom plan file when executing the Terraform hook."
                                      | optional,
                                    warm_containers
                                      | std.enum.TagOrString
                                      | [| 'LAZY, 'EAGER |]
                                      | doc m%"
                                        Optional. Specifies how AWS SAM CLI manages 
                                        containers for each function.
                                        Two modes are available:
                                        EAGER: Containers for all functions are 
                                        loaded at startup and persist between 
                                        invocations.
                                        LAZY:  Containers are only loaded when each 
                                        function is first invoked. Those containers 
                                        persist for additional invocations.
                                      "%
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the local start lambda command:
                                    * terraform_plan_file:
                                    Used for passing a custom plan file when executing the Terraform hook.
                                    * hook_name:
                                    Hook package id to extend AWS SAM CLI commands functionality. 
                                    
                                    Example: `terraform` to extend AWS SAM CLI commands functionality to support terraform applications. 
                                    
                                    Available Hook Names: ['terraform']
                                    * skip_prepare_infra:
                                    Skip preparation stage when there are no infrastructure changes. Only used in conjunction with --hook-name.
                                    * host:
                                    Local hostname or IP address to bind to (default: '127.0.0.1')
                                    * port:
                                    Local port number to listen on (default: '3001')
                                    * template_file:
                                    AWS SAM template which references built artifacts for resources in the template. (if applicable)
                                    * env_vars:
                                    JSON file containing values for Lambda function's environment variables.
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * debug_port:
                                    When specified, Lambda function container will start in debug mode and will expose this port on localhost.
                                    * debugger_path:
                                    Host path to a debugger that will be mounted into the Lambda container.
                                    * debug_args:
                                    Additional arguments to be passed to the debugger.
                                    * container_env_vars:
                                    JSON file containing additional environment variables to be set within the container when used in a debugging session locally.
                                    * docker_volume_basedir:
                                    Specify the location basedir where the SAM template exists. If Docker is running on a remote machine, Path of the SAM template must be mounted on the Docker machine and modified to match the remote machine.
                                    * log_file:
                                    File to capture output logs.
                                    * layer_cache_basedir:
                                    Specify the location basedir where the lambda layers used by the template will be downloaded to.
                                    * skip_pull_image:
                                    Skip pulling down the latest Docker image for Lambda runtime.
                                    * docker_network:
                                    Name or ID of an existing docker network for AWS Lambda docker containers to connect to, along with the default bridge network. If not specified, the Lambda containers will only connect to the default bridge docker network.
                                    * force_image_build:
                                    Force rebuilding the image used for invoking functions with layers.
                                    * warm_containers:
                                    Optional. Specifies how AWS SAM CLI manages 
                                    containers for each function.
                                    Two modes are available:
                                    EAGER: Containers for all functions are 
                                    loaded at startup and persist between 
                                    invocations.
                                    LAZY:  Containers are only loaded when each 
                                    function is first invoked. Those containers 
                                    persist for additional invocations.
                                    * debug_function:
                                    Optional. Specifies the Lambda Function logicalId to apply debug options to when --warm-containers is specified. This parameter applies to --debug-port, --debugger-path, and --debug-args.
                                    * shutdown:
                                    Emulate a shutdown event after invoke completes, to test extension handling of shutdown behavior.
                                    * container_host:
                                    Host of locally emulated Lambda container. This option is useful when the container runs on a different host than AWS SAM CLI. For example, if one wants to run AWS SAM CLI in a Docker container on macOS, this option could specify `host.docker.internal`
                                    * container_host_interface:
                                    IP address of the host network interface that container ports should bind to. Use 0.0.0.0 to bind to all interfaces.
                                    * add_host:
                                    Passes a hostname to IP address mapping to the Docker container's host file. This parameter can be passed multiple times.Example:--add-host example.com:127.0.0.1
                                    * invoke_image:
                                    Container image URIs for invoking functions or starting api and function. One can specify the image URI used for the local function invocation (--invoke-image public.ecr.aws/sam/build-nodejs20.x:latest). One can also specify for each individual function with (--invoke-image Function1=public.ecr.aws/sam/build-nodejs20.x:latest). If a function does not have invoke image specified, the default AWS SAM CLI emulation image will be used.
                                    * no_memory_limit:
                                    Removes the Memory limit during emulation. With this parameter, the underlying container will run without a --memory parameter
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Emulate AWS serverless functions locally."
                          | optional,
                        logs
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    cw_log_group
                                      | String
                                      | doc "Additional CloudWatch Log group names that are not auto-discovered based upon --name parameter. When provided, it will only tail the given CloudWatch Log groups. If you want to tail log groups related to resources, please also provide their names as well"
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    end_time
                                      | String
                                      | doc "Fetch events up to this time. Time can be relative values like '5mins ago', 'tomorrow' or formatted timestamp like '2018-01-01 10:10:10'"
                                      | optional,
                                    filter
                                      | String
                                      | doc "You can specify an expression to quickly find logs that match terms, phrases or values in your log events. This could be a simple keyword (e.g. \"error\") or a pattern supported by AWS CloudWatch Logs. See the AWS CloudWatch Logs documentation for the syntax https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html"
                                      | optional,
                                    include_traces
                                      | Bool
                                      | doc "Include the XRay traces in the log output."
                                      | optional,
                                    name
                                      | String
                                      | doc "The name of the resource for which to fetch logs. If this resource is a part of an AWS CloudFormation stack, this can be the LogicalID of the resource in the CloudFormation/SAM template. Multiple names can be provided by repeating the parameter again. If resource is in a nested stack, name can be prepended by nested stack name to pull logs from that resource (NestedStackLogicalId/ResourceLogicalId). If it is not provided and no --cw-log-group have been given, it will scan given stack and find all supported resources, and start pulling log information from them."
                                      | optional,
                                    output
                                      | std.enum.TagOrString
                                      | [| 'text, 'json |]
                                      | doc m%"
                                        The formatting style of the command output. Following options are available:
                                        
                                        TEXT: Prints information as regular text with some formatting (default option)
                                        
                                        JSON: Prints each line as JSON without formatting
                                      "%
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of the AWS CloudFormation stack that the function is a part of."
                                      | optional,
                                    start_time
                                      | String
                                      | doc "Fetch events starting at this time. Time can be relative values like '5mins ago', 'yesterday' or formatted timestamp like '2018-01-01 10:10:10'. Defaults to '10mins ago'."
                                      | optional,
                                    tail
                                      | Bool
                                      | doc "Tail events. This will ignore the end time argument and continue to fetch events as they become available. If option --tail is provided without a --name, one will be pulled from all possible resources"
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the logs command:
                                    * name:
                                    The name of the resource for which to fetch logs. If this resource is a part of an AWS CloudFormation stack, this can be the LogicalID of the resource in the CloudFormation/SAM template. Multiple names can be provided by repeating the parameter again. If resource is in a nested stack, name can be prepended by nested stack name to pull logs from that resource (NestedStackLogicalId/ResourceLogicalId). If it is not provided and no --cw-log-group have been given, it will scan given stack and find all supported resources, and start pulling log information from them.
                                    * stack_name:
                                    Name of the AWS CloudFormation stack that the function is a part of.
                                    * filter:
                                    You can specify an expression to quickly find logs that match terms, phrases or values in your log events. This could be a simple keyword (e.g. "error") or a pattern supported by AWS CloudWatch Logs. See the AWS CloudWatch Logs documentation for the syntax https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html
                                    * tail:
                                    Tail events. This will ignore the end time argument and continue to fetch events as they become available. If option --tail is provided without a --name, one will be pulled from all possible resources
                                    * include_traces:
                                    Include the XRay traces in the log output.
                                    * cw_log_group:
                                    Additional CloudWatch Log group names that are not auto-discovered based upon --name parameter. When provided, it will only tail the given CloudWatch Log groups. If you want to tail log groups related to resources, please also provide their names as well
                                    * output:
                                    The formatting style of the command output. Following options are available:
                                    
                                    TEXT: Prints information as regular text with some formatting (default option)
                                    
                                    JSON: Prints each line as JSON without formatting
                                    * end_time:
                                    Fetch events up to this time. Time can be relative values like '5mins ago', 'tomorrow' or formatted timestamp like '2018-01-01 10:10:10'
                                    * start_time:
                                    Fetch events starting at this time. Time can be relative values like '5mins ago', 'yesterday' or formatted timestamp like '2018-01-01 10:10:10'. Defaults to '10mins ago'.
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            The sam logs commands fetches logs of Lambda Functions/CloudWatch log groups
                            with additional filtering by options.
                          "%
                          | optional,
                        package
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    force_upload
                                      | Bool
                                      | doc "Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket."
                                      | optional,
                                    image_repositories
                                      | Array String
                                      | doc m%"
                                        Mapping of Function Logical ID to AWS ECR Repository URI.
                                        
                                        Example: Function_Logical_ID=ECR_Repo_Uri
                                        This option can be specified multiple times.
                                      "%
                                      | optional,
                                    image_repository
                                      | String
                                      | doc "AWS ECR repository URI where artifacts referenced in the template are uploaded."
                                      | optional,
                                    kms_key_id
                                      | String
                                      | doc "The ID of an AWS KMS key that is used to encrypt artifacts that are at rest in the AWS S3 bucket."
                                      | optional,
                                    metadata
                                      | String
                                      | doc "Map of metadata to attach to ALL the artifacts that are referenced in the template."
                                      | optional,
                                    no_progressbar
                                      | Bool
                                      | doc "Does not showcase a progress bar when uploading artifacts to S3 and pushing docker images to ECR"
                                      | optional,
                                    output_template_file
                                      | String
                                      | doc "The path to the file where the command writes the output AWS CloudFormation template. If you don't specify a path, the command writes the template to the standard output."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    resolve_s3
                                      | Bool
                                      | doc "Automatically resolve AWS S3 bucket for non-guided deployments. Enabling this option will also create a managed default AWS S3 bucket for you. If one does not provide a --s3-bucket value, the managed bucket will be used. Do not use --guided with this option."
                                      | optional,
                                    s3_bucket
                                      | String
                                      | doc "AWS S3 bucket where artifacts referenced in the template are uploaded."
                                      | optional,
                                    s3_prefix
                                      | String
                                      | doc "Prefix name that is added to the artifact's name when it is uploaded to the AWS S3 bucket."
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    signing_profiles
                                      | String
                                      | doc "A string that contains Code Sign configuration parameters as FunctionOrLayerNameToSign=SigningProfileName:SigningProfileOwner Since signing profile owner is optional, it could also be written as FunctionOrLayerNameToSign=SigningProfileName"
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template which references built artifacts for resources in the template. (if applicable)"
                                      | optional,
                                    use_json
                                      | Bool
                                      | doc "Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the package command:
                                    * template_file:
                                    AWS SAM template which references built artifacts for resources in the template. (if applicable)
                                    * output_template_file:
                                    The path to the file where the command writes the output AWS CloudFormation template. If you don't specify a path, the command writes the template to the standard output.
                                    * s3_bucket:
                                    AWS S3 bucket where artifacts referenced in the template are uploaded.
                                    * image_repository:
                                    AWS ECR repository URI where artifacts referenced in the template are uploaded.
                                    * image_repositories:
                                    Mapping of Function Logical ID to AWS ECR Repository URI.
                                    
                                    Example: Function_Logical_ID=ECR_Repo_Uri
                                    This option can be specified multiple times.
                                    * s3_prefix:
                                    Prefix name that is added to the artifact's name when it is uploaded to the AWS S3 bucket.
                                    * kms_key_id:
                                    The ID of an AWS KMS key that is used to encrypt artifacts that are at rest in the AWS S3 bucket.
                                    * use_json:
                                    Indicates whether to use JSON as the format for the output AWS CloudFormation template. YAML is used by default.
                                    * force_upload:
                                    Indicates whether to override existing files in the S3 bucket. Specify this flag to upload artifacts even if they match existing artifacts in the S3 bucket.
                                    * resolve_s3:
                                    Automatically resolve AWS S3 bucket for non-guided deployments. Enabling this option will also create a managed default AWS S3 bucket for you. If one does not provide a --s3-bucket value, the managed bucket will be used. Do not use --guided with this option.
                                    * metadata:
                                    Map of metadata to attach to ALL the artifacts that are referenced in the template.
                                    * signing_profiles:
                                    A string that contains Code Sign configuration parameters as FunctionOrLayerNameToSign=SigningProfileName:SigningProfileOwner Since signing profile owner is optional, it could also be written as FunctionOrLayerNameToSign=SigningProfileName
                                    * no_progressbar:
                                    Does not showcase a progress bar when uploading artifacts to S3 and pushing docker images to ECR
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Package an AWS SAM application."
                          | optional,
                        pipeline_bootstrap
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    bitbucket_repo_uuid
                                      | String
                                      | doc "The UUID of the Bitbucket repository. Only used if using Bitbucket OIDC for permissions. Found at https://bitbucket.org/<WORKSPACE>/<REPOSITORY>/admin/addon/admin/pipelines/openid-connect"
                                      | optional,
                                    bucket
                                      | String
                                      | doc "The ARN of the Amazon S3 bucket to hold the AWS SAM artifacts."
                                      | optional,
                                    cicd_provider
                                      | String
                                      | doc "The CICD platform for the SAM Pipeline"
                                      | optional,
                                    cloudformation_execution_role
                                      | String
                                      | doc "The ARN of the IAM role to be assumed by the AWS CloudFormation service while deploying the application's stack. Provide only if you want to use your own role, otherwise the command will create one."
                                      | optional,
                                    confirm_changeset
                                      | Bool
                                      | doc "Prompt to confirm if the resources are to be deployed."
                                      | optional,
                                    create_image_repository
                                      | Bool
                                      | doc "If set to true and no ECR image repository is provided, this command will create an ECR image repository to hold the container images of Lambda functions having an Image package type."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    deployment_branch
                                      | String
                                      | doc "The name of the branch that deployments will occur from. Only used if using GitHub Actions OIDC for permissions"
                                      | optional,
                                    github_org
                                      | String
                                      | doc "The GitHub organization that the repository belongs to. If there is no organization enter the Username of the repository owner instead Only used if using GitHub Actions OIDC for user permissions"
                                      | optional,
                                    github_repo
                                      | String
                                      | doc "The name of the GitHub Repository that deployments will occur from. Only used if using GitHub Actions OIDC for permissions"
                                      | optional,
                                    gitlab_group
                                      | String
                                      | doc "The GitLab group that the repository belongs to. Only used if using GitLab OIDC for permissions"
                                      | optional,
                                    gitlab_project
                                      | String
                                      | doc "The GitLab project name. Only used if using GitLab OIDC for permissions"
                                      | optional,
                                    image_repository
                                      | String
                                      | doc "The ARN of an Amazon ECR image repository to hold the container images of Lambda functions or layers that have a package type of Image. If provided, the --create-image-repository options is ignored. If not provided and --create-image-repository is specified, the command will create one."
                                      | optional,
                                    interactive
                                      | Bool
                                      | doc "Disable interactive prompting for bootstrap parameters, and fail if any required arguments are missing."
                                      | optional,
                                    oidc_client_id
                                      | String
                                      | doc "The client ID configured to use with the OIDC provider."
                                      | optional,
                                    oidc_provider
                                      | std.enum.TagOrString
                                      | [|
                                        'gitlab,
                                        'github-actions,
                                        'bitbucket-pipelines
                                      |]
                                      | doc "The name of the CI/CD system that will be used for OIDC permissions Currently supported CI/CD systems are : GitLab, GitHub and Bitbucket"
                                      | optional,
                                    oidc_provider_url
                                      | String
                                      | doc "The URL of the OIDC provider."
                                      | optional,
                                    permissions_provider
                                      | std.enum.TagOrString
                                      | [| 'oidc, 'iam |]
                                      | doc "Choose a permissions provider to assume the pipeline execution role. Default is to use an IAM User."
                                      | optional,
                                    pipeline_execution_role
                                      | String
                                      | doc "The ARN of the IAM role to be assumed by the pipeline user to operate on this stage. Provide it only if you want to use your own role, otherwise this command will create one."
                                      | optional,
                                    pipeline_user
                                      | String
                                      | doc "The Amazon Resource Name (ARN) of the IAM user having its access key ID and secret access key shared with the CI/CD system. It is used to grant this IAM user permission to access the corresponding AWS account. If not provided, the command will create one along with the access key ID and secret access key credentials."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stage
                                      | String
                                      | doc "The name of the corresponding deployment stage. It is used as a suffix for the created AWS infrastructure resources."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the pipeline bootstrap command:
                                    * interactive:
                                    Disable interactive prompting for bootstrap parameters, and fail if any required arguments are missing.
                                    * stage:
                                    The name of the corresponding deployment stage. It is used as a suffix for the created AWS infrastructure resources.
                                    * pipeline_user:
                                    The Amazon Resource Name (ARN) of the IAM user having its access key ID and secret access key shared with the CI/CD system. It is used to grant this IAM user permission to access the corresponding AWS account. If not provided, the command will create one along with the access key ID and secret access key credentials.
                                    * pipeline_execution_role:
                                    The ARN of the IAM role to be assumed by the pipeline user to operate on this stage. Provide it only if you want to use your own role, otherwise this command will create one.
                                    * cloudformation_execution_role:
                                    The ARN of the IAM role to be assumed by the AWS CloudFormation service while deploying the application's stack. Provide only if you want to use your own role, otherwise the command will create one.
                                    * bucket:
                                    The ARN of the Amazon S3 bucket to hold the AWS SAM artifacts.
                                    * create_image_repository:
                                    If set to true and no ECR image repository is provided, this command will create an ECR image repository to hold the container images of Lambda functions having an Image package type.
                                    * image_repository:
                                    The ARN of an Amazon ECR image repository to hold the container images of Lambda functions or layers that have a package type of Image. If provided, the --create-image-repository options is ignored. If not provided and --create-image-repository is specified, the command will create one.
                                    * confirm_changeset:
                                    Prompt to confirm if the resources are to be deployed.
                                    * permissions_provider:
                                    Choose a permissions provider to assume the pipeline execution role. Default is to use an IAM User.
                                    * oidc_provider_url:
                                    The URL of the OIDC provider.
                                    * oidc_client_id:
                                    The client ID configured to use with the OIDC provider.
                                    * github_org:
                                    The GitHub organization that the repository belongs to. If there is no organization enter the Username of the repository owner instead Only used if using GitHub Actions OIDC for user permissions
                                    * github_repo:
                                    The name of the GitHub Repository that deployments will occur from. Only used if using GitHub Actions OIDC for permissions
                                    * deployment_branch:
                                    The name of the branch that deployments will occur from. Only used if using GitHub Actions OIDC for permissions
                                    * oidc_provider:
                                    The name of the CI/CD system that will be used for OIDC permissions Currently supported CI/CD systems are : GitLab, GitHub and Bitbucket
                                    * gitlab_group:
                                    The GitLab group that the repository belongs to. Only used if using GitLab OIDC for permissions
                                    * gitlab_project:
                                    The GitLab project name. Only used if using GitLab OIDC for permissions
                                    * bitbucket_repo_uuid:
                                    The UUID of the Bitbucket repository. Only used if using Bitbucket OIDC for permissions. Found at https://bitbucket.org/<WORKSPACE>/<REPOSITORY>/admin/addon/admin/pipelines/openid-connect
                                    * cicd_provider:
                                    The CICD platform for the SAM Pipeline
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            This command generates the required AWS infrastructure resources to connect to your CI/CD system.
                            This step must be run for each deployment stage in your pipeline, prior to running the sam pipeline init command.
                          "%
                          | optional,
                        pipeline_init
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    bootstrap
                                      | Bool
                                      | doc "Enable interactive mode that walks the user through creating necessary AWS infrastructure resources."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the pipeline init command:
                                    * bootstrap:
                                    Enable interactive mode that walks the user through creating necessary AWS infrastructure resources.
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            This command generates a pipeline configuration file that your CI/CD system can use to deploy
                            serverless applications using AWS SAM.
                            
                            Before using sam pipeline init, you must bootstrap the necessary resources for each stage in your pipeline.
                            You can do this by running sam pipeline init --bootstrap to be guided through the setup and configuration
                            file generation process, or refer to resources you have previously created with the sam pipeline bootstrap command.
                          "%
                          | optional,
                        publish
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    fail_on_same_version
                                      | Bool
                                      | doc m%"
                                        If set, AWS SAM CLI will prevent a publish and return a non-zero exit code
                                        if the publish is attempted with a semantic version that already exists on the SAR application.
                                        Default is False.
                                      "%
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    semantic_version
                                      | String
                                      | doc "Optional. The value provided here overrides SemanticVersion in the template metadata."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template which references built artifacts for resources in the template. (if applicable)"
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the publish command:
                                    * template_file:
                                    AWS SAM template which references built artifacts for resources in the template. (if applicable)
                                    * semantic_version:
                                    Optional. The value provided here overrides SemanticVersion in the template metadata.
                                    * fail_on_same_version:
                                    If set, AWS SAM CLI will prevent a publish and return a non-zero exit code
                                    if the publish is attempted with a semantic version that already exists on the SAR application.
                                    Default is False.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            Use this command to publish a packaged AWS SAM template to
                            the AWS Serverless Application Repository to share within your team,
                            across your organization, or with the community at large.
                            
                            
                            This command expects the template's Metadata section to contain an
                            AWS::ServerlessRepo::Application section with application metadata
                            for publishing. For more details on this metadata section, see
                            https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-template-publishing-applications.html
                            
                            Examples
                            --------
                            To publish an application
                            $ sam publish -t packaged.yaml --region <region>
                          "%
                          | optional,
                        remote_invoke
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    event
                                      | String
                                      | doc "The event that will be sent to the resource. The target parameter will depend on the resource type. For instance: 'Payload' for Lambda which can be passed as a JSON string, 'Input' for Step Functions, 'MessageBody' for SQS, and 'Data' for Kinesis data streams."
                                      | optional,
                                    event_file
                                      | String
                                      | doc "The file that contains the event that will be sent to the resource."
                                      | optional,
                                    output
                                      | std.enum.TagOrString
                                      | [| 'text, 'json |]
                                      | doc "Output the results from the command in a given output format. The text format prints a readable AWS API response. The json format prints the full AWS API response."
                                      | optional,
                                    parameter
                                      | Array String
                                      | doc m%"
                                        Additional parameters that can be passed to invoke the resource.
                                        
                                        Lambda Function (Buffered stream): The following additional parameters can be used to invoke a lambda resource and get a buffered response: InvocationType='Event'|'RequestResponse'|'DryRun', LogType='None'|'Tail', ClientContext='base64-encoded string' Qualifier='string'.
                                        
                                        Lambda Function (Response stream): The following additional parameters can be used to invoke a lambda resource with response streaming: InvocationType='RequestResponse'|'DryRun', LogType='None'|'Tail', ClientContext='base64-encoded string', Qualifier='string'.
                                        
                                        Step Functions: The following additional parameters can be used to start a state machine execution: name='string', traceHeader='string'
                                        
                                        SQS Queue: The following additional parameters can be used to send a message to an SQS queue: DelaySeconds=integer, MessageAttributes='json string', MessageSystemAttributes='json string', MessageDeduplicationId='string', MessageGroupId='string'
                                        
                                        Kinesis Data Stream: The following additional parameters can be used to put a record in the kinesis data stream: PartitionKey='string', ExplicitHashKey='string', SequenceNumberForOrdering='string', StreamARN='string'
                                      "%
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of the stack to get the resource information from"
                                      | optional,
                                    test_event_name
                                      | String
                                      | doc "Name of the remote test event to send to the resource"
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the remote invoke command:
                                    * stack_name:
                                    Name of the stack to get the resource information from
                                    * event:
                                    The event that will be sent to the resource. The target parameter will depend on the resource type. For instance: 'Payload' for Lambda which can be passed as a JSON string, 'Input' for Step Functions, 'MessageBody' for SQS, and 'Data' for Kinesis data streams.
                                    * event_file:
                                    The file that contains the event that will be sent to the resource.
                                    * test_event_name:
                                    Name of the remote test event to send to the resource
                                    * output:
                                    Output the results from the command in a given output format. The text format prints a readable AWS API response. The json format prints the full AWS API response.
                                    * parameter:
                                    Additional parameters that can be passed to invoke the resource.
                                    
                                    Lambda Function (Buffered stream): The following additional parameters can be used to invoke a lambda resource and get a buffered response: InvocationType='Event'|'RequestResponse'|'DryRun', LogType='None'|'Tail', ClientContext='base64-encoded string' Qualifier='string'.
                                    
                                    Lambda Function (Response stream): The following additional parameters can be used to invoke a lambda resource with response streaming: InvocationType='RequestResponse'|'DryRun', LogType='None'|'Tail', ClientContext='base64-encoded string', Qualifier='string'.
                                    
                                    Step Functions: The following additional parameters can be used to start a state machine execution: name='string', traceHeader='string'
                                    
                                    SQS Queue: The following additional parameters can be used to send a message to an SQS queue: DelaySeconds=integer, MessageAttributes='json string', MessageSystemAttributes='json string', MessageDeduplicationId='string', MessageGroupId='string'
                                    
                                    Kinesis Data Stream: The following additional parameters can be used to put a record in the kinesis data stream: PartitionKey='string', ExplicitHashKey='string', SequenceNumberForOrdering='string', StreamARN='string'
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Invoke or send an event to resources in the cloud."
                          | optional,
                        remote_test_event
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | { _ | Dyn }
                                  | doc m%"
                                    Available parameters for the remote test event command:
                                    * 
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Manage remote test events"
                          | optional,
                        sync
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    base_dir
                                      | String
                                      | doc "Resolve relative paths to function's source code with respect to this directory. Use this if SAM template and source code are not in same enclosing folder. By default, relative paths are resolved with respect to the SAM template's location."
                                      | optional,
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    build_image
                                      | String
                                      | doc "Container image URIs for building functions/layers. You can specify for all functions/layers with just the image URI (--build-image public.ecr.aws/sam/build-nodejs18.x:latest). You can specify for each individual function with (--build-image FunctionLogicalID=public.ecr.aws/sam/build-nodejs18.x:latest). A combination of the two can be used. If a function does not have build image specified or an image URI for all functions, the default SAM CLI build images will be used."
                                      | optional,
                                    build_in_source
                                      | Bool
                                      | doc "Opts in to build project in the source folder. The following workflows support building in source: ['nodejs16.x', 'nodejs18.x', 'nodejs20.x', 'nodejs22.x', 'Makefile', 'esbuild']"
                                      | optional,
                                    capabilities
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc m%"
                                        List of capabilities that one must specify before AWS Cloudformation can create certain stacks.
                                        
                                        Accepted Values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_RESOURCE_POLICY, CAPABILITY_AUTO_EXPAND.
                                        
                                        Learn more at: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/acknowledging-application-capabilities.html
                                      "%
                                      | optional,
                                    code
                                      | Bool
                                      | doc "Sync ONLY code resources. This includes Lambda Functions, API Gateway, and Step Functions."
                                      | optional,
                                    container_env_var_file
                                      | String
                                      | doc "Environment variables json file (e.g., env_vars.json) to be passed to containers."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    dependency_layer
                                      | Bool
                                      | doc "Separate dependencies of individual function into a Lambda layer for improved performance."
                                      | optional,
                                    image_repositories
                                      | Array String
                                      | doc m%"
                                        Mapping of Function Logical ID to AWS ECR Repository URI.
                                        
                                        Example: Function_Logical_ID=ECR_Repo_Uri
                                        This option can be specified multiple times.
                                      "%
                                      | optional,
                                    image_repository
                                      | String
                                      | doc "AWS ECR repository URI where artifacts referenced in the template are uploaded."
                                      | optional,
                                    kms_key_id
                                      | String
                                      | doc "The ID of an AWS KMS key that is used to encrypt artifacts that are at rest in the AWS S3 bucket."
                                      | optional,
                                    metadata
                                      | String
                                      | doc "Map of metadata to attach to ALL the artifacts that are referenced in the template."
                                      | optional,
                                    notification_arns
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "ARNs of SNS topics that AWS Cloudformation associates with the stack."
                                      | optional,
                                    parameter_overrides
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "String that contains AWS CloudFormation parameter overrides encoded as key=value pairs."
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    resource
                                      | std.enum.TagOrString
                                      | [|
                                        '"AWS::StepFunctions::StateMachine",
                                        '"AWS::Serverless::StateMachine",
                                        '"AWS::Serverless::LayerVersion",
                                        '"AWS::Serverless::HttpApi",
                                        '"AWS::Serverless::Function",
                                        '"AWS::Serverless::Api",
                                        '"AWS::Lambda::LayerVersion",
                                        '"AWS::Lambda::Function",
                                        '"AWS::ApiGatewayV2::Api",
                                        '"AWS::ApiGateway::RestApi"
                                      |]
                                      | doc "Sync code for all resources of the given resource type. Accepted values are ['AWS::Serverless::Function', 'AWS::Lambda::Function', 'AWS::Serverless::LayerVersion', 'AWS::Lambda::LayerVersion', 'AWS::Serverless::Api', 'AWS::ApiGateway::RestApi', 'AWS::Serverless::HttpApi', 'AWS::ApiGatewayV2::Api', 'AWS::Serverless::StateMachine', 'AWS::StepFunctions::StateMachine']"
                                      | optional,
                                    resource_id
                                      | String
                                      | doc "Sync code for all the resources with the ID. To sync a resource within a nested stack, use the following pattern {ChildStack}/{logicalId}."
                                      | optional,
                                    role_arn
                                      | String
                                      | doc "ARN of an IAM role that AWS Cloudformation assumes when executing a deployment change set."
                                      | optional,
                                    s3_bucket
                                      | String
                                      | doc "AWS S3 bucket where artifacts referenced in the template are uploaded."
                                      | optional,
                                    s3_prefix
                                      | String
                                      | doc "Prefix name that is added to the artifact's name when it is uploaded to the AWS S3 bucket."
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    skip_deploy_sync
                                      | Bool
                                      | doc "This option will skip the initial infrastructure deployment if it is not required by comparing the local template with the template deployed in cloud."
                                      | optional,
                                    stack_name
                                      | String
                                      | doc "Name of the AWS CloudFormation stack."
                                      | optional,
                                    tags
                                      | std.contract.any_of
                                        [ String, Array String ]
                                      | doc "List of tags to associate with the stack."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template file."
                                      | optional,
                                    use_container
                                      | Bool
                                      | doc "Build functions within an AWS Lambda-like container."
                                      | optional,
                                    watch
                                      | Bool
                                      | doc "Watch local files and automatically sync with cloud."
                                      | optional,
                                    watch_exclude
                                      | Array String
                                      | doc m%"
                                        Excludes a file or folder from being observed for file changes. Files and folders that are excluded will not trigger a sync workflow. This option can be provided multiple times.
                                        
                                        Examples:
                                        
                                        HelloWorldFunction=package-lock.json
                                        
                                        ChildStackA/FunctionName=database.sqlite3
                                      "%
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the sync command:
                                    * template_file:
                                    AWS SAM template file.
                                    * code:
                                    Sync ONLY code resources. This includes Lambda Functions, API Gateway, and Step Functions.
                                    * watch:
                                    Watch local files and automatically sync with cloud.
                                    * resource_id:
                                    Sync code for all the resources with the ID. To sync a resource within a nested stack, use the following pattern {ChildStack}/{logicalId}.
                                    * resource:
                                    Sync code for all resources of the given resource type. Accepted values are ['AWS::Serverless::Function', 'AWS::Lambda::Function', 'AWS::Serverless::LayerVersion', 'AWS::Lambda::LayerVersion', 'AWS::Serverless::Api', 'AWS::ApiGateway::RestApi', 'AWS::Serverless::HttpApi', 'AWS::ApiGatewayV2::Api', 'AWS::Serverless::StateMachine', 'AWS::StepFunctions::StateMachine']
                                    * dependency_layer:
                                    Separate dependencies of individual function into a Lambda layer for improved performance.
                                    * skip_deploy_sync:
                                    This option will skip the initial infrastructure deployment if it is not required by comparing the local template with the template deployed in cloud.
                                    * container_env_var_file:
                                    Environment variables json file (e.g., env_vars.json) to be passed to containers.
                                    * watch_exclude:
                                    Excludes a file or folder from being observed for file changes. Files and folders that are excluded will not trigger a sync workflow. This option can be provided multiple times.
                                    
                                    Examples:
                                    
                                    HelloWorldFunction=package-lock.json
                                    
                                    ChildStackA/FunctionName=database.sqlite3
                                    * stack_name:
                                    Name of the AWS CloudFormation stack.
                                    * base_dir:
                                    Resolve relative paths to function's source code with respect to this directory. Use this if SAM template and source code are not in same enclosing folder. By default, relative paths are resolved with respect to the SAM template's location.
                                    * use_container:
                                    Build functions within an AWS Lambda-like container.
                                    * build_in_source:
                                    Opts in to build project in the source folder. The following workflows support building in source: ['nodejs16.x', 'nodejs18.x', 'nodejs20.x', 'nodejs22.x', 'Makefile', 'esbuild']
                                    * build_image:
                                    Container image URIs for building functions/layers. You can specify for all functions/layers with just the image URI (--build-image public.ecr.aws/sam/build-nodejs18.x:latest). You can specify for each individual function with (--build-image FunctionLogicalID=public.ecr.aws/sam/build-nodejs18.x:latest). A combination of the two can be used. If a function does not have build image specified or an image URI for all functions, the default SAM CLI build images will be used.
                                    * image_repository:
                                    AWS ECR repository URI where artifacts referenced in the template are uploaded.
                                    * image_repositories:
                                    Mapping of Function Logical ID to AWS ECR Repository URI.
                                    
                                    Example: Function_Logical_ID=ECR_Repo_Uri
                                    This option can be specified multiple times.
                                    * s3_bucket:
                                    AWS S3 bucket where artifacts referenced in the template are uploaded.
                                    * s3_prefix:
                                    Prefix name that is added to the artifact's name when it is uploaded to the AWS S3 bucket.
                                    * kms_key_id:
                                    The ID of an AWS KMS key that is used to encrypt artifacts that are at rest in the AWS S3 bucket.
                                    * role_arn:
                                    ARN of an IAM role that AWS Cloudformation assumes when executing a deployment change set.
                                    * parameter_overrides:
                                    String that contains AWS CloudFormation parameter overrides encoded as key=value pairs.
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * metadata:
                                    Map of metadata to attach to ALL the artifacts that are referenced in the template.
                                    * notification_arns:
                                    ARNs of SNS topics that AWS Cloudformation associates with the stack.
                                    * tags:
                                    List of tags to associate with the stack.
                                    * capabilities:
                                    List of capabilities that one must specify before AWS Cloudformation can create certain stacks.
                                    
                                    Accepted Values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_RESOURCE_POLICY, CAPABILITY_AUTO_EXPAND.
                                    
                                    Learn more at: https://docs.aws.amazon.com/serverlessrepo/latest/devguide/acknowledging-application-capabilities.html
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "NEW! Sync an AWS SAM Project to AWS."
                          | optional,
                        traces
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    end_time
                                      | String
                                      | doc "Fetch events up to this time. Time can be relative values like '5mins ago', 'tomorrow' or formatted timestamp like '2018-01-01 10:10:10'"
                                      | optional,
                                    output
                                      | std.enum.TagOrString
                                      | [| 'text, 'json |]
                                      | doc m%"
                                        The formatting style of the command output. Following options are available:
                                        
                                        TEXT: Prints information as regular text with some formatting (default option)
                                        
                                        JSON: Prints each line as JSON without formatting
                                      "%
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    start_time
                                      | String
                                      | doc "Fetch events starting at this time. Time can be relative values like '5mins ago', 'yesterday' or formatted timestamp like '2018-01-01 10:10:10'. Defaults to '10mins ago'."
                                      | optional,
                                    tail
                                      | Bool
                                      | doc "Tail events. This will ignore the end time argument and continue to fetch events as they become available."
                                      | optional,
                                    trace_id
                                      | String
                                      | doc "Fetch specific trace by providing its id"
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the traces command:
                                    * trace_id:
                                    Fetch specific trace by providing its id
                                    * tail:
                                    Tail events. This will ignore the end time argument and continue to fetch events as they become available.
                                    * output:
                                    The formatting style of the command output. Following options are available:
                                    
                                    TEXT: Prints information as regular text with some formatting (default option)
                                    
                                    JSON: Prints each line as JSON without formatting
                                    * end_time:
                                    Fetch events up to this time. Time can be relative values like '5mins ago', 'tomorrow' or formatted timestamp like '2018-01-01 10:10:10'
                                    * start_time:
                                    Fetch events starting at this time. Time can be relative values like '5mins ago', 'yesterday' or formatted timestamp like '2018-01-01 10:10:10'. Defaults to '10mins ago'.
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc m%"
                            Use this command to fetch AWS X-Ray traces generated by your stack.
                            
                            
                            Run the following command to fetch X-Ray traces by ID.
                            $ sam traces --trace-id tracing-id-1 --trace-id tracing-id-2
                            
                            Run the following command to tail X-Ray traces as they become available.
                            $ sam traces --tail
                          "%
                          | optional,
                        validate
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {
                                parameters
                                  | {
                                    beta_features
                                      | Bool
                                      | doc "Enable/Disable beta features."
                                      | optional,
                                    debug
                                      | Bool
                                      | doc "Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps."
                                      | optional,
                                    lint
                                      | Bool
                                      | doc "Run linting validation on template through cfn-lint. Create a cfnlintrc config file to specify additional parameters. For more information, see: https://github.com/aws-cloudformation/cfn-lint"
                                      | optional,
                                    profile
                                      | String
                                      | doc "Select a specific profile from your credential file to get AWS credentials."
                                      | optional,
                                    region
                                      | String
                                      | doc "Set the AWS Region of the service. (e.g. us-east-1)"
                                      | optional,
                                    save_params
                                      | Bool
                                      | doc "Save the parameters provided via the command line to the configuration file."
                                      | optional,
                                    template_file
                                      | String
                                      | doc "AWS SAM template file."
                                      | optional,
                                    ..
                                  }
                                  | doc m%"
                                    Available parameters for the validate command:
                                    * template_file:
                                    AWS SAM template file.
                                    * profile:
                                    Select a specific profile from your credential file to get AWS credentials.
                                    * region:
                                    Set the AWS Region of the service. (e.g. us-east-1)
                                    * beta_features:
                                    Enable/Disable beta features.
                                    * debug:
                                    Turn on debug logging to print debug message generated by AWS SAM CLI and display timestamps.
                                    * lint:
                                    Run linting validation on template through cfn-lint. Create a cfnlintrc config file to specify additional parameters. For more information, see: https://github.com/aws-cloudformation/cfn-lint
                                    * save_params:
                                    Save the parameters provided via the command line to the configuration file.
                                  "%,
                                ..
                              },
                              Array Dyn
                            ]
                          | doc "Validate an AWS SAM Template."
                          | optional,
                        ..
                      },
                      Array Dyn
                    ],
            },
        properties = { version = Number, },
        required = { version = true, },
      }