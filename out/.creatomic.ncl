# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "tslint.alwaysShowRuleFailuresAsWarnings"
        | Bool
        | doc "Always show rule failures as warnings, independent of the tslint configuration."
        | optional,
      "tslint.autoFixOnSave"
        | std.contract.any_of [ Bool, Array String ]
        | doc "Turns auto fix on save on or off, or defines which rules (e.g. `no-var-keyword`) to auto fix on save."
        | optional,
      "tslint.configFile"
        | String
        | doc "The path to the rules configuration file"
        | optional,
      "tslint.enable"
        | Bool
        | doc "Control whether tslint is enabled for TypeScript files or not."
        | optional,
      "tslint.exclude"
        | std.contract.any_of [ String, Array String ]
        | doc "Configure glob patterns of file paths to exclude from linting"
        | optional,
      "tslint.ignoreDefinitionFiles"
        | Bool
        | doc "Control if TypeScript definition files should be ignored"
        | optional,
      "tslint.jsEnable"
        | Bool
        | doc "Control whether tslint is enabled for JavaScript files or not."
        | optional,
      "tslint.nodePath"
        | String
        | doc "A path added to NODE_PATH when resolving the tslint module."
        | optional,
      "tslint.rulesDirectory"
        | std.contract.any_of [ String, Array String ]
        | doc "An additional rules directory"
        | optional,
      "tslint.run"
        | std.enum.TagOrString
        | [| 'onType, 'onSave |]
        | doc "Run the linter on save (onSave) or on type (onType)"
        | optional,
      "tslint.validateWithDefaultConfig"
        | Bool
        | doc "Validate a file when there is only a default tslint configuration is found"
        | optional,
      ..
    }