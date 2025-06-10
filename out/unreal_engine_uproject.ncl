# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BuildConfiguration" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Test, 'Shipping, 'Development, 'DebugGame, 'Debug, 'Unknown |]
            ],
      "definitions.BuildTargetType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Program, 'Editor, 'Client, 'Server, 'Game, 'Unknown |]
            ],
      "definitions.ModuleDescriptor" =
        {
            AdditionalDependencies
              | Array String
              | doc "List of additional dependencies for building this module."
              | optional,
            HasExplicitPlatforms
              | Bool
              | doc "When true, an empty PlatformAllowList is interpreted as 'no platforms' with the expectation that explicit platforms will be added in plugin extensions."
              | optional,
            LoadingPhase
              | std.enum.TagOrString
              | [|
                'Max,
                'None,
                'PostEngineInit,
                'PostDefault,
                'Default,
                'PreDefault,
                'PreLoadingScreen,
                'PreEarlyLoadingScreen,
                'PostSplashScreen,
                'PostConfigInit,
                'EarliestPossible
              |]
              | doc "When should the module be loaded during the startup sequence? This is sort of an advanced setting."
              | optional,
            Name | String | doc "Name of this module." | optional,
            PlatformAllowList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of allowed platforms."
              | optional,
            PlatformDenyList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of disallowed platforms."
              | optional,
            ProgramAllowList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of allowed programs."
              | optional,
            ProgramDenyList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of disallowed programs."
              | optional,
            TargetAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of allowed targets."
              | optional,
            TargetConfigurationAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of allowed target configurations."
              | optional,
            TargetConfigurationDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of disallowed target configurations."
              | optional,
            TargetDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of disallowed targets."
              | optional,
            Type
              | std.enum.TagOrString
              | [|
                'Max,
                'ClientOnlyNoCommandlet,
                'ClientOnly,
                'ServerOnly,
                'Program,
                'EditorAndProgram,
                'EditorNoCommandlet,
                'Editor,
                'DeveloperTool,
                'Developer,
                'UncookedOnly,
                'CookedOnly,
                'RuntimeAndProgram,
                'RuntimeNoCommandlet,
                'Runtime
              |]
              | doc "Usage type of module."
              | optional,
            ..
          },
      "definitions.PluginReferenceDescriptor" =
        {
            Description
              | String
              | doc "Description of the plugin for users that do not have it installed."
              | optional,
            Enabled | Bool | doc "Whether it should be enabled by default.",
            HasExplicitPlatforms
              | Bool
              | doc "When true, empty SupportedTargetPlatforms and PlatformAllowList are interpreted as 'no platforms' with the expectation that explicit platforms will be added in plugin platform extensions."
              | optional,
            MarketplaceURL
              | String
              | doc "URL for this plugin on the marketplace, if the user doesn't have it installed."
              | optional,
            Name | String | doc "Name of the plugin.",
            Optional
              | Bool
              | doc "Whether this plugin is optional, and the game should silently ignore it not being present."
              | optional,
            PlatformAllowList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of allowed platforms."
              | optional,
            PlatformDenyList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of disallowed platforms."
              | optional,
            TargetAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of allowed targets."
              | optional,
            TargetConfigurationAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of allowed target configurations."
              | optional,
            TargetConfigurationDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of disallowed target configurations."
              | optional,
            TargetDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of disallowed targets."
              | optional,
            ..
          },
    }
    in
  {
      AdditionalPluginDirectories
        | Array String
        | doc "List of additional directoreis to scan for plugins"
        | optional,
      Category
        | String
        | doc "Category to show under the project browser."
        | optional,
      Description
        | String
        | doc "Description to show in the project browser."
        | optional,
      DisableEnginePluginsByDefault
        | Bool
        | doc "Indicates that enabled by default engine plugins should not be enabled unless explicitly enabled by the project or target files."
        | optional,
      EngineAssociation
        | js2n.string.Matches
          "(^([0-9]+)\\.([0-9]+)$)|(^\\{[A-F0-9]{8}(-[A-F0-9]{4}){3}-[A-F0-9]{12}\\}$)|^$|[\\\\/]"
        | doc "The engine to open this project with. Either <major>.<minor> version (4.27, 5.4, etc), unique Engine identifier, blank for directory-based discovery, or relative path.",
      EpicSampleNameHash
        | Number
        | doc "A hash that is used to determine if the project was forked from a sample."
        | optional,
      FileVersion | Number | doc "Descriptor version number.",
      IsEnterpriseProject
        | Bool
        | doc "Indicates if this project is an Enterprise project."
        | optional,
      Modules
        | js2n.array.UniqueItems
        | Array refs."definitions.ModuleDescriptor"
        | doc "List of all modules associated with this project."
        | optional,
      Plugins
        | js2n.array.UniqueItems
        | Array refs."definitions.PluginReferenceDescriptor"
        | doc "List of plugins for this project (may be enabled/disabled)."
        | optional,
      PostBuildSteps
        | { _ | Dyn }
        | doc "Custom steps to execute after building targets in this project."
        | optional,
      PreBuildSteps
        | { _ | Dyn }
        | doc "Custom steps to execute before building targets in this project."
        | optional,
      TargetPlatforms
        | js2n.array.UniqueItems
        | Array String
        | doc "Array of platforms that this project is targeting."
        | optional,
    }