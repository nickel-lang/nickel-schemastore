# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.PackagesMap" = {  .. }, }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "list" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "packages" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "deps" ],
                Array Dyn
              ]
          ],
        {
          "$schema" | String | optional,
          alwaysReinstall | Bool | optional,
          comments | Array String | optional,
          deps | Array String | optional,
          ignore | Array String | optional,
          linkToItself | Bool | optional,
          linkable | js2n.Enum [ true ] | optional,
          list | Array String | optional,
          localSettings | {  .. } | optional,
          npm-link-up | Bool | optional,
          packages | refs."definitions.PackagesMap" | optional,
          searchRoots | Array String | optional,
        }
      ]