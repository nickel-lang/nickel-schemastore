# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.labelFor" =
        {
            issue | refs."definitions.labelItem" | { _ | Dyn } | optional,
            pr | refs."definitions.labelItem" | { _ | Dyn } | optional,
            ..
          },
      "definitions.labelItem" =
        {
            action | String | optional,
            body | String | optional,
            lock_reason | String | optional,
            locking | std.enum.TagOrString | [| 'unlock, 'lock |] | optional,
            ..
          },
      "definitions.labelType" =
        {
            labeled | refs."definitions.labelFor" | { _ | Dyn } | optional,
            unlabeled | refs."definitions.labelFor" | { _ | Dyn } | optional,
            ..
          },
    }
    in
  {
      comment
        | { footer | String | optional, header | String | optional, .. }
        | optional,
      labels
        | Array (
          std.contract.Sequence
            [ refs."definitions.labelType", { name | String | optional, .. } ]
        )
        | optional,
      ..
    }