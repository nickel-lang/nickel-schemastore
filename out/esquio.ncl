# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Esquio" =
        js2n.Nullable
            {
              Products
                | js2n.Nullable
                  (Array (
                    std.contract.Sequence
                      [
                        refs."definitions.Product",
                        js2n.Nullable ({ _ | Dyn })
                      ]
                  )),
              ..
            },
      "definitions.Feature" =
        js2n.Nullable
            {
              Enabled | Bool,
              Name | js2n.Nullable String,
              Toggles
                | js2n.Nullable
                  (Array (
                    std.contract.Sequence
                      [ refs."definitions.Toggle", js2n.Nullable ({ _ | Dyn }) ]
                  )),
              ..
            },
      "definitions.Product" =
        js2n.Nullable
            {
              Features
                | js2n.Nullable
                  (Array (
                    std.contract.Sequence
                      [
                        refs."definitions.Feature",
                        js2n.Nullable ({ _ | Dyn })
                      ]
                  )),
              Name | js2n.Nullable String,
              ..
            },
      "definitions.Toggle" =
        js2n.Nullable
            { Parameters | js2n.Always, Type | js2n.Nullable String, .. },
    }
    in
  { Esquio | refs."definitions.Esquio", .. }