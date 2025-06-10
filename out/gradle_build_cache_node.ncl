# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.NodeCacheUser" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                level
                  | std.enum.TagOrString
                  | [| 'readwrite, 'read |]
                  | doc "The level of the access for the build cache user",
                note
                  | js2n.Nullable String
                  | doc "Some optional free text"
                  | optional,
                password | refs."definitions.Sha256HashedSecretString" | String,
              }
            ],
      "definitions.Sha256HashedSecretString" =
        js2n.string.Matches
            "^(?:\\s*[A-Za-z0-9+/]){43}(?:\\s*=):(?:(?:\\s*[A-Za-z0-9+/]){4})*(?:(?:\\s*[A-Za-z0-9+/]){2}(?:\\s*=){2}|(?:\\s*[A-Za-z0-9+/]){3}(?:\\s*=))?\\s*$",
      "definitions.TargetSizeFixed" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                size
                  | std.number.Integer
                  | js2n.number.Minimum 1
                  | doc "The total available size of the cache in MiB"
                  | optional,
                type | std.contract.Equal "fixed" | optional,
              }
            ],
      "definitions.TargetSizeMaxAvailable" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { type | std.contract.Equal "maxAvailable" | optional, }
            ],
      "definitions.UiAccessDisabled" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { type | std.contract.Equal "disabled" | optional, }
            ],
      "definitions.UiAccessGenerated" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { type | std.contract.Equal "generated" | optional, }
            ],
      "definitions.UiAccessOpen" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              { type | std.contract.Equal "open" | optional, }
            ],
      "definitions.UiAccessSecure" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                password | refs."definitions.Sha256HashedSecretString" | String,
                type | std.contract.Equal "secure" | optional,
                username
                  | String
                  | doc "The username for securing the cache node UI",
              }
            ],
    }
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        {
          cache
            | js2n.record.MinProperties 1
            | {
              accessControl
                | js2n.record.MinProperties 1
                | {
                  anonymousLevel
                    | std.enum.TagOrString
                    | [| 'readwrite, 'read, 'none |]
                    | doc "The level of the access for anonymous users"
                    | optional,
                  users
                    | {
                      _ | std.contract.Sequence
                        [ refs."definitions.NodeCacheUser", { _ | Dyn } ]
                    }
                    | doc "The users of the cache and their access level"
                    | optional,
                }
                | optional,
              freeSpaceBufferSize
                | std.number.Integer
                | js2n.number.Minimum 256
                | doc "The free space buffer to reserve in MiB"
                | optional,
              maxArtifactSize
                | std.number.Integer
                | js2n.number.Minimum 1
                | doc "The maximum size of a single artifact in the cache in MiB"
                | optional,
              maxEntryAgeInHours
                | js2n.Nullable
                  (std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ])
                | doc "The maximum age of an artifact in the cache in hours, if enabled"
                | optional,
              targetSize
                | js2n.record.MinProperties 1
                | js2n.IfThenElse
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "fixed", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [ refs."definitions.TargetSizeFixed", { _ | Dyn } ])
                  js2n.Always
                | js2n.IfThenElse
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = js2n.Const "maxAvailable", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
                    [ refs."definitions.TargetSizeMaxAvailable", { _ | Dyn } ])
                  js2n.Always
                | {
                  type | std.enum.TagOrString | [| 'maxAvailable, 'fixed |],
                  ..
                }
                | optional,
            }
            | optional,
          registration
            | js2n.Nullable
              (std.contract.Sequence
                [
                  js2n.record.MinProperties 1,
                  {
                    key
                      | String
                      | doc "The key of the node (can be found on the nodes screen of Gradle Enterprise)",
                    nodeAddress
                      | String
                      | doc "The URI of this build cache node",
                    secret
                      | String
                      | doc "The secret of the node (can be found on the nodes screen of Gradle Enterprise)",
                    serverAddress
                      | String
                      | doc "The URI of the Gradle Enterprise instance",
                  }
                ])
            | optional,
          uiAccess
            | js2n.record.MinProperties 1
            | js2n.IfThenElse
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "disabled", },
                      required = {},
                    },
                  Array Dyn
                ])
              (std.contract.Sequence
                [ refs."definitions.UiAccessDisabled", { _ | Dyn } ])
              js2n.Always
            | js2n.IfThenElse
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "open", },
                      required = {},
                    },
                  Array Dyn
                ])
              (std.contract.Sequence
                [ refs."definitions.UiAccessOpen", { _ | Dyn } ]) js2n.Always
            | js2n.IfThenElse
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "secure", },
                      required = {},
                    },
                  Array Dyn
                ])
              (std.contract.Sequence
                [ refs."definitions.UiAccessSecure", { _ | Dyn } ]) js2n.Always
            | js2n.IfThenElse
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { type = js2n.Const "generated", },
                      required = {},
                    },
                  Array Dyn
                ])
              (std.contract.Sequence
                [ refs."definitions.UiAccessGenerated", { _ | Dyn } ])
              js2n.Always
            | {
              type
                | std.enum.TagOrString
                | [| 'generated, 'secure, 'open, 'disabled |],
              ..
            }
            | optional,
          version
            | std.contract.Equal 5
            | doc "The version of the config file model (must be 5).",
        }
      ]