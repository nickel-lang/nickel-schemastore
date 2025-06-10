# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.clone.additionalProperties" =
        {
            chainId
              | std.number.Integer
              | doc "ID of the chain to import the package from. Default - 13370"
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            options
              | { _ | String }
              | doc "⚠ Deprecated in favor of var. The settings to be used when initializing this Cannonfile. Overrides any defaults preset in the source package."
              | optional,
            source | String | doc "Name of the package to provision",
            sourcePreset
              | String
              | doc "⚠ Deprecated in favor of appending @PRESET_NAME to source. Override the preset to use when provisioning this package. Default - \"main\""
              | optional,
            tags
              | Array String
              | doc "Additional tags to set on the registry for when this provisioned package is published."
              | optional,
            target | String | doc "Name of the package to clone" | optional,
            targetPreset
              | String
              | doc "⚠ Deprecated in favor using target only with format packageName:version@targetPreset. Set the new preset to use for this package. Default - \"main\""
              | optional,
            var
              | { _ | String }
              | doc "The settings to be used when initializing this Cannonfile. Overrides any defaults preset in the source package."
              | optional,
          },
      "properties.deploy.additionalProperties" =
        {
            abi | String | doc "Abi of the contract being deployed" | optional,
            abiOf
              | Array String
              | doc "An array of contract artifacts that have already been deployed with Cannon. This is useful when deploying proxy contracts."
              | optional,
            args
              | Array (
                std.contract.any_of
                  [
                    String,
                    Number,
                    Bool,
                    {
                      _ | std.contract.Sequence
                        [
                          refs."properties.deploy.additionalProperties.properties.args.items",
                          std.contract.any_of
                            [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                        ]
                    },
                    Array (
                      std.contract.Sequence
                        [
                          refs."properties.deploy.additionalProperties.properties.args.items",
                          std.contract.any_of
                            [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                        ]
                    )
                  ]
              )
              | doc "Constructor or initializer args"
              | optional,
            artifact | String | doc "Artifact name of the target contract",
            create2
              | std.contract.any_of [ Bool, String ]
              | doc "Determines whether to deploy the contract using create2. If an address is specified, the arachnid create2 contract will be deployed/used from this address."
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            from
              | String
              | doc "Contract deployer address. Must match the ethereum address format"
              | optional,
            highlight
              | Bool
              | doc "Determines whether contract should get priority in displays"
              | optional,
            ifExists | std.enum.TagOrString | [| 'continue |] | optional,
            libraries
              | { _ | String }
              | doc "An array of contract operation names that deploy libraries this contract depends on."
              | optional,
            nonce | std.contract.any_of [ Number, String ] | doc "-" | optional,
            overrides
              | { gasLimit | String | optional, simulate | Bool | optional, }
              | doc "Override transaction settings"
              | optional,
            salt
              | String
              | doc "Used to force new copy of a contract (not actually used)"
              | optional,
            value
              | String
              | doc "Native currency value to send in the transaction"
              | optional,
          },
      "properties.deploy.additionalProperties.properties.args.items" =
        std.contract.any_of
            [
              String,
              Number,
              Bool,
              {
                _ | std.contract.Sequence
                  [
                    js2n.Always,
                    std.contract.any_of
                      [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  ]
              },
              Array (
                std.contract.Sequence
                  [
                    js2n.Always,
                    std.contract.any_of
                      [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  ]
              )
            ],
      "properties.invoke.additionalProperties.properties.target.anyOf.0" =
        String,
      "properties.invoke.additionalProperties.properties.var.additionalProperties" =
        {
            allowEmptyEvents
              | Bool
              | doc "Bypass error messages if an event is expected in the invoke operation but none are emitted in the transaction."
              | optional,
            arg | std.number.Integer | doc "Data argument of the event output",
            event | String | doc "Name of the event to get data for",
            expectCount
              | std.number.Integer
              | doc "Number of matching contract events which should be seen by this event (default 1) (set to 0 to make optional)"
              | optional,
          },
      "properties.pull.additionalProperties" =
        {
            chainId
              | std.number.Integer
              | doc "ID of the chain to import the package from"
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            preset
              | String
              | doc "Preset label of the package being imported"
              | optional,
            source
              | String
              | doc "Source of the cannonfile package to import from. Can be a cannonfile operation name or package name",
          },
    }
    in
  {
      clone
        | {
          _ | {
            chainId
              | std.number.Integer
              | doc "ID of the chain to import the package from. Default - 13370"
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            options
              | { _ | String }
              | doc "⚠ Deprecated in favor of var. The settings to be used when initializing this Cannonfile. Overrides any defaults preset in the source package."
              | optional,
            source | String | doc "Name of the package to provision",
            sourcePreset
              | String
              | doc "⚠ Deprecated in favor of appending @PRESET_NAME to source. Override the preset to use when provisioning this package. Default - \"main\""
              | optional,
            tags
              | Array String
              | doc "Additional tags to set on the registry for when this provisioned package is published."
              | optional,
            target | String | doc "Name of the package to clone" | optional,
            targetPreset
              | String
              | doc "⚠ Deprecated in favor using target only with format packageName:version@targetPreset. Set the new preset to use for this package. Default - \"main\""
              | optional,
            var
              | { _ | String }
              | doc "The settings to be used when initializing this Cannonfile. Overrides any defaults preset in the source package."
              | optional,
          }
        }
        | doc "Deploy a new instance of a package from the registry. Packages may only be provisioned if they include a local, Cannon deployment (Chain ID: 13370)."
        | optional,
      contract
        | { _ | refs."properties.deploy.additionalProperties" }
        | doc "⚠ Deprecated in favor of deploy. Deploy a contract."
        | optional,
      deploy
        | {
          _ | {
            abi | String | doc "Abi of the contract being deployed" | optional,
            abiOf
              | Array String
              | doc "An array of contract artifacts that have already been deployed with Cannon. This is useful when deploying proxy contracts."
              | optional,
            args
              | Array (
                std.contract.any_of
                  [
                    String,
                    Number,
                    Bool,
                    {
                      _ | refs."properties.deploy.additionalProperties.properties.args.items"
                    },
                    Array
                      refs."properties.deploy.additionalProperties.properties.args.items"
                  ]
              )
              | doc "Constructor or initializer args"
              | optional,
            artifact | String | doc "Artifact name of the target contract",
            create2
              | std.contract.any_of [ Bool, String ]
              | doc "Determines whether to deploy the contract using create2. If an address is specified, the arachnid create2 contract will be deployed/used from this address."
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            from
              | String
              | doc "Contract deployer address. Must match the ethereum address format"
              | optional,
            highlight
              | Bool
              | doc "Determines whether contract should get priority in displays"
              | optional,
            ifExists | std.enum.TagOrString | [| 'continue |] | optional,
            libraries
              | { _ | String }
              | doc "An array of contract operation names that deploy libraries this contract depends on."
              | optional,
            nonce | std.contract.any_of [ Number, String ] | doc "-" | optional,
            overrides
              | { gasLimit | String | optional, simulate | Bool | optional, }
              | doc "Override transaction settings"
              | optional,
            salt
              | String
              | doc "Used to force new copy of a contract (not actually used)"
              | optional,
            value
              | String
              | doc "Native currency value to send in the transaction"
              | optional,
          }
        }
        | doc "Deploy a contract."
        | optional,
      deployers
        | Array String
        | doc "Any deployers that could publish this package. Will be used for automatic version management."
        | optional,
      description | String | doc "Description for the package" | optional,
      diamond
        | {
          _ | {
            contracts
              | Array String
              | doc "Set of contracts that should be facets of the Diamond proxy",
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description | String | doc "Description of the action" | optional,
            diamondArgs
              | {
                init
                  | String
                  | doc "Address to DELEGATECALL on diamondCut() or constructor after the facets have been set"
                  | optional,
                initCalldata
                  | String
                  | doc "Additional data to send to the `init` DELEGATECALL"
                  | optional,
                owner
                  | String
                  | doc "Address has permission to change Diamond facets (ie proxied contracts to upgrade)",
              },
            highlight
              | Bool
              | doc "Determines whether contract should get priority in displays"
              | optional,
            immutable
              | Bool
              | doc "Prevents the diamond proxy from being modified in the future. Setting this value to `true` is irreversable once deployed."
              | optional,
            overrides
              | { gasLimit | String | optional, }
              | doc "Override transaction settings"
              | optional,
            salt | String | doc "Used to force new copy of a contract.",
          }
        }
        | doc "Generate a upgradable contract that proxies calls to multiple contracts using a ERC2535 Diamond standard."
        | optional,
      "import"
        | { _ | refs."properties.pull.additionalProperties" }
        | doc "⚠ Deprecated in favor of pull. Import a package from the registry. This will make the output of that deployment, such as contract addresses, available to other operations in your Cannonfile. Imported packages must include deployments with chain ID that matches the chain ID of the network you are deploying to."
        | optional,
      invoke
        | {
          _ | {
            abi
              | String
              | doc "JSON file of the contract ABI. Required if the target contains an address rather than a contract operation name."
              | optional,
            args
              | Array
                refs."properties.deploy.additionalProperties.properties.args.items"
              | doc "Arguments to use when invoking this call."
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            extra
              | {
                _ | refs."properties.invoke.additionalProperties.properties.var.additionalProperties"
              }
              | doc "⚠ Deprecated in favor of var. Object defined to hold transaction result data in a setting. For now its limited to getting event data so it can be reused in other operations. Use `var` instead."
              | optional,
            factory
              | {
                _ | {
                  abi
                    | String
                    | doc "Abi of the contract being deployed"
                    | optional,
                  abiOf
                    | Array String
                    | doc "An array of contract artifacts that have already been deployed with Cannon. Used if the code for the deployed contract is not available in the artifacts."
                    | optional,
                  allowEmptyEvents
                    | Bool
                    | doc "Bypass error messages if an event is expected in the invoke operation but none are emitted in the transaction."
                    | optional,
                  arg
                    | std.number.Integer
                    | doc "Data argument of the event output",
                  artifact
                    | String
                    | doc "Name of the contract artifact"
                    | optional,
                  constructorArgs
                    | Array
                      refs."properties.deploy.additionalProperties.properties.args.items"
                    | doc "Constructor or initializer args"
                    | optional,
                  event | String | doc "Name of the event to get data for",
                  expectCount
                    | std.number.Integer
                    | doc "Number of matching contract events which should be seen by this event (default 1) (set to 0 to make optional)"
                    | optional,
                  highlight
                    | Bool
                    | doc "Determines whether contract should get priority in displays"
                    | optional,
                }
              }
              | doc "Object defined to hold deployment transaction result data. For now its limited to getting deployment event data so it can be reused in other operations"
              | optional,
            from
              | String
              | doc "The calling address to use when invoking this call."
              | optional,
            fromCall
              | {
                args
                  | Array
                    refs."properties.deploy.additionalProperties.properties.args.items"
                  | doc "The arguments to pass into the function being called."
                  | optional,
                func
                  | String
                  | doc "The name of a view function to call on this contract. The result will be used as the from input.",
              }
              | doc "Specify a function to use as the 'from' value in a function call. Example `owner()`."
              | optional,
            func | String | doc "Name of the function to call on the contract",
            overrides
              | { gasLimit | String, }
              | doc "Override transaction settings"
              | optional,
            target
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      Array
                        refs."properties.invoke.additionalProperties.properties.target.anyOf.0"
                    ]
                ]
              | doc "Names of the contract to call or contract operation that deployed the contract to call",
            value
              | String
              | doc "The amount of ether/wei to send in the transaction."
              | optional,
            var
              | {
                _ | {
                  allowEmptyEvents
                    | Bool
                    | doc "Bypass error messages if an event is expected in the invoke operation but none are emitted in the transaction."
                    | optional,
                  arg
                    | std.number.Integer
                    | doc "Data argument of the event output",
                  event | String | doc "Name of the event to get data for",
                  expectCount
                    | std.number.Integer
                    | doc "Number of matching contract events which should be seen by this event (default 1) (set to 0 to make optional)"
                    | optional,
                }
              }
              | doc "Object defined to hold transaction result data in a setting. For now its limited to getting event data so it can be reused in other operations"
              | optional,
          }
        }
        | doc "Call a function."
        | optional,
      keywords | Array String | doc "Keywords for search indexing" | optional,
      name | js2n.string.MinLength 3 | doc "Name of the package",
      preset
        | String
        | doc "Preset of the package (Presets are useful for distinguishing multiple deployments of the same protocol on the same chain.) Defaults to \"main\"."
        | optional,
      privateSourceCode
        | Bool
        | doc "Turns off inclusion of source code in packages. When set to true, Cannon cannot verify contracts on Etherscan. Defaults to false."
        | optional,
      provision
        | { _ | refs."properties.clone.additionalProperties" }
        | doc "⚠ Deprecated in favor of clone. Deploy a new instance of a package from the registry. Packages may only be provisioned if they include a local, Cannon deployment (Chain ID: 13370)."
        | optional,
      pull
        | {
          _ | {
            chainId
              | std.number.Integer
              | doc "ID of the chain to import the package from"
              | optional,
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            preset
              | String
              | doc "Preset label of the package being imported"
              | optional,
            source
              | String
              | doc "Source of the cannonfile package to import from. Can be a cannonfile operation name or package name",
          }
        }
        | doc "Import a package from the registry. This will make the output of that deployment, such as contract addresses, available to other operations in your Cannonfile. Imported packages must include deployments with chain ID that matches the chain ID of the network you are deploying to."
        | optional,
      router
        | {
          _ | {
            contracts
              | Array String
              | doc "Set of contracts that will be passed to the router",
            depends
              | Array String
              | doc "List of operations that this operation depends on, which Cannon will execute first. If unspecified, Cannon automatically detects dependencies."
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            from | String | doc "Address to pass to the from call" | optional,
            highlight
              | Bool
              | doc "Determines whether contract should get priority in displays"
              | optional,
            includeReceive | Bool | optional,
            overrides
              | { gasLimit | String | optional, }
              | doc "Override transaction settings"
              | optional,
            salt
              | String
              | doc "Used to force new copy of a contract (not actually used)"
              | optional,
          }
        }
        | doc "Generate a contract that proxies calls to multiple contracts using the synthetix router codegen."
        | optional,
      setting
        | {
          _ | {
            defaultValue
              | String
              | doc "Stored value of the setting"
              | optional,
            description
              | String
              | doc "Description of the operation"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'boolean, 'string, 'number |]
              | doc "Data type of the value being stored"
              | optional,
          }
        }
        | doc "⚠ Deprecated in favor of var. A setting is a variable that can be set (or overriden using the CLI) when building a Cannonfile. It is accessible elsewhere in the file a property of the settings object. For example, [setting.sampleSetting] can be referenced with <%= settings.sampleSetting %>"
        | optional,
      var
        | {
          _ | js2n.record.Record
            {
              additional = 'Some String,
              patterns = {},
              properties =
                {
                    defaultValue = String,
                    depends = Array String,
                    description = String,
                  },
              required = {},
            }
        }
        | doc "Apply a setting or intermediate value."
        | optional,
      version
        | String
        | doc "Version of the package. Publishes as the \"latest\" version by default in addition to the version specified here.",
    }