# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.1.0" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                created-by | String,
                default-groups | Array String | optional,
                dependency-groups | Array String | optional,
                environments | Array String | optional,
                extras | Array String | optional,
                lock-version
                  | std.enum.TagOrString
                  | [| '"1.0" |]
                  | doc "Record the file format version that the file adheres to.",
                packages
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "vcs" ],
                              Array Dyn
                            ])
                          (std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [ "archive", "directory", "sdist", "wheels" ],
                                Array Dyn
                              ])) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "directory" ],
                              Array Dyn
                            ])
                          (std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [ "archive", "sdist", "vcs", "wheels" ],
                                Array Dyn
                              ])) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "sdist" ],
                              Array Dyn
                            ])
                          (std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [ "archive", "directory", "vcs" ],
                                Array Dyn
                              ])) js2n.Always,
                        js2n.IfThenElse
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "wheels" ],
                              Array Dyn
                            ])
                          (std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [ "archive", "directory", "vcs" ],
                                Array Dyn
                              ])) js2n.Always,
                        {
                          archive
                            | refs."definitions.archive"
                            | { _ | Dyn }
                            | optional,
                          attestation-identities
                            | Array { kind | String, }
                            | optional,
                          dependencies | Array {  .. } | optional,
                          directory
                            | refs."definitions.directory"
                            | { _ | Dyn }
                            | optional,
                          index | String | optional,
                          marker | String | optional,
                          name | String,
                          requires-python | String | optional,
                          sdist
                            | refs."definitions.sdist"
                            | { _ | Dyn }
                            | optional,
                          tool
                            | refs."definitions.tool"
                            | { _ | Dyn }
                            | optional,
                          vcs | refs."definitions.vcs" | { _ | Dyn } | optional,
                          version
                            | String
                            | doc "The version of the package."
                            | optional,
                          wheels
                            | refs."definitions.wheels"
                            | Array Dyn
                            | optional,
                        }
                      ]
                  ),
                requires-python | String | optional,
                tool | refs."definitions.tool" | { _ | Dyn } | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.archive" =
        {
            hashes | refs."definitions.hashes" | { _ | Dyn } | optional,
            path | refs."definitions.path" | String | optional,
            size | refs."definitions.size" | Number | optional,
            subdirectory | refs."definitions.subdirectory" | String | optional,
            upload-time | refs."definitions.upload-time" | optional,
            url | refs."definitions.url" | String | optional,
          },
      "definitions.directory" =
        {
            editable | Bool | optional,
            path | String | optional,
            subdirectory | refs."definitions.subdirectory" | String | optional,
          },
      "definitions.hashes" = { _ | String },
      "definitions.path" = String,
      "definitions.sdist" =
        {
            hashes | refs."definitions.hashes" | { _ | Dyn } | optional,
            name | String | optional,
            path | refs."definitions.path" | String | optional,
            size | refs."definitions.size" | Number | optional,
            upload-time | refs."definitions.upload-time" | optional,
            url | refs."definitions.url" | String | optional,
          },
      "definitions.size" = std.number.Integer,
      "definitions.subdirectory" = String,
      "definitions.tool" = { _ | {  .. } },
      "definitions.upload-time" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.url" = String,
      "definitions.vcs" =
        {
            commit-id | String | optional,
            path | refs."definitions.path" | String | optional,
            requested-revision | String | optional,
            subdirectory | refs."definitions.subdirectory" | String | optional,
            type | String | optional,
            url | refs."definitions.url" | String | optional,
          },
      "definitions.wheels" =
        Array
            {
              hashes | refs."definitions.hashes" | { _ | Dyn } | optional,
              name | String | optional,
              path | refs."definitions.path" | String | optional,
              size | refs."definitions.size" | Number | optional,
              upload-time | refs."definitions.upload-time" | optional,
              url | refs."definitions.url" | String | optional,
            },
    }
    in
  std.contract.Sequence [ refs."definitions.1.0", {} ]