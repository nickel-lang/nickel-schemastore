# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.autoDeployTrigger" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'checksPass, 'commit, 'off |] ],
      "definitions.buildFilter" =
        {
            ignoredPaths
              | Array String
              | doc "File paths to ignore when determining whether to trigger a build, even if they match a path in 'paths'. Uses glob syntax."
              | optional,
            paths
              | Array String
              | doc "File paths to include when determining whether to trigger a build. Uses glob syntax."
              | optional,
            ..
          },
      "definitions.cronService" =
        {
            autoDeploy
              | Bool
              | doc "Whether to automatically deploy the service when the linked branch is updated."
              | optional,
            autoDeployTrigger
              | refs."definitions.autoDeployTrigger"
              | String
              | optional,
            branch
              | String
              | doc "The branch of the linked repo to use. If omitted, uses the repo's default branch."
              | optional,
            buildCommand
              | String
              | doc "The command that Render runs to build your service."
              | optional,
            buildFilter
              | refs."definitions.buildFilter"
              | { _ | Dyn }
              | optional,
            dockerCommand
              | String
              | doc "The command to run when starting the Docker-based service. If omitted, uses the CMD defined in the Dockerfile."
              | optional,
            dockerContext
              | String
              | doc "The path to the service's Docker build context, relative to the repo root."
              | optional,
            dockerfilePath
              | String
              | doc "The path to the service's Dockerfile, relative to the repo root."
              | optional,
            envVars
              | Array refs."definitions.envVar"
              | doc "Environment variables for the service."
              | optional,
            image | refs."definitions.image" | { _ | Dyn } | optional,
            name
              | String
              | doc "The service's name. Must be unique within the Blueprint.",
            plan | refs."definitions.plan" | String | optional,
            region | refs."definitions.region" | String | optional,
            registryCredential
              | refs."definitions.registryCredential"
              | optional,
            repo
              | String
              | doc "The URL of the GitHub/GitLab repo to use. If omitted, uses the repo containing the render.yaml file."
              | optional,
            rootDir
              | String
              | doc "The service's root directory within its repo. If omitted, uses the repo's root directory."
              | optional,
            runtime | refs."definitions.runtime" | String,
            schedule
              | String
              | doc "The schedule for running the cron job, as a cron expression.",
            startCommand
              | String
              | doc "The command that Render runs to start your service."
              | optional,
            type
              | std.contract.Equal "cron"
              | doc "The type of service. Must be 'cron' for cron jobs.",
          },
      "definitions.database" =
        {
            databaseName
              | String
              | doc "The name of your database within the PostgreSQL instance. If omitted, Render automatically generates a name based on the instance name."
              | optional,
            diskSizeGB | refs."definitions.diskSizeGB" | Number | optional,
            highAvailability
              | {
                enabled
                  | Bool
                  | doc "Whether to enable high availability for the database.",
              }
              | doc "High availability configuration for the database."
              | optional,
            ipAllowList | refs."definitions.ipAllowList" | Array Dyn | optional,
            name
              | String
              | doc "The PostgreSQL instance's name. Must be unique within the Blueprint.",
            plan | refs."definitions.plan" | String | optional,
            postgresMajorVersion
              | std.enum.TagOrString
              | [| '"16", '"15", '"14", '"13", '"12", '"11", '"10" |]
              | doc "What major version of PostgreSQL the database will use. Please refer to https://render.com/docs/postgresql-upgrading#version-support for which versions may be valid for this owner."
              | optional,
            previewDiskSizeGB
              | refs."definitions.diskSizeGB"
              | Number
              | doc "The disk size to use for this database in preview environments. If omitted, preview instances use the same disk size as the primary database (specified by `diskSizeGB`)."
              | optional,
            previewPlan
              | refs."definitions.plan"
              | String
              | doc "The instance type to use for this database in preview environments."
              | optional,
            readReplicas
              | Array (
                std.contract.Sequence
                  [ refs."definitions.readReplica", { _ | Dyn } ]
              )
              | doc "Read replicas for the database instance."
              | optional,
            region | refs."definitions.region" | String | optional,
            user
              | String
              | doc "The name of the PostgreSQL user to create for your instance. If omitted, Render automatically generates a name based on the instance name."
              | optional,
          },
      "definitions.disk" =
        {
            mountPath
              | String
              | doc "The path where the disk will be mounted in the service.",
            name | String | doc "The name of the disk.",
            sizeGB
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The size of the disk in GB. Defaults to 10 if omitted."
              | optional,
          },
      "definitions.diskSizeGB" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.envVar" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.envVarFromKeyValue", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.envVarFromDatabase", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.envVarFromService", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.envVarFromGroup", { _ | Dyn } ]
            ],
      "definitions.envVarFromDatabase" =
        {
            fromDatabase
              | {
                name | String | doc "The name of the database to reference.",
                property
                  | String
                  | doc "The property of the database to reference (e.g., connectionString, host, port, user, password, database).",
                ..
              }
              | doc "Reference to a database property.",
            key | String | doc "The name of the environment variable.",
          },
      "definitions.envVarFromGroup" =
        {
            fromGroup
              | String
              | doc "The name of the environment group to reference.",
          },
      "definitions.envVarFromKeyValue" =
        {
            generateValue
              | Bool
              | doc "Whether to generate a base64-encoded 256-bit value for this environment variable."
              | optional,
            key | String | doc "The name of the environment variable.",
            previewValue
              | std.contract.any_of [ Number, String ]
              | doc "The value to use for this environment variable in preview environments."
              | optional,
            sync
              | Bool
              | doc "Whether to prompt for a value in the Render Dashboard during Blueprint creation. Set to false for secrets."
              | optional,
            value
              | std.contract.any_of [ Number, String ]
              | doc "The value of the environment variable."
              | optional,
          },
      "definitions.envVarFromService" =
        {
            fromService
              | {
                envVarKey
                  | String
                  | doc "The environment variable key to reference from the service."
                  | optional,
                name | String | doc "The name of the service to reference.",
                property
                  | String
                  | doc "The property of the service to reference (e.g., host, port, hostport, connectionString)."
                  | optional,
                type
                  | refs."definitions.serviceType"
                  | String
                  | doc "The type of the service to reference.",
                ..
              }
              | doc "Reference to another service.",
            key | String | doc "The name of the environment variable.",
          },
      "definitions.envVarGroup" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                envVars
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.envVarFromKeyValue", { _ | Dyn } ]
                  )
                  | doc "The environment variables in this group.",
                name | String | doc "The name of the environment group.",
              },
              Array Dyn
            ],
      "definitions.header" =
        {
            name | String | doc "The name of the HTTP header.",
            path
              | String
              | doc "The path pattern for which this header should be applied.",
            value | String | doc "The value of the HTTP header.",
            ..
          },
      "definitions.image" =
        {
            creds
              | refs."definitions.registryCredential"
              | doc "Registry credentials for accessing private images."
              | optional,
            url | String | doc "The URL of the Docker image to pull.",
          },
      "definitions.ipAllowList" =
        Array
            {
              description
                | String
                | doc "Optional description for this IP allow list entry."
                | optional,
              source
                | String
                | doc "The IP address or CIDR block to allow access from.",
              ..
            },
      "definitions.plan" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'accelerated-1024gb,
                'accelerated-768gb,
                'accelerated-512gb,
                'accelerated-384gb,
                'accelerated-256gb,
                'accelerated-128gb,
                'accelerated-64gb,
                'accelerated-32gb,
                'accelerated-16gb,
                'pro-512gb,
                'pro-384gb,
                'pro-256gb,
                'pro-192gb,
                'pro-128gb,
                'pro-64gb,
                'pro-32gb,
                'pro-16gb,
                'pro-8gb,
                'pro-4gb,
                'basic-4gb,
                'basic-1gb,
                'basic-256mb,
                '"pro ultra",
                '"pro max",
                '"pro plus",
                'pro,
                'standard,
                'starter,
                'free
              |]
            ],
      "definitions.previewsGeneration" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'off, 'manual, 'automatic |] ],
      "definitions.readReplica" =
        { name | String | doc "The name of the read replica." | optional, },
      "definitions.redisServer" =
        {
            ipAllowList | refs."definitions.ipAllowList" | Array Dyn,
            maxmemoryPolicy
              | String
              | doc "The Key Value instance's eviction policy for when it reaches its maximum memory limit."
              | optional,
            name
              | String
              | doc "The Key Value instance's name. Must be unique within the Blueprint.",
            plan | refs."definitions.plan" | String | optional,
            previewPlan
              | refs."definitions.plan"
              | String
              | doc "The instance type to use for this Key Value instance in preview environments."
              | optional,
            region | refs."definitions.region" | String | optional,
            type
              | std.contract.Equal "redis"
              | doc "The type of service. Must be 'redis' for Key Value instances (deprecated alias for 'keyvalue').",
          },
      "definitions.region" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'virginia, 'singapore, 'frankfurt, 'ohio, 'oregon |]
            ],
      "definitions.registryCredential" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                fromRegistryCreds
                  | {
                    name
                      | String
                      | doc "The name of the registry credential configured in your workspace.",
                  }
                  | doc "Reference to registry credentials configured in your workspace.",
              },
              Array Dyn
            ],
      "definitions.rootPreviews" =
        {
            expireAfterDays
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The number of days to retain a preview environment that receives no updates."
              | optional,
            generation
              | refs."definitions.previewsGeneration"
              | String
              | doc "The generation mode to use for preview environments."
              | optional,
          },
      "definitions.route" =
        {
            destination
              | String
              | doc "The destination path for the redirect or rewrite.",
            source | String | doc "The source path pattern to match.",
            type
              | std.enum.TagOrString
              | [| 'rewrite, 'redirect |]
              | doc "The type of route rule.",
            ..
          },
      "definitions.runtime" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'static,
                'rust,
                'ruby,
                'python,
                'node,
                'image,
                'go,
                'elixir,
                'docker
              |]
            ],
      "definitions.serverService" =
        {
            autoDeploy
              | Bool
              | doc "Whether to automatically deploy the service when the linked branch is updated."
              | optional,
            autoDeployTrigger
              | refs."definitions.autoDeployTrigger"
              | String
              | optional,
            branch
              | String
              | doc "The branch of the linked repo to use. If omitted, uses the repo's default branch."
              | optional,
            buildCommand
              | String
              | doc "The command that Render runs to build your service."
              | optional,
            buildFilter
              | refs."definitions.buildFilter"
              | { _ | Dyn }
              | optional,
            disk | refs."definitions.disk" | { _ | Dyn } | optional,
            dockerCommand
              | String
              | doc "The command to run when starting the Docker-based service. If omitted, uses the CMD defined in the Dockerfile."
              | optional,
            dockerContext
              | String
              | doc "The path to the service's Docker build context, relative to the repo root."
              | optional,
            dockerfilePath
              | String
              | doc "The path to the service's Dockerfile, relative to the repo root."
              | optional,
            domain | String | doc "A custom domain for the service." | optional,
            domains
              | Array String
              | doc "A list of custom domains for the service."
              | optional,
            envVars
              | Array refs."definitions.envVar"
              | doc "Environment variables for the service."
              | optional,
            healthCheckPath
              | String
              | doc "The path of the service's health check endpoint for zero-downtime deploys."
              | optional,
            image | refs."definitions.image" | { _ | Dyn } | optional,
            initialDeployHook
              | String
              | doc "A command to run during the service's first deploy."
              | optional,
            maxShutdownDelaySeconds
              | std.number.Integer
              | js2n.number.Maximum 300
              | js2n.number.Minimum 1
              | doc "The maximum time (in seconds) that Render waits for your application to exit gracefully after sending a SIGTERM signal."
              | optional,
            name
              | String
              | doc "The service's name. Must be unique within the Blueprint.",
            numInstances
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "For a manually scaled service, the number of instances to scale the service to."
              | optional,
            plan | refs."definitions.plan" | String | optional,
            preDeployCommand
              | String
              | doc "Command that runs after the build command but before the start command. Recommended for database migrations."
              | optional,
            previewPlan
              | refs."definitions.plan"
              | String
              | doc "The instance type to use for previews. Deprecated - use previews.plan instead."
              | optional,
            previews
              | refs."definitions.servicePreviews"
              | { _ | Dyn }
              | optional,
            pullRequestPreviewsEnabled
              | Bool
              | doc "Whether to enable pull request previews for the service. Deprecated - use previews.generation instead."
              | optional,
            region | refs."definitions.region" | String | optional,
            registryCredential
              | refs."definitions.registryCredential"
              | optional,
            repo
              | String
              | doc "The URL of the GitHub/GitLab repo to use. If omitted, uses the repo containing the render.yaml file."
              | optional,
            rootDir
              | String
              | doc "The service's root directory within its repo. If omitted, uses the repo's root directory."
              | optional,
            runtime | refs."definitions.runtime" | String,
            scaling
              | {
                maxInstances
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "The maximum number of instances for autoscaling."
                  | optional,
                minInstances
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "The minimum number of instances for autoscaling."
                  | optional,
                targetCPUPercent
                  | std.number.Integer
                  | js2n.number.Maximum 90
                  | js2n.number.Minimum 1
                  | doc "The target CPU utilization percentage for autoscaling."
                  | optional,
                targetMemoryPercent
                  | std.number.Integer
                  | js2n.number.Maximum 90
                  | js2n.number.Minimum 1
                  | doc "The target memory utilization percentage for autoscaling."
                  | optional,
                ..
              }
              | doc "Autoscaling configuration for the service."
              | optional,
            startCommand
              | String
              | doc "The command that Render runs to start your service."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'pserv, 'worker, 'web |]
              | doc "The type of service.",
          },
      "definitions.servicePreviews" =
        {
            generation
              | refs."definitions.previewsGeneration"
              | String
              | doc "The preview generation mode for this service's pull request previews."
              | optional,
            plan
              | refs."definitions.plan"
              | String
              | doc "The instance type to use for this service in preview environments."
              | optional,
          },
      "definitions.serviceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'keyvalue,
                'redis,
                'job,
                'dpg,
                'static,
                'pserv,
                'worker,
                'cron,
                'web
              |]
            ],
      "definitions.staticService" =
        {
            autoDeploy
              | Bool
              | doc "Whether to automatically deploy the static site when the linked branch is updated."
              | optional,
            autoDeployTrigger
              | refs."definitions.autoDeployTrigger"
              | String
              | optional,
            branch
              | String
              | doc "The branch of the linked repo to use. If omitted, uses the repo's default branch."
              | optional,
            buildCommand
              | String
              | doc "The command that Render runs to build your static site."
              | optional,
            buildFilter
              | refs."definitions.buildFilter"
              | { _ | Dyn }
              | optional,
            domain
              | String
              | doc "A custom domain for the static site."
              | optional,
            domains
              | Array String
              | doc "A list of custom domains for the static site."
              | optional,
            envVars
              | Array refs."definitions.envVar"
              | doc "Environment variables for the static site build process."
              | optional,
            headers
              | Array (
                std.contract.Sequence [ refs."definitions.header", { _ | Dyn } ]
              )
              | doc "HTTP response headers configuration for the static site."
              | optional,
            name
              | String
              | doc "The service's name. Must be unique within the Blueprint.",
            previews
              | refs."definitions.staticServicePreviews"
              | { _ | Dyn }
              | optional,
            pullRequestPreviewsEnabled
              | Bool
              | doc "Whether to enable pull request previews for the static site. Deprecated - use previews.generation instead."
              | optional,
            repo
              | String
              | doc "The URL of the GitHub/GitLab repo to use. If omitted, uses the repo containing the render.yaml file."
              | optional,
            rootDir
              | String
              | doc "The service's root directory within its repo. If omitted, uses the repo's root directory."
              | optional,
            routes
              | Array (
                std.contract.Sequence [ refs."definitions.route", { _ | Dyn } ]
              )
              | doc "Redirect and rewrite routes configuration for the static site."
              | optional,
            runtime
              | std.contract.Equal "static"
              | doc "The runtime for the service. Must be 'static' for static sites."
              | optional,
            staticPublishPath
              | String
              | doc "The path to the directory that contains the static files to publish, relative to the repo root."
              | optional,
            type
              | std.contract.Equal "web"
              | doc "The type of service. Must be 'web' for static sites.",
          },
      "definitions.staticServicePreviews" =
        {
            generation
              | refs."definitions.previewsGeneration"
              | String
              | doc "The preview generation mode for this static site's pull request previews."
              | optional,
          },
    }
    in
  {
      databases
        | Array refs."definitions.database"
        | doc "A list of PostgreSQL databases to manage with the Blueprint."
        | optional,
      envVarGroups
        | Array refs."definitions.envVarGroup"
        | doc "A list of environment groups to manage with the Blueprint."
        | optional,
      previews
        | refs."definitions.rootPreviews"
        | doc "Preview environment configuration for the Blueprint."
        | optional,
      previewsEnabled
        | Bool
        | doc "Whether to enable preview environments. Deprecated - use previews.generation instead."
        | optional,
      previewsExpireAfterDays
        | std.number.Integer
        | js2n.number.Minimum 1
        | doc "Number of days to retain preview environments. Deprecated - use previews.expireAfterDays instead."
        | optional,
      services
        | Array (
          std.contract.any_of
            [
              refs."definitions.redisServer",
              refs."definitions.cronService",
              refs."definitions.serverService",
              refs."definitions.staticService"
            ]
        )
        | doc "A list of non-PostgreSQL services to manage with the Blueprint."
        | optional,
      version
        | std.contract.Equal "1"
        | doc "The version of the Blueprint specification."
        | optional,
    }