# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      applypatch-msg
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      assert_lefthook_installed | Bool | optional,
      colors
        | std.contract.any_of [ Bool, { _ | Dyn } ]
        | doc "Enable disable or set your own colors for lefthook output"
        | optional,
      commit-msg
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      extends
        | Array String
        | doc "Specify files to extend config with"
        | optional,
      fsmonitor-watchman
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      lefthook | String | doc "Lefthook executable path or command" | optional,
      min_version
        | String
        | doc "Specify a minimum version for the lefthook binary"
        | optional,
      no_tty
        | Bool
        | doc "Whether hide spinner and other interactive things"
        | optional,
      output
        | std.contract.any_of [ Bool, Array Dyn ]
        | doc "Manage verbosity by skipping the printing of output of some steps"
        | optional,
      p4-changelist
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      p4-post-changelist
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      p4-pre-submit
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      p4-prepare-changelist
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-applypatch
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-checkout
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-commit
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-index-change
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-merge
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-receive
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-rewrite
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      post-update
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-applypatch
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-auto-gc
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-commit
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-merge-commit
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-push
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-rebase
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      pre-receive
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      prepare-commit-msg
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      proc-receive
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      push-to-checkout
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      rc | String | doc "Provide an rc file - a simple sh script" | optional,
      reference-transaction
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      remote
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Deprecated: use remotes"
        | optional,
      remotes
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Provide multiple remote configs to use lefthook configurations shared across projects. Lefthook will automatically download and merge configurations into main config."
        | optional,
      sendemail-validate
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      skip_lfs
        | Bool
        | doc "Skip running Git LFS hooks (enabled by default)"
        | optional,
      skip_output | std.contract.any_of [ Bool, Array Dyn ] | optional,
      source_dir
        | String
        | doc "Change a directory for script files. Directory for script files contains folders with git hook names which contain script files."
        | optional,
      source_dir_local
        | String
        | doc "Change a directory for local script files (not stored in VCS)"
        | optional,
      templates
        | { _ | String }
        | doc "Custom templates for replacements in run commands."
        | optional,
      update
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
    }