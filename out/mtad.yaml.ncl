# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.generic-memory" =
        js2n.string.Matches "^[1-9][0-9]*(M|MB|G|GB|m|mb|g|gb)$",
      "definitions.hooks" =
        Array
            {
              name
                | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                | doc "An internal name which can be used for documentation purposes and shown by the deployer.",
              parameters
                | refs."definitions.hooks-parameters"
                | { _ | Dyn }
                | doc "Configuration parameters that are used when executing the hook to the target runtime environment."
                | optional,
              parameters-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the hook's parameters."
                | optional,
              phases
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"blue-green.application.before-start.live",
                        '"blue-green.application.before-start.idle",
                        '"deploy.application.before-start",
                        '"blue-green.application.before-unmap-routes.idle",
                        '"blue-green.application.before-unmap-routes.live",
                        '"deploy.application.before-unmap-routes",
                        '"blue-green.application.after-stop.live",
                        '"blue-green.application.after-stop.idle",
                        '"deploy.application.after-stop",
                        '"blue-green.application.before-stop.live",
                        '"blue-green.application.before-stop.idle",
                        '"deploy.application.before-stop"
                      |]
                    ]
                )
                | doc "A list of strings that define the points at which the hook must be executed."
                | optional,
              requires
                | Array
                  {
                    name
                      | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                      | doc "An MTA internal name which must match either a provided name, or a resource name within the same MTA.",
                    parameters
                      | { _ | Dyn }
                      | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the hook at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                      | optional,
                    parameters-metadata
                      | refs."definitions.properties-metadata"
                      | { _ | Dyn }
                      | doc "Additional information about the hook's parameters."
                      | optional,
                    ..
                  }
                | doc "List of names either matching a resource name or a provided dependency name provided within the same MTA that are required by this hook."
                | optional,
              type
                | std.enum.TagOrString
                | [| 'task |]
                | doc "Defines the type of action that should be executed by the deployer.",
              ..
            },
      "definitions.hooks-parameters" =
        {
            command
              | String
              | doc "Defines the actual command that is executed as a Cloud Foundry task.",
            disk-quota
              | refs."definitions.generic-memory"
              | String
              | doc "Defines the disk space that is available to the Cloud Foundry task."
              | optional,
            memory
              | refs."definitions.generic-memory"
              | String
              | doc "Defines the memory that is available to the Cloud Foundry task."
              | optional,
            name
              | String
              | doc "Defines the name of the Cloud Foundry task that should be executed."
              | optional,
            ..
          },
      "definitions.module-parameters" =
        {
            app-name
              | String
              | doc "The name of the application in the Cloud Foundry environment to be deployed for this module, based on the module name."
              | optional,
            apply-namespace
              | Bool
              | doc "Apply namespace to application name."
              | optional,
            buildpack
              | String
              | doc "The name or the URL of a custom buildpack required by the application."
              | optional,
            buildpacks
              | refs."definitions.module-parameters-buildpacks"
              | Array Dyn
              | doc "An array of buildpacks. If a buildpack parameter already exists, it will be overwritten by the buildpacks listed in the buildpacks parameter, so that you have to include it in the array."
              | optional,
            command
              | String
              | doc "A custom command required to start the application."
              | optional,
            create-service-broker
              | Bool
              | doc "Specifies whether [true|false] a service broker should be registered for the application module; default value is: false."
              | optional,
            dependency-type
              | std.enum.TagOrString
              | [| 'soft, 'hard |]
              | doc "Defines the memory allocated to the application."
              | optional,
            disk-quota
              | refs."definitions.generic-memory"
              | String
              | doc "The disk space that will be available to the application. This parameter requires a unit of measurement M, MB, G, or GB in upper or lower case."
              | optional,
            docker
              | refs."definitions.module-parameters-docker"
              | { _ | Dyn }
              | doc "Creates a module from a docker image. When using a docker image parameter, we do not need to specify the module in the MANIFEST.mf file.When uploading a docker image, the content of a module is not needed."
              | optional,
            domain
              | String
              | doc "The domain on which the application will be available later."
              | optional,
            domains
              | refs."definitions.module-parameters-domains"
              | Array Dyn
              | doc "The domains on which the application will be available later. The resulting application routes will be the Cartesian product of the domains and hosts. That is, a separate route for each host is constructed on each domain."
              | optional,
            enable-ssh
              | Bool
              | doc "Enables use of SSH within an application. Supported for the Diego container runtime environment only."
              | optional,
            health-check-http-endpoint
              | js2n.string.Matches "^/.+"
              | doc "A http health check defaults to using '/' as its endpoint, but you can specify a custom endpoint."
              | optional,
            health-check-invocation-timeout
              | std.number.Integer
              | doc "The timeout in seconds for individual health check requests for http and port health checks."
              | optional,
            health-check-timeout
              | std.number.Integer
              | doc "The timeout is the amount of time (in seconds) allowed to elapse between starting up an app and the first healthy response."
              | optional,
            health-check-type
              | std.enum.TagOrString
              | [| 'http, 'process, 'port |]
              | doc "Defines how the module will be monitored for availability."
              | optional,
            host
              | String
              | doc "The hostname or subdomain where an application is available later."
              | optional,
            hosts
              | refs."definitions.module-parameters-hosts"
              | Array Dyn
              | doc "The hostnames or subdomain where an application is available later."
              | optional,
            idle-domain
              | String
              | doc "The idle domain on which the idle application will be available during blue-green deploy."
              | optional,
            idle-domains
              | refs."definitions.module-parameters-domains"
              | Array Dyn
              | doc "The domains on which the idle application will be available during blue-green deploy. The resulting application routes will be the Cartesian product of the domains and hosts. That is, a separate route for each host is constructed on each domain."
              | optional,
            idle-host
              | String
              | doc "The hostname or subdomain where the idle application will be available during blue-green deploy."
              | optional,
            idle-hosts
              | refs."definitions.module-parameters-hosts"
              | Array Dyn
              | doc "The hostnames or subdomain where the idle application will be available during blue-green deploy."
              | optional,
            instances
              | js2n.number.Minimum 0
              | doc "The number of application instances that will be started during the deployment."
              | optional,
            keep-existing
              | refs."definitions.module-parameters-keep-existing"
              | { _ | Dyn }
              | doc "Defines the application attributes which will be kept after the deployment or blue-green deployment has finished. The supported attributes which could be kept are application environment, application bindings and application routes. If not specified, the default values are false, which indicates that each application attribute will be updated with the new values presented in the deployment descriptor."
              | optional,
            keep-existing-routes
              | Bool
              | doc "When specified on module level, it indicates if the existing routes of the module's corresponding application should be kept even if they are not defined within the deployment and/or extension descriptors.When specified on global level, under the parameters section of the descriptor, it indicates if the existing routes of all applications within that MTA should be kept.The module-level variant of the parameter has priority over the global parameter.This parameter is typically used when users want to keep the routes they have mapped manually by using the cf map-route command. We discourage this approach, as manual operations could lead to inconsistent deployment results and difficult troubleshooting. We recommend you to define all routes in the deployment and/or extension descriptors, which allows for their automatic management."
              | optional,
            memory
              | refs."definitions.generic-memory"
              | String
              | doc "Defines the memory allocated to the application."
              | optional,
            no-route
              | Bool
              | doc "Defines if a route should be assigned to the application."
              | optional,
            no-start
              | Bool
              | doc "Start/do not start the application during deployment. This parameter setting overrides the command-line option --no-start. If you explicitly set the no-start to false for the module foo in the example provided, then the module foo is started on deployment, even if you also specify the command-line option --no-start with the cf deploy command."
              | optional,
            restart-on-env-change
              | refs."definitions.module-parameters-restart-on-env-change"
              | Array Dyn
              | doc "Specifies whether an application should be restarted if an environment variable has been changed in one of the following categories: vcap-application, vcap-services, user-provided. If you set these parameters to false, the changes in environment are not consumable by a running instances of the application. If your application depends on the latest environment, it might become outdated."
              | optional,
            routes
              | refs."definitions.module-parameters-routes"
              | Array Dyn
              | doc "A parameter that lists multiple HTTP routes. It is a combination of the old parameters host, domain, port and route-path, which encompasses the full addresses to which to bind a module. In case the new routes parameter and the old ones are available, the routes value is used and the values of the old parameters are ignored. Each route for the application is created if it does not already exist. A routes parameter consists of one or many HTTP routes following the pattern myhost.my.domain/path"
              | optional,
            service-broker-name
              | String
              | doc "The name of the service broker in the Cloud Foundry environment to be created and registered for the specified application module."
              | optional,
            service-broker-password
              | String
              | doc "The password used for authentication by the XS controller at the service broker when performing service-related requests. The parameter is mandatory if create-service-broker: true."
              | optional,
            service-broker-space-scoped
              | Bool
              | doc "Makes the service plans of the broker visible only within the targeted space."
              | optional,
            service-broker-url
              | String
              | doc "Specifies the value of the service broker universal resource locator (URL) to register; service requests are sent to this URL. The parameter is mandatory if create-service-broker: true."
              | optional,
            service-broker-user
              | String
              | doc "The name of the user required for authentication by the XS controller at the service broker when performing service-related requests. The parameter is mandatory if create-service-broker: true."
              | optional,
            stack
              | String
              | doc "Use this parameter to define which prebuilt root file system (rootfs) you want to use."
              | optional,
            stage-timeout
              | js2n.number.Minimum 0
              | doc "Defines how long, in seconds, your application can take during staging before the MTA operation times out."
              | optional,
            start-timeout
              | js2n.number.Minimum 0
              | doc "Defines how long, in seconds, your application can take to start before the MTA operation times out."
              | optional,
            task-execution-timeout
              | js2n.number.Minimum 0
              | doc "Defines how long, in seconds, your application can take to execute a task before the MTA operation times out."
              | optional,
            tasks
              | refs."definitions.module-parameters-tasks"
              | Array Dyn
              | doc "Specify tasks, which are available for execution in the current droplet of the application. Also provide use of environment variables which are specified with the env scope."
              | optional,
            upload-timeout
              | js2n.number.Minimum 0
              | doc "Defines how long, in seconds, you can upload your application binary before the MTA operation times out."
              | optional,
            ..
          },
      "definitions.module-parameters-buildpacks" = Array String,
      "definitions.module-parameters-docker" =
        {
            image
              | String
              | doc "An image parameter is a docker image from the Docker Hub or somewhere else. eg. cloudfoundry/test-app"
              | optional,
            password
              | String
              | doc "The password is optional, but if a Docker image from a private repository is uploaded, then it is mandatory."
              | optional,
            username
              | String
              | doc "The username is optional, but if a Docker image from a private repository is uploaded, then it is mandatory."
              | optional,
            ..
          },
      "definitions.module-parameters-domains" = Array String,
      "definitions.module-parameters-hosts" = Array String,
      "definitions.module-parameters-keep-existing" =
        {
            env | Bool | doc "Keep the existing environment" | optional,
            routes | Bool | doc "Keep the existing routes" | optional,
            service-bindings
              | Bool
              | doc "Keep the existing Service bindings"
              | optional,
            ..
          },
      "definitions.module-parameters-restart-on-env-change" =
        Array (
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  user-provided
                    | Bool
                    | doc "Restart on user-provided env change"
                    | optional,
                  vcap-application
                    | Bool
                    | doc "Restart on vcap-application env change"
                    | optional,
                  vcap-services
                    | Bool
                    | doc "Restart on vcap-services env change"
                    | optional,
                  ..
                },
                Array Dyn
              ]
          ),
      "definitions.module-parameters-routes" =
        Array
            {
              apply-namespace
                | Bool
                | doc "Apply namespace to application routes."
                | optional,
              no-hostname | Bool | optional,
              protocol | std.enum.TagOrString | [| 'http2, 'http1 |] | optional,
              route | String,
              ..
            },
      "definitions.module-parameters-tasks" =
        Array
            {
              command | String | doc "The command to be executed.",
              disk-quota
                | refs."definitions.generic-memory"
                | String
                | doc "Defines the disk space that is available to the Cloud Foundry task."
                | optional,
              memory
                | refs."definitions.generic-memory"
                | String
                | doc "Defines the memory that is available to the Cloud Foundry task."
                | optional,
              name | String | doc "The task name.",
              ..
            },
      "definitions.module-provides" =
        Array
            {
              name
                | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                | doc "An MTA internal name which can used by a requiring module.",
              parameters
                | refs."definitions.module-provides-parameters"
                | { _ | Dyn }
                | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the module at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                | optional,
              parameters-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the provided dependency's parameters."
                | optional,
              properties
                | { _ | Dyn }
                | doc "Property names and values make up the configuration data which is to be provided to requiring modules at runtime"
                | optional,
              properties-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the provided dependency's properties."
                | optional,
              public
                | Bool
                | doc "Indicates, that the provided properties shall be made publicly available by the deployer. Default value is false."
                | optional,
              ..
            },
      "definitions.module-provides-parameters" =
        {
            visibility
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.resource-configuration-target",
                    { _ | Dyn }
                  ]
              )
              | optional,
            ..
          },
      "definitions.module-requires" =
        Array
            {
              list
                | String
                | doc "All required and found configuration data sets will be assembled into a JSON array and provided to the module by the lookup name as specified by the value of 'list'."
                | optional,
              name
                | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                | doc "An MTA internal name which must match either a provided name, a resource name, or a module name within the same MTA.",
              parameters
                | refs."definitions.module-requires-parameters"
                | { _ | Dyn }
                | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the module at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                | optional,
              parameters-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the required dependency's parameters."
                | optional,
              properties
                | { _ | Dyn }
                | doc "Required properties can be mapped from provided properties. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                | optional,
              properties-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the required dependency's properties."
                | optional,
              ..
            },
      "definitions.module-requires-parameters" =
        {
            binding-name
              | String
              | doc "Provide a binding name for the association between an application and a service instance."
              | optional,
            content-target
              | Bool
              | doc "Specify that the resource would be used as a target for the module content deployment."
              | optional,
            ..
          },
      "definitions.module-type" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'staticfile,
                    'ruby,
                    'python,
                    'php,
                    'nodejs,
                    '"javascript.nodejs",
                    '"java.tomee",
                    '"java.tomcat",
                    'java,
                    'go,
                    'dotnet_core,
                    'custom,
                    '"com.sap.xs.hdi-dynamic",
                    '"com.sap.xs.hdi",
                    '"com.sap.portal.site-content",
                    '"com.sap.html5.application-content",
                    '"com.sap.application.content",
                    'business-logging,
                    'binary,
                    'application
                  |]
                ],
              String
            ],
      "definitions.properties-metadata" =
        {
            _ | {
              "optional" | Bool | doc "Default value is false." | optional,
              overwritable | Bool | doc "Default value is true." | optional,
              ..
            }
          },
      "definitions.resource-configuration-target" =
        {
            org
              | String
              | doc "The org in which the configuration will be looked for"
              | optional,
            space
              | String
              | doc "The space in which the configuration will be looked for"
              | optional,
            ..
          },
      "definitions.resource-fail-on-service-update" =
        {
            parameters
              | Bool
              | doc "Specifies whether the deployment should fail if updating the service instance parameters fails."
              | optional,
            plan
              | Bool
              | doc "Specifies whether the deployment should fail if updating the service plan fails."
              | optional,
            tags
              | Bool
              | doc "Specifies whether the deployment should fail if updating the service tags fails."
              | optional,
            ..
          },
      "definitions.resource-parameters" =
        {
            apply-namespace
              | Bool
              | doc "Apply namespace to service name."
              | optional,
            config
              | { _ | Dyn }
              | doc "Map value, containing the service creation configuration, for example, url and user credentials (user and password)."
              | optional,
            fail-on-service-update
              | refs."definitions.resource-fail-on-service-update"
              | { _ | Dyn }
              | doc "Map value specifying which service components (parameters, plan, tags) should cause the deployment to fail if their update fails."
              | optional,
            provider-id
              | String
              | doc "The resource from the provider MTA <mta-id>:<mta-provides-dependency-name>."
              | optional,
            provider-nid
              | std.enum.TagOrString
              | [| 'mta |]
              | doc "When used for cross-MTA dependency resolution the provider-nid is always 'mta'."
              | optional,
            service
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'postgresql,
                        'objectstore,
                        'mongodb,
                        'ml-foundation-services,
                        'redis,
                        'feature-flags,
                        'destination,
                        'connectivity,
                        'xsuaa,
                        'jobscheduler,
                        'hana,
                        'fs-storage,
                        'portal-services,
                        'autoscaler,
                        'rabbitmq,
                        'auditlog,
                        'application-logs
                      |]
                    ],
                  String
                ]
              | doc "Name of the service to create."
              | optional,
            service-broker
              | String
              | doc "The name of the service broker to be used."
              | optional,
            service-key-name
              | String
              | doc "Used when consuming an existing service key. Specifies the name of the service key. See Consumption of existing service keys for more information."
              | optional,
            service-name
              | String
              | doc "Service instance name. Default value is the resource name."
              | optional,
            service-plan
              | String
              | doc "Name of the service plan to be used."
              | optional,
            service-tags
              | Array String
              | doc "Some services employ a list of custom tags, which provide an easier way for applications to parse <VCAP_SERVICES> for credentials. You can provide custom tags when creating a service instance. For more information, see Service Tags."
              | optional,
            siteId
              | String
              | doc "A globally unique ID (GUID) for your Fiori LaunchPad site."
              | optional,
            skip-service-updates
              | refs."definitions.resource-skip-service-updates"
              | { _ | Dyn }
              | doc "Map value, containing the service components (parameters, plan, tags) to skip when updating a service."
              | optional,
            syslog-drain-url
              | String
              | doc "URL to which logs for bound applications are streamed."
              | optional,
            target
              | refs."definitions.resource-configuration-target"
              | { _ | Dyn }
              | doc "The name of the organization and space in which the provider MTA is deployed."
              | optional,
            version
              | js2n.string.Matches
                "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(-(0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(\\.(0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*)?(\\+[0-9a-zA-Z-]+(\\.[0-9a-zA-Z-]+)*)?$"
              | doc "The version of the provider MTA."
              | optional,
            ..
          },
      "definitions.resource-requires" =
        Array
            {
              name
                | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                | doc "An MTA internal name which must match either a provided name, or a resource name within the same MTA.",
              parameters
                | { _ | Dyn }
                | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the resource at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                | optional,
              parameters-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the required dependency's parameters."
                | optional,
              properties
                | { _ | Dyn }
                | doc "Required properties can be mapped from provided properties. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                | optional,
              properties-metadata
                | refs."definitions.properties-metadata"
                | { _ | Dyn }
                | doc "Additional information about the required dependency's properties."
                | optional,
              ..
            },
      "definitions.resource-skip-service-updates" =
        {
            parameters
              | Bool
              | doc "The configuration parameters which will be passed to the service broker."
              | optional,
            plan | Bool | doc "The service plan." | optional,
            syslog-drain-url
              | Bool
              | doc "URL to which logs for bound applications are streamed."
              | optional,
            tags
              | Bool
              | doc "The custom tags for a service instance."
              | optional,
            ..
          },
      "definitions.resource-type" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'configuration,
                    '"org.cloudfoundry.user-provided-service",
                    '"org.cloudfoundry.existing-service-key",
                    '"org.cloudfoundry.existing-service",
                    '"org.cloudfoundry.managed-service"
                  |]
                ],
              String
            ],
    }
    in
  {
      ID
        | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
        | doc "A globally unique ID of this MTA. Unlimited string of unicode characters.",
      _schema-version
        | js2n.string.Matches "^(\\d+\\.)?(\\d+\\.)?(\\*|\\d+)$"
        | doc "Used to indicate to an MTA processing tool (e.g. a deployer), which schema version was taken as the base when authoring a descriptor.",
      copyright
        | String
        | doc "A copyright statement from the provider."
        | optional,
      description
        | String
        | doc "A non-translatable description of this MTA. This is not a text for application users."
        | optional,
      hooks
        | refs."definitions.hooks"
        | doc "A list of hooks that will be executed for the MTA."
        | optional,
      module-types
        | Array
          {
            extends
              | String
              | doc "The name of the extended type. Can be another module type defined in this descriptor or one of the default types supported by the deployer.",
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc " An MTA internal name of the module type that will be specified in the 'type' element of modules consuming it.",
            parameters
              | { _ | Dyn }
              | doc "Configuration parameters that will be inherited in all modules of this type."
              | optional,
            parameters-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the module's parameters."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A collection of key-value pairs that will be inherited by all modules of this type."
              | optional,
            properties-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the module type's properties."
              | optional,
            ..
          }
        | doc "A list of custom module type definitions that will be used by the MTA application."
        | optional,
      modules
        | Array
          {
            deployed-after
              | Array String
              | doc "A list containing the names of the modules that must be deployed prior to this one."
              | optional,
            description
              | String
              | doc "A free text describing this module."
              | optional,
            hooks
              | refs."definitions.hooks"
              | doc "A list of hooks that will be executed for the module."
              | optional,
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The module name which must be unique and cannot be the same as any provided property set or resource name.",
            parameters
              | refs."definitions.module-parameters"
              | doc "Configuration parameters that are used when deploying the module to the target runtime environment."
              | optional,
            parameters-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the module's parameters."
              | optional,
            path
              | String
              | doc "The path to a folder that contains the module artifacts."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A collection of key-value pairs that are available to the module at runtime."
              | optional,
            properties-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the module's properties."
              | optional,
            provides
              | refs."definitions.module-provides"
              | doc "List of provided names (MTA internal) to which properties can be attached"
              | optional,
            requires
              | refs."definitions.module-requires"
              | doc "List of names either matching a resource name or a name provided by another module within the same MTA that are required by this module."
              | optional,
            type
              | refs."definitions.module-type"
              | doc "The module type that defines the design-time tools for the module.",
            ..
          }
        | doc "A list of modules to be deployed by the MTA application."
        | optional,
      parameters
        | { _ | Dyn }
        | doc "Global parameters related to the MTA application."
        | optional,
      parameters-metadata
        | refs."definitions.properties-metadata"
        | doc "Additional information about the MTA's parameters."
        | optional,
      provider
        | String
        | doc "The provider or vendor of this software."
        | optional,
      resource-types
        | Array
          {
            extends
              | String
              | doc "The name of the extended type. Can be another resource type defined in this descriptor or one of the default types supported by the deployer.",
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc " An MTA internal name of the resource type that will be specified in the 'type' element of resources consuming it.",
            parameters
              | { _ | Dyn }
              | doc "Configuration parameters that will be inherited in all resources of this type."
              | optional,
            parameters-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the resource's parameters."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A collection of key-value pairs that will be inherited by all resources of this type."
              | optional,
            properties-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the resource type's properties."
              | optional,
            ..
          }
        | doc "A list of custom resource type definitions that will be used by the MTA application."
        | optional,
      resources
        | Array
          {
            active
              | Bool
              | doc "If a resource is declared to be active, it is allocated and bound according to declared requirements. Default value is true."
              | optional,
            description
              | String
              | doc "A free text describing this resource."
              | optional,
            hooks
              | refs."definitions.hooks"
              | doc "A list of hooks that will be executed for the resource."
              | optional,
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The resource name which must be unique and cannot be the same as any provided property set or resource name.",
            "optional"
              | Bool
              | doc "A resource can be declared to be optional, if the MTA can compensate for its non-existence. Default value is false."
              | optional,
            parameters
              | refs."definitions.resource-parameters"
              | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to requiring modules at runtime. Untyped resources cannot have parameters."
              | optional,
            parameters-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the resource's parameters."
              | optional,
            processed-after
              | Array String
              | doc "A list containing the names of the resources that must be processed prior to this one."
              | optional,
            properties
              | { _ | Dyn }
              | doc "Property names and values make up the configuration data which is to be provided to requiring modules at runtime."
              | optional,
            properties-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the resource's properties."
              | optional,
            requires
              | refs."definitions.resource-requires"
              | doc "List of names either matching a resource name or a name provided by another resource within the same MTA that are required by this resource."
              | optional,
            type
              | refs."definitions.resource-type"
              | doc "The resource type that defines the design-time tools for the resource."
              | optional,
            ..
          }
        | doc "A list of resources to be deployed by the MTA application."
        | optional,
      version
        | js2n.string.Matches
          "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(-(0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(\\.(0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*)?(\\+[0-9a-zA-Z-]+(\\.[0-9a-zA-Z-]+)*)?$"
        | doc "Application version. Shall follow the semantic versioning standard.",
      ..
    }