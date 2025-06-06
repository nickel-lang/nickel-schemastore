# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "slot" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "version" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "tag" ],
                Array Dyn
              ],
            std.contract.not
              (js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "slot" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "version" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "tag" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "slot", "version" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "slot", "tag" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "tag", "version" ],
                      Array Dyn
                    ]
                ])
          ],
        {
          build
            | js2n.Nullable
              {
                cmd
                  | js2n.array.MinItems 1
                  | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$")
                  | optional,
                dockerfile | String | optional,
                install
                  | {
                    cmd
                      | js2n.array.MinItems 1
                      | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$"),
                  }
                  | optional,
                node_version
                  | std.enum.TagOrString
                  | [| '"21", '"20", '"18" |]
                  | optional,
                package_manager
                  | std.enum.TagOrString
                  | [| 'yarn, 'pnpm, 'npm, 'auto |]
                  | optional,
              }
            | optional,
          deploy
            | {
              addons
                | {
                  hasura
                    | js2n.Nullable
                      {
                        env
                          | js2n.record.Record
                            {
                              additional = 'None,
                              patterns =
                                { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                              properties =
                                { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                              required = {},
                            }
                          | optional,
                        version | String | optional,
                      }
                    | optional,
                  neon
                    | { version | std.contract.Equal "16" | optional, }
                    | optional,
                  postgres
                    | js2n.Nullable
                      {
                        config
                          | {
                            log_min_duration_statement
                              | std.number.Integer
                              | js2n.number.ExclusiveMinimum 0
                              | optional,
                            max_locks_per_transaction
                              | std.number.Integer
                              | js2n.number.ExclusiveMinimum 0
                              | optional,
                            max_pred_locks_per_transaction
                              | std.number.Integer
                              | js2n.number.ExclusiveMinimum 0
                              | optional,
                            statement_timeout
                              | std.number.Integer
                              | js2n.number.ExclusiveMinimum 0
                              | optional,
                          }
                          | optional,
                        version | std.contract.Equal "14" | optional,
                      }
                    | optional,
                  rpc
                    | Array (
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            '"zksync-sepolia.http",
                            '"zksync.http",
                            '"zeitgeist.http",
                            '"unichain-sepolia.http",
                            '"unichain.http",
                            '"turing.http",
                            '"sonic-mainnet.http",
                            '"solana.http",
                            '"shiden-substrate.http",
                            '"shiden.http",
                            '"shibuya-substrate.http",
                            '"shibuya.http",
                            '"scroll-sepolia.http",
                            '"scroll.http",
                            '"rococo.http",
                            '"polygon-zkevm-testnet.http",
                            '"polygon-zkevm-cardona-testnet.http",
                            '"polygon-zkevm.http",
                            '"polygon-testnet.http",
                            '"polygon-amoy-testnet.http",
                            '"polygon.http",
                            '"polkadot.http",
                            '"polkadex.http",
                            '"phala.http",
                            '"pendulum.http",
                            '"optimism-goerli.http",
                            '"optimism.http",
                            '"opbnb-testnet.http",
                            '"opbnb.http",
                            '"oktc.http",
                            '"moonriver-substrate.http",
                            '"moonriver.http",
                            '"moonbeam-substrate.http",
                            '"moonbeam.http",
                            '"moonbase.http",
                            '"moonbase-alpha.http",
                            '"metis.http",
                            '"mantle-sepolia.http",
                            '"mantle.http",
                            '"litentry.http",
                            '"linea.http",
                            '"kusama.http",
                            '"kintsugi.http",
                            '"kilt.http",
                            '"khala.http",
                            '"karura.http",
                            '"interlay.http",
                            '"hydradx.http",
                            '"gnosis.http",
                            '"frequency.http",
                            '"fantom-testnet.http",
                            '"fantom.http",
                            '"evmos.http",
                            '"eth-sepolia.http",
                            '"eth-holesky.http",
                            '"eth-goerli.http",
                            '"eth.http",
                            '"eden.http",
                            '"darwiniacrab.http",
                            '"darwinia.http",
                            '"crust.http",
                            '"collectives-westend.http",
                            '"collectives-polkadot.http",
                            '"centrifuge.http",
                            '"bsc-testnet.http",
                            '"bsc.http",
                            '"bridge-hub-westend.http",
                            '"bridge-hub-rococo.http",
                            '"bridge-hub-polkadot.http",
                            '"bridge-hub-kusama.http",
                            '"blast-l2.http",
                            '"bittensor-testnet.http",
                            '"bittensor.http",
                            '"berachain.http",
                            '"basilisk.http",
                            '"base-sepolia.http",
                            '"base-goerli.http",
                            '"base.http",
                            '"ava-testnet.http",
                            '"ava.http",
                            '"astar-substrate.http",
                            '"astar.http",
                            '"asset-hub-westend.http",
                            '"asset-hub-rococo.http",
                            '"asset-hub-polkadot.http",
                            '"asset-hub-kusama.http",
                            '"arbitrum-nova.http",
                            '"arbitrum-sepolia.http",
                            '"arbitrum-goerli.http",
                            '"arbitrum-one.http",
                            '"amplitude.http",
                            '"aleph-zero-testnet.http",
                            '"aleph-zero.http",
                            '"acala.http"
                          |]
                        ]
                    )
                    | optional,
                }
                | optional,
              api
                | {
                  cmd
                    | js2n.array.MinItems 1
                    | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$"),
                  env
                    | js2n.record.Record
                      {
                        additional = 'None,
                        patterns = { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                        properties = { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                        required = {},
                      }
                    | optional,
                }
                | optional,
              cors
                | {
                  allow_credentials | Bool | optional,
                  allow_headers | Array String | optional,
                  allow_methods | Array String | optional,
                  allow_origin | Array String | optional,
                  enabled | Bool | optional,
                  expose_headers | Array String | optional,
                  max_age
                    | std.number.Integer
                    | js2n.number.ExclusiveMinimum 0
                    | optional,
                }
                | optional,
              env
                | js2n.record.Record
                  {
                    additional = 'None,
                    patterns = { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                    properties = { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                    required = {},
                  }
                | optional,
              init
                | {
                  cmd
                    | js2n.array.MinItems 1
                    | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$"),
                  env
                    | js2n.record.Record
                      {
                        additional = 'None,
                        patterns = { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                        properties = { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                        required = {},
                      }
                    | optional,
                }
                | optional,
              migrate
                | {
                  cmd
                    | js2n.array.MinItems 1
                    | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$"),
                  env
                    | js2n.record.Record
                      {
                        additional = 'None,
                        patterns = { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                        properties = { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                        required = {},
                      }
                    | optional,
                }
                | doc "[DEPRECATED] Please use \"deploy.init\" instead"
                | optional,
              processor
                | js2n.IfThenElse (js2n.array.ArrayOf js2n.Always)
                  (std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array
                        {
                          cmd
                            | js2n.array.MinItems 1
                            | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$"),
                          env
                            | js2n.record.Record
                              {
                                additional = 'None,
                                patterns =
                                  { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                                properties =
                                  { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                                required = {},
                              }
                            | optional,
                          name
                            | js2n.string.MaxLength 63
                            | js2n.string.Matches
                              "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$",
                        }
                    ])
                  {
                    cmd
                      | js2n.array.MinItems 1
                      | Array (js2n.string.Matches "^[:\\-\\/\\w.]+$"),
                    env
                      | js2n.record.Record
                        {
                          additional = 'None,
                          patterns = { "^[a-zA-Z_][a-zA-Z0-9_]*$" = String, },
                          properties =
                            { "/^[a-zA-Z_][a-zA-Z0-9_]*$/" = String, },
                          required = {},
                        }
                      | optional,
                    name
                      | js2n.string.MaxLength 63
                      | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
                      | optional,
                  },
              secrets
                | Array (js2n.string.Matches "^[a-zA-Z_][a-zA-Z0-9_]*$")
                | doc "[DEPRECATED] Please use secrets context https://docs.subsquid.io/cloud/resources/env-variables/#secrets"
                | optional,
            },
          description | String | optional,
          manifestVersion
            | std.contract.Equal "subsquid.io/v0.1"
            | doc "[DEPRECATED] Please use \"manifest_version\" instead."
            | optional,
          manifest_version | std.contract.Equal "subsquid.io/v0.1" | optional,
          name
            | js2n.string.MaxLength 30
            | js2n.string.MinLength 3
            | js2n.string.Matches "^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$"
            | optional,
          queries | {} | optional,
          scale
            | {
              addons
                | {
                  hasura
                    | {
                      profile
                        | std.enum.TagOrString
                        | [| 'large, 'medium, 'small |]
                        | optional,
                      replicas
                        | std.number.Integer
                        | js2n.number.Maximum 5
                        | js2n.number.ExclusiveMinimum 0
                        | optional,
                    }
                    | optional,
                  neon
                    | {
                      autoscaling_limit_max_cu
                        | std.enum.TagOrString
                        | [| '"8", '"4", '"3", '"2", '"1", '"0.5", '"0.25" |]
                        | optional,
                      autoscaling_limit_min_cu
                        | std.enum.TagOrString
                        | [| '"8", '"4", '"3", '"2", '"1", '"0.5", '"0.25" |]
                        | optional,
                    }
                    | optional,
                  postgres
                    | {
                      autoresize | Bool | optional,
                      autoresize_limit | String | optional,
                      profile
                        | std.enum.TagOrString
                        | [| '"2xlarge", 'xlarge, 'large, 'medium, 'small |]
                        | optional,
                      storage | js2n.string.Matches "^\\d+[GT]i?$" | optional,
                    }
                    | optional,
                  rpc
                    | {
                      max-rate | js2n.string.Matches "\\d+rp[sm]" | optional,
                      monthly-cap | js2n.string.Matches "\\d+[km]" | optional,
                    }
                    | doc "[DEPRECATED] Please use billing settings in Cloud UI"
                    | optional,
                }
                | optional,
              api
                | {
                  profile
                    | std.enum.TagOrString
                    | [| 'large, 'medium, 'small |]
                    | optional,
                  replicas
                    | std.number.Integer
                    | js2n.number.Maximum 5
                    | js2n.number.ExclusiveMinimum 0
                    | optional,
                }
                | optional,
              dedicated | Bool | optional,
              processor
                | {
                  profile
                    | std.enum.TagOrString
                    | [| 'large, 'medium, 'small |]
                    | optional,
                }
                | optional,
            }
            | optional,
          slot
            | js2n.string.MaxLength 6
            | js2n.string.MinLength 2
            | js2n.string.Matches "^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$"
            | optional,
          tag
            | js2n.string.MaxLength 32
            | js2n.string.MinLength 2
            | js2n.string.Matches "^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?$"
            | optional,
          version
            | std.number.Integer
            | js2n.number.Maximum 1000000
            | js2n.number.ExclusiveMinimum 0
            | optional,
        }
      ]