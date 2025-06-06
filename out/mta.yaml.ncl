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
                | doc "Defines the type of action that should be executed by the deployer."
                | optional,
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
      "definitions.parameters" = { _ | Dyn },
      "definitions.parameters-metadata" =
        { "optional" | Bool | optional, overwritable | Bool | optional, .. },
      "definitions.properties" = { _ | Dyn },
      "definitions.properties-metadata" =
        {
            datatype
              | std.enum.TagOrString
              | [| 'bool, 'float, 'int, 'str |]
              | optional,
            "optional" | Bool | optional,
            overwritable | Bool | optional,
            ..
          },
    }
    in
  {
      ID
        | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
        | doc "An application ID, that may contain any number of unicode characters and should be unique in the target runtime environment.",
      _schema-version
        | String
        | doc "The schema version that is being used for authoring a descriptor. The schema version should comply with the semantic versioning standard.",
      copyright
        | String
        | doc "A copyright statement from the provider."
        | optional,
      description
        | String
        | doc "A free text describing this application."
        | optional,
      includes
        | Array
          {
            name
              | String
              | doc "The name of an \"includes\" section. This name is used by a builder to generate a parameter section in the deployment descriptor.",
            path
              | String
              | doc "A path pointing to a file that contains a map of parameters, either in JSON or in YAML format.",
            ..
          }
        | doc "It is possible to define parameters in external files. The \"includes\" section is used to point to those files."
        | optional,
      modules
        | Array
          {
            build-parameters
              | { _ | Dyn }
              | doc "The build parameters define how the module is built by the corresponding tool."
              | optional,
            deployed-after
              | Array String
              | doc "A list of modules that must be deployed before deploying the current module."
              | optional,
            description
              | String
              | doc "A free text describing this module."
              | optional,
            hooks
              | refs."definitions.hooks"
              | doc "A list of hooks that will be executed for the module."
              | optional,
            includes
              | Array
                {
                  name
                    | String
                    | doc "The name of an \"includes\" section. This name is used by a builder to generate a parameter section in the deployment descriptor.",
                  path
                    | String
                    | doc "A path pointing to a file that contains a map of parameters, either in JSON or in YAML format.",
                  ..
                }
              | doc "It is possible to define parameters in external files. The \"includes\" section is used to point to those files."
              | optional,
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The MTA module name which must be unique and cannot be the same as any provided property set or resource name.",
            parameters
              | refs."definitions.parameters"
              | doc "Configuration parameters that are used when deploying the module to the target runtime environment."
              | optional,
            parameters-metadata
              | refs."definitions.parameters-metadata"
              | doc "Additional information about the module's parameters."
              | optional,
            path
              | String
              | doc "The path to a folder that contains the module artifacts."
              | optional,
            properties
              | refs."definitions.properties"
              | doc "A collection of key-value pairs that are available to the module at runtime."
              | optional,
            properties-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the module's properties."
              | optional,
            provides
              | Array
                {
                  name
                    | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                    | doc "The name of the property set that the module provides. The provided name must be unique and cannot be the same as any resource or module name.",
                  properties
                    | refs."definitions.properties"
                    | doc "A list of properties that are included in this property set."
                    | optional,
                  properties-metadata
                    | refs."definitions.properties-metadata"
                    | doc "Additional information about the provided set's properties."
                    | optional,
                  public
                    | Bool
                    | doc "Configures the accessibility of the provided property set; if set to \"true\", it is publicly accessible and can be consumed by other MTA projects."
                    | optional,
                  ..
                }
              | doc "Used to define the named property sets that other modules and resources can require."
              | optional,
            requires
              | Array
                {
                  group
                    | String
                    | doc "A \"group\" can be used to combine properties from multiple providers into one runtime lookup object, such as an environment variable. As of schema version 2.1, this property is DEPRECATED."
                    | optional,
                  includes
                    | Array
                      {
                        name
                          | String
                          | doc "The name of an \"includes\" section. This name is used by a builder to generate a parameter section in the deployment descriptor.",
                        path
                          | String
                          | doc "A path pointing to a file that contains a map of parameters, either in JSON or in YAML format.",
                        ..
                      }
                    | doc "It is possible to define parameters in external files. The \"includes\" section is used to point to those files."
                    | optional,
                  list
                    | String
                    | doc "Defines a name for a runtime lookup object, such as an environment variable, if the required property set contains multiple values; for example, if used to consume configuration data from outside this MTA project."
                    | optional,
                  name
                    | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                    | doc "The name of a provided property set or resource (provider) that this module requires.",
                  parameters
                    | refs."definitions.parameters"
                    | doc "Configuration parameters that are used when deploying the module to the target runtime environment."
                    | optional,
                  parameters-metadata
                    | refs."definitions.parameters-metadata"
                    | doc "Additional information about the modules' parameters."
                    | optional,
                  properties
                    | refs."definitions.properties"
                    | doc "Module properties whose values are determined by the provided properties. These properties can be referenced by the tilde notation: \"~{<provided-property-name>}\" "
                    | optional,
                  properties-metadata
                    | refs."definitions.properties-metadata"
                    | doc "Additional information about the modules' properties."
                    | optional,
                  ..
                }
              | doc "A list of property sets provided by other modules and/or resources (providers) that this module requires."
              | optional,
            type
              | String
              | doc "The module type that defines the design-time tools for the module.",
            ..
          }
        | doc "A list of modules."
        | optional,
      parameters
        | refs."definitions.parameters"
        | doc "Global parameters that are used when building or deploying the application"
        | optional,
      parameters-metadata
        | refs."definitions.parameters-metadata"
        | doc "Additional information about the global parameters."
        | optional,
      provider
        | String
        | doc "The provider or vendor of this application."
        | optional,
      resources
        | Array
          {
            active
              | Bool
              | doc "If a resource is declared to be inactive, the resource will not be allocated during the deployment process."
              | optional,
            description
              | String
              | doc "A free text describing this resource."
              | optional,
            includes
              | Array
                {
                  name
                    | String
                    | doc "The name of an \"includes\" section. This name is used by a builder to generate a parameter section in the deployment descriptor.",
                  path
                    | String
                    | doc "A path pointing to a file that contains a map of parameters, either in JSON or in YAML format.",
                  ..
                }
              | doc "It is possible to define parameters in external files. The \"includes\" section is used to point to those files."
              | optional,
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The resource name which must be unique and cannot be the same as any provided property set or module name.",
            "optional"
              | Bool
              | doc "If the resource is set to optional and the deployment tools are unable to allocate it, then the tools will issue a warning and continue the deployment process."
              | optional,
            parameters
              | refs."definitions.parameters"
              | doc "Configuration parameters that are used when provisioning the resource in the target runtime environment."
              | optional,
            parameters-metadata
              | refs."definitions.parameters-metadata"
              | doc "Additional information about the resource's parameters."
              | optional,
            processed-after
              | Array String
              | doc "A list containing the names of the resources that must be processed prior to this one."
              | optional,
            properties
              | refs."definitions.properties"
              | doc "A collection of key-value pairs that can be required by modules and/or other resources as configuration data at runtime."
              | optional,
            properties-metadata
              | refs."definitions.properties-metadata"
              | doc "Additional information about the resource's properties."
              | optional,
            requires
              | Array
                {
                  includes
                    | Array
                      {
                        name
                          | String
                          | doc "The name of an \"includes\" section. This name is used by a builder to generate a parameter section in the deployment descriptor.",
                        path
                          | String
                          | doc "A path pointing to a file that contains a map of parameters, either in JSON or in YAML format.",
                        ..
                      }
                    | doc "It is possible to define parameters in external files. The \"includes\" section is used to point to those files."
                    | optional,
                  name
                    | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                    | doc "The name of a provided property set or resource (provider) that this resource requires.",
                  parameters
                    | refs."definitions.parameters"
                    | doc "Configuration parameters that are used when provisioning the resource in the target runtime environment."
                    | optional,
                  parameters-metadata
                    | refs."definitions.parameters-metadata"
                    | doc "Additional information about the required parameters."
                    | optional,
                  properties
                    | refs."definitions.properties"
                    | doc "Resource properties whose values are determined by the provided properties. These properties can be referenced by the tilde notation: \"~{<provided-property-name>}\" "
                    | optional,
                  properties-metadata
                    | refs."definitions.properties-metadata"
                    | doc "Additional information about the required properties."
                    | optional,
                  ..
                }
              | doc "A list of property sets provided by other modules and/or resources (providers) that this resource requires."
              | optional,
            type
              | String
              | doc "A type of resource supported by deployment tools in the target environment."
              | optional,
            ..
          }
        | doc "A list of resources that are required by the modules of this MTA project."
        | optional,
      version
        | js2n.string.Matches
          "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(-(0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(\\.(0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*)?(\\+[0-9a-zA-Z-]+(\\.[0-9a-zA-Z-]+)*)?$"
        | doc "The application version that should comply with the semantic versioning standard.",
      ..
    }