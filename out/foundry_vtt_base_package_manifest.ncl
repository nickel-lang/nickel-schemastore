# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.File" = String,
      "definitions.FileArray" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (std.contract.Sequence [ refs."definitions.File", String ])
            ],
      "definitions.Flags" = { _ | Dyn },
      "definitions.Identifier" = js2n.string.Matches "^[a-zA-Z0-9_-]+$",
      "definitions.NonBlankString" = js2n.string.Matches ".+",
      "definitions.PackageCompatibility" =
        {
            maximum
              | refs."definitions.Version"
              | doc "The module will not function for newer versions than this."
              | optional,
            minimum
              | refs."definitions.Version"
              | doc "The module will not function for versions earlier than this."
              | optional,
            verified
              | refs."definitions.Version"
              | doc "The module has been verified to be compatible up to this version."
              | optional,
          },
      "definitions.PackageRelationship" =
        {
            compatibility
              | refs."definitions.PackageCompatibility"
              | { _ | Dyn }
              | doc "As above, the compatibility of a dependency can be defined, ensuring that the dependency will not be installed if it does not meet the defined requirements."
              | optional,
            flags | refs."definitions.Flags" | { _ | Dyn } | optional,
            id
              | refs."definitions.Identifier"
              | String
              | doc "Dependency entries require the id attribute. If only an id is provided, additional details about the module will be discovered from the Foundry VTT website listing.",
            manifest
              | refs."definitions.URL"
              | String
              | doc "The manifest attribute provides an explicit manifest url to be used for downloading the dependency. If a manifest is not provided, the dependency package must exist in the Foundry website directory."
              | optional,
            reason
              | refs."definitions.NonBlankString"
              | String
              | doc "(undocumented, intended to be used by core Foundry in the future)"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'world, 'system, 'module |]
              | doc "The type attribute instructs FoundryVTT that the dependency may be on a different type of package. By default dependencies are assumed to be a module, so if you want to depend on a system or world you should be explicit."
              | optional,
          },
      "definitions.URL" = js2n.string.Matches "^https?://[^.\\s]+\\.[^.\\s]",
      "definitions.Version" = std.contract.any_of [ Number, String ],
    }
    in
  {
      author | refs."definitions.NonBlankString" | optional,
      authors
        | js2n.array.UniqueItems
        | Array
          {
            discord | js2n.string.Matches "^.+#\\d+$|^[a-z0-9._]+$" | optional,
            email | refs."definitions.NonBlankString" | optional,
            flags | refs."definitions.Flags" | optional,
            ko-fi
              | refs."definitions.NonBlankString"
              | doc "(Manifest+ field)"
              | optional,
            name
              | refs."definitions.NonBlankString"
              | doc "The only required field for an author.  This can be your username, your full name, etc.",
            patreon
              | refs."definitions.NonBlankString"
              | doc "(Manifest+ field)"
              | optional,
            reddit
              | refs."definitions.NonBlankString"
              | doc "(Manifest+ field)"
              | optional,
            twitter
              | refs."definitions.NonBlankString"
              | doc "(Manifest+ field)"
              | optional,
            url | refs."definitions.URL" | optional,
          }
        | doc "An array listing each author as an object that contains a name and potentially some contact details."
        | optional,
      bugs
        | refs."definitions.URL"
        | doc "A publicly accessible URL where issues, suggestions, and bug reports may be filed."
        | optional,
      changelog
        | refs."definitions.URL"
        | doc "A publicly accessible URL where update and release notes about the package may be found."
        | optional,
      compatibility
        | refs."definitions.PackageCompatibility"
        | doc "The compatibility field is an object key for capturing the sub-fields which defines the limits of your package's compatibility based on Foundry Virtual Tabletop version."
        | optional,
      compatibleCoreVersion | std.contract.any_of [ Number, String ] | optional,
      conflicts | { _ | Dyn } | doc "(Manifest+ field)" | optional,
      dependencies
        | Array
          {
            id
              | refs."definitions.Identifier"
              | doc "ID of the package this package depends on."
              | optional,
            manifest
              | refs."definitions.URL"
              | doc "Provides an explicit URL to the dependency's manifest to be able to install the package. If not provided, Foundry will check the website package list."
              | optional,
            name
              | refs."definitions.Identifier"
              | doc "ID of the package this package depends on."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'world, 'system, 'module |]
              | doc "The type of dependency."
              | optional,
          }
        | optional,
      deprecated | { _ | Dyn } | doc "(Manifest+ field)" | optional,
      description
        | String
        | doc "This field can contain a more lengthy description of the package. This text can be used to describe the functionality, list contact information, provide recommendations to contributors or testers, or any other information you feel is important to provide. This field can contain HTML to structure and style your text. For a system, this is also a good place to include any special licensing or attribution information that you need to distribute.",
      documentTypes
        | { _ | Dyn }
        | doc "(intended to be used by core Foundry in the future, see Module Sub-Types article)"
        | optional,
      download
        | refs."definitions.URL"
        | doc "A public URL that provides a zip archive of the package for the manifest version which points to it. The archive at this URL is retrieved during the installation or update process. If you are using version control for your package - it is recommended to manage download archives using the tags and releases features which are supported by most git repositories."
        | optional,
      esmodules
        | refs."definitions.FileArray"
        | Array Dyn
        | doc "The preferred method for including Javascript with your project. This field allows you to define an array of JS files which use the newer ES6 modules specification. As with scripts, this should be declared as an array. These files are identified separately in the manifest so they may be correctly loaded as a module rather than a script."
        | optional,
      exclusive | Bool | doc "(undocumented)" | optional,
      flags | refs."definitions.Flags" | optional,
      id
        | refs."definitions.Identifier"
        | doc "Choose a unique package identifier. This must be an all lower-case string with no special characters and should use hyphens (not underscores) to separate multiple terms. This name must match exactly with the name of the parent directory within which you create the package.",
      includes | Array Dyn | doc "(Manifest+ field)" | optional,
      languages
        | Array
          {
            flags | refs."definitions.Flags" | optional,
            lang
              | refs."definitions.NonBlankString"
              | doc "A language code in lower-case letters, for example \"en\" for English. See https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes",
            module
              | refs."definitions.Identifier"
              | doc "(undocumented)"
              | optional,
            name
              | refs."definitions.NonBlankString"
              | doc "The formal and readable name for the language, for example \"English\"."
              | optional,
            path
              | refs."definitions.File"
              | doc "A path relative to the root directory of the manifest where localization strings are provided in JSON format.",
            system
              | refs."definitions.Identifier"
              | doc "(undocumented)"
              | optional,
          }
        | doc "A list of localization files that Foundry can use to translate strings."
        | optional,
      license
        | std.contract.any_of
          [ refs."definitions.URL", refs."definitions.File" ]
        | doc "A path to a license file relative to the root package folder or a publicly accessible URL which contains the software license that applies to this package."
        | optional,
      manifest
        | refs."definitions.URL"
        | doc "A stable URL that describes the latest release version of your manifest file. This URL is used for automatic system installation in the Foundry VTT setup screen. This manifest URL is consulted during the system/module update check to see whether a new version is available for download. It is important that this address remain stable, otherwise updates will not be detected."
        | optional,
      manifestPlusVersion
        | std.contract.any_of [ Number, String ]
        | doc "(Manifest+ field)"
        | optional,
      media
        | Array
          {
            caption | refs."definitions.NonBlankString" | optional,
            flags | refs."definitions.Flags" | optional,
            loop | Bool | optional,
            thumbnail | refs."definitions.NonBlankString" | optional,
            type | refs."definitions.NonBlankString" | optional,
            url | refs."definitions.URL" | optional,
            ..
          }
        | doc "(undocumented, intended to be used by core Foundry in the future)"
        | optional,
      minimumCoreVersion | std.contract.any_of [ Number, String ] | optional,
      name | refs."definitions.Identifier" | optional,
      packs
        | Array
          {
            entity | String | optional,
            flags | refs."definitions.Flags" | optional,
            label
              | refs."definitions.NonBlankString"
              | doc "Human readable label of the Compendium pack. This is displayed in the Compendium sidebar.",
            name
              | refs."definitions.Identifier"
              | doc "Name of the Compendium pack. This should be a lowercase string with no special characters other than hyphens.",
            path
              | refs."definitions.File"
              | doc "The relative path to the Compendium .db file. Best practice is to put these in the /packs subdirectory. Required until V11; afterwards, can be omitted if pack resides in `package-id/packs/`.",
            private
              | Bool
              | doc "(undocumented, will hide pack from non-GMs)"
              | optional,
            system
              | std.contract.any_of
                [
                  refs."definitions.Identifier",
                  Array refs."definitions.Identifier"
                ]
              | doc "The id of the system/s the Compendium pack is created for. This ensures Foundry knows this Compendium only works for that system. This may be a string or an array of strings. Important: Actor, Item, and Adventure compendium packs MUST define a system field."
              | optional,
            type
              | std.enum.TagOrString
              | [|
                'Scene,
                'Table,
                'RollTable,
                'Playlist,
                'Macro,
                'JournalEntry,
                'Journal,
                'Item,
                'Adventure,
                'Cards,
                'Actor
              |]
              | doc "Each Compendium pack must designate which type of Entity it contains.",
          }
        | doc "Packages may come bundled with Compendium packs which include game content for various Document types. Compendium packs are defined as objects which have their own internal metadata structure."
        | optional,
      persistentStorage
        | Bool
        | doc "(undocumented, intended to be used by core Foundry in the future)"
        | optional,
      protected
        | Bool
        | doc "(undocumented, used for premium packages)"
        | optional,
      readme
        | std.contract.any_of
          [ refs."definitions.URL", refs."definitions.File" ]
        | doc "A path to a read-me file relative to the root package folder or a publicly accessible URL which contains instructions or information about the package."
        | optional,
      relationships
        | {
          conflicts
            | Array refs."definitions.PackageRelationship"
            | doc "(undocumented, intended to be used by core Foundry in the future)"
            | optional,
          recommends
            | Array refs."definitions.PackageRelationship"
            | doc "(undocumented, intended to be used by core Foundry in the future)"
            | optional,
          requires
            | Array refs."definitions.PackageRelationship"
            | doc "If a package has been installed with dependencies, but its dependencies are missing, it cannot be enabled."
            | optional,
          systems
            | Array refs."definitions.PackageRelationship"
            | doc "Will only allow the package to activated within Worlds which are running one of these systems and with a compatible version."
            | optional,
        }
        | doc "Packages can require modules, systems, or worlds be installed to allow their use. If a package has been installed with dependencies, but its dependencies are missing, it cannot be enabled."
        | optional,
      scripts
        | refs."definitions.FileArray"
        | Array Dyn
        | doc "A less common way of including Javascript with the increasing adoption of ESModules, this field allows you to define an array of JavaScript file paths which should be included whenever this package is being used. Each listed script path should be relative to the package root directory. All scripts which exist will be automatically included in the game session and loaded in their listed order."
        | optional,
      socket
        | Bool
        | doc "A package may request for a specialized socket namespace to be provided. If set to true, a socket event will be handled by the server with the name `system.${id}` (for a system) or `module.${id}` (for a module), and will transact a arbitrary data object by broadcasting that data to all connected clients. This allows the package to have a reserved channel for messaging events which are needed to coordinate actions across multiple connected clients."
        | optional,
      styles
        | refs."definitions.FileArray"
        | Array Dyn
        | doc "You can designate an array of CSS files which should be included in the game session whenever this package is used. Each listed stylesheet path should be relative to the package root directory. All stylesheets which exist will be automatically included in the game session and loaded in their listed order."
        | optional,
      system | String | optional,
      title
        | refs."definitions.NonBlankString"
        | doc "Provide a human readable title for the package which is displayed as the visible name for the package in the Setup menu and elsewhere.",
      url
        | refs."definitions.URL"
        | doc "A public URL that links to the repository or documentation pages for the package. This link will be displayed for users to allow them to find more information about your package. If your package is hosted in version control like GitHub or GitLab, linking to the repository in this field is a good choice."
        | optional,
      version
        | std.contract.any_of [ Number, String ]
        | doc "The package version number can be a number or a string which denotes the version of your module/system/world. When making changes to your package, incrementing the version number in your manifest file is used to signal to users that an update is available. We discuss some supported options for versioning in the Introduction to Development article.",
      ..
    }