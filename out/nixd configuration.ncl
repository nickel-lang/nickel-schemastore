# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.target" =
        {
            args | Array String | doc "Accept args as \"nix eval\"" | optional,
            installable | String | doc "\"nix eval\"" | optional,
            ..
          },
    }
    in
  {
      eval
        | {
          depth
            | std.number.Integer
            | doc "Extra depth for evaluation"
            | optional,
          target | refs."definitions.target" | optional,
          workers
            | std.number.Integer
            | doc "The number of workers for evaluation task. defaults to std::thread::hardware_concurrency"
            | optional,
          ..
        }
        | doc "The evaluation section, provide auto completion for dynamic bindings."
        | optional,
      formatting
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | optional,
      options
        | {
          enable
            | Bool
            | doc "Enable option completion task. If you are writing a package, disable this"
            | optional,
          target | refs."definitions.target" | optional,
          ..
        }
        | doc "Tell the language server your desired option set, for completion. This is lazily evaluated."
        | optional,
      ..
    }