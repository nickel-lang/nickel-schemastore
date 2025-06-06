# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      command
        | {
          bootstrap
            | {
              ignore
                | std.contract.any_of [ String, Array String ]
                | doc "An array of globs that won't be bootstrapped when running \"lerna bootstrap\" command."
                | optional,
              npmClientArgs
                | Array String
                | doc "Array of strings that will be passed as arguments directly to \"npm install\" during the \"lerna bootstrap\" command."
                | optional,
              ..
            }
            | doc "Options for the bootstrap command."
            | optional,
          init
            | {
              exact
                | Bool
                | doc "Use lerna 1.x behavior of \"exact\" comparison. It will enforce the exact match for all subsequent executions."
                | optional,
              ..
            }
            | doc "Options for the init command."
            | optional,
          publish
            | {
              ignoreChanges
                | std.contract.any_of [ String, Array String ]
                | doc "An array of globs that won't be included in \"lerna changed/publish\". Use this to prevent publishing of a new version unnecessarily for changes, such as fixing a README.md typo."
                | optional,
              message
                | String
                | doc "A custom commit message when performing version updates for publication. See https://github.com/lerna/lerna/tree/master/commands/version#--message-msg for more information."
                | optional,
              ..
            }
            | doc "Options for the publish command."
            | optional,
          run
            | {
              npmClient
                | String
                | doc "Which npm client should be used when running package scripts."
                | optional,
              ..
            }
            | doc "Options for the run command."
            | optional,
          version
            | {
              allowBranch
                | std.contract.any_of [ String, Array String ]
                | doc "A whitelist of globs that match git branches where \"lerna version\" is enabled."
                | optional,
              message
                | String
                | doc "A custom commit message when performing version updates for publication. See https://github.com/lerna/lerna/tree/master/commands/version#--message-msg for more information."
                | optional,
              ..
            }
            | doc "Options for the version command."
            | optional,
          ..
        }
        | doc "Options for the CLI commands."
        | optional,
      ignoreChanges
        | Array String
        | doc "Array of globs of files to ignore when detecting changed packages."
        | optional,
      npmClient
        | String
        | doc "Specify which client to run commands with (change to \"yarn\" to run commands with yarn. Defaults to \"npm\"."
        | optional,
      npmClientArgs
        | Array String
        | doc "Array of strings that will be passed as arguments to the npmClient."
        | optional,
      packages
        | Array String
        | doc "Array of globs to use a package locations."
        | optional,
      useWorkspaces
        | Bool
        | doc "Enable workspaces integration when using Yarn."
        | optional,
      version
        | String
        | doc "The current version of the repository (or independent)."
        | optional,
      workspaces
        | Array String
        | doc "Array of globs to use a workspace locations."
        | optional,
      ..
    }