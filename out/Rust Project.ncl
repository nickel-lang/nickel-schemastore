# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.crate" =
        {
            cfg
              | js2n.array.UniqueItems
              | Array String
              | doc "The set of cfgs activated for a given crate."
              | optional,
            deps
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence [ refs."definitions.dep", { _ | Dyn } ]
              )
              | doc "Crate dependencies.",
            display_name
              | String
              | doc "Crate name used for display purposes, without affecting semantics."
              | optional,
            edition
              | std.enum.TagOrString
              | [| '"2021", '"2018", '"2015" |]
              | doc "Edition of the crate.",
            env
              | { _ | String }
              | js2n.record.FieldsMatch "^.*$"
              | doc "Environment variables, used for the `env!` macro"
              | optional,
            is_proc_macro
              | Bool
              | doc "Whether the crate is a proc-macro crate."
              | optional,
            is_workspace_member
              | Bool
              | doc "Whether this crate should be treated as a member of the current \"workspace\"."
              | optional,
            proc_macro_dylib_path
              | String
              | doc "For proc-macro crates, path to compiled proc-macro (.so file)."
              | optional,
            repository
              | String
              | doc "URL to the source repository of the crate."
              | optional,
            root_module | String | doc "Path to the root module of the crate.",
            source
              | {
                exclude_dirs | js2n.array.UniqueItems | Array String,
                include_dirs | js2n.array.UniqueItems | Array String,
                ..
              }
              | doc "(Super)set of `.rs` files comprising this crate."
              | optional,
            target | String | doc "Target triple for this crate." | optional,
            version
              | js2n.string.Matches
                "^([0-9]+)\\.([0-9]+)\\.([0-9]+)(?:-([0-9A-Za-z-]+(?:\\.[0-9A-Za-z-]+)*))?(?:\\+[0-9A-Za-z-]+)?$"
              | doc "The crate's version"
              | optional,
            ..
          },
      "definitions.dep" =
        {
            crate
              | std.number.Integer
              | doc "Index of a crate in the `crates` array.",
            name
              | String
              | doc "Name as should appear in the (implicit) `extern crate name` declaration.",
            ..
          },
    }
    in
  {
      crates
        | js2n.array.UniqueItems
        | Array refs."definitions.crate"
        | doc "The set of crates comprising the current project.",
      sysroot | String | doc "Path to sysroot." | optional,
      sysroot_src
        | String
        | doc "Path to the directory with source code of sysroot crates."
        | optional,
      ..
    }