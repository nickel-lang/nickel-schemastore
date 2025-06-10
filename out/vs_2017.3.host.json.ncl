# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "allOf.0.definitions.overrideInfo" =
        {
            description
              | refs."allOf.0.definitions.text"
              | { _ | Dyn }
              | doc "Overrides the name specified in the template.json"
              | optional,
            id | String | doc "The id of the symbol from the template.json.",
            name
              | refs."allOf.0.definitions.text"
              | { _ | Dyn }
              | doc "Overrides the name specified in the template.json"
              | optional,
            ..
          },
      "allOf.0.definitions.persistenceScope" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'shared, 'templateGroup, 'none |] ],
      "allOf.0.definitions.requiredComponent" =
        {
            componentType
              | std.enum.TagOrString
              | [| 'extension, 'setupComponent |]
              | optional,
            hostId
              | std.enum.TagOrString
              | [| 'vs |]
              | doc "The host id that the component applies to",
            id | String | doc "The id of the component" | optional,
            version
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "A version range specifying the required version range. This uses the nuget package format."
              | optional,
            ..
          },
      "allOf.0.definitions.symbolInfo" =
        std.contract.Sequence
            [
              refs."allOf.0.definitions.overrideInfo",
              {
                choices
                  | Array (
                    std.contract.Sequence
                      [ refs."allOf.0.definitions.overrideInfo", { _ | Dyn } ]
                  )
                  | doc "Specifies the name and description overrides for individual choice parameters"
                  | optional,
                defaultValue
                  | String
                  | doc "Overrides the default value specified for the "
                  | optional,
                invertBoolean
                  | Bool
                  | doc "If the referenced symbol should be shown in the IDE."
                  | optional,
                isVisible
                  | Bool
                  | doc "Should be shown in the IDE. If not specified, defaults value is the value specified by defaultSymbolVisibility."
                  | optional,
                persistenceScope
                  | refs."allOf.0.definitions.persistenceScope"
                  | String
                  | doc "Determines if the user entered value should be persisted and used the next time a template is selected. Default value is the value specified by defaultSymbolVisibility Used starting in Visual Studio 2022 17.3"
                  | optional,
                persistenceScopeName
                  | String
                  | doc "Specifies the scope name of the persisted template option. To avoid conflicts with other templates, treat this like a namespace. Used starting in Visual Studio 2022 17.3"
                  | optional,
                ..
              }
            ],
      "allOf.0.definitions.tags" =
        {
            add | Array String | doc "Tags to add" | optional,
            remove
              | Array String
              | doc "Tags to remove. * can be specified to remove all tags specified in template.json"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'projectType, 'platform |]
              | doc "The tag to modify",
            ..
          },
      "allOf.0.definitions.text" =
        {
            id | String | optional,
            package
              | js2n.string.Matches
                "^\\{?[0-9A-Fa-f]{8}[-]?([0-9A-Fa-f]{4}[-]?){3}[0-9A-Fa-f]{12}\\}?$"
              | optional,
            text | String,
            ..
          },
      "allOf.0.definitions.unsupportedHost" =
        {
            id | std.enum.TagOrString | [| 'vs |] | doc "The host identifier.",
            version
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "A version range specifying the unsupported host versions. This uses the nuget package format."
              | optional,
            ..
          },
    }
    in
  {
      defaultPersistenceScope
        | refs."allOf.0.definitions.persistenceScope"
        | doc "The default value for a symbolInfo if not explicitly specified. Determines if the user entered value should be persisted and used the next time a template is selected. Used starting in Visual Studio 2022 17.3"
        | optional,
      defaultPersistenceScopeName
        | String
        | doc "The default value for a symbolInfo if not explicitly specified. Specifies the scope name of the persisted template option. To avoid conflicts with other templates, treat this like a namespace. Used starting in Visual Studio 2022 17.3"
        | optional,
      defaultSymbolVisibility
        | Bool
        | doc "Sets the default isVisible for a symbolInfo if not explicitly specified. Controls if the parameter is displayed in the IDE. Defaults to false if not specified"
        | optional,
      description
        | refs."allOf.0.definitions.text"
        | doc "Description of the template"
        | optional,
      disableHttpsSymbol
        | String
        | doc "The symbol in the template.json which when set, would cause the template to generate non-https ports and settings"
        | optional,
      icon
        | String
        | doc "The relative file name of the icon to show in the New Project dialog"
        | optional,
      name
        | refs."allOf.0.definitions.text"
        | doc "Name of the template"
        | optional,
      order
        | std.number.Integer
        | doc "The order of the template as shown in the New Project dialog"
        | optional,
      requiredComponents
        | Array refs."allOf.0.definitions.requiredComponent"
        | doc "Required components in order to display this template."
        | optional,
      supportsDocker
        | Bool
        | doc "Determines if the checkbox for adding Docker support in the New Project dialog should be visible"
        | optional,
      symbolInfo
        | Array (
          std.contract.Sequence
            [ refs."allOf.0.definitions.symbolInfo", { _ | Dyn } ]
        )
        | doc "Controls display characteristics of symbols declared in template.json"
        | optional,
      tags
        | Array refs."allOf.0.definitions.tags"
        | doc "Modifigy the project and platform tags displayed in the IDE"
        | optional,
      unsupportedHosts
        | Array refs."allOf.0.definitions.unsupportedHost"
        | doc "Unsupported Hosts. This can be used to suppress the template from being displayed in the new project dialog in Visual Studio."
        | optional,
      ..
    }