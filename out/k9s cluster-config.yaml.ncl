# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      k9s
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              cluster | String | optional,
              featureGates | { nodeShell | Bool | optional, } | optional,
              namespace
                | {
                  active | String | optional,
                  favorites | Array String | optional,
                  lockFavorites | Bool | optional,
                }
                | optional,
              proxy | js2n.Nullable { address | String | optional, } | optional,
              readOnly | Bool | optional,
              skin | String | optional,
              view | { active | String | optional, } | optional,
            },
            Array Dyn
          ],
    }