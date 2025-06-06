# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.coreConfiguration" =
        {
            entryPoint
              | String
              | doc "The entry point of the bounded context's Core.  A relative path to the folder"
              | optional,
            language
              | std.enum.TagOrString
              | [| 'csharp |]
              | doc "Describes which programming language the Core is written in",
            ..
          },
      "definitions.interactionLayerConfiguration" =
        {
            entryPoint
              | String
              | doc "The entry point of the interaction layer. A relative path to the folder",
            framework
              | std.enum.TagOrString
              | [| 'aurelia, 'react |]
              | doc "The framework of the interaction layer"
              | optional,
            language
              | String
              | doc "The programming language of the interaction layer",
            type
              | std.enum.TagOrString
              | [| 'web |]
              | doc "The type of the interaction layer",
            ..
          },
      "definitions.resourceTypeImplementationConfiguration" =
        { development | String, production | String, .. },
    }
    in
  {
      application
        | String
        | doc "The application id that represents the application that this bounded context is a part of",
      boundedContext
        | String
        | doc "The bounded context id that represents this bounded context",
      boundedContextName
        | String
        | doc "The bounded context name that represents the name of this bounded context",
      core | refs."definitions.coreConfiguration",
      interaction
        | Array refs."definitions.interactionLayerConfiguration"
        | doc "A list of configurations for the interaction layers that this bounded context exposes",
      resources
        | {
          eventStore
            | refs."definitions.resourceTypeImplementationConfiguration",
          readModels
            | refs."definitions.resourceTypeImplementationConfiguration",
          ..
        }
        | doc "A map of describing the resource type implementation mapping of resource types",
      ..
    }