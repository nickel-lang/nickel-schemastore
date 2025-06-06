# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      authors
        | std.contract.any_of
          [
            String,
            std.contract.Sequence [ js2n.array.MinItems 1, Array String ]
          ]
        | doc "A list of the mod's authors"
        | optional,
      dependencies
        | { _ | Dyn }
        | doc "The mods and versions of those mods that this mod depends on"
        | optional,
      description
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Description of the mod"
        | optional,
      homepage | String | doc "Mod homepage link" | optional,
      icons
        | { _ | String }
        | doc "The icon of the mod. Currently only the 24x24 size is supported"
        | optional,
      id | String | doc "ID of the mod, used for various fallbacks",
      plugin
        | String
        | doc "Path of the javascript plugin file relative to mod root. This is the recommended method"
        | optional,
      postload
        | String
        | doc "Path of the javascript preload file relative to mod root. The file will be executed at the postload loading stage"
        | optional,
      poststart
        | String
        | doc "Path of the javascript poststart file relative to mod root. The file will be executed at the poststart loading stage"
        | optional,
      preload
        | String
        | doc "Path of the javascript preload file relative to mod root. The file will be executed at the preload loading stage"
        | optional,
      prestart
        | String
        | doc "Path of the javascript prestart file relative to mod root. The file will be executed at the prestart loading stage"
        | optional,
      repository | String | doc "Mod repository link" | optional,
      tags
        | js2n.array.MinItems 0
        | Array String
        | doc m%"
          Array of mod tags. See the full list of official tags: 
          https://github.com/CCDirectLink/CCModDB/blob/master/CCMOD-STANDARD.md#mod-tag-list
        "%
        | optional,
      title
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Title of the mod, what users will see in-game"
        | optional,
      version
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "The version of this mod following semantic versioning (https://semver.org)",
      ..
    }