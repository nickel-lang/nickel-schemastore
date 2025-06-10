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
              | js2n.array.UniqueItems
              | Array String
              | doc "List of additional dependencies for building this module."
              | optional,
            HasExplicitPlatforms
              | Bool
              | doc "When true, an empty PlatformAllowList is interpreted as 'no platforms' with the expectation that explicit platforms will be added in plugin extensions"
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
            Name | String | doc "Name of this module" | optional,
            PlatformAllowList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of allowed platforms"
              | optional,
            PlatformDenyList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of disallowed platforms"
              | optional,
            ProgramAllowList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of allowed programs"
              | optional,
            ProgramDenyList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of disallowed programs"
              | optional,
            TargetAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of allowed targets"
              | optional,
            TargetConfigurationAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of allowed target configurations"
              | optional,
            TargetConfigurationDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of disallowed target configurations"
              | optional,
            TargetDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of disallowed targets"
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
              | doc "Usage type of module"
              | optional,
            ..
          },
      "definitions.PluginReferenceDescriptor" =
        {
            Description
              | String
              | doc "Description of the plugin for users that do not have it installed."
              | optional,
            Enabled | Bool | doc "Whether it should be enabled by default",
            HasExplicitPlatforms
              | Bool
              | doc "When true, empty `SupportedTargetPlatforms` and `PlatformAllowList` are interpreted as *no platforms* with the expectation that explicit platforms will be added in plugin platform extensions"
              | optional,
            MarketplaceURL
              | String
              | doc "URL for this plugin on the marketplace, if the user doesn't have it installed."
              | optional,
            Name | String | doc "Name of the plugin",
            Optional
              | Bool
              | doc "Whether this plugin is optional, and the game should silently ignore it not being present"
              | optional,
            PlatformAllowList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of allowed platforms"
              | optional,
            PlatformDenyList
              | js2n.array.UniqueItems
              | Array String
              | doc "List of disallowed platforms"
              | optional,
            TargetAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of allowed targets"
              | optional,
            TargetConfigurationAllowList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of allowed target configurations"
              | optional,
            TargetConfigurationDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildConfiguration", String ]
              )
              | doc "List of disallowed target configurations"
              | optional,
            TargetDenyList
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildTargetType", String ]
              )
              | doc "List of disallowed targets"
              | optional,
            ..
          },
    }
    in
  {
      CanContainContent
        | Bool
        | doc "Can this plugin contain content?"
        | optional,
      CanContainVerse
        | Bool
        | doc "Can this plugin contain Verse code?"
        | optional,
      Category | String | doc "The name of the category this plugin" | optional,
      CreatedBy
        | String
        | doc "The company or individual who created this plugin."
        | optional,
      CreatedByURL
        | String
        | doc "Hyperlink URL string for the company or individual who created this plugin. This is optional."
        | optional,
      Description | String | doc "Description of the plugin" | optional,
      DocsURL | String | doc "Documentation URL string." | optional,
      EditorCustomVirtualPath
        | String
        | doc "Optional custom virtual path to display in editor to better organize."
        | optional,
      EnabledByDefault
        | Bool
        | doc "Whether this plugin should be enabled by default for all projects"
        | optional,
      EngineVersion
        | String
        | doc "Version of the engine that this plugin is compatible with"
        | optional,
      ExplicitlyLoaded
        | Bool
        | doc "When true, this plugin's modules will not be loaded automatically nor will it's content be mounted automatically."
        | optional,
      FileVersion | Number | doc "Descriptor version number.",
      FriendlyName | String | doc "Friendly name of the plugin" | optional,
      HasExplicitPlatforms
        | Bool
        | doc "When true, an empty SupportedTargetPlatforms is interpreted as 'no platforms' with the expectation that explicit platforms will be added in plugin platform extensions"
        | optional,
      Installed
        | Bool
        | doc "Signifies that the plugin was installed on top of the engine"
        | optional,
      IsBetaVersion
        | Bool
        | doc "Marks the plugin as beta in the UI"
        | optional,
      IsExperimentalVersion
        | Bool
        | doc "Marks the plugin as experimental in the UI"
        | optional,
      IsHidden
        | Bool
        | doc "For auto-generated plugins that should not be listed in the plugin browser for users to disable freely."
        | optional,
      LocalizationTargets
        | js2n.array.UniqueItems
        | Array
          {
            LoadingPolicy
              | std.enum.TagOrString
              | [|
                'Max,
                'ToolTips,
                'PropertyNames,
                'Game,
                'Editor,
                'Always,
                'Never
              |]
              | doc "When should the localization data associated with a target should be loaded?",
            Name | String | doc "Name of this target",
            ..
          }
        | doc "List of all localization targets associated with this plugin"
        | optional,
      MarketplaceURL
        | String
        | doc "Marketplace URL for this plugin."
        | optional,
      Modules
        | js2n.array.UniqueItems
        | Array refs."definitions.ModuleDescriptor"
        | doc "List of all modules associated with this plugin"
        | optional,
      ParentPluginName
        | String
        | doc "If specified, this is the real plugin that this one is just extending"
        | optional,
      Plugins
        | js2n.array.UniqueItems
        | Array refs."definitions.PluginReferenceDescriptor"
        | doc "Plugins used by this plugin"
        | optional,
      PostBuildSteps
        | { _ | Dyn }
        | doc "Post-build steps for each host platform"
        | optional,
      PreBuildSteps
        | { _ | Dyn }
        | doc "Pre-build steps for each host platform"
        | optional,
      RequiresBuildPlatform
        | Bool
        | doc "For plugins that are under a platform folder (eg. /PS4/), determines whether compiling the plugin requires the build platform and/or SDK to be available"
        | optional,
      SupportURL | String | doc "Support URL/email for this plugin." | optional,
      SupportedPrograms
        | js2n.array.UniqueItems
        | Array String
        | doc "List of programs that are supported by this plugin."
        | optional,
      SupportedTargetPlatforms
        | js2n.array.UniqueItems
        | Array String
        | doc "Controls a subset of platforms that can use this plugin, and which ones will stage the `.uplugin` file and content files."
        | optional,
      Version | Number | doc "Version number for the plugin." | optional,
      VersionName
        | String
        | doc "Name of the version for this plugin."
        | optional,
      bIsPluginExtension
        | Bool
        | doc "If true, this plugin from a platform extension extending another plugin"
        | optional,
    }