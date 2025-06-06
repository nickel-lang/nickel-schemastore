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
        std.contract.any_of
          [
            js2n.record.Required [ "paths" ],
            js2n.record.Required [ "components" ],
            js2n.record.Required [ "webhooks" ]
          ],
        {
          components
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          externalDocs
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          info
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
          jsonSchemaDialect | String | optional,
          openapi | js2n.string.Matches "^3\\.1\\.\\d+(-.+)?$",
          paths
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          security
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          servers
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          tags
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | optional,
          webhooks
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | optional,
          ..
        }
      ]