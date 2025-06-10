# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.injector_options" =
        {
            defaultGroup
              | String
              | doc "Sets the default injector group"
              | optional,
            defaultRequire
              | std.number.Integer
              | js2n.number.Minimum 0
              | doc "Sets the default minimum of injections that must be successfully applied per injector"
              | optional,
            injectionPoints
              | Array String
              | doc "Registers injection points for this configuration"
              | optional,
            maxShiftBy
              | std.number.Integer
              | js2n.number.Maximum 5
              | js2n.number.Minimum 0
              | doc "Sets the maximum allowed number of opcodes that can be shifted in @At annotations. This is hard capped at 5"
              | optional,
            ..
          },
      "definitions.mixin_class" = String,
      "definitions.overwrite_options" =
        {
            conformVisibility
              | Bool
              | doc "Sets whether the visibility of overwritten methods should be conformed to the target class"
              | optional,
            requireAnnotations
              | Bool
              | doc "Sets whether overwriting methods must explicitly be declared through @Overwrite annotations"
              | optional,
            ..
          },
    }
    in
  {
      client
        | Array refs."definitions.mixin_class"
        | doc "Mixin classes to load ONLY on client. Class names get prepended with the specified package"
        | optional,
      compatibilityLevel
        | String
        | doc "Minimum compatibility level required for mixins in this set"
        | optional,
      injectors | refs."definitions.injector_options" | optional,
      minVersion
        | js2n.string.Matches
          "^(\\d{1,5})(?:\\.(\\d{1,5})(?:\\.(\\d{1,5})(?:\\.(\\d{1,5}))?)?)?(-[a-zA-Z0-9_\\-]+)?$"
        | doc "Minimum version of the mixin subsystem required for this configuration"
        | optional,
      mixinPriority
        | std.number.Integer
        | doc "Default mixin priority for this configuration. Will be inherited if smaller than 0"
        | optional,
      mixins
        | Array refs."definitions.mixin_class"
        | doc "Mixin classes to load in all environments. Class names get prepended with the specified package"
        | optional,
      overwrites | refs."definitions.overwrite_options" | optional,
      package
        | String
        | doc "The target package where the mixin classes reside",
      parent
        | String
        | doc "The name of a parent configuration that options get inherited from"
        | optional,
      plugin
        | String
        | doc "Name of the mixin config plugin to use for this config"
        | optional,
      "priority"
        | std.number.Integer
        | doc "The priority of this configuration. Will be inherited if smaller than 0"
        | optional,
      refmap
        | String
        | doc "The path to the reference map resource to use for this configuration"
        | optional,
      required
        | Bool
        | doc "Determines whether mixin failures in this configuration are considered terminal and stop the game"
        | optional,
      server
        | Array refs."definitions.mixin_class"
        | doc "Mixin classes to load ONLY on server. Class names get prepended with the specified package"
        | optional,
      setSourceFile
        | Bool
        | doc "Sets whether targets' source files will be updated to the mixin source file"
        | optional,
      target
        | String
        | doc "Target selector. Either the specifies the phase directly or use \"@env(PHASE)\" separated by '&', '\\', or ' '"
        | optional,
      verbose
        | Bool
        | doc "Increases log detail level from DEBUG to INFO"
        | optional,
      ..
    }