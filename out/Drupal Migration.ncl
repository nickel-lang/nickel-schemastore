# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      audit | Bool | optional,
      class | js2n.Nullable String | optional,
      dependencies
        | {
          config | js2n.array.UniqueItems | Array String | optional,
          content | js2n.array.UniqueItems | Array String | optional,
          enforced
            | {
              config | js2n.array.UniqueItems | Array String | optional,
              content | js2n.array.UniqueItems | Array String | optional,
              module | js2n.array.UniqueItems | Array String | optional,
              theme | js2n.array.UniqueItems | Array String | optional,
            }
            | optional,
          module | js2n.array.UniqueItems | Array String | optional,
          theme | js2n.array.UniqueItems | Array String | optional,
        }
        | optional,
      deriver | String | optional,
      destination | { plugin | js2n.Nullable String, .. } | optional,
      id | String | optional,
      label | String | optional,
      migration_dependencies
        | {
          "optional" | js2n.array.UniqueItems | Array String | optional,
          required | js2n.array.UniqueItems | Array String | optional,
          ..
        }
        | optional,
      migration_tags | js2n.array.UniqueItems | Array String | optional,
      process | { _ | Dyn } | optional,
      provider | js2n.array.UniqueItems | Array String | optional,
      source | { plugin | String, .. } | optional,
      ..
    }