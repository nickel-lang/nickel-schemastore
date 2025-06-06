# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.hooks" =
        Array
            {
              name
                | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                | doc "The name of the existing hook that will be modified by this extension.",
              parameters
                | { _ | Dyn }
                | doc "Configuration parameters that are used when executing the hook to the target runtime environment."
                | optional,
              requires
                | Array
                  {
                    name
                      | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                      | doc "The name of the existing required dependencies that will be modified.",
                    parameters
                      | { _ | Dyn }
                      | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the hook at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                      | optional,
                    ..
                  }
                | doc "List of the existing required dependencies that will be modified by this extension."
                | optional,
              ..
            },
    }
    in
  {
      ID
        | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
        | doc "A globally unique ID of this MTA extension descriptor. Unlimited string of unicode characters.",
      _schema-version
        | js2n.string.Matches "^[1-9]\\d*(\\.\\d+){0,2}$"
        | doc "Used to indicate to an MTA processing tool (e.g. a deployer), which schema version was taken as the base when authoring a descriptor.",
      description
        | String
        | doc "A non-translatable description of this MTA extension. This is not a text for application users."
        | optional,
      extends
        | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
        | doc "A globally unique ID of the MTA or the MTA extension which shall be extended by this descriptor.",
      hooks
        | refs."definitions.hooks"
        | doc "A list of the existing hooks that will be modified by the extension."
        | optional,
      module-types
        | Array
          {
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The name of the existing module type that will be modified.",
            parameters
              | { _ | Dyn }
              | doc "Configuration parameters that will be inherited in all modules of this type."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A collection of key-value pairs that will be inherited by all modules of this type."
              | optional,
            ..
          }
        | doc "A list of existing module type definitions that will be modified by the extension."
        | optional,
      modules
        | Array
          {
            hooks
              | refs."definitions.hooks"
              | doc "A list of the existing hooks that will be modified by the extension."
              | optional,
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The module name which must match an existing module defined by the deployment descriptor.",
            parameters
              | { _ | Dyn }
              | doc "Configuration parameters that are used when deploying the module to the target runtime environment."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A collection of key-value pairs that are available to the module at runtime."
              | optional,
            provides
              | Array
                {
                  name
                    | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                    | doc "The dependency name which must match an existing provided dependency defined by the deployment descriptor.",
                  parameters
                    | { _ | Dyn }
                    | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the module at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                    | optional,
                  properties
                    | { _ | Dyn }
                    | doc "Property names and values make up the configuration data which is to be provided to requiring modules at runtime"
                    | optional,
                  ..
                }
              | doc "List of the existing provided dependencies that will be modified by the extension."
              | optional,
            requires
              | Array
                {
                  name
                    | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                    | doc "The dependency name which must match an existing required dependency defined by the deployment descriptor.",
                  parameters
                    | { _ | Dyn }
                    | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the module at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                    | optional,
                  properties
                    | { _ | Dyn }
                    | doc "Required properties can be mapped from provided properties. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                    | optional,
                  ..
                }
              | doc "List of the existing required dependencies that will be modified by the extension."
              | optional,
            ..
          }
        | doc "List of the existing modules that will be modified by the extension."
        | optional,
      parameters
        | { _ | Dyn }
        | doc "Global parameters that will be added to the application."
        | optional,
      provider | String | doc "The provider or vendor." | optional,
      resource-types
        | Array
          {
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The name of the existing resource type that will be modified.",
            parameters
              | { _ | Dyn }
              | doc "Configuration parameters that will be inherited in all resources of this type."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A collection of key-value pairs that will be inherited by all modules of this type."
              | optional,
            ..
          }
        | doc "A list of existing resource type definitions that will be modified by the extension."
        | optional,
      resources
        | Array
          {
            active
              | Bool
              | doc "If a resource is declared to be active, it is allocated and bound according to declared requirements. Default value is true."
              | optional,
            hooks
              | refs."definitions.hooks"
              | doc "List of existing hooks that will be modified by the extension."
              | optional,
            name
              | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
              | doc "The resource name which must match an existing resource defined by the deployment descriptor.",
            parameters
              | { _ | Dyn }
              | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to requiring modules at runtime. Untyped resources cannot have parameters."
              | optional,
            properties
              | { _ | Dyn }
              | doc "Property names and values make up the configuration data which is to be provided to requiring modules at runtime."
              | optional,
            requires
              | Array
                {
                  name
                    | js2n.string.Matches "^[A-Za-z0-9_\\-\\.]+$"
                    | doc "The name of the existing required dependency that will be modified.",
                  parameters
                    | { _ | Dyn }
                    | doc "Parameters can be used to influence the behavior of tools which interpret this descriptor. Parameters are not made available to the resource at runtime. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                    | optional,
                  properties
                    | { _ | Dyn }
                    | doc "Required properties can be mapped from provided properties. Provided property values can be accessed by \"~{<provided-property-name>}\". Such expressions can be part of an arbitrary string"
                    | optional,
                  ..
                }
              | doc "List of the existing required dependencies that will be modified by the extension."
              | optional,
            ..
          }
        | doc "List of the existing resources that will be modified by the extension."
        | optional,
      ..
    }