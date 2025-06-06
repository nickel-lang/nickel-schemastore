# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      api_keys
        | { _ | String }
        | doc "API keys for various services"
        | optional,
      compiler
        | {
          solc
            | {
              allow_paths
                | Array String
                | doc "Additional allowed paths for solc --allow-paths"
                | optional,
              evm_version
                | std.enum.TagOrString
                | [|
                  'osaka,
                  'prague,
                  'cancun,
                  'shanghai,
                  'paris,
                  'london,
                  'berlin,
                  'istanbul,
                  'petersburg,
                  'constantinople,
                  'byzantium,
                  'spuriousDragon,
                  'tangerineWhistle,
                  'homestead
                |]
                | doc "Version of the EVM to compile for"
                | optional,
              exclude_paths
                | Array String
                | doc "Files in these paths are excluded from compilation unless imported from non-excluded file"
                | optional,
              include_paths
                | Array String
                | doc "Paths to search for direct (non-relative) imports"
                | optional,
              metadata
                | {
                  append_CBOR | Bool | optional,
                  bytecode_hash
                    | std.enum.TagOrString
                    | [| 'bzzr1, 'ipfs, 'none |]
                    | optional,
                  use_literal_content | Bool | optional,
                  ..
                }
                | optional,
              optimizer
                | {
                  details
                    | {
                      constant_optimizer | Bool | optional,
                      cse | Bool | optional,
                      deduplicate | Bool | optional,
                      inliner | Bool | optional,
                      jumpdest_remover | Bool | optional,
                      order_literals | Bool | optional,
                      peephole | Bool | optional,
                      simple_counter_for_loop_unchecked_increment
                        | Bool
                        | optional,
                      yul_details
                        | {
                          optimizer_steps | String | optional,
                          stack_allocation | Bool | optional,
                          ..
                        }
                        | optional,
                      ..
                    }
                    | optional,
                  enabled | Bool | optional,
                  runs | std.number.Integer | js2n.number.Minimum 1 | optional,
                  ..
                }
                | optional,
              remappings | Array String | optional,
              target_version
                | js2n.string.Matches "^\\d+\\.\\d+\\.\\d+$"
                | doc "Target Solidity version for all files"
                | optional,
              via_IR
                | Bool
                | doc "Use new IR-based compiler pipeline"
                | optional,
              ..
            }
            | doc "Default configuration for Solidity files not belonging to a subproject"
            | optional,
          ..
        }
        | optional,
      deployment
        | {
          confirm_transactions
            | Bool
            | doc "Require confirmation for each transaction"
            | optional,
          silent
            | Bool
            | doc "Do not require confirmation for each transaction and do not print transaction status"
            | optional,
          ..
        }
        | doc "Configuration for deployment"
        | optional,
      detector
        | { _ | { _ | Dyn } }
        | doc "Namespace for detector-specific config options. Each property should be named after the detector name and hold an object with string keys matching the Click option names"
        | optional,
      detectors
        | {
          exclude
            | Array String
            | doc "Names of detectors that should not be loaded"
            | optional,
          exclude_paths
            | Array String
            | doc "Detections in these paths are ignored unless linked to a (sub)detection in a non-excluded path. Useful for ignoring detections in dependencies"
            | optional,
          ignore_paths
            | Array String
            | doc "Detections in these paths must be ignored under all circumstances. Useful for ignoring detections in Solidity test files"
            | optional,
          only
            | Array String
            | doc "Names of detectors that should only be loaded"
            | optional,
          ..
        }
        | doc "Configuration for detectors"
        | optional,
      general
        | {
          call_trace_options
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'events,
                    'error,
                    'return_value,
                    'sender,
                    'gas,
                    'value,
                    'call_type,
                    'status,
                    'arguments,
                    'named_arguments,
                    'function_name,
                    'address,
                    'contract_name
                  |]
                ]
            )
            | doc "Information to show in call traces"
            | optional,
          json_rpc_timeout
            | js2n.number.Minimum 0
            | doc "Timeout applied to JSON-RPC requests"
            | optional,
          link_format
            | String
            | doc "Format of links used in detectors and printers"
            | optional,
          ..
        }
        | optional,
      generator
        | {
          control_flow_graph
            | {
              direction
                | std.enum.TagOrString
                | [| 'RL, 'LR, 'BT, 'TB |]
                | doc "Graph direction: TB (top-bottom), BT (bottom-top), LR (left-right), RL (right-left)"
                | optional,
              vscode_urls
                | Bool
                | doc "Generate VSCode-compatible URLs in graph output"
                | optional,
              ..
            }
            | optional,
          imports_graph
            | {
              direction
                | std.enum.TagOrString
                | [| 'RL, 'LR, 'BT, 'TB |]
                | doc "Graph direction: TB (top-bottom), BT (bottom-top), LR (left-right), RL (right-left)"
                | optional,
              imports_direction
                | std.enum.TagOrString
                | [| 'importing-to-imported, 'imported-to-importing |]
                | doc "Direction of import arrows in the graph"
                | optional,
              vscode_urls
                | Bool
                | doc "Generate VSCode-compatible URLs in graph output"
                | optional,
              ..
            }
            | optional,
          inheritance_graph
            | {
              direction
                | std.enum.TagOrString
                | [| 'RL, 'LR, 'BT, 'TB |]
                | doc "Graph direction: TB (top-bottom), BT (bottom-top), LR (left-right), RL (right-left)"
                | optional,
              vscode_urls
                | Bool
                | doc "Generate VSCode-compatible URLs in graph output"
                | optional,
              ..
            }
            | optional,
          inheritance_graph_full
            | {
              direction
                | std.enum.TagOrString
                | [| 'RL, 'LR, 'BT, 'TB |]
                | doc "Graph direction: TB (top-bottom), BT (bottom-top), LR (left-right), RL (right-left)"
                | optional,
              vscode_urls
                | Bool
                | doc "Generate VSCode-compatible URLs in graph output"
                | optional,
              ..
            }
            | optional,
          linearized_inheritance_graph
            | {
              direction
                | std.enum.TagOrString
                | [| 'RL, 'LR, 'BT, 'TB |]
                | doc "Graph direction: TB (top-bottom), BT (bottom-top), LR (left-right), RL (right-left)"
                | optional,
              vscode_urls
                | Bool
                | doc "Generate VSCode-compatible URLs in graph output"
                | optional,
              ..
            }
            | optional,
          ..
        }
        | doc "Unstable, may change in the future"
        | optional,
      lsp
        | {
          code_lens
            | {
              enable | Bool | doc "Show code lenses" | optional,
              sort_tag_priority
                | Array String
                | doc "Order of code lens with the same start and end position"
                | optional,
              ..
            }
            | doc "Configuration for LSP code lens features"
            | optional,
          compilation_delay
            | js2n.number.Minimum 0
            | doc "Delay to wait after a file content change before recompiling"
            | optional,
          detectors
            | { enable | Bool | doc "Run detectors in LSP" | optional, .. }
            | optional,
          find_references
            | {
              include_declarations
                | Bool
                | doc "Include declarations in the results"
                | optional,
              ..
            }
            | optional,
          inlay_hints
            | {
              enable | Bool | doc "Show inlay hints" | optional,
              sort_tag_priority
                | Array String
                | doc "Priority order for inlay hint types"
                | optional,
              ..
            }
            | doc "Configuration for LSP inlay hints"
            | optional,
          ..
        }
        | doc "Configuration for the Language Server Protocol features"
        | optional,
      printer
        | { _ | { _ | Dyn } }
        | doc "Namespace for printer-specific config options. Each property should be named after the printer name and hold an object with string keys matching the Click option names"
        | optional,
      printers
        | {
          exclude
            | Array String
            | doc "Names of printers that should not be loaded"
            | optional,
          only
            | Array String
            | doc "Names of printers that should only be loaded"
            | optional,
          ..
        }
        | doc "Configuration for printers"
        | optional,
      subconfigs
        | Array String
        | doc "List of paths to additional config files to load"
        | optional,
      subproject
        | {
          _ | {
            evm_version
              | std.enum.TagOrString
              | [|
                'osaka,
                'prague,
                'cancun,
                'shanghai,
                'paris,
                'london,
                'berlin,
                'istanbul,
                'petersburg,
                'constantinople,
                'byzantium,
                'spuriousDragon,
                'tangerineWhistle,
                'homestead
              |]
              | doc "Version of the EVM to compile for"
              | optional,
            metadata
              | {
                append_CBOR | Bool | optional,
                bytecode_hash
                  | std.enum.TagOrString
                  | [| 'bzzr1, 'ipfs, 'none |]
                  | optional,
                use_literal_content | Bool | optional,
                ..
              }
              | optional,
            optimizer
              | {
                details
                  | {
                    constant_optimizer | Bool | optional,
                    cse | Bool | optional,
                    deduplicate | Bool | optional,
                    inliner | Bool | optional,
                    jumpdest_remover | Bool | optional,
                    order_literals | Bool | optional,
                    peephole | Bool | optional,
                    simple_counter_for_loop_unchecked_increment
                      | Bool
                      | optional,
                    yul_details
                      | {
                        optimizer_steps | String | optional,
                        stack_allocation | Bool | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                enabled | Bool | optional,
                runs | std.number.Integer | js2n.number.Minimum 1 | optional,
                ..
              }
              | optional,
            paths
              | Array String
              | doc "Paths to subproject files and directories"
              | optional,
            target_version
              | js2n.string.Matches "^\\d+\\.\\d+\\.\\d+$"
              | doc "Target Solidity version for this subproject"
              | optional,
            via_IR | Bool | doc "Use new IR-based compiler pipeline" | optional,
            ..
          }
        }
        | doc "Configuration for subdirectories requiring different compiler settings than the default"
        | optional,
      testing
        | {
          anvil
            | {
              cmd_args
                | String
                | doc "Arguments for the Anvil command"
                | optional,
              ..
            }
            | optional,
          cmd
            | std.enum.TagOrString
            | [| 'hardhat, 'ganache, 'anvil |]
            | doc "Which development chain to use for testing"
            | optional,
          ganache
            | {
              cmd_args
                | String
                | doc "Arguments for the Ganache command"
                | optional,
              ..
            }
            | optional,
          hardhat
            | {
              cmd_args
                | String
                | doc "Arguments for the Hardhat command"
                | optional,
              ..
            }
            | optional,
          ..
        }
        | doc "Configuration for testing"
        | optional,
      ..
    }